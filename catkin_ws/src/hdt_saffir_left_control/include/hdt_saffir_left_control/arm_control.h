#ifndef saffir_left_control_h
#define saffir_left_control_h

#include "ros/ros.h"

#include "geometry_msgs/Vector3.h"
#include "geometry_msgs/Wrench.h"
#include "geometry_msgs/Transform.h"

#include "sensor_msgs/Joy.h"
#include "sensor_msgs/MultiDOFJointState.h"
#include "sensor_msgs/JointState.h"

#include "std_msgs/Float64.h"

#include <moveit/robot_model_loader/robot_model_loader.h>
#include <moveit/dynamics_solver/dynamics_solver.h>
#include <moveit/planning_scene/planning_scene.h>
#include <moveit/collision_detection/collision_common.h>
#include <moveit/collision_detection/collision_matrix.h>

#include "hdt_hocu_driver/hocu_driver.h"

#include "control_group.h"

// general
#define ROBOT_PREFIX				"hdt_saffir_left_control/"

// general
#define ROS_NAME					"saffir_control"
#define SAMPLE_PERIOD				0.1
#define JOY_TOPIC					"/joy"
#define JOY_NUM_AXES				8
#define JOY_NUM_BUTTONS				11
#define MAX_TRANS_VEL				0.15			// 15 cm/sec
#define MAX_ROT_VEL				0.15			// 45 deg/sec
#define MAX_ROTATION				0.15
#define MAX_HAND_VEL				2.0

// adroit coms
#define COMS_READY_SERVICE			"/hdt_adroit_coms/coms_ready"
#define COMS_READY_TIMEOUT			5
#define JOINT_TELEM_TOPIC			"/hdt_adroit_coms/joint_telem"
#define JOINT_COMMAND_TOPIC			"/hdt_adroit_coms/joint_cmd"
//#define JOINT_COMMAND_TOPIC			"/hdt_arm_control/joint_cmd"

// moveit
#define ARM_GROUP_NAME				"arm"
#define HAND_GROUP_NAME				"hand"

// gazebo
#define CONTROLLER_SUFFIX			"_position_controller/command"

//int rateLimit(double maxRate, double sigPrev, double *sig, double sampleRate);

class ArmControl {
public:
	// setup
	ArmControl() {}
	~ArmControl() {};
	int Init(void);

	// state and mode types
	typedef enum StateType {
		STATE_NONE = 		-1,
		STATE_OFF = 		0,
		STATE_ON = 			1,
		STATE_FAULT = 		2,
		NUM_STATES =		3
	} StateType;

	//typedef struct StateModeType {
	//	StateType state;
	//	ModeType mode;
	//} StateModeType;

	// change state
	bool ChangeState(StateType new_state);
private:
	int num_joints;
	StateType state;

	sensor_msgs::MultiDOFJointState task_space_fb_msg;
	sensor_msgs::JointState joint_space_fb_msg;

	StateType GetState(void) {return (StateType)state;};

	// control groups
	ControlGroup arm_group, hand_group;

	// callbacks
	void TimerCb(const ros::TimerEvent &event);
	void JoyCallback(const sensor_msgs::Joy& msg);
	bool CollisionCb(const planning_scene::PlanningScene *planning_scene, robot_state::RobotState *state, const robot_state::JointModelGroup *group, const double *joint_group_variable_values);
	void JointTelemCb(const sensor_msgs::JointState& msg);
	void HocuCallback(const sensor_msgs::Joy& msg);
	//void HandPathCb(std::string default_state);
	
	void JoyControlArmCb(void);
	void JoyControlHandCb(void);

	// adroit coms
	bool use_adroit_coms;
	sensor_msgs::JointState joint_telem_msg;
	ros::Subscriber joint_telem_sub;

	// gazebo
	bool use_gazebo;
	std::vector<std_msgs::Float64> gazebo_cmd_msg;
	std::vector<ros::Publisher> gazebo_cmd_pub;
	sensor_msgs::JointState gazebo_telem_msg;
	ros::Subscriber gazebo_telem_sub;
	
	// steps
	void TeachStep(void);

	// timers
	ros::Timer sample_loop_timer;
	ros::Time state_mode_time;

	// moveit
	robot_model_loader::RobotModelLoader *model_loader;
	robot_model::RobotModelPtr kinematic_model;
	robot_state::RobotState *kinematic_state;
	dynamics_solver::DynamicsSolver *gravity_solver;
	planning_scene::PlanningScene *collision_scene;
	collision_detection::AllowedCollisionMatrix *allowed_collision_matrix;
	std::vector<double> joint_accelerations;
	std::vector<double> gravity_effort;
	std::vector<geometry_msgs::Wrench> link_wrenches;

	// hocu
	bool use_hocu;
	ros::Subscriber hocu_sub;
	sensor_msgs::Joy hocu_msg, hocu_prev;
	Eigen::Affine3d hold_state;

	// joy
	ros::Subscriber joy_sub;
	sensor_msgs::Joy joy_msg;

 	// action servers and clients
	//actionlib::SimpleActionServer<hdt_saffir_left_control::JointSpacePathAction> *joint_space_path_as;
	//actionlib::SimpleActionClient<hdt_saffir_left_control::JointSpacePathAction> *joint_space_path_ac;

};

#endif // saffir_control_h
