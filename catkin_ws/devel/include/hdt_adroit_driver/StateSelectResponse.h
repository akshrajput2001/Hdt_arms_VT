// Generated by gencpp from file hdt_adroit_driver/StateSelectResponse.msg
// DO NOT EDIT!


#ifndef HDT_ADROIT_DRIVER_MESSAGE_STATESELECTRESPONSE_H
#define HDT_ADROIT_DRIVER_MESSAGE_STATESELECTRESPONSE_H


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
struct StateSelectResponse_
{
  typedef StateSelectResponse_<ContainerAllocator> Type;

  StateSelectResponse_()
    : ret(0)  {
    }
  StateSelectResponse_(const ContainerAllocator& _alloc)
    : ret(0)  {
  (void)_alloc;
    }



   typedef uint32_t _ret_type;
  _ret_type ret;





  typedef boost::shared_ptr< ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator> const> ConstPtr;

}; // struct StateSelectResponse_

typedef ::hdt_adroit_driver::StateSelectResponse_<std::allocator<void> > StateSelectResponse;

typedef boost::shared_ptr< ::hdt_adroit_driver::StateSelectResponse > StateSelectResponsePtr;
typedef boost::shared_ptr< ::hdt_adroit_driver::StateSelectResponse const> StateSelectResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "52acc27c1cff0cf55859ed3fb05310f6";
  }

  static const char* value(const ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x52acc27c1cff0cf5ULL;
  static const uint64_t static_value2 = 0x5859ed3fb05310f6ULL;
};

template<class ContainerAllocator>
struct DataType< ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hdt_adroit_driver/StateSelectResponse";
  }

  static const char* value(const ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 ret\n\
";
  }

  static const char* value(const ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ret);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StateSelectResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hdt_adroit_driver::StateSelectResponse_<ContainerAllocator>& v)
  {
    s << indent << "ret: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.ret);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HDT_ADROIT_DRIVER_MESSAGE_STATESELECTRESPONSE_H
