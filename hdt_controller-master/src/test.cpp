
#include <iostream>
//#include <Eigen/Dense>
#include "math_type_define.h"
#include "ros/ros.h"

//necessary things  for publishing Float64MultiArray////////
#include "std_msgs/MultiArrayLayout.h"
#include "std_msgs/MultiArrayDimension.h"
#include "std_msgs/Float64MultiArray.h"
////////////////////////////////////////////////////////////

//necessary things for subscribing JointState///////////////
#include "sensor_msgs/JointState.h"
float pos[22];
float vel[22];
float eff[22];
float desired[22];

void jointstateCallback(const sensor_msgs::JointStateConstPtr& msg)
{
	for(int j=0;j<22;j++)
	{
		pos[j]=msg->position[j];
		vel[j]=msg->velocity[j];
		eff[j]=msg->effort[j];
	}
}
/////////////////////////////////////////////////////////////


int main(int argc, char **argv)
{
	ros::init(argc, argv, "test_pub_sub");
	ros::NodeHandle n;
	ros::Publisher pub=n.advertise<std_msgs::Float64MultiArray>("/hdt_saffir/hdt_controller/command", 10);
	ros::Subscriber sub=n.subscribe("/hdt_saffir/joint_states",100, jointstateCallback);
	//control rate decide 
	ros::Rate r(500);

	//test_command array structure
	// waist_yaw 1 / right_leg 6 / left_leg 6 / right_arm 7+4 / left_arm 7+4
	
	while (ros::ok())
	{
		//define formats and values of publishing data
		/////////////////////////////////////////////////////////////////////
			//define multiarray and initialize
		std_msgs::Float64MultiArray test_command;
	
		test_command.layout.dim.push_back(std_msgs::MultiArrayDimension());
		test_command.layout.dim[0].size=22;
		test_command.layout.dim[0].stride = 1;
		test_command.layout.dim[0].label="test value";
			//clear array
		test_command.data.clear();
			//put data in the multiarray
		for(int i=0;i<22; i++)
		{
			test_command.data.push_back(5);
		}
		//////////////////////////////////////////////////////////////////////

		/////////checking the subscribed value//////////////////////	
		for(int k=0;k<22;k++)
		{
			printf("%f,",pos[k]);
		}
		printf("\n");
		////////////////////////////////////////////////////////////
		
		//////////////Publish array////////////////////////////////
		pub.publish(test_command);
		//////////////////////////////////////////////////////////
		
		//let the world know
		//ROS_INFO("I published sth");

		ros::spinOnce();

		r.sleep();

	}


}
