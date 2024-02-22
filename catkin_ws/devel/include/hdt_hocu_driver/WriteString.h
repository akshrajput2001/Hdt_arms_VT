// Generated by gencpp from file hdt_hocu_driver/WriteString.msg
// DO NOT EDIT!


#ifndef HDT_HOCU_DRIVER_MESSAGE_WRITESTRING_H
#define HDT_HOCU_DRIVER_MESSAGE_WRITESTRING_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace hdt_hocu_driver
{
template <class ContainerAllocator>
struct WriteString_
{
  typedef WriteString_<ContainerAllocator> Type;

  WriteString_()
    : header()
    , text()  {
    }
  WriteString_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , text(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _text_type;
  _text_type text;





  typedef boost::shared_ptr< ::hdt_hocu_driver::WriteString_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hdt_hocu_driver::WriteString_<ContainerAllocator> const> ConstPtr;

}; // struct WriteString_

typedef ::hdt_hocu_driver::WriteString_<std::allocator<void> > WriteString;

typedef boost::shared_ptr< ::hdt_hocu_driver::WriteString > WriteStringPtr;
typedef boost::shared_ptr< ::hdt_hocu_driver::WriteString const> WriteStringConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hdt_hocu_driver::WriteString_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hdt_hocu_driver::WriteString_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hdt_hocu_driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'hdt_hocu_driver': ['/home/arl/catkin_ws/src/hdt_hocu_driver/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hdt_hocu_driver::WriteString_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hdt_hocu_driver::WriteString_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_hocu_driver::WriteString_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_hocu_driver::WriteString_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_hocu_driver::WriteString_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_hocu_driver::WriteString_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hdt_hocu_driver::WriteString_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b925c3f72cbc309dc37196f73e57487f";
  }

  static const char* value(const ::hdt_hocu_driver::WriteString_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb925c3f72cbc309dULL;
  static const uint64_t static_value2 = 0xc37196f73e57487fULL;
};

template<class ContainerAllocator>
struct DataType< ::hdt_hocu_driver::WriteString_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hdt_hocu_driver/WriteString";
  }

  static const char* value(const ::hdt_hocu_driver::WriteString_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hdt_hocu_driver::WriteString_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# WriteString\n\
\n\
std_msgs/Header header\n\
string text\n\
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
";
  }

  static const char* value(const ::hdt_hocu_driver::WriteString_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hdt_hocu_driver::WriteString_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.text);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WriteString_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hdt_hocu_driver::WriteString_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hdt_hocu_driver::WriteString_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "text: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.text);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HDT_HOCU_DRIVER_MESSAGE_WRITESTRING_H