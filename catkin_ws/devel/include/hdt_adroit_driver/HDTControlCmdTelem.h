// Generated by gencpp from file hdt_adroit_driver/HDTControlCmdTelem.msg
// DO NOT EDIT!


#ifndef HDT_ADROIT_DRIVER_MESSAGE_HDTCONTROLCMDTELEM_H
#define HDT_ADROIT_DRIVER_MESSAGE_HDTCONTROLCMDTELEM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hdt_adroit_driver
{
template <class ContainerAllocator>
struct HDTControlCmdTelem_
{
  typedef HDTControlCmdTelem_<ContainerAllocator> Type;

  HDTControlCmdTelem_()
    : position(0.0)
    , velocity(0.0)
    , effort(0.0)
    , motor_current(0.0)  {
    }
  HDTControlCmdTelem_(const ContainerAllocator& _alloc)
    : position(0.0)
    , velocity(0.0)
    , effort(0.0)
    , motor_current(0.0)  {
  (void)_alloc;
    }



   typedef float _position_type;
  _position_type position;

   typedef float _velocity_type;
  _velocity_type velocity;

   typedef float _effort_type;
  _effort_type effort;

   typedef float _motor_current_type;
  _motor_current_type motor_current;





  typedef boost::shared_ptr< ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator> const> ConstPtr;

}; // struct HDTControlCmdTelem_

typedef ::hdt_adroit_driver::HDTControlCmdTelem_<std::allocator<void> > HDTControlCmdTelem;

typedef boost::shared_ptr< ::hdt_adroit_driver::HDTControlCmdTelem > HDTControlCmdTelemPtr;
typedef boost::shared_ptr< ::hdt_adroit_driver::HDTControlCmdTelem const> HDTControlCmdTelemConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hdt_adroit_driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'hdt_adroit_driver': ['/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1366e8e4333938cc6ba1851fe990fb6a";
  }

  static const char* value(const ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1366e8e4333938ccULL;
  static const uint64_t static_value2 = 0x6ba1851fe990fb6aULL;
};

template<class ContainerAllocator>
struct DataType< ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hdt_adroit_driver/HDTControlCmdTelem";
  }

  static const char* value(const ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 position\n\
float32 velocity\n\
float32 effort\n\
float32 motor_current\n\
";
  }

  static const char* value(const ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position);
      stream.next(m.velocity);
      stream.next(m.effort);
      stream.next(m.motor_current);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HDTControlCmdTelem_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hdt_adroit_driver::HDTControlCmdTelem_<ContainerAllocator>& v)
  {
    s << indent << "position: ";
    Printer<float>::stream(s, indent + "  ", v.position);
    s << indent << "velocity: ";
    Printer<float>::stream(s, indent + "  ", v.velocity);
    s << indent << "effort: ";
    Printer<float>::stream(s, indent + "  ", v.effort);
    s << indent << "motor_current: ";
    Printer<float>::stream(s, indent + "  ", v.motor_current);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HDT_ADROIT_DRIVER_MESSAGE_HDTCONTROLCMDTELEM_H
