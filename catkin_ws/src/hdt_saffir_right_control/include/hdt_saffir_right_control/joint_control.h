#ifndef joint_control_h
#define joint_control_h

#include "ros/ros.h"

#include <actionlib/server/simple_action_server.h>
#include <actionlib/client/simple_action_client.h>

#include "hdt_arm_control/JointSpacePathAction.h"
#include "hdt_arm_control/TaskSpacePathAction.h"
#include "hdt_arm_control/TrajectoryPathAction.h"

#include "geometry_msgs/Vector3.h"
#include "geometry_msgs/Wrench.h"
#include "geometry_msgs/Transform.h"

#include "sensor_msgs/Joy.h"
#include "sensor_msgs/MultiDOFJointState.h"
#include "sensor_msgs/JointState.h"

#include "std_msgs/Float64.h"

#include <moveit/robot_model_loader/robot_model_loader.h>
#include <moveit/robot_model/robot_model.h>
#include <moveit/robot_state/robot_state.h>
#include <moveit/dynamics_solver/dynamics_solver.h>
#include <moveit/planning_scene/planning_scene.h>
#include <moveit/collision_detection/collision_common.h>
#include <moveit/collision_detection/collision_matrix.h>
#include <moveit/robot_trajectory/robot_trajectory.h>
#include <moveit/move_group_interface/move_group.h>

// general
#define ROBOT_PREFIX				"hdt_arm/"

// general
#define ROS_NAME				"joint_control"
#define SAMPLE_PERIOD				0.1
#define JOY_TOPIC				"/joy"
#define JOY_NUM_AXES				8
#define JOY_NUM_BUTTONS				11
#define IK_LINK_NAME				"drive7"
#define MAX_JOINT_VEL				0.7854
#define MAX_TRANS_VEL				0.15			// 15 cm/sec
#define MAX_ROT_VEL				0.7845			// 45 deg/sec
#define MAX_STOW_VEL				0.3
#define MAX_ROTATION				0.7854
//#define MAX_HAND_VEL				3.1416
//#define MAX_JOINT_VEL				0.4
//#define MAX_TRANS_VEL				0.1			// 15 cm/sec
//#define MAX_ROT_VEL				0.4			// 45 deg/sec
//#define MAX_ROTATION				0.4

// adroit coms
#define COMS_READY_SERVICE			"/hdt_adroit_coms/coms_ready"
#define COMS_READY_TIMEOUT			5
#define JOINT_TELEM_TOPIC			"/hdt_adroit_coms/joint_telem"
#define JOINT_COMMAND_TOPIC			"/hdt_adroit_coms/joint_cmd"

// moveit
#define ARM_GROUP_NAME				"arm"
// change this back if there is a gripper, remove for inc1 or other system with no EE
#define HAND_GROUP_NAME				"hand"
#define JOINT_SPACE_PATH_ACTION			"hdt_arm_control/joint_space_path"
#define TASK_SPACE_PATH_ACTION			"hdt_arm_control/task_space_path"
#define TRAJECTORY_PATH_ACTION			"hdt_arm_control/trajectory_path"

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
		STATE_ON = 		1,
		STATE_FAULT = 		2,
	} StateType;
	typedef enum ModeType {
		MODE_NONE = 		-1,
		//MODE_ZERO = 		8,
		//MODE_NONE = 		8,
		//MODE_ZERO = 		-1,
		MODE_FREE_SPACE = 	0,
		MODE_APPROACH = 	1,
		MODE_GRIP =		2,
		MODE_HARD_STOP = 	3,
		MODE_DAMPED_STOP = 	4,
		MODE_HOME = 		5,
		MODE_STOWED = 		6,
		MODE_TEACH = 		7,
	} ModeType;

	typedef struct StateModeType {
		StateType state;
		ModeType mode;
	} StateModeType;

	// change state and mode
	bool ChangeState(StateType new_state);
	bool ChangeMode(ModeType new_mode);
	private:
	int num_joints, num_links; //num_hand_joints;
	StateModeType state_mode;

	sensor_msgs::MultiDOFJointState task_space_fb_msg;
	sensor_msgs::JointState joint_space_fb_msg;

	StateType GetState(void) {return (StateType)state_mode.state;};
	ModeType GetMode(void) {return (ModeType)state_mode.mode;};

	std::vector< const robot_state::JointModel * > joint_model;
	//std::vector< const robot_state::JointModel * > hand_model;
	

	// callbacks
	void TimerCb(const ros::TimerEvent &event);
	void JoyCallback(const sensor_msgs::Joy& msg);
	void JointSpacePathCb(const hdt_arm_control::JointSpacePathGoalConstPtr &goal);
	void TaskSpacePathCb(const hdt_arm_control::TaskSpacePathGoalConstPtr &goal);
	void TrajectoryPathCb(const hdt_arm_control::TrajectoryPathGoalConstPtr &goal);
	bool CollisionCb(const planning_scene::PlanningScene *planning_scene, robot_state::RobotState *state, const robot_state::JointModelGroup *group, const double *joint_group_variable_values);
	void JointTelemCb(const sensor_msgs::JointState& msg);
	// adroit coms
	bool use_adroit_coms;
	sensor_msgs::JointState joint_telem_msg;
	sensor_msgs::JointState joint_cmd_msg; //hand_cmd_msg;
	ros::Subscriber joint_telem_sub;
	ros::Publisher joint_cmd_pub; //hand_cmd_pub;

	// gazebo
	bool use_gazebo;
	std::vector<std_msgs::Float64> gazebo_cmd_msg;
	std::vector<ros::Publisher> gazebo_cmd_pub;
	sensor_msgs::JointState gazebo_telem_msg;
	ros::Subscriber gazebo_telem_sub;
	
	// steps
	void PathStep(void);
	void TeachStep(void);

	// timers
	ros::Timer sample_loop_timer;
	ros::Time path_start_time;
	ros::Time state_mode_time;

	// moveit
	robot_model_loader::RobotModelLoader *model_loader;
	robot_model::RobotModelPtr kinematic_model;
	robot_state::RobotState *kinematic_state;
	robot_state::JointModelGroup *joint_model_group; //*hand_model_group;
	dynamics_solver::DynamicsSolver *gravity_solver;
	planning_scene::PlanningScene *collision_scene;
	collision_detection::AllowedCollisionMatrix *allowed_collision_matrix;
	std::vector<double> joint_accelerations;
	std::vector<double> gravity_effort;
	//std::vector<geometry_msgs::Wrench> link_wrenches;
	moveit::planning_interface::MoveGroup::Plan path_plan;
	robot_trajectory::RobotTrajectory *path_trajectory;
	move_group_interface::MoveGroup *move_group; //*hand_move_group;

	// joy
	ros::Subscriber joy_sub;
	sensor_msgs::Joy joy_msg;

 	// action servers and clients
	actionlib::SimpleActionServer<hdt_arm_control::JointSpacePathAction> *joint_space_path_as;
	actionlib::SimpleActionClient<hdt_arm_control::JointSpacePathAction> *joint_space_path_ac;
	actionlib::SimpleActionServer<hdt_arm_control::TaskSpacePathAction> *task_space_path_as;
	actionlib::SimpleActionClient<hdt_arm_control::TaskSpacePathAction> *task_space_path_ac;
	actionlib::SimpleActionServer<hdt_arm_control::TrajectoryPathAction> *trajectory_path_as;
	actionlib::SimpleActionClient<hdt_arm_control::TrajectoryPathAction> *trajectory_path_ac;
};

#endif // joint_control_h
