#include <ros/ros.h>

#include <sys/ioctl.h>
#include <net/if.h>
#include <errno.h>

#include "hdt_dualcan_interface.h"

/*----------------------------------------------------------------------------
  constructor
 *----------------------------------------------------------------------------*/
DualcanInterface::DualcanInterface(std::vector<std::string> devices, uint8_t div_addr) : AdroitInterface() {
	this->devices = devices;
	this->div_addr = div_addr;
}

/*----------------------------------------------------------------------------
  destructor
 *----------------------------------------------------------------------------*/
DualcanInterface::~DualcanInterface() {
	for(std::vector<int>::size_type i = 0; i != sockets.size(); i++) {
		close(sockets[i]);
	}
}

/*----------------------------------------------------------------------------
  init
 *----------------------------------------------------------------------------*/
int DualcanInterface::Init(void) {
	int ret;
    struct sockaddr_can addr;
    struct ifreq ifr;

	// create socket
	for(std::vector<int>::size_type i = 0; i != devices.size(); i++) {
		int s = socket(PF_CAN, SOCK_RAW, CAN_RAW);

		// ioctl
		strcpy(ifr.ifr_name, devices[i].c_str());
		ioctl(s, SIOCGIFINDEX, &ifr);

		// addr
		addr.can_family = AF_CAN;
		addr.can_ifindex = ifr.ifr_ifindex;

		// bind
		ret = bind(s, (struct sockaddr *)&addr, sizeof(addr));
		if(ret != 0) {
			ROS_ERROR("DualcanInterface::Init bind failure %s", devices[i].c_str());
			return -1;
		}
		
		// add to sockets list
		sockets.push_back(s);

		// create read thread
		boost::thread *read_thread = new boost::thread(boost::bind(&DualcanInterface::Read, this, s));
		ReadThreads.add_thread(read_thread);
	}

	// start read thread
	TxMutex = new boost::mutex();
	RxMutex = new boost::mutex();


	return 1;
}

/*----------------------------------------------------------------------------
  send msg
 *----------------------------------------------------------------------------*/
int DualcanInterface::SendMsg(AdroitMsg *adroit_msg) {
	// get mutex lock
	boost::mutex::scoped_lock lock(*TxMutex);
	
	// push msg to list
	TxList.push_back(*adroit_msg);
      
	return 1;
}

/*----------------------------------------------------------------------------
  transmit all waiting messages
 *----------------------------------------------------------------------------*/
int DualcanInterface::Write(void) {
	AdroitMsg adroit_msg;
	struct can_frame frame;
	int ret = 1;

	// loop through messages
	while(!TxList.empty()) {
		{
			// get mutex lock
			boost::mutex::scoped_lock lock(*TxMutex);
			
			// get first message in list
			adroit_msg = TxList.front();
			TxList.pop_front();
		}
		
		// create can message
		frame.can_id = adroit_msg.id;
		frame.can_dlc = adroit_msg.dlc;
		//can_msg.is_extended = adroit_msg.ff;
		for(int i=0; i < adroit_msg.dlc; i++) {
			frame.data[i] = adroit_msg.data[i];
		}

		// split message to correct socket
		int s = sockets.front();
		uint8_t addr = (uint8_t)(frame.can_id & 0x7F);
		
		// if broadcast, send to all sockets
		if(addr == 0) {
			// iterate through sockets
			for(std::vector<int>::size_type i = 0; i != sockets.size(); i++) {
				ret |= WriteMsg(&frame, sockets[i]);
			}
		}
		// otherwise split by address
		else if(addr < div_addr) {
			ret = WriteMsg(&frame, sockets.front());
		}
		else {
			ret = WriteMsg(&frame, sockets.back());
		}
	}

	return ret;
}

/*----------------------------------------------------------------------------
  transmit all waiting messages
 *----------------------------------------------------------------------------*/
int DualcanInterface::WriteMsg(struct can_frame *frame, int s) {
	// send message
	ssize_t nbytes = write(s, frame, sizeof(struct can_frame));
	
	// check for write error
	if (nbytes < 0) {
		ROS_ERROR("DualcanInterface::Write can raw socket write %d", (int)errno);
		return -1;
	}
	// check for incomplete frame
	else if (nbytes < sizeof(struct can_frame)) {
		ROS_ERROR("DualcanInterface::Write incomplete CAN frame");
		return 0;
	}
}

/*----------------------------------------------------------------------------
  receive msg
 *----------------------------------------------------------------------------*/
int DualcanInterface::ReceiveMsg(AdroitMsg *msg) {
	// get first message in list
	if(!RxList.empty()) {

		// get mutex lock
		boost::mutex::scoped_lock lock(*RxMutex);

		*msg = RxList.front();
		RxList.pop_front();
		return 1;
	}
	else return -1;
}

/*----------------------------------------------------------------------------
  read callback
 *----------------------------------------------------------------------------*/
void DualcanInterface::Read(int s) {
	AdroitMsg adroit_msg;
	struct can_frame frame;
	
	// read loop
	while(1) {
		// read from socket
		ssize_t nbytes = read(s, &frame, sizeof(struct can_frame));
		
		// check for read error
		if (nbytes < 0) {
			ROS_ERROR("DualcanInterface::Read can raw socket read");
			break;
		}
		// check for incomplete frame
		else if (nbytes < sizeof(struct can_frame)) {
			ROS_ERROR("DualcanInterface::Read incomplete CAN frame");
			continue;
		}	
		// check for data
		else {
			//ROS_INFO("can msg received");
		
			// move bit 31 of id downto bit 2 of flags
			adroit_msg.id = frame.can_id & 0x1FFFFFFF;
			adroit_msg.dlc = frame.can_dlc;
			for (int i = 0; i < frame.can_dlc; i++) {
				adroit_msg.data[i] = frame.data[i];
			}
			
			// lock rx mutex
			boost::mutex::scoped_lock lock(*RxMutex);

			// add message to rx list
			RxList.push_back(adroit_msg);
		}
	}	
}

