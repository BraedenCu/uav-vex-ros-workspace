// Generated by gencpp from file esp32communication/can.msg
// DO NOT EDIT!


#ifndef ESP32COMMUNICATION_MESSAGE_CAN_H
#define ESP32COMMUNICATION_MESSAGE_CAN_H

#include <ros/service_traits.h>


#include <esp32communication/canRequest.h>
#include <esp32communication/canResponse.h>


namespace esp32communication
{

struct can
{

typedef canRequest Request;
typedef canResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct can
} // namespace esp32communication


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::esp32communication::can > {
  static const char* value()
  {
    return "f290f8f9900c07c25bd51465e85836ce";
  }

  static const char* value(const ::esp32communication::can&) { return value(); }
};

template<>
struct DataType< ::esp32communication::can > {
  static const char* value()
  {
    return "esp32communication/can";
  }

  static const char* value(const ::esp32communication::can&) { return value(); }
};


// service_traits::MD5Sum< ::esp32communication::canRequest> should match
// service_traits::MD5Sum< ::esp32communication::can >
template<>
struct MD5Sum< ::esp32communication::canRequest>
{
  static const char* value()
  {
    return MD5Sum< ::esp32communication::can >::value();
  }
  static const char* value(const ::esp32communication::canRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::esp32communication::canRequest> should match
// service_traits::DataType< ::esp32communication::can >
template<>
struct DataType< ::esp32communication::canRequest>
{
  static const char* value()
  {
    return DataType< ::esp32communication::can >::value();
  }
  static const char* value(const ::esp32communication::canRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::esp32communication::canResponse> should match
// service_traits::MD5Sum< ::esp32communication::can >
template<>
struct MD5Sum< ::esp32communication::canResponse>
{
  static const char* value()
  {
    return MD5Sum< ::esp32communication::can >::value();
  }
  static const char* value(const ::esp32communication::canResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::esp32communication::canResponse> should match
// service_traits::DataType< ::esp32communication::can >
template<>
struct DataType< ::esp32communication::canResponse>
{
  static const char* value()
  {
    return DataType< ::esp32communication::can >::value();
  }
  static const char* value(const ::esp32communication::canResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ESP32COMMUNICATION_MESSAGE_CAN_H
