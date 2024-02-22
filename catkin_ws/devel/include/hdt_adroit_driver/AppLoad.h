// Generated by gencpp from file hdt_adroit_driver/AppLoad.msg
// DO NOT EDIT!


#ifndef HDT_ADROIT_DRIVER_MESSAGE_APPLOAD_H
#define HDT_ADROIT_DRIVER_MESSAGE_APPLOAD_H

#include <ros/service_traits.h>


#include <hdt_adroit_driver/AppLoadRequest.h>
#include <hdt_adroit_driver/AppLoadResponse.h>


namespace hdt_adroit_driver
{

struct AppLoad
{

typedef AppLoadRequest Request;
typedef AppLoadResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AppLoad
} // namespace hdt_adroit_driver


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hdt_adroit_driver::AppLoad > {
  static const char* value()
  {
    return "94dc7a6b0655f4c0bcfeaeeb9c92850d";
  }

  static const char* value(const ::hdt_adroit_driver::AppLoad&) { return value(); }
};

template<>
struct DataType< ::hdt_adroit_driver::AppLoad > {
  static const char* value()
  {
    return "hdt_adroit_driver/AppLoad";
  }

  static const char* value(const ::hdt_adroit_driver::AppLoad&) { return value(); }
};


// service_traits::MD5Sum< ::hdt_adroit_driver::AppLoadRequest> should match 
// service_traits::MD5Sum< ::hdt_adroit_driver::AppLoad > 
template<>
struct MD5Sum< ::hdt_adroit_driver::AppLoadRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hdt_adroit_driver::AppLoad >::value();
  }
  static const char* value(const ::hdt_adroit_driver::AppLoadRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hdt_adroit_driver::AppLoadRequest> should match 
// service_traits::DataType< ::hdt_adroit_driver::AppLoad > 
template<>
struct DataType< ::hdt_adroit_driver::AppLoadRequest>
{
  static const char* value()
  {
    return DataType< ::hdt_adroit_driver::AppLoad >::value();
  }
  static const char* value(const ::hdt_adroit_driver::AppLoadRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hdt_adroit_driver::AppLoadResponse> should match 
// service_traits::MD5Sum< ::hdt_adroit_driver::AppLoad > 
template<>
struct MD5Sum< ::hdt_adroit_driver::AppLoadResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hdt_adroit_driver::AppLoad >::value();
  }
  static const char* value(const ::hdt_adroit_driver::AppLoadResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hdt_adroit_driver::AppLoadResponse> should match 
// service_traits::DataType< ::hdt_adroit_driver::AppLoad > 
template<>
struct DataType< ::hdt_adroit_driver::AppLoadResponse>
{
  static const char* value()
  {
    return DataType< ::hdt_adroit_driver::AppLoad >::value();
  }
  static const char* value(const ::hdt_adroit_driver::AppLoadResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HDT_ADROIT_DRIVER_MESSAGE_APPLOAD_H