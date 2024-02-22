// Generated by gencpp from file hdt_saffir_control/JointSpacePathAction.msg
// DO NOT EDIT!


#ifndef HDT_SAFFIR_CONTROL_MESSAGE_JOINTSPACEPATHACTION_H
#define HDT_SAFFIR_CONTROL_MESSAGE_JOINTSPACEPATHACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <hdt_saffir_control/JointSpacePathActionGoal.h>
#include <hdt_saffir_control/JointSpacePathActionResult.h>
#include <hdt_saffir_control/JointSpacePathActionFeedback.h>

namespace hdt_saffir_control
{
template <class ContainerAllocator>
struct JointSpacePathAction_
{
  typedef JointSpacePathAction_<ContainerAllocator> Type;

  JointSpacePathAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  JointSpacePathAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::hdt_saffir_control::JointSpacePathActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::hdt_saffir_control::JointSpacePathActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::hdt_saffir_control::JointSpacePathActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator> const> ConstPtr;

}; // struct JointSpacePathAction_

typedef ::hdt_saffir_control::JointSpacePathAction_<std::allocator<void> > JointSpacePathAction;

typedef boost::shared_ptr< ::hdt_saffir_control::JointSpacePathAction > JointSpacePathActionPtr;
typedef boost::shared_ptr< ::hdt_saffir_control::JointSpacePathAction const> JointSpacePathActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hdt_saffir_control

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'hdt_saffir_control': ['/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2c94696f2724382682afbb876fec1118";
  }

  static const char* value(const ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2c94696f27243826ULL;
  static const uint64_t static_value2 = 0x82afbb876fec1118ULL;
};

template<class ContainerAllocator>
struct DataType< ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hdt_saffir_control/JointSpacePathAction";
  }

  static const char* value(const ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
JointSpacePathActionGoal action_goal\n\
JointSpacePathActionResult action_result\n\
JointSpacePathActionFeedback action_feedback\n\
\n\
================================================================================\n\
MSG: hdt_saffir_control/JointSpacePathActionGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
JointSpacePathGoal goal\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: hdt_saffir_control/JointSpacePathGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#goal\n\
string pose\n\
\n\
================================================================================\n\
MSG: hdt_saffir_control/JointSpacePathActionResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
JointSpacePathResult result\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalStatus\n\
GoalID goal_id\n\
uint8 status\n\
uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n\
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n\
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n\
                            #   and has since completed its execution (Terminal State)\n\
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n\
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n\
                            #    to some failure (Terminal State)\n\
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n\
                            #    because the goal was unattainable or invalid (Terminal State)\n\
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n\
                            #    and has not yet completed execution\n\
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n\
                            #    but the action server has not yet confirmed that the goal is canceled\n\
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n\
                            #    and was successfully cancelled (Terminal State)\n\
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n\
                            #    sent over the wire by an action server\n\
\n\
#Allow for the user to associate a string with GoalStatus for debugging\n\
string text\n\
\n\
\n\
================================================================================\n\
MSG: hdt_saffir_control/JointSpacePathResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#result\n\
\n\
================================================================================\n\
MSG: hdt_saffir_control/JointSpacePathActionFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
JointSpacePathFeedback feedback\n\
\n\
================================================================================\n\
MSG: hdt_saffir_control/JointSpacePathFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#feedback\n\
\n\
";
  }

  static const char* value(const ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointSpacePathAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hdt_saffir_control::JointSpacePathAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::hdt_saffir_control::JointSpacePathActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::hdt_saffir_control::JointSpacePathActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::hdt_saffir_control::JointSpacePathActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HDT_SAFFIR_CONTROL_MESSAGE_JOINTSPACEPATHACTION_H
