#ifndef hdt_dualcan_interface
#define hdt_dualcan_interface

#include "AdroitComs.h"
#include "hdt_adroit_coms.h"

#include <boost/thread/thread.hpp>
#include <boost/thread/mutex.hpp>

#include <linux/can.h>

// CAN CanComsmunication class
class DualcanInterface: public AdroitInterface {
//class CanComs {
public:
	DualcanInterface(std::vector<std::string> devices, uint8_t div_addr);
	~DualcanInterface();

	int Init(void);
	int SendMsg(AdroitMsg *adroit_msg);
	int ReceiveMsg(AdroitMsg *msg);
	int Write(void);
private:
	std::vector<std::string> devices;
	std::vector<int> sockets;
	uint8_t div_addr;
	
	std::list<AdroitMsg> RxList;
	std::list<AdroitMsg> TxList;
	
	// thread for receiving messages
	boost::thread_group ReadThreads;
	
	// mutex for receiving messages
	boost::mutex *TxMutex;
	boost::mutex *RxMutex;
	
	// Task function
	void Read(int s);
	int WriteMsg(struct can_frame *frame, int s);
};

#endif // hdt_dualcan_interface
