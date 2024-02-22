// Generated by gencpp from file hdt_hocu_driver/SetFont.msg
// DO NOT EDIT!


#ifndef HDT_HOCU_DRIVER_MESSAGE_SETFONT_H
#define HDT_HOCU_DRIVER_MESSAGE_SETFONT_H


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
struct SetFont_
{
  typedef SetFont_<ContainerAllocator> Type;

  SetFont_()
    : header()
    , size(0)
    , options(0)  {
    }
  SetFont_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , size(0)
    , options(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint16_t _size_type;
  _size_type size;

   typedef uint16_t _options_type;
  _options_type options;





  typedef boost::shared_ptr< ::hdt_hocu_driver::SetFont_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hdt_hocu_driver::SetFont_<ContainerAllocator> const> ConstPtr;

}; // struct SetFont_

typedef ::hdt_hocu_driver::SetFont_<std::allocator<void> > SetFont;

typedef boost::shared_ptr< ::hdt_hocu_driver::SetFont > SetFontPtr;
typedef boost::shared_ptr< ::hdt_hocu_driver::SetFont const> SetFontConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hdt_hocu_driver::SetFont_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hdt_hocu_driver::SetFont_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hdt_hocu_driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'hdt_hocu_driver': ['/home/arl/Hdt_arms_VT/catkin_ws/src/hdt_hocu_driver/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hdt_hocu_driver::SetFont_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hdt_hocu_driver::SetFont_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_hocu_driver::SetFont_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_hocu_driver::SetFont_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_hocu_driver::SetFont_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_hocu_driver::SetFont_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hdt_hocu_driver::SetFont_<ContainerAllocator> >
{
  static const char* value()
  {
    return "22b2599520cfd6c6a6050253935b4b58";
  }

  static const char* value(const ::hdt_hocu_driver::SetFont_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x22b2599520cfd6c6ULL;
  static const uint64_t static_value2 = 0xa6050253935b4b58ULL;
};

template<class ContainerAllocator>
struct DataType< ::hdt_hocu_driver::SetFont_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hdt_hocu_driver/SetFont";
  }

  static const char* value(const ::hdt_hocu_driver::SetFont_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hdt_hocu_driver::SetFont_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# SetFont\n\
\n\
std_msgs/Header header\n\
uint16 size\n\
uint16 options\n\
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

  static const char* value(const ::hdt_hocu_driver::SetFont_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hdt_hocu_driver::SetFont_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.size);
      stream.next(m.options);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetFont_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hdt_hocu_driver::SetFont_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hdt_hocu_driver::SetFont_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "size: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.size);
    s << indent << "options: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.options);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HDT_HOCU_DRIVER_MESSAGE_SETFONT_H
