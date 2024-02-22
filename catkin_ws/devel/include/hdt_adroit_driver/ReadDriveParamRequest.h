// Generated by gencpp from file hdt_adroit_driver/ReadDriveParamRequest.msg
// DO NOT EDIT!


#ifndef HDT_ADROIT_DRIVER_MESSAGE_READDRIVEPARAMREQUEST_H
#define HDT_ADROIT_DRIVER_MESSAGE_READDRIVEPARAMREQUEST_H


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
struct ReadDriveParamRequest_
{
  typedef ReadDriveParamRequest_<ContainerAllocator> Type;

  ReadDriveParamRequest_()
    : name()
    , index(0)  {
    }
  ReadDriveParamRequest_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , index(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef uint32_t _index_type;
  _index_type index;





  typedef boost::shared_ptr< ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ReadDriveParamRequest_

typedef ::hdt_adroit_driver::ReadDriveParamRequest_<std::allocator<void> > ReadDriveParamRequest;

typedef boost::shared_ptr< ::hdt_adroit_driver::ReadDriveParamRequest > ReadDriveParamRequestPtr;
typedef boost::shared_ptr< ::hdt_adroit_driver::ReadDriveParamRequest const> ReadDriveParamRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hdt_adroit_driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'hdt_adroit_driver': ['/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_adroit_driver/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "391e1c76233bf5e7b95e2e66ba9b9a4f";
  }

  static const char* value(const ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x391e1c76233bf5e7ULL;
  static const uint64_t static_value2 = 0xb95e2e66ba9b9a4fULL;
};

template<class ContainerAllocator>
struct DataType< ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hdt_adroit_driver/ReadDriveParamRequest";
  }

  static const char* value(const ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n\
uint32 index\n\
";
  }

  static const char* value(const ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.index);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ReadDriveParamRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hdt_adroit_driver::ReadDriveParamRequest_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "index: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.index);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HDT_ADROIT_DRIVER_MESSAGE_READDRIVEPARAMREQUEST_H
