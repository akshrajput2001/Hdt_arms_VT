#include <iostream>
#include "ros/ros.h"
#include "std_msgs/String.h"


#include <sstream>
//#include <Eigen/Dense>
#include "math_type_define.h"
#include <rbdl/rbdl.h>

#ifndef RBDL_BUILD_ADDON_URDFREADER
	#error "Error: RBDL addon URDFReader not enabled."
#endif

#include <rbdl/addons/urdfreader/urdfreader.h>

using namespace RigidBodyDynamics;
using namespace RigidBodyDynamics::Math;

//Eigen::Vector28d q_;
//Eigen::Matrix<double,28,1> q_virtual_;
//Eigen::Matrix<double,28,28> inertiamtx;

const int totaldof=28;//22;
const int left_ee=9;//7;
const int right_ee=20;

Eigen::Matrix<double,totaldof,1> q_;
Eigen::Matrix<double,totaldof,1> q_virtual_;
Eigen::Matrix<double,totaldof,totaldof> inertiamtx;


//q_.setZero();
//q_virtual_.setZero();
//inertiamtx.setZero();

RigidBodyDynamics::Model* model = new Model();


void getInertiaMatrix()
{
	Eigen::MatrixXd full_inertia(totaldof,totaldof);
	full_inertia.setZero();
	RigidBodyDynamics::CompositeRigidBodyAlgorithm(*model, q_virtual_, full_inertia, true);
	//std::cout<< full_inertia <<std::endl;
}

void getCenterOfMassPosition()
{
	RigidBodyDynamics::Math::Vector3d position_temp;
	position_temp.setZero();
	Eigen::Matrix<double,totaldof,1> qdot;
	qdot.setZero();

	double mass;
	RigidBodyDynamics::Utils::CalcCenterOfMass(*model, q_virtual_, qdot, NULL,mass, position_temp, NULL, NULL, NULL, NULL, true);
        //std::cout<< mass << std::endl;
	//std::cout << position_temp <<std::endl;
}

void getJacobianmatrix()
{
	Eigen::MatrixXd full_jacobian(6,totaldof);
	full_jacobian.setZero();
	RigidBodyDynamics::CalcPointJacobian6D(*model, q_virtual_, left_ee, Eigen::Vector3d::Zero(), full_jacobian, true);
	std::cout << full_jacobian << std::endl;
}

void getTransformEndEffector()
{
	RigidBodyDynamics::Math::VectorNd q;
	q=q_virtual_;
        RigidBodyDynamics::UpdateKinematicsCustom(*model,&q, NULL, NULL);
	Eigen::Vector3d position;
	Eigen::Matrix3d rotation;
	position = RigidBodyDynamics::CalcBodyToBaseCoordinates
		(*model, q_virtual_, left_ee, Eigen::Vector3d::Zero(), true);
	rotation = RigidBodyDynamics::CalcBodyWorldOrientation
		(*model, q_virtual_, left_ee, true).transpose();
        //std::cout << position << std::endl;
	std::cout << rotation << std::endl;
}


int main (int argc, char* argv[]) {
 
        q_.setZero();
        q_virtual_.setZero();
        inertiamtx.setZero();


 	ros::init(argc, argv, "rbdl_hdt_test");
	ros::NodeHandle n;
	rbdl_check_api_version (RBDL_API_VERSION);

//        RigidBodyDynamics::Model* model = new Model();

        RigidBodyDynamics::Addons::URDFReadFromFile("/home/jk/catkin_ws/vt_hdt/src/rbdl_hdt/src/hdt_saffir_fixedbase.urdf", model,true,false);

	ROS_INFO("Successfully loaded.");
	ROS_INFO("Total DoF=%d", model->dof_count);
	ROS_INFO("q size=%d", model->q_size);
        
	ROS_INFO("left endeffector id: %d",model->GetBodyId("left/end_effector"));
	ROS_INFO("right endeffector id: %d",model->GetBodyId("right/end_effector"));
        
	//ROS_INFO("id: %d",model->GetBodyId("base_link"));
	//ROS_INFO("id: %d",model->GetBodyId("left/index_prox"));


	getInertiaMatrix();
	getCenterOfMassPosition();
	getJacobianmatrix();
	getTransformEndEffector();
	delete model;

 	return 0;
}

