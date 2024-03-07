#include "hdt_arm_controller/hdt_arm_model.h"


using namespace RigidBodyDynamics;
using namespace RigidBodyDynamics::Math;


namespace hdt_arm_controller
{
	constexpr const char* HdtArmModel::EE_NAME[2];
	constexpr const unsigned int HdtArmModel::HW_TOTAL_DOF;
	constexpr const unsigned int HdtArmModel::MODEL_DOF; // without hands
	constexpr const unsigned int HdtArmModel::HW_HAND_DOF;
	constexpr const unsigned int HdtArmModel::MODEL_WITH_VIRTUAL_DOF;

	HdtArmModel::HdtArmModel()
	{
		model = new Model();
		base_position_.setZero();
		q_.setZero();

		std::string desc_package_path = ros::package::getPath("hdt_saffir_description");
		std::string urdf_path = desc_package_path + "/urdf/hdt_saffir_fixedbase.urdf";

		ROS_INFO("Loading HDT ARM description from = %s", urdf_path.c_str());
		RigidBodyDynamics::Addons::URDFReadFromFile(urdf_path.c_str(), model, true, false);
		ROS_INFO("Successfully loaded");
		ROS_INFO("Total DoF = %d",model->dof_count);
		ROS_INFO("q size = %d",model->q_size);

		for (size_t i=0; i<2 ; i++)
		{
			end_effector_id_[i]=model->GetBodyId(EE_NAME[i]);
			ROS_INFO("%s: id %d", EE_NAME[i],end_effector_id_[i]);
		}
	}

	void HdtArmModel::updateKinematics(const Eigen::VectorXd& q)
	{
		q_virtual_ = q;
		RigidBodyDynamics::UpdateKinematicsCustom(*model, &q, NULL, NULL);
		getCenterOfMassPosition(& com_);
		getInertiaMatrix28Dof(& full_inertia_mat_);

		for(size_t i=0; i<2; i++)
		{
			getTransformEndEffector((EndEffector)i, &current_transform_[i]);
			getJacobianMatrix7Dof((EndEffector)i, &arm_jacobian_[i]);
		}
	}

	void HdtArmModel::getCenterOfMassPosition(Eigen::Vector3d* position)
	{
		RigidBodyDynamics::Math::Vector3d position_temp;
		position_temp.setZero();
		Eigen::Matrix<double,28,1> qdot;
		qdot.setZero();
		double mass;

		RigidBodyDynamics::Utils::CalcCenterOfMass(*model, q_virtual_, qdot, NULL, mass, position_temp, NULL, NULL, NULL, NULL, false);

		*position = position_temp;
	}

	void HdtArmModel::getTransformEndEffector(EndEffector ee, Eigen::Isometry3d* transform_matrix)
	{
		transform_matrix->translation() = RigidBodyDynamics::CalcBodyToBaseCoordinates
			(*model, q_virtual_, end_effector_id_[ee], base_position_, false);
		transform_matrix->linear() = RigidBodyDynamics::CalcBodyWorldOrientation
			(*model, q_virtual_, end_effector_id_[ee], false).transpose();
	}

	void HdtArmModel::getJacobianMatrix7Dof(EndEffector ee, Eigen::Matrix<double,6,7>* jacobian)
	{
		Eigen::MatrixXd full_jacobian(6, MODEL_WITH_VIRTUAL_DOF);
		full_jacobian.setZero();
		RigidBodyDynamics::CalcPointJacobian6D(*model, q_virtual_, end_effector_id_[ee], Eigen::Vector3d::Zero(), full_jacobian, false);

		switch (ee)
		{
			case EE_LEFT_ARM:
				jacobian->block<3,7>(0,0)=full_jacobian.block<3,7>(3,6);
				jacobian->block<3,7>(3,0)=full_jacobian.block<3,7>(0,6);
				break;

			case EE_RIGHT_ARM:
				jacobian->block<3,7>(0,0)=full_jacobian.block<3,7>(3,17);
				jacobian->block<3,7>(3,0)=full_jacobian.block<3,7>(0,17);
				break;
		}
	}

	void HdtArmModel::getInertiaMatrix28Dof(Eigen::Matrix<double, 28, 28>* inertia)
	{
		Eigen::MatrixXd full_inertia(MODEL_WITH_VIRTUAL_DOF, MODEL_WITH_VIRTUAL_DOF);
		full_inertia.setZero();

		RigidBodyDynamics::CompositeRigidBodyAlgorithm(*model, q_virtual_, full_inertia, false);

		inertia->block<28,28>(0,0) = full_inertia.block<28,28>(0,0);
	}




}
