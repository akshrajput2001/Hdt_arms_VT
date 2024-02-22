// Generated by gencpp from file hdt_saffir_control/JointSpacePathFeedback.msg
// DO NOT EDIT!


#ifndef HDT_SAFFIR_CONTROL_MESSAGE_JOINTSPACEPATHFEEDBACK_H
#define HDT_SAFFIR_CONTROL_MESSAGE_JOINTSPACEPATHFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hdt_saffir_control
{
template <class ContainerAllocator>
struct JointSpacePathFeedback_
{
  typedef JointSpacePathFeedback_<ContainerAllocator> Type;

  JointSpacePathFeedback_()
    {
    }
  JointSpacePathFeedback_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct JointSpacePathFeedback_

typedef ::hdt_saffir_control::JointSpacePathFeedback_<std::allocator<void> > JointSpacePathFeedback;

typedef boost::shared_ptr< ::hdt_saffir_control::JointSpacePathFeedback > JointSpacePathFeedbackPtr;
typedef boost::shared_ptr< ::hdt_saffir_control::JointSpacePathFeedback const> JointSpacePathFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hdt_saffir_control

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'hdt_saffir_control': ['/home/arl/Hdt_arms_VT/catkin_ws/devel/share/hdt_saffir_control/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hdt_saffir_control/JointSpacePathFeedback";
  }

  static const char* value(const ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#feedback\n\
\n\
";
  }

  static const char* value(const ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointSpacePathFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::hdt_saffir_control::JointSpacePathFeedback_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // HDT_SAFFIR_CONTROL_MESSAGE_JOINTSPACEPATHFEEDBACK_H
