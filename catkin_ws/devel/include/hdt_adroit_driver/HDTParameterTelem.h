// Generated by gencpp from file hdt_adroit_driver/HDTParameterTelem.msg
// DO NOT EDIT!


#ifndef HDT_ADROIT_DRIVER_MESSAGE_HDTPARAMETERTELEM_H
#define HDT_ADROIT_DRIVER_MESSAGE_HDTPARAMETERTELEM_H


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
struct HDTParameterTelem_
{
  typedef HDTParameterTelem_<ContainerAllocator> Type;

  HDTParameterTelem_()
    : head(0)
    , index(0)
    , sub_index(0)
    , data(0)  {
    }
  HDTParameterTelem_(const ContainerAllocator& _alloc)
    : head(0)
    , index(0)
    , sub_index(0)
    , data(0)  {
  (void)_alloc;
    }



   typedef uint8_t _head_type;
  _head_type head;

   typedef uint16_t _index_type;
  _index_type index;

   typedef uint8_t _sub_index_type;
  _sub_index_type sub_index;

   typedef uint32_t _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator> const> ConstPtr;

}; // struct HDTParameterTelem_

typedef ::hdt_adroit_driver::HDTParameterTelem_<std::allocator<void> > HDTParameterTelem;

typedef boost::shared_ptr< ::hdt_adroit_driver::HDTParameterTelem > HDTParameterTelemPtr;
typedef boost::shared_ptr< ::hdt_adroit_driver::HDTParameterTelem const> HDTParameterTelemConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hdt_adroit_driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'hdt_adroit_driver': ['/home/arl/catkin_ws/src/hdt_adroit_driver/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9c3ccffb91d861d89d3d9dcfa704f7e8";
  }

  static const char* value(const ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9c3ccffb91d861d8ULL;
  static const uint64_t static_value2 = 0x9d3d9dcfa704f7e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hdt_adroit_driver/HDTParameterTelem";
  }

  static const char* value(const ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 head\n\
uint16 index\n\
uint8 sub_index\n\
uint32 data\n\
";
  }

  static const char* value(const ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.head);
      stream.next(m.index);
      stream.next(m.sub_index);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HDTParameterTelem_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hdt_adroit_driver::HDTParameterTelem_<ContainerAllocator>& v)
  {
    s << indent << "head: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.head);
    s << indent << "index: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.index);
    s << indent << "sub_index: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.sub_index);
    s << indent << "data: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HDT_ADROIT_DRIVER_MESSAGE_HDTPARAMETERTELEM_H
