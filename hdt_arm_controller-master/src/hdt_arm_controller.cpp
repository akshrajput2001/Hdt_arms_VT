#include <iostream>
#include <math.h>
#include <array>
#include <string>

#include <ros/ros.h>
#include <sensor_msgs/JointState.h>
#include <geometry_msgs/Twist.h>

#include "math_type_define.h"
#include "hdt_arm_controller/hdt_arm_model.h"

#include "std_msgs/MultiArrayLayout.h"
#include "std_msgs/MultiArrayDimension.h"
#include "std_msgs/Float64MultiArray.h"

float pos[22];
float vel[22];
float eff[22];
float d_pos[22];
float d_vel[22];
float d_eff[22];

float lx;
float ly;
float lz;
float ax;
float ay;
float az;

Eigen::Vector28d pos_;
Eigen::Vector28d vel_;
Eigen::Vector28d eff_;
Eigen::Vector28d d_pos_;
Eigen::Vector28d d_vel_;
Eigen::Vector28d d_eff_;

Eigen::Vector7d l_pos_;
Eigen::Vector7d l_vel_;
Eigen::Vector7d l_eff_;
Eigen::Vector7d l_d_pos_;
Eigen::Vector7d l_d_vel_;
Eigen::Vector7d l_d_eff_;
Eigen::Vector7d prev_l_d_pos_;
Eigen::Vector7d prev_l_d_vel_;
Eigen::Vector7d prev_l_d_eff_;


hdt_arm_controller::HdtArmModel model_;

sensor_msgs::JointState desired_value;

void initializevalues()
{
	pos_.setZero();
	vel_.setZero();
	eff_.setZero();
	d_pos_.setZero();
	d_vel_.setZero();
	d_eff_.setZero();
	l_pos_.setZero();
	l_vel_.setZero();
	l_eff_.setZero();
	l_d_pos_.setZero();
	l_d_vel_.setZero();
	l_d_eff_.setZero();
	prev_l_d_pos_.setZero();
	prev_l_d_vel_.setZero();
	prev_l_d_eff_.setZero();

	for(unsigned int i=0;i<22;i++)
	{
		pos[i]=0;
		vel[i]=0;
		eff[i]=0;
		d_pos[i]=0;
		d_vel[i]=0;
		d_eff[i]=0;
	}

	lx=0;
	ly=0;
	lz=0;
	ax=0;
	ay=0;
	az=0;
}

void transfer_array2eigen()
{
	for(unsigned int i=0; i<7; i++)
	{
		pos_(i+6)=pos[i+1];
		vel_(i+6)=vel[i+1];
		eff_(i+6)=eff[i+1];
	}//left arm

	/*for(unsigned int i=0; i<7; i++)
	{
		pos_(i+17)=pos[i+12];
		vel_(i+17)=vel[i+12];
		eff_(i+17)=eff[i+12];
	}//right arm*/

	for(unsigned int i=0; i<7; i++)
	{
		l_pos_(i)=pos[i+1];
		l_vel_(i)=vel[i+1];
		l_eff_(i)=eff[i+1];
	}//left arm

	/*for(unsigned int i=0; i<7; i++)
	{
		pos_(i+17)=pos[i+12];
		vel_(i+17)=vel[i+12];
		eff_(i+17)=eff[i+12];
	}//right arm*/
}

void transfer_eigen2array()
{
	for(unsigned int i=0; i<22; i++)
	{
		d_pos[i]=pos[i];
		d_vel[i]=vel[i];
		d_eff[i]=eff[i];
	}

	for(unsigned int i=0; i<7; i++)
	{
		d_pos[i+1]=d_pos_(i+6);
		d_vel[i+1]=d_vel_(i+6);
		d_eff[i+1]=d_eff_(i+6);
	}//left arm
	
	/*for(unsigned int i=0; i<7; i++)
	{
		d_pos[i+12]=d_pos_(i+17);
		d_vel[i+12]=d_vel_(i+17);
		d_eff[i+12]=d_eff_(i+17);
	}//right arm*/

	for(unsigned int i=0; i<7; i++)
	{
		d_pos[i+1]=l_d_pos_(i);
		d_vel[i+1]=l_d_vel_(i);
		d_eff[i+1]=l_d_eff_(i);
	}//left arm
	
	/*for(unsigned int i=0; i<7; i++)
	{
		d_pos[i+12]=d_pos_(i+17);
		d_vel[i+12]=d_vel_(i+17);
		d_eff[i+12]=d_eff_(i+17);
	}//right arm*/

	if(ly==0.5)
	{
		d_pos[9] = -1.57;
		d_vel[9] = -1.57*0.25;
	}//move thumb base
	if(ly==-0.5)
	{
		d_pos[0] = 1.87;
		d_pos[8] = 1.87;
		d_pos[10] = 1.87;
		d_vel[0] = 0.25*1.87;
		d_vel[8] = 0.25*1.87;
		d_vel[10] = 0.25*1.87;
	}//fold fingers
	if(ax==1.0)
	{
		d_pos[0]=0.0;
		d_pos[8]=0.0;
		d_pos[10]=0.0;
		d_vel[0] = -0.25*1.87;
		d_vel[8] = -0.25*1.87;
		d_vel[10] = -0.25*1.87;
	}//unfold fingers
	if(ax==-1.0)
	{
		d_pos[9]=0.0;
		d_vel[9] = 1.57*0.25;
	}//unfold thumb base
}

void command_naming_resizing()
{
	desired_value.name.push_back("left/index_prox");
	desired_value.name.push_back("left/joint1");
	desired_value.name.push_back("left/joint2");
	desired_value.name.push_back("left/joint3");
	desired_value.name.push_back("left/joint4");
	desired_value.name.push_back("left/joint5");
	desired_value.name.push_back("left/joint6");
	desired_value.name.push_back("left/joint7");
	desired_value.name.push_back("left/ring_prox");
	desired_value.name.push_back("left/thumb_base");
	desired_value.name.push_back("left/thumb_prox");

	unsigned int n=desired_value.name.size();
	desired_value.position.resize(n);
	desired_value.velocity.resize(n);
	desired_value.effort.resize(n);
}

void command_generate()
{
	desired_value.header.stamp=ros::Time::now();
	
	for(unsigned int i=0; i<desired_value.name.size(); i++)
	{
		desired_value.position[i]=d_pos[i];
		desired_value.velocity[i]=d_vel[i];
	}
}

void compute()
{
	prev_l_d_pos_=l_d_pos_;
	prev_l_d_vel_=l_d_vel_;
	prev_l_d_eff_=l_d_eff_;

	//l_pos_ , l_vel_, l_eff_ -> l_d_pos_, l_d_vel_, l_d_eff_
	Eigen::Matrix<double,7,6> pinv = CmsMath::pseudoinverse(model_.arm_jacobian_[0]);
	Eigen::Vector6d delx;
	delx.setZero();
	delx(0)=0.02*lx;
	delx(1)=0.01*az;
	delx(2)=0.005*lz;
	delx(3)=0.1*ay;

	l_d_pos_=l_pos_+(pinv*delx+0.1*(prev_l_d_pos_-l_pos_))*0.4;
	l_d_vel_=l_vel_+(pinv*delx+0.1*(prev_l_d_pos_-l_pos_))*0.4*0.5;
}

void compute_contact()
{
	
}

void jointstateCallback(const sensor_msgs::JointStateConstPtr& msg)
{
	for(int j=0;j<11;j++)
	{
		pos[j]=msg->position[j];
		vel[j]=msg->velocity[j];
		eff[j]=msg->effort[j];
	}
}

void keyboardCallback(const geometry_msgs::Twist& keyboardmsg)
{
	// use lx as-> x direction 0.5/-0.5
	// use az as-> y direction 1.0/-1.0
	// use lz as-> z direction 0.5/-0.5
	lx = keyboardmsg.linear.x;
	ly = keyboardmsg.linear.y;
	lz = keyboardmsg.linear.z;
	ax = keyboardmsg.angular.x;
	ay = keyboardmsg.angular.y;
	az = keyboardmsg.angular.z;
}

int main (int argc, char* argv[]) {

	ros::init(argc, argv, "hdt_arm_controller_test");
	ros::NodeHandle n;
	ros::Publisher pub=n.advertise<sensor_msgs::JointState>("/hdt_adroit_coms/joint_cmd", 10);
	ros::Subscriber sub=n.subscribe("/hdt_adroit_coms/joint_telem",10, jointstateCallback);//,this,ros::TransportHints().tcpNoDelay(true));
	ros::Subscriber sub2=n.subscribe("/cmd_vel",1,keyboardCallback);
	ros::Rate r(200);

	initializevalues();
	command_naming_resizing();

	//test_command array structure
	// waist_yaw 1 / right_leg 6 / left_leg 6 / right_arm 7+4 / left_arm 7+4
	
	while (ros::ok())
	{
		transfer_array2eigen();
		model_.updateKinematics(pos_);
		compute();
		transfer_eigen2array();
		command_generate();

		//std::cout<<lx<<ly<<lz<<ax<<ay<<az<<std::endl;

		pub.publish(desired_value);
		//let the world know
		//ROS_INFO("I published sth");

		ros::spinOnce();
		
		r.sleep();

	}
 	return 0;
}

