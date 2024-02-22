// Generated by gencpp from file hdt_arm_control/TrajectoryPathResult.msg
// DO NOT EDIT!


#ifndef HDT_ARM_CONTROL_MESSAGE_TRAJECTORYPATHRESULT_H
#define HDT_ARM_CONTROL_MESSAGE_TRAJECTORYPATHRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hdt_arm_control
{
template <class ContainerAllocator>
struct TrajectoryPathResult_
{
  typedef TrajectoryPathResult_<ContainerAllocator> Type;

  TrajectoryPathResult_()
    {
    }
  TrajectoryPathResult_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator> const> ConstPtr;

}; // struct TrajectoryPathResult_

typedef ::hdt_arm_control::TrajectoryPathResult_<std::allocator<void> > TrajectoryPathResult;

typedef boost::shared_ptr< ::hdt_arm_control::TrajectoryPathResult > TrajectoryPathResultPtr;
typedef boost::shared_ptr< ::hdt_arm_control::TrajectoryPathResult const> TrajectoryPathResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hdt_arm_control

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'hdt_arm_control': ['/home/arl/catkin_ws/devel/share/hdt_arm_control/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hdt_arm_control/TrajectoryPathResult";
  }

  static const char* value(const ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#result\n\
";
  }

  static const char* value(const ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrajectoryPathResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::hdt_arm_control::TrajectoryPathResult_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // HDT_ARM_CONTROL_MESSAGE_TRAJECTORYPATHRESULT_H
