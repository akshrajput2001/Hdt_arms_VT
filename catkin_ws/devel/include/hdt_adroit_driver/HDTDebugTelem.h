// Generated by gencpp from file hdt_adroit_driver/HDTDebugTelem.msg
// DO NOT EDIT!


#ifndef HDT_ADROIT_DRIVER_MESSAGE_HDTDEBUGTELEM_H
#define HDT_ADROIT_DRIVER_MESSAGE_HDTDEBUGTELEM_H


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
struct HDTDebugTelem_
{
  typedef HDTDebugTelem_<ContainerAllocator> Type;

  HDTDebugTelem_()
    : index(0)
    , hs_samples(0)
    , ls_var1(0)
    , ls_var2(0)
    , ls_var3(0)
    , hs_var1()
    , hs_var2()
    , crc(0)  {
    }
  HDTDebugTelem_(const ContainerAllocator& _alloc)
    : index(0)
    , hs_samples(0)
    , ls_var1(0)
    , ls_var2(0)
    , ls_var3(0)
    , hs_var1(_alloc)
    , hs_var2(_alloc)
    , crc(0)  {
  (void)_alloc;
    }



   typedef uint8_t _index_type;
  _index_type index;

   typedef uint8_t _hs_samples_type;
  _hs_samples_type hs_samples;

   typedef int16_t _ls_var1_type;
  _ls_var1_type ls_var1;

   typedef int16_t _ls_var2_type;
  _ls_var2_type ls_var2;

   typedef int16_t _ls_var3_type;
  _ls_var3_type ls_var3;

   typedef std::vector<int16_t, typename ContainerAllocator::template rebind<int16_t>::other >  _hs_var1_type;
  _hs_var1_type hs_var1;

   typedef std::vector<int16_t, typename ContainerAllocator::template rebind<int16_t>::other >  _hs_var2_type;
  _hs_var2_type hs_var2;

   typedef uint32_t _crc_type;
  _crc_type crc;





  typedef boost::shared_ptr< ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator> const> ConstPtr;

}; // struct HDTDebugTelem_

typedef ::hdt_adroit_driver::HDTDebugTelem_<std::allocator<void> > HDTDebugTelem;

typedef boost::shared_ptr< ::hdt_adroit_driver::HDTDebugTelem > HDTDebugTelemPtr;
typedef boost::shared_ptr< ::hdt_adroit_driver::HDTDebugTelem const> HDTDebugTelemConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hdt_adroit_driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'hdt_adroit_driver': ['/home/arl/catkin_ws/src/hdt_adroit_driver/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d366d58a05688ae09934cbaef1937408";
  }

  static const char* value(const ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd366d58a05688ae0ULL;
  static const uint64_t static_value2 = 0x9934cbaef1937408ULL;
};

template<class ContainerAllocator>
struct DataType< ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hdt_adroit_driver/HDTDebugTelem";
  }

  static const char* value(const ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 index\n\
uint8 hs_samples\n\
int16 ls_var1\n\
int16 ls_var2\n\
int16 ls_var3\n\
int16[] hs_var1\n\
int16[] hs_var2\n\
uint32 crc\n\
";
  }

  static const char* value(const ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.index);
      stream.next(m.hs_samples);
      stream.next(m.ls_var1);
      stream.next(m.ls_var2);
      stream.next(m.ls_var3);
      stream.next(m.hs_var1);
      stream.next(m.hs_var2);
      stream.next(m.crc);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HDTDebugTelem_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hdt_adroit_driver::HDTDebugTelem_<ContainerAllocator>& v)
  {
    s << indent << "index: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.index);
    s << indent << "hs_samples: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.hs_samples);
    s << indent << "ls_var1: ";
    Printer<int16_t>::stream(s, indent + "  ", v.ls_var1);
    s << indent << "ls_var2: ";
    Printer<int16_t>::stream(s, indent + "  ", v.ls_var2);
    s << indent << "ls_var3: ";
    Printer<int16_t>::stream(s, indent + "  ", v.ls_var3);
    s << indent << "hs_var1[]" << std::endl;
    for (size_t i = 0; i < v.hs_var1.size(); ++i)
    {
      s << indent << "  hs_var1[" << i << "]: ";
      Printer<int16_t>::stream(s, indent + "  ", v.hs_var1[i]);
    }
    s << indent << "hs_var2[]" << std::endl;
    for (size_t i = 0; i < v.hs_var2.size(); ++i)
    {
      s << indent << "  hs_var2[" << i << "]: ";
      Printer<int16_t>::stream(s, indent + "  ", v.hs_var2[i]);
    }
    s << indent << "crc: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.crc);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HDT_ADROIT_DRIVER_MESSAGE_HDTDEBUGTELEM_H
