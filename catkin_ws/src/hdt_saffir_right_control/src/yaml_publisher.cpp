#include "yaml_publisher.h"

#include "trajectory_msgs/MultiDOFJointTrajectoryPoint.h"

/*----------------------------------------------------------------------------
  pose telem callback
 *----------------------------------------------------------------------------*/
void YamlPublisher::TaskSpaceFbCb(const sensor_msgs::MultiDOFJointState& msg) {
	//ROS_INFO("YamlPublisher::TaskSpaceFbCb");
	task_space_fb_msg = msg;
}

/*----------------------------------------------------------------------------
  init
 *----------------------------------------------------------------------------*/
int YamlPublisher::Init(void) {
	//ROS_INFO("YamlPublisher::Init");
	ros::NodeHandle pnh("~");

	// get endpoint marker name
	pnh.param<std::string>("endpoint_link", endpoint_link, "endpoint_link");
	pnh.param<std::string>("robot_prefix", robot_prefix, "");

	// update trajectory message
	trajectory_req_msg.joint_names.push_back(endpoint_link);

	// get node handle
	ros::NodeHandle nh(robot_prefix);

	// initialize message seq
	//task_space_fb_msg.header.seq = 0;
	task_space_req_msg.header.seq = 0;
	trajectory_req_msg.header.seq = 0;
	endpoint_marker_msg.header.seq = 0;

	// initialize marker
	endpoint_marker_msg.header.frame_id = "world";
	endpoint_marker_msg.ns = robot_prefix;
	endpoint_marker_msg.id = 0;
	endpoint_marker_msg.type = visualization_msgs::Marker::POINTS;
	endpoint_marker_msg.action = visualization_msgs::Marker::ADD;
	endpoint_marker_msg.pose.position.x = 0.0;
	endpoint_marker_msg.pose.position.y = 0.0;
	endpoint_marker_msg.pose.position.z = 0.0;
	endpoint_marker_msg.pose.orientation.x = 0.0;
	endpoint_marker_msg.pose.orientation.y = 0.0;
	endpoint_marker_msg.pose.orientation.z = 0.0;
	endpoint_marker_msg.pose.orientation.w = 1.0;
	endpoint_marker_msg.scale.x = 0.01;
	endpoint_marker_msg.scale.y = 0.01;
	endpoint_marker_msg.scale.z = 0.01;
	endpoint_marker_msg.color.a = 0.5;
	endpoint_marker_msg.color.r = 1.0;
	endpoint_marker_msg.color.g = 1.0;
	endpoint_marker_msg.color.b = 1.0;
	endpoint_marker_msg.points.clear();


	// subscribe to endpoint pose
	task_space_fb_sub = nh.subscribe(TASK_SPACE_FB_TOPIC, 3, &YamlPublisher::TaskSpaceFbCb, this);

	// publishers
	//pose_cmd_pub = nh.advertise<hdt_alias_control::HDTPoseArray>(POSE_CMD_TOPIC, 3);
	task_space_req_pub = nh.advertise<sensor_msgs::MultiDOFJointState>(TASK_SPACE_REQ_TOPIC, 3);
	endpoint_marker_pub = nh.advertise<visualization_msgs::Marker>(ENDPOINT_MARKER_TOPIC, 3);
	
	return 1;
}

/*----------------------------------------------------------------------------
  user interface
 *----------------------------------------------------------------------------*/
void YamlPublisher::AddEndpointMarker(const geometry_msgs::Transform &transform) {
	// add point to marker
	geometry_msgs::Pose pose;
	Transform2Pose(transform, pose);
	endpoint_marker_msg.points.push_back(pose.position);

	// publish marker
	endpoint_marker_msg.header.stamp = ros::Time::now();
	endpoint_marker_pub.publish(endpoint_marker_msg);
}

/*----------------------------------------------------------------------------
  user interface
 *----------------------------------------------------------------------------*/
void YamlPublisher::UserInterface(void) {
	//ROS_INFO("YamlPublisher::UserInterface");
	
	// print menu
	std::cout << "a - add pose to path" << std::endl;
	std::cout << "c - clear path" << std::endl;
	std::cout << "w - write path to file" << std::endl;
	std::cout << "r - read file into path" << std::endl;
	std::cout << "s - show path" << std::endl;
	std::cout << "e - execute path" << std::endl;
	std::cout << "q - quit" << std::endl;

	// main loop
	std::vector<std::string> lines;
	std::string input_line;
	while(1) {
		// get input
		std::cout << ">> ";
		std::getline(std::cin, input_line);
		//std::transform(input_line.begin(), input_line.end(), input_line.begin(), ::toupper); // uppercase all messages
		split(input_line, lines, ' '); // split everything separated by spaces
		//std::cout << std::endl;

		// input specific action
		if(lines.size() == 0) {
			continue;
		}
		else if(lines[0] == "q") {
			break;
		}
		else if(lines[0] == "c") {
			trajectory_req_msg.points.clear();

			// clear markers
			endpoint_marker_msg.points.clear();
			endpoint_marker_msg.header.stamp = ros::Time::now();
			endpoint_marker_pub.publish(endpoint_marker_msg);
		}
		else if(lines[0] == "a") {
			// add to point
			trajectory_msgs::MultiDOFJointTrajectoryPoint point;
			point.transforms.push_back(task_space_fb_msg.transforms[0]);
	
			// add to path
			trajectory_req_msg.points.push_back(point);

			// add endpoint marker
			AddEndpointMarker(point.transforms[0]);
		}
		else if(lines[0] == "w") {
			// check for valid arguments
			if(lines.size() != 2) {
				ROS_ERROR("invalid arguments...");
				continue;
			}
			
			// get file name
			std::string file_name = lines[1];
			
			// begin yaml
			YAML::Emitter out;
   			out << YAML::BeginSeq;
			
			// add endpoints
			uint32_t size = trajectory_req_msg.points.size();
			for(std::size_t i = 0; i < size; i++) {
				// create vectors for endpoint
				std::vector<double> endpoint_position, endpoint_orientation;
				endpoint_position.push_back(trajectory_req_msg.points[i].transforms[0].translation.x);
				endpoint_position.push_back(trajectory_req_msg.points[i].transforms[0].translation.y);
				endpoint_position.push_back(trajectory_req_msg.points[i].transforms[0].translation.z);
				endpoint_orientation.push_back(trajectory_req_msg.points[i].transforms[0].rotation.x);
				endpoint_orientation.push_back(trajectory_req_msg.points[i].transforms[0].rotation.y);
				endpoint_orientation.push_back(trajectory_req_msg.points[i].transforms[0].rotation.z);
				endpoint_orientation.push_back(trajectory_req_msg.points[i].transforms[0].rotation.w);

				// create yaml map
				out << YAML::BeginMap;
				out << YAML::Key << "num";
				out << YAML::Value << i;
				out << YAML::Key << "endpoint_position";
				out << YAML::Value << YAML::Flow << endpoint_position;
				out << YAML::Key << "endpoint_orientation";
				out << YAML::Value << YAML::Flow << endpoint_orientation;
				//out << YAML::Key << "grasp_name";
				//out << YAML::Value << YAML::Flow << grasp_name;
				//out << YAML::Key << "grasp_position";
				//out << YAML::Value << YAML::Flow << grasp_position;
				out << YAML::EndMap;
			}
			
			// write yaml
			out << YAML::EndSeq;
			std::ofstream fout;
			fout.open(file_name.c_str());
			fout << out.c_str();
			fout.close();
		}
		else if(lines[0] == "r") {
			// check for valid arguments
			if((lines.size() < 2) || (lines.size() > 3)){
				ROS_ERROR("invalid arguments...");
				continue;
			}
			
			// get file name
			std::string file_name = lines[1];
			
			// read yaml
			std::ifstream fin(file_name.c_str());
			YAML::Node in = YAML::Load(fin);
			//std::cout << in.size() << "\n";

			// parse repeat
			int num_repeat = 1;
			if(lines.size() == 3) {
				try {
					// parse input
					std::istringstream(lines[2]) >> num_repeat;
					//ROS_INFO("num repeat = %d", num_repeat);
					// check for valid repeat
					if(num_repeat < 1) {
						ROS_ERROR("invalid number of repeats...");
						continue;
					}
				}
				catch(...) {
					ROS_ERROR("invalid arguments...");
					continue;
				}
			}

			// get waypoints
			uint32_t size = in.size();
			for(int j = 0; j < num_repeat; j++) {
				for(std::size_t i = 0; i < size; i++) {
					geometry_msgs::Transform transform;
					//std::cout << in[i]["num"].as<int>() << "\n";
					transform.translation.x = in[i]["endpoint_position"][0].as<double>();
					transform.translation.y = in[i]["endpoint_position"][1].as<double>();
					transform.translation.z = in[i]["endpoint_position"][2].as<double>();
					transform.rotation.x = in[i]["endpoint_orientation"][0].as<double>();
					transform.rotation.y = in[i]["endpoint_orientation"][1].as<double>();
					transform.rotation.z = in[i]["endpoint_orientation"][2].as<double>();
					transform.rotation.w = in[i]["endpoint_orientation"][3].as<double>();

					// add to point
					trajectory_msgs::MultiDOFJointTrajectoryPoint point;
					point.transforms.push_back(transform);
				
					// add to path
					trajectory_req_msg.points.push_back(point);

					// add endpoint marker
					AddEndpointMarker(transform);
				}
			}
		}
		else if(lines[0] == "e") {
			// publish endpoint
			uint32_t size = trajectory_req_msg.points.size();
			for(uint32_t i = 0; i < size; i++) {
				// clear trajectory msg
				task_space_req_msg.joint_names.clear();
				task_space_req_msg.transforms.clear();

				// populate multidof trajectory
				task_space_req_msg.joint_names.push_back(trajectory_req_msg.joint_names[0]);
				task_space_req_msg.transforms.push_back(trajectory_req_msg.points[i].transforms[0]);
				
				// publish
				std::cout << "sending pose " << i + 1 << "/" << size;
				task_space_req_msg.header.seq++;
				task_space_req_msg.header.stamp = ros::Time::now();
				task_space_req_pub.publish(task_space_req_msg);
	
				// pause
				if(i < (size-1)) std::cin.get();
				else std::cout << std::endl;
			}
		}
		else if(lines[0] == "s") {
			uint32_t size = trajectory_req_msg.points.size();
			std::cout << "path size = " << size << std::endl;
		}
	}
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

	// yaml test class
	YamlPublisher yaml_publisher;
	if(yaml_publisher.Init() <= 0) {
		return 0;
	}

	// run ui
	yaml_publisher.UserInterface();
	
	// wait for ctl-c
	//ros::waitForShutdown();

	return 0;
}

/*----------------------------------------------------------------------------
  split function
 *----------------------------------------------------------------------------*/
unsigned int split(const std::string &s, std::vector<std::string> &elems, char delim) {
	elems.clear();
    std::stringstream ss(s);
    std::string item;
    while (std::getline(ss, item, delim)) {
        elems.push_back(item);
    }
    return elems.size();
}

/*----------------------------------------------------------------------------
  pose to transform
 *----------------------------------------------------------------------------*/
void Pose2Transform(const geometry_msgs::Pose &pose, geometry_msgs::Transform &transform) {
	transform.translation.x = pose.position.x;
	transform.translation.y = pose.position.y;
	transform.translation.z = pose.position.z;
	transform.rotation = pose.orientation;
}

/*----------------------------------------------------------------------------
  transform to pose
 *----------------------------------------------------------------------------*/
void Transform2Pose(const geometry_msgs::Transform &transform, geometry_msgs::Pose &pose) {
	pose.position.x = transform.translation.x;
	pose.position.y = transform.translation.y;
	pose.position.z = transform.translation.z;
	pose.orientation = transform.rotation;
}
