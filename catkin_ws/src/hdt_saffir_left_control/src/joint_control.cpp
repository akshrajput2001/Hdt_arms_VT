#include <eigen_conversions/eigen_msg.h>

#include "hdt_adroit_driver/ComsReady.h"

#include "joint_control.h"

geometry_msgs::Pose test_pose;
//std::vector<geometry_msgs::Pose> test_waypoints;

/*----------------------------------------------------------------------------
  init
  *----------------------------------------------------------------------------*/
int ArmControl::Init(void) {
    ROS_INFO("ArmControl::Init");
    ros::NodeHandle nh;
    ros::NodeHandle pnh("~");

    // get configuration parameters
    pnh.param<bool>("use_adroit_coms", use_adroit_coms, true);
    pnh.param<bool>("use_gazebo", use_gazebo, false);

    if(use_adroit_coms) {
        // wait for adroit coms service
        if(ros::service::waitForService(COMS_READY_SERVICE, ros::Duration(COMS_READY_TIMEOUT))) {
            ros::ServiceClient coms_ready_client = nh.serviceClient<hdt_adroit_driver::ComsReady>(COMS_READY_SERVICE);
            hdt_adroit_driver::ComsReady srv;

            // call coms ready service
            if(coms_ready_client.call(srv)) {
                joint_telem_msg = srv.response.telem;
                ROS_INFO_STREAM(joint_telem_msg);
            }
            else {
                ROS_ERROR("Failed to call COMS service");
                return -1;
            }
        }
        else {
            ROS_ERROR("No COMS service");
            return -1;
        }
    }

    // adroit coms publishers and subscribers
    if(use_adroit_coms) {
        joint_telem_sub = nh.subscribe(JOINT_TELEM_TOPIC, 3, &ArmControl::JointTelemCb, this);
    }
    joint_cmd_pub = nh.advertise<sensor_msgs::JointState>(JOINT_COMMAND_TOPIC, 3);
    //hand_cmd_pub = nh.advertise<sensor_msgs::JointState>(JOINT_COMMAND_TOPIC, 3);

    // check for robot description
    std::string description;
    if(nh.getParam("robot_description", description)) {
        // load robot model
        model_loader = new robot_model_loader::RobotModelLoader("robot_description");
        kinematic_model = model_loader->getModel();

        // get kinematic state
        kinematic_state = new robot_state::RobotState(kinematic_model);
        //kinematic_state->setToDefaultValues();

        // move group
        move_group = new move_group_interface::MoveGroup(ARM_GROUP_NAME);
        //hand_move_group = new move_group_interface::MoveGroup(HAND_GROUP_NAME);

        // joint model group
        joint_model_group = kinematic_model->getJointModelGroup(ARM_GROUP_NAME);
        //hand_model_group = kinematic_model->getJointModelGroup(HAND_GROUP_NAME);
        //ROS_INFO("canSetStateFromIK(\"%s\") = %s", IK_LINK_NAME, joint_model_group->canSetStateFromIK(IK_LINK_NAME) ? "true" : "false");

        // marker model group
        //marker_model_group = kinematic_model->getJointModelGroup(MARKER_GROUP_NAME);

        // path trajectory
        path_trajectory = new robot_trajectory::RobotTrajectory(kinematic_model, ARM_GROUP_NAME);

        // dynamics solver gravity vector
        geometry_msgs::Vector3 gravity_vector;
        gravity_vector.x = 0.0;
        gravity_vector.y = 0.0;
        gravity_vector.z = 9.81;

        // initialize ddynamics solver
        gravity_solver = new dynamics_solver::DynamicsSolver(kinematic_model, ARM_GROUP_NAME, gravity_vector);

        // collision planning scene
        collision_scene = new planning_scene::PlanningScene(kinematic_model);
        allowed_collision_matrix = new collision_detection::AllowedCollisionMatrix(collision_scene->getAllowedCollisionMatrix());
        //allowed_collision_matrix->setEntry("dummy_ee_link", "test_stand_link", true);
        //allowed_collision_matrix->setEntry("marker0_link", true);
        //allowed_collision_matrix->setEntry("marker1_link", true);
        //allowed_collision_matrix->setEntry("index_dist", true);
        //allowed_collision_matrix->setEntry("ring_dist", true);
        allowed_collision_matrix->setEntry("index_dist", "thumb_dist", true);

        // get joint names
        const std::vector<std::string> &joint_names = joint_model_group->getActiveJointModelNames();

        joint_model = joint_model_group->getActiveJointModels();
        //hand_model = hand_model_group->getActiveJointModels();

        num_joints = joint_names.size();
        ROS_INFO("%s model group has %d joints", ARM_GROUP_NAME, num_joints);

        // resize cmd msg
        joint_space_fb_msg.position.resize(num_joints);
        joint_space_fb_msg.velocity.resize(num_joints);
        joint_space_fb_msg.effort.resize(num_joints);
        joint_space_fb_msg.name.resize(num_joints);
        joint_cmd_msg = joint_space_fb_msg;
        joint_accelerations.resize(num_joints);
        gravity_effort.resize(num_joints);

        // set cmd msg names and values
        for(int i = 0; i < num_joints; i++) {
            joint_space_fb_msg.name[i] = joint_names[i];
            joint_space_fb_msg.position[i] = 0.0;
            joint_space_fb_msg.velocity[i] = 0.0;
            joint_space_fb_msg.effort[i] = 0.0;

            // adroit commands
            joint_cmd_msg.name[i] = joint_names[i];
            joint_cmd_msg.position[i] = 0.0;
            joint_cmd_msg.velocity[i] = MAX_JOINT_VEL;
            joint_cmd_msg.effort[i] = 0.0;

            // initialize other variables
            joint_accelerations[i] = 0.0;
            gravity_effort[i] = 0.0;
        }

        // get joint names
        //const std::vector<std::string> &hand_names = hand_model_group->getActiveJointModelNames();
        //num_hand_joints = hand_names.size();
        //ROS_INFO("%s model group has %d joints", HAND_GROUP_NAME, num_hand_joints);

        // set cmd msg names and values
        //hand_cmd_msg.name = hand_names;
        //hand_cmd_msg.position.resize(num_hand_joints);
        //hand_cmd_msg.velocity.resize(num_hand_joints);
        //hand_cmd_msg.effort.resize(num_hand_joints);
        // start pincer in open position so it tends to release objects it's stuck on
        //std::fill(hand_cmd_msg.position.begin(), hand_cmd_msg.position.end(), 0.0);
        //std::fill(hand_cmd_msg.velocity.begin(), hand_cmd_msg.velocity.end(), MAX_HAND_VEL);
        //std::fill(hand_cmd_msg.effort.begin(), hand_cmd_msg.effort.end(), 0.0);

        // set initial positions
        if(use_adroit_coms) {
            // copy initial positions from state
            kinematic_state->setVariableValues(joint_telem_msg);
            kinematic_state->copyJointGroupPositions(joint_model_group, joint_space_fb_msg.position);
            // TODO get starting hand position
            //kinematic_state->setVariableValues(hand_cmd_msg);
            //kinematic_state->copyJointGroupPositions(hand_model_group, hand_cmd_msg.position);



            for(int i = 0; i < num_joints; i++){
                ROS_INFO("Startup Drive %d position: %f", i, joint_space_fb_msg.position[i]);
            }
            //for(int i = 0; i < num_hand_joints; i++){
            //  ROS_INFO("Startup Hand %d position: %f", i, hand_cmd_msg.position[i]);
            //}

        } else if(use_gazebo) {
			//if(use_gazebo) {
            // copy initial positions from gazebo
            kinematic_state->setVariableValues(joint_space_fb_msg);
        } else {
            // otherwise set to home position
            std::map<std::string, double> joint_map;
            joint_model_group->getVariableDefaultPositions("arm_home", joint_map);
            kinematic_state->setVariablePositions(joint_map);
            kinematic_state->copyJointGroupPositions(joint_model_group, joint_space_fb_msg.position);
        }

        if(use_gazebo) {
            // resize gazebo command messages
            gazebo_cmd_msg.resize(num_joints);

            // gazebo cmd pub
            for(int i = 0; i < num_joints; i++) {
                std::string pub_name = ROBOT_PREFIX + joint_names[i] + CONTROLLER_SUFFIX;
                //ROS_INFO("%s", pub_name.c_str());
                gazebo_cmd_pub.push_back(nh.advertise<std_msgs::Float64>(pub_name, 3));
                gazebo_cmd_msg[i].data = joint_space_fb_msg.position[i];
            }
        }

        // set arm accelerations
        joint_accelerations.resize(num_joints);
        for(int i = 0; i < num_joints; i++) {
            joint_accelerations[i] = 0.0;
        }

        // get link names
        const std::vector<std::string> &link_names = joint_model_group->getLinkModelNames();
        num_links = link_names.size();
        //link_wrenches.resize(num_links);
        ROS_INFO("%s model group has %d links", ARM_GROUP_NAME, num_links);

        // create zero wrench
        geometry_msgs::Wrench wrench;
        wrench.force.x = wrench.force.y = wrench.force.z = 0;
        wrench.torque.x = wrench.torque.y = wrench.torque.z = 0;

        // initialize link wrenches
        for(int i = 0; i < num_links; i++) {
            //link_wrenches[i] = wrench;
        }

        // initialize task space fb message
        geometry_msgs::Transform transform;
        transform.translation.x = transform.translation.y = transform.translation.z = 0.0;
        transform.rotation.x = transform.rotation.y = transform.rotation.z = 0.0;
        transform.rotation.w = 1.0;
        //for (std::map<std::string, std::string>::iterator it = fiducial_links.begin(); it != fiducial_links.end(); it++) {
        //  //ROS_INFO("%s %s", it->first.c_str(), it->second.c_str());
        //  task_space_fb_msg.joint_names.push_back(it->first);
        //  task_space_fb_msg.transforms.push_back(transform);
        //}
    }
    else {
        ROS_ERROR("No model found, exiting");
        return 0;
    }

    // joystick setup
    joy_msg.axes.resize(JOY_NUM_AXES);
    joy_msg.buttons.resize(JOY_NUM_BUTTONS);
    joy_sub = nh.subscribe(JOY_TOPIC, 3,  &ArmControl::JoyCallback, this);

    // reset joy msg
    std::fill(joy_msg.axes.begin(), joy_msg.axes.end(), 0.0);
    std::fill(joy_msg.buttons.begin(), joy_msg.buttons.end(), 0);

    // joint plan action servers and clients
    joint_space_path_as = new actionlib::SimpleActionServer<hdt_arm_control::JointSpacePathAction>(nh, JOINT_SPACE_PATH_ACTION, boost::bind(&ArmControl::JointSpacePathCb, this, _1), false);
    joint_space_path_as->start();
    joint_space_path_ac = new actionlib::SimpleActionClient<hdt_arm_control::JointSpacePathAction>(JOINT_SPACE_PATH_ACTION, true);

    // task plan action servers and clients
    task_space_path_as = new actionlib::SimpleActionServer<hdt_arm_control::TaskSpacePathAction>(nh, TASK_SPACE_PATH_ACTION, boost::bind(&ArmControl::TaskSpacePathCb, this, _1), false);
    task_space_path_as->start();
    task_space_path_ac = new actionlib::SimpleActionClient<hdt_arm_control::TaskSpacePathAction>(TASK_SPACE_PATH_ACTION, true);

    // trajectory plan action servers and clients
    trajectory_path_as = new actionlib::SimpleActionServer<hdt_arm_control::TrajectoryPathAction>(nh, TRAJECTORY_PATH_ACTION, boost::bind(&ArmControl::TrajectoryPathCb, this, _1), false);
    trajectory_path_as->start();
    trajectory_path_ac = new actionlib::SimpleActionClient<hdt_arm_control::TrajectoryPathAction>(TRAJECTORY_PATH_ACTION, true);

    // initialize state and mode
    state_mode.state = STATE_OFF;
    state_mode.mode = MODE_NONE;

    // create timer
    sample_loop_timer = nh.createTimer(ros::Duration(SAMPLE_PERIOD), &ArmControl::TimerCb, this);

    return 1;
}

/*----------------------------------------------------------------------------
  timer callback
  *----------------------------------------------------------------------------*/
void ArmControl::TimerCb(const ros::TimerEvent &event) {
    //ROS_INFO("ArmControl::TimerCb");

    // mode switch
    switch(GetMode()) {
	case(MODE_HOME):
	case(MODE_STOWED):
        //case(MODE_ZERO):
		// check for path completion
		if(joint_space_path_ac->getState() == actionlib::SimpleClientGoalState::SUCCEEDED) {
			//ROS_INFO("Joint path returned");
			PathStep();
		}
	break;
	case(MODE_FREE_SPACE):
		// check for path completion
		if(task_space_path_ac->getState() == actionlib::SimpleClientGoalState::SUCCEEDED) {
			//ROS_INFO("Task path returned");
			PathStep();
		}
		break;
	case(MODE_APPROACH):
		// check for path completion
		if(trajectory_path_ac->getState() == actionlib::SimpleClientGoalState::SUCCEEDED) {
			//ROS_INFO("Task path returned");
			PathStep();
		}
		break;
	case(MODE_TEACH):
		TeachStep();
		break;
	default:
		break;
    }

    // iterate through fiducial markers, compute transform
    //for(std::vector<std::string>::iterator it = task_space_fb_msg.joint_names.begin(); it != task_space_fb_msg.joint_names.end(); it++) {
	//ROS_INFO("%s %s", (*it).c_str(), fiducial_links[*it].c_str());
    //  int i = it - task_space_fb_msg.joint_names.begin();

	// get marker transform
    //  Eigen::Affine3d marker_transform = kinematic_state->getGlobalLinkTransform(fiducial_links[*it]);
    //  tf::transformEigenToMsg(marker_transform, task_space_fb_msg.transforms[i]);
    //}

    // state switch
    switch(GetState()) {
	case(STATE_ON): {
		// do gravity compensation
		//gravity_solver->getTorques(joint_space_fb_msg.position, joint_space_fb_msg.velocity, joint_accelerations, link_wrenches, gravity_effort);
		// reverse effort for command? (no)
		for(int i = 0; i < num_joints; i++) {
			joint_cmd_msg.effort[i] = 0;
		}

		// update position
		joint_cmd_msg.position = joint_space_fb_msg.position;

		// publish cmd msgs
		joint_cmd_msg.header.seq++;
		//hand_cmd_msg.header.seq++;
		//joint_cmd_msg.header.stamp = hand_cmd_msg.header.stamp = ros::Time::now();
		joint_cmd_pub.publish(joint_cmd_msg);
		//hand_cmd_pub.publish(hand_cmd_msg);

		if(use_gazebo) {
			// publish gazebo command
			for(int i = 0; i < num_joints; i++) {
				// set control command message
				gazebo_cmd_msg[i].data = joint_cmd_msg.position[i];

				// send control message
				gazebo_cmd_pub[i].publish(gazebo_cmd_msg[i]);
			}
		}
		break;
	}
	default:
		break;
    }
}

/*----------------------------------------------------------------------------
  joint space path callback
  *----------------------------------------------------------------------------*/
void ArmControl::JointSpacePathCb(const hdt_arm_control::JointSpacePathGoalConstPtr &goal) {
    hdt_arm_control::JointSpacePathResult result;
    ROS_INFO("ArmControl::JointSpacePathCb");

    // get position map
    std::map<std::string, double> joint_map;
    joint_model_group->getVariableDefaultPositions(goal->pose, joint_map);

    // set target
    move_group->setJointValueTarget(joint_map);

    // create plan
    if(move_group->plan(path_plan)) {
        joint_space_path_as->setSucceeded(result);
    }
    else {
        ROS_ERROR("Joint space path failure");
        joint_space_path_as->setAborted(result);
    }

    // set path trajectory
    path_trajectory->setRobotTrajectoryMsg(*kinematic_state, path_plan.trajectory_);

    // start path timer
    path_start_time = ros::Time::now();
}

/*----------------------------------------------------------------------------
  task space path callback
  *----------------------------------------------------------------------------*/
void ArmControl::TaskSpacePathCb(const hdt_arm_control::TaskSpacePathGoalConstPtr &goal) {
    hdt_arm_control::TaskSpacePathResult result;
    ROS_INFO("ArmControl::TaskSpacePathCb");

    // make sure marker is in fiducial links
    //if(fiducial_links.find(goal->marker) == fiducial_links.end()) {
	// warning here?
    //  task_space_path_as->setAborted(result);
    //  return;
    //}

    // set target
    move_group->clearPoseTargets();
    //move_group->setPoseTarget(goal->pose, fiducial_links[goal->marker]);
    move_group->setPoseTarget(goal->pose, IK_LINK_NAME);

    // create plan
    if(move_group->plan(path_plan)) {
        task_space_path_as->setSucceeded(result);
    }
    else {
        ROS_ERROR("Task space path failure");
        task_space_path_as->setAborted(result);
    }

    // set path trajectory
    path_trajectory->setRobotTrajectoryMsg(*kinematic_state, path_plan.trajectory_);

    // start path timer
    path_start_time = ros::Time::now();
}

/*----------------------------------------------------------------------------
  trajectory path callback
  *----------------------------------------------------------------------------*/
void ArmControl::TrajectoryPathCb(const hdt_arm_control::TrajectoryPathGoalConstPtr &goal) {
    hdt_arm_control::TrajectoryPathResult result;
    ROS_INFO("ArmControl::TrajectoryPathCb");

    // make sure marker is in fiducial links
    //if(fiducial_links.find(goal->marker) == fiducial_links.end()) {
	// warning here?
    //  trajectory_path_as->setAborted(result);
    //  return;
    //}

    // generate plan
    move_group->setEndEffectorLink(IK_LINK_NAME);

    // create plan
    if(move_group->computeCartesianPath(goal->waypoints, 0.01, 0.0, path_plan.trajectory_) >= 1.0) {
        trajectory_path_as->setSucceeded(result);
    }
    else {
        ROS_ERROR("Task space path failure");
        trajectory_path_as->setAborted(result);
    }

    // set path trajectory
    path_trajectory->setRobotTrajectoryMsg(*kinematic_state, path_plan.trajectory_);

    // start path timer
    path_start_time = ros::Time::now();
}

/*----------------------------------------------------------------------------
  path step
  *----------------------------------------------------------------------------*/
void ArmControl::PathStep(void) {
    // interpolate path
    ros::Duration path_time = ros::Time::now() - path_start_time;
    moveit::core::RobotStatePtr path_state(new robot_state::RobotState(kinematic_model));
    if(path_trajectory->getStateAtDurationFromStart(path_time.toSec(), path_state)) {
        // update joint cmd
        std::vector<double> joint_positions;
        path_state->copyJointGroupPositions(joint_model_group, joint_positions);
        joint_space_fb_msg.position = joint_positions;

        // update kinematic state to latest cmd
        kinematic_state->setVariableValues(joint_space_fb_msg);
    }

    // check for path end
    if(ros::Time::now() >= path_start_time + ros::Duration(path_plan.trajectory_.joint_trajectory.points.back().time_from_start)) {
        ChangeMode(MODE_NONE);
    }
}

/*----------------------------------------------------------------------------
  teach step
  *----------------------------------------------------------------------------*/
void ArmControl::TeachStep(void) {
    // get current endpoint state
    Eigen::Affine3d endpoint_state = kinematic_state->getGlobalLinkTransform(IK_LINK_NAME);

    // update hand command
    // TODO fix hack to make gripper move slower in ros model
    //hand_cmd_msg.position[0] += (joy_msg.axes[2] - joy_msg.axes[5]) * SAMPLE_PERIOD * MAX_HAND_VEL*0.5;

    joint_space_fb_msg.position[0] += joy_msg.axes[1] * SAMPLE_PERIOD * MAX_JOINT_VEL * -1;
    joint_space_fb_msg.position[1] += joy_msg.axes[0] * SAMPLE_PERIOD * MAX_JOINT_VEL * -1;
    joint_space_fb_msg.position[2] += joy_msg.axes[3] * SAMPLE_PERIOD * MAX_JOINT_VEL;
    joint_space_fb_msg.position[3] += joy_msg.axes[4] * SAMPLE_PERIOD * MAX_JOINT_VEL * -1;
    joint_space_fb_msg.position[5] += joy_msg.axes[6] * SAMPLE_PERIOD * MAX_JOINT_VEL;
    joint_space_fb_msg.position[4] += joy_msg.axes[7] * SAMPLE_PERIOD * MAX_JOINT_VEL * -1;
    joint_space_fb_msg.position[6] += (joy_msg.buttons[4]-joy_msg.buttons[5]) * SAMPLE_PERIOD * MAX_JOINT_VEL;
    //joint_space_fb_msg.position[9] += (joy_msg.axes[2] - joy_msg.axes[5]) * SAMPLE_PERIOD * MAX_JOINT_VEL*0.5;
    joint_space_fb_msg.position[10] += (-joy_msg.axes[2] + joy_msg.axes[5]) * SAMPLE_PERIOD * MAX_JOINT_VEL*0.5;
    joint_space_fb_msg.position[7] += (-joy_msg.axes[2] + joy_msg.axes[5]) * SAMPLE_PERIOD * MAX_JOINT_VEL*0.5;
    joint_space_fb_msg.position[8] += (-joy_msg.axes[2] + joy_msg.axes[5]) * SAMPLE_PERIOD * MAX_JOINT_VEL*0.5;
	/*
	  if(num_joints == 7)
	  {
	  joint_space_fb_msg.position[5] += joy_msg.axes[6] * SAMPLE_PERIOD * MAX_JOINT_VEL;
	  joint_space_fb_msg.position[4] += joy_msg.axes[7] * SAMPLE_PERIOD * MAX_JOINT_VEL * -1;
	  joint_space_fb_msg.position[6] += (joy_msg.buttons[4]-joy_msg.buttons[5]) * SAMPLE_PERIOD * MAX_JOINT_VEL;
	  }
	*/
#if 1

    for(int i = 0; i < joint_space_fb_msg.position.size(); i++){

        const robot_state::JointModel::Bounds &bounds = joint_model[i]->getVariableBounds();

        if(joint_space_fb_msg.position[i] > bounds[0].max_position_){
            joint_space_fb_msg.position[i] = bounds[0].max_position_;
        }
        if(joint_space_fb_msg.position[i] < bounds[0].min_position_){
            joint_space_fb_msg.position[i] = bounds[0].min_position_;
        }
    }

    //for(int i = 0; i < hand_cmd_msg.position.size(); i++){

    //  const robot_state::JointModel::Bounds &bounds = hand_model[i]->getVariableBounds();

    //  if(hand_cmd_msg.position[i] > bounds[0].max_position_){
    //      hand_cmd_msg.position[i] = bounds[0].max_position_;
    //  }
    //  if(hand_cmd_msg.position[i] < bounds[0].min_position_){
    //      hand_cmd_msg.position[i] = bounds[0].min_position_;
    //  }
    //}

#endif

    // update kinematic state
    //kinematic_state->setVariableValues(hand_cmd_msg);
    kinematic_state->setVariableValues(joint_space_fb_msg);
}

/*----------------------------------------------------------------------------
  collision callback
  *----------------------------------------------------------------------------*/
bool ArmControl::CollisionCb(const planning_scene::PlanningScene *planning_scene, robot_state::RobotState *state, const robot_state::JointModelGroup *group, const double *joint_group_variable_values) {
    state->setJointGroupPositions(group, joint_group_variable_values);

    // setup collision request
    collision_detection::CollisionRequest req;
    req.verbose = false;
    req.group_name = group->getName();

    // check for collision
    collision_detection::CollisionResult res;
    planning_scene->checkCollision(req, res, *state, *allowed_collision_matrix);
    if (res.collision) {
        std::vector<std::string> colliding_links;
        planning_scene->getCollidingLinks(colliding_links, *state);
        for(int i = 0; i < colliding_links.size(); i++) ROS_ERROR("%s", colliding_links[i].c_str());
        return false;
    }

    return planning_scene->isStateFeasible(*state, true);
    //return true;
}

/*----------------------------------------------------------------------------
  change state
  *----------------------------------------------------------------------------*/
bool ArmControl::ChangeState(StateType new_state) {
    int ret = true;

    // state dependent switching
    switch(new_state) {
	case(STATE_OFF):
	case(STATE_FAULT):
		ChangeMode(MODE_NONE);
	break;
	default:
		break;
    }

    // change state
    state_mode.state = new_state;

    // send feedback
    ROS_INFO("ArmControl::ChangeState %d", (int)state_mode.state);

    return true;
}

/*----------------------------------------------------------------------------
  change mode
  *----------------------------------------------------------------------------*/
bool ArmControl::ChangeMode(ModeType new_mode) {
    int ret = true;

    // check for state on
    if(GetState() != STATE_ON) {
        state_mode.mode = MODE_NONE;
        return false;
    }

    // mode dependent switching
    switch(new_mode) {
	case(MODE_HOME): {
		hdt_arm_control::JointSpacePathGoal goal;
		goal.pose = "arm_home";
		for(int i = 0; i < num_joints; i++) {
			joint_cmd_msg.velocity[i] = MAX_STOW_VEL;
		}
		joint_space_path_ac->sendGoal(goal);

		// home hand
		//kinematic_state->setToDefaultValues(hand_model_group, "hand_home");
		//kinematic_state->copyJointGroupPositions(hand_model_group, hand_cmd_msg.position);
		break;
	}
	case(MODE_STOWED): {
		hdt_arm_control::JointSpacePathGoal goal;
		goal.pose = "arm_stow";
		for(int i = 0; i < num_joints; i++) {
			joint_cmd_msg.velocity[i] = MAX_STOW_VEL;
		}
		joint_space_path_ac->sendGoal(goal);

		// home hand
		//kinematic_state->setToDefaultValues(hand_model_group, "hand_home");
		//kinematic_state->copyJointGroupPositions(hand_model_group, hand_cmd_msg.position);
		break;
	}
        //case(MODE_ZERO): {
		//hdt_arm_control::JointSpacePathGoal goal;
		//goal.pose = "zero";
		//joint_space_path_ac->sendGoal(goal);

		// home hand
		//kinematic_state->setToDefaultValues(hand_model_group, "hand_home");
		//kinematic_state->copyJointGroupPositions(hand_model_group, hand_cmd_msg.position);
		//break;
        //}
	default:
		for(int i = 0; i < num_joints; i++) {
			joint_cmd_msg.velocity[i] = MAX_JOINT_VEL;
		}
		break;
    }

    // change mode
    state_mode.mode = new_mode;

    // send feedback
    ROS_INFO("ArmControl::ChangeMode %d", (int)state_mode.mode);

    return ret;
}

/*----------------------------------------------------------------------------
  joy callback
  *----------------------------------------------------------------------------*/
void ArmControl::JoyCallback(const sensor_msgs::Joy& msg) {
    // process A button up
    if((msg.buttons[0] == 0) && (joy_msg.buttons[0] == 1)) {
        ROS_INFO("ArmControl::JoyCallback::A");

        // change mode
        if(ChangeMode(MODE_HOME)) {
        }
    }
    // process B button up
    if((msg.buttons[1] == 0) && (joy_msg.buttons[1] == 1)) {
        ROS_INFO("ArmControl::JoyCallback::B");

        // change mode
        if(ChangeMode(MODE_STOWED)) {
        }
    }
    // process X button up
    if((msg.buttons[2] == 0) && (joy_msg.buttons[2] == 1)) {
        ROS_INFO("ArmControl::JoyCallback::X");

        // change mode
        if(ChangeMode(MODE_TEACH)) {
        }
    }
    // process Y button up
    if((msg.buttons[3] == 0) && (joy_msg.buttons[3] == 1)) {
        ROS_INFO("ArmControl::JoyCallback::Y");

        // change mode
        if(ChangeMode(MODE_NONE)) {
			//if(ChangeMode(MODE_ZERO)) {
        }

        // store pose
        //Transform2Pose(task_space_fb_msg.transforms[0], test_pose);
        //test_waypoints.push_back(test_pose);
        //test_pose.position.x = task_space_fb_msg.transforms[0].translation.x;
        //test_pose.position.y = task_space_fb_msg.transforms[0].translation.y;
        //test_pose.position.z = task_space_fb_msg.transforms[0].translation.z;
        //test_pose.orientation = task_space_fb_msg.transforms[0].rotation;
    }
    // process Start button up
    if((msg.buttons[7] == 0) && (joy_msg.buttons[7] == 1)) {
        ROS_INFO("ArmControl::JoyCallback::Start");

        // change state
        switch(GetState()) {
		case(STATE_OFF):
			ChangeState(STATE_ON);
			break;
		default:
			ChangeState(STATE_OFF);
			break;
        }
    }

    // process Back button up
    if((msg.buttons[6] == 0) && (joy_msg.buttons[6] == 1)) {
        ROS_INFO("ArmControl::JoyCallback::Back");

        // test call action
        //if(ChangeMode(MODE_FREE_SPACE)) {
        //if(ChangeMode(MODE_APPROACH)) {
        //  hdt_arm_control::TaskSpacePathGoal goal;
        //  goal.marker = IK_LINK_NAME;
        //  goal.pose = test_pose;
        //  task_space_path_ac->sendGoal(goal);
		//hdt_arm_control::TrajectoryPathGoal goal;
		//goal.marker = fiducial_links.begin()->first;
		//goal.waypoints = test_waypoints;
		//trajectory_path_ac->sendGoal(goal);
        //}
    }

    // update joy_msg
    joy_msg = msg;
}

/*----------------------------------------------------------------------------
  joint telem callback
  *----------------------------------------------------------------------------*/
void ArmControl::JointTelemCb(const sensor_msgs::JointState& msg) {
    //ROS_INFO("ArmControl::JointTelemCb");

    // update joint telem
    joint_telem_msg = msg;
}

/*----------------------------------------------------------------------------
  main function
  *----------------------------------------------------------------------------*/
int main(int argc, char **argv) {
    ros::init(argc, argv, ROS_NAME);
    int ret;

    ROS_INFO("%s starting", ROS_NAME);

    // start spinner
    ros::AsyncSpinner spinner(2);
    spinner.start();

    // arm control class
    ArmControl arm_ctl;
    if(arm_ctl.Init() <= 0) {
        return 0;
    }

    // wait for ctl-c
    ros::waitForShutdown();

    return 0;
}
