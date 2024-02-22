// Generated by gencpp from file hdt_adroit_driver/StateSelect.msg
// DO NOT EDIT!


#ifndef HDT_ADROIT_DRIVER_MESSAGE_STATESELECT_H
#define HDT_ADROIT_DRIVER_MESSAGE_STATESELECT_H

#include <ros/service_traits.h>


#include <hdt_adroit_driver/StateSelectRequest.h>
#include <hdt_adroit_driver/StateSelectResponse.h>


namespace hdt_adroit_driver
{

struct StateSelect
{

typedef StateSelectRequest Request;
typedef StateSelectResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct StateSelect
} // namespace hdt_adroit_driver


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hdt_adroit_driver::StateSelect > {
  static const char* value()
  {
    return "2b565a0ba0eb7ebe669d3d72cdc5dc5f";
  }

  static const char* value(const ::hdt_adroit_driver::StateSelect&) { return value(); }
};

template<>
struct DataType< ::hdt_adroit_driver::StateSelect > {
  static const char* value()
  {
    return "hdt_adroit_driver/StateSelect";
  }

  static const char* value(const ::hdt_adroit_driver::StateSelect&) { return value(); }
};


// service_traits::MD5Sum< ::hdt_adroit_driver::StateSelectRequest> should match 
// service_traits::MD5Sum< ::hdt_adroit_driver::StateSelect > 
template<>
struct MD5Sum< ::hdt_adroit_driver::StateSelectRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hdt_adroit_driver::StateSelect >::value();
  }
  static const char* value(const ::hdt_adroit_driver::StateSelectRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hdt_adroit_driver::StateSelectRequest> should match 
// service_traits::DataType< ::hdt_adroit_driver::StateSelect > 
template<>
struct DataType< ::hdt_adroit_driver::StateSelectRequest>
{
  static const char* value()
  {
    return DataType< ::hdt_adroit_driver::StateSelect >::value();
  }
  static const char* value(const ::hdt_adroit_driver::StateSelectRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hdt_adroit_driver::StateSelectResponse> should match 
// service_traits::MD5Sum< ::hdt_adroit_driver::StateSelect > 
template<>
struct MD5Sum< ::hdt_adroit_driver::StateSelectResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hdt_adroit_driver::StateSelect >::value();
  }
  static const char* value(const ::hdt_adroit_driver::StateSelectResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hdt_adroit_driver::StateSelectResponse> should match 
// service_traits::DataType< ::hdt_adroit_driver::StateSelect > 
template<>
struct DataType< ::hdt_adroit_driver::StateSelectResponse>
{
  static const char* value()
  {
    return DataType< ::hdt_adroit_driver::StateSelect >::value();
  }
  static const char* value(const ::hdt_adroit_driver::StateSelectResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HDT_ADROIT_DRIVER_MESSAGE_STATESELECT_H