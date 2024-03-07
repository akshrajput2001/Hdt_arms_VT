#ifndef HDT_ARM_MODEL_H
#define HDT_ARM_MODEL_H

#include <iostream>
#include <string>
#include <map>

#include <ros/ros.h>
#include <ros/package.h>
#include "std_msgs/String.h"

#include <rbdl/rbdl.h>
#include <rbdl/addons/urdfreader/urdfreader.h>

#include "math_type_define.h"


namespace hdt_arm_controller
{
	class HdtArmModel
	{
		public:
			HdtArmModel();

			enum EndEffector : unsigned int
			{
				EE_LEFT_ARM, EE_RIGHT_ARM
			};

			static const unsigned int HW_TOTAL_DOF = 22; 
		  	static const unsigned int MODEL_DOF = 14; // arm x2 only
			static const unsigned int HW_HAND_DOF = 8; // hand x2 only
			static const unsigned int MODEL_WITH_VIRTUAL_DOF = 28;

			static constexpr const char* EE_NAME[2] =
			{
				"left/end_effector","right/end_effector"
			};
			
			unsigned int end_effector_id_[2];

			void updateKinematics(const Eigen::VectorXd &q);
			
			void getCenterOfMassPosition(Eigen::Vector3d* position);

			void getTransformEndEffector(EndEffector ee, Eigen::Isometry3d* transform_matrix);
			void getJacobianMatrix7Dof(EndEffector ee, Eigen::Matrix<double,6,7>* jacobian);

			void getInertiaMatrix28Dof(Eigen::Matrix<double, 28, 28>* inertia);

		//private:
			RigidBodyDynamics::Model* model;

			Eigen::Vector22d q_;
			Eigen::Matrix<double, 28, 1> q_virtual_;

			Eigen::Vector3d base_position_;

			Eigen::Isometry3d current_transform_[2];
			
			Eigen::Matrix<double,6,7> arm_jacobian_[2];

			Eigen::Vector3d com_;
			Eigen::Vector3d com_simulation_;

			Eigen::Matrix<double,28,28> full_inertia_mat_;
			Eigen::Matrix<double,22,22> A_; //without virtual joints

	};
}



#endif
