#ifndef yaml_publisher_h
#define yaml_publisher_h

#include "ros/ros.h"

#include "sensor_msgs/MultiDOFJointState.h"
#include "trajectory_msgs/MultiDOFJointTrajectory.h"

#include <fstream>
#include <sstream>
#include "yaml-cpp/yaml.h"

#include "visualization_msgs/Marker.h"

//#include "stratom_coms.h"

#define ROS_NAME					"yaml_publisher"
#define ENDPOINT_MARKER_TOPIC		"/visualization_marker"
#define TASK_SPACE_REQ_TOPIC		"/task_space_req"
#define TASK_SPACE_FB_TOPIC		"/task_space_fb"

unsigned int split(const std::string &s, std::vector<std::string> &elems, char delim);

// conversion
void Pose2Transform(const geometry_msgs::Pose &pose, geometry_msgs::Transform &transform);
void Transform2Pose(const geometry_msgs::Transform &transform, geometry_msgs::Pose &pose);

class YamlPublisher {
public:
	// setup
	YamlPublisher() {}
	~YamlPublisher() {};
	
	int Init(void);
	void UserInterface(void);
private:
	std::string endpoint_link, robot_prefix;
	void AddEndpointMarker(const geometry_msgs::Transform &transform);

	// callbacks
	void TaskSpaceFbCb(const sensor_msgs::MultiDOFJointState& msg);

	// subscribers
	ros::Subscriber task_space_fb_sub;

	// publishers
	ros::Publisher task_space_req_pub;
	ros::Publisher trajectory_req_pub;
	ros::Publisher endpoint_marker_pub;

	// messages
	sensor_msgs::MultiDOFJointState task_space_fb_msg;
	sensor_msgs::MultiDOFJointState task_space_req_msg;
	trajectory_msgs::MultiDOFJointTrajectory trajectory_req_msg;
	visualization_msgs::Marker endpoint_marker_msg;
};

#endif // yaml_publisher_h
