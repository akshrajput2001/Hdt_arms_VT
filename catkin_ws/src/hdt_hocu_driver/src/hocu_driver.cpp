#include "hocu_driver.h"

/*----------------------------------------------------------------------------
  timer callback
 *----------------------------------------------------------------------------*/
int HocuDriver::Init(void) {
	ROS_INFO("HocuDriver::Init");
	ros::NodeHandle nh;

	// subscribers
	clear_screen_sub = nh.subscribe(CLEAR_SCREEN_TOPIC, 3, &HocuDriver::SendHocuClearScreen, this);
	update_screen_sub = nh.subscribe(UPDATE_SCREEN_TOPIC, 3, &HocuDriver::SendHocuUpdateScreen, this);
	set_page_column_sub = nh.subscribe(SET_PAGE_COLUMN_TOPIC, 3, &HocuDriver::SendHocuSetPageColumn, this);
	set_font_sub = nh.subscribe(SET_FONT_TOPIC, 3, &HocuDriver::SendHocuSetFont, this);
	write_string_sub = nh.subscribe(WRITE_STRING_TOPIC, 3, &HocuDriver::SendHocuWriteString, this);

	// joy publisher
	joy_pub = nh.advertise<sensor_msgs::Joy>(HOCU_TOPIC, 3);

	// initialize msg
	joy_msg.header.seq = 0;
	joy_msg.axes.resize(HOCU_NUM_AXES);
	joy_msg.buttons.resize(HOCU_NUM_BUTTONS);

	// coms init
	ComsServer = new ComsInterface(new TcpServer((char *)"ComsServer", Port, 0), new SlipProtocol());
	ComsServer->Init();
	
	// create timer
	sample_loop_timer = nh.createTimer(ros::Duration(0.01), &HocuDriver::TimerCb, this);
	
	return 1;
}

/*----------------------------------------------------------------------------
  timer callback
 *----------------------------------------------------------------------------*/
void HocuDriver::TimerCb(const ros::TimerEvent &event) {
	//ROS_INFO("HocuDriver::TimerCb");
	Step();
}

/*----------------------------------------------------------------------------
  step
 *----------------------------------------------------------------------------*/
int HocuDriver::Step(void) {
	// parse incoming data
	ComsServer->Process();

	// send heartbeat when connected
	//if(ComsServer->IsConnected()) {
		SendHeartbeatCmd();
	//}	 
	
	// receive incoming messages
	ComsInterface::ComsMsg tcp_msg;
	while(ComsServer->GetMsg(&tcp_msg) > 0) {
		// take message id dependent action
		switch(tcp_msg.id) {
			// reset message timer when heartbeat is received
			case(HOCU_HEARTBEAT_RES):
				break;
			case(HOCU_DATA):
				// check for proper size
				if(tcp_msg.size == sizeof(HocuDataType)) {
					ProcessHocuDataCmd(&tcp_msg.data[0]);
				}
				break;
			default:
				break;
		}
	}
}

/*----------------------------------------------------------------------------
  process hocu data
 *----------------------------------------------------------------------------*/
void HocuDriver::ProcessHocuDataCmd(uint8_t *data) {
	HocuDataType hocu_data;
	
	// populate hocudata
	memcpy(&hocu_data, data, sizeof(HocuDataType));

	// copy axes
	joy_msg.axes[0] = hocu_data.axisX;
	joy_msg.axes[1] = hocu_data.axisY;
	joy_msg.axes[2] = hocu_data.axisZ;
	joy_msg.axes[3] = hocu_data.rotX;
	joy_msg.axes[4] = hocu_data.rotY;
	joy_msg.axes[5] = hocu_data.rotZ;
	joy_msg.axes[6] = hocu_data.thumbRoll;
	joy_msg.axes[7] = hocu_data.thumbYaw;
	joy_msg.axes[8] = hocu_data.indexRoll;
	joy_msg.axes[9] = hocu_data.ringRoll;
	
	// copy buttons
	joy_msg.buttons[0] = hocu_data.handTrigger & 0x01;
	joy_msg.buttons[1] = (hocu_data.buttons >> 0) & 0x01;
	joy_msg.buttons[2] = (hocu_data.buttons >> 1) & 0x01;
	joy_msg.buttons[3] = (hocu_data.buttons >> 2) & 0x01;
	joy_msg.buttons[4] = (hocu_data.buttons >> 3) & 0x01;

	// publish joy msg
	joy_msg.header.seq++;
	joy_msg.header.stamp = ros::Time::now();
	joy_pub.publish(joy_msg);
}


/*----------------------------------------------------------------------------
  send heartbeat cmd
 *----------------------------------------------------------------------------*/
void HocuDriver::SendHeartbeatCmd(void) {
	ComsInterface::ComsMsg tcp_msg;

	// package message
	tcp_msg.id = HOCU_HEARTBEAT_CMD;
	tcp_msg.size = 4;

	tcp_msg.data[0] = 0;
	tcp_msg.data[1] = 0;
	tcp_msg.data[2] = 0;
	tcp_msg.data[3] = 0;

	// send message
	ComsServer->SendMsg(&tcp_msg);
}

/*----------------------------------------------------------------------------
  clear hocu screen
 *----------------------------------------------------------------------------*/
void HocuDriver::SendHocuClearScreen(const hdt_hocu_driver::ClearScreen& msg) {
	ComsInterface::ComsMsg tcp_msg;

	// populate message
	tcp_msg.id = HOCU_CLEAR_SCREEN;
	tcp_msg.size = 0;

	// send message
	ComsServer->SendMsg(&tcp_msg);
}

/*----------------------------------------------------------------------------
  update hocu screen
 *----------------------------------------------------------------------------*/
void HocuDriver::SendHocuUpdateScreen(const hdt_hocu_driver::UpdateScreen& msg) {
	ComsInterface::ComsMsg tcp_msg;

	// populate message
	tcp_msg.id = HOCU_UPDATE_SCREEN;
	tcp_msg.size = 0;

	// send message
	ComsServer->SendMsg(&tcp_msg);
}

/*----------------------------------------------------------------------------
  set page and column
 *----------------------------------------------------------------------------*/
void HocuDriver::SendHocuSetPageColumn(const hdt_hocu_driver::SetPageColumn& msg) {
	ComsInterface::ComsMsg tcp_msg;

	// populate message
	tcp_msg.id = HOCU_SET_PAGE_COLUMN;
	tcp_msg.size = 4;
	tcp_msg.data[0] = msg.page & 0xFF;
	tcp_msg.data[1] = (msg.page >> 8) & 0xFF;
	tcp_msg.data[2] = msg.column & 0xFF;
	tcp_msg.data[3] = (msg.column >> 8) & 0xFF;

	// send message
	ComsServer->SendMsg(&tcp_msg);
}

/*----------------------------------------------------------------------------
  set font size and options
 *----------------------------------------------------------------------------*/
void HocuDriver::SendHocuSetFont(const hdt_hocu_driver::SetFont& msg) {
	ComsInterface::ComsMsg tcp_msg;

	// populate message
	tcp_msg.id = HOCU_SET_FONT;
	tcp_msg.size = 4;
	tcp_msg.data[0] = msg.size & 0xFF;
	tcp_msg.data[1] = (msg.size >> 8) & 0xFF;
	tcp_msg.data[2] = msg.options & 0xFF;
	tcp_msg.data[3] = (msg.options >> 8) & 0xFF;

	// send message
	ComsServer->SendMsg(&tcp_msg);
}

/*----------------------------------------------------------------------------
  write string to display
 *----------------------------------------------------------------------------*/
void HocuDriver::SendHocuWriteString(const hdt_hocu_driver::WriteString& msg) {
	ComsInterface::ComsMsg tcp_msg;

	// populate message
	tcp_msg.id = HOCU_WRITE_STRING;
	tcp_msg.size = (uint16_t)msg.text.size();
	msg.text.copy((char *)tcp_msg.data, COMS_DATA_SIZE);

	// send message
	ComsServer->SendMsg(&tcp_msg);
}

/*----------------------------------------------------------------------------
  main function
 *----------------------------------------------------------------------------*/
int main(int argc, char **argv) {
	ros::init(argc, argv, HOCU_NAME);
	ros::NodeHandle node_handle;
	int ret;

	ROS_INFO("%s starting", HOCU_NAME);

	// start spinner
	ros::AsyncSpinner spinner(2);
	spinner.start();

	// get params
	ros::NodeHandle private_node_handle("~");
	int port;
	private_node_handle.param<int>("port", port, 8765);

	// error demo class
	HocuDriver hocu_driver(port);
	if(hocu_driver.Init() <= 0) {
		return 0;
	}

	// wait for shutdown
	ros::waitForShutdown();

	return 0;
}
