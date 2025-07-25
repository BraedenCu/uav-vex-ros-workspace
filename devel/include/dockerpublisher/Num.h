// Generated by gencpp from file dockerpublisher/Num.msg
// DO NOT EDIT!


#ifndef DOCKERPUBLISHER_MESSAGE_NUM_H
#define DOCKERPUBLISHER_MESSAGE_NUM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dockerpublisher
{
template <class ContainerAllocator>
struct Num_
{
  typedef Num_<ContainerAllocator> Type;

  Num_()
    : num(0)
    , val()  {
    }
  Num_(const ContainerAllocator& _alloc)
    : num(0)
    , val(_alloc)  {
  (void)_alloc;
    }



   typedef int64_t _num_type;
  _num_type num;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _val_type;
  _val_type val;





  typedef boost::shared_ptr< ::dockerpublisher::Num_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dockerpublisher::Num_<ContainerAllocator> const> ConstPtr;

}; // struct Num_

typedef ::dockerpublisher::Num_<std::allocator<void> > Num;

typedef boost::shared_ptr< ::dockerpublisher::Num > NumPtr;
typedef boost::shared_ptr< ::dockerpublisher::Num const> NumConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dockerpublisher::Num_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dockerpublisher::Num_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dockerpublisher::Num_<ContainerAllocator1> & lhs, const ::dockerpublisher::Num_<ContainerAllocator2> & rhs)
{
  return lhs.num == rhs.num &&
    lhs.val == rhs.val;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dockerpublisher::Num_<ContainerAllocator1> & lhs, const ::dockerpublisher::Num_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dockerpublisher

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dockerpublisher::Num_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dockerpublisher::Num_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dockerpublisher::Num_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dockerpublisher::Num_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dockerpublisher::Num_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dockerpublisher::Num_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dockerpublisher::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3457c111a3bdee2fbe44c4a3a3d3212b";
  }

  static const char* value(const ::dockerpublisher::Num_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3457c111a3bdee2fULL;
  static const uint64_t static_value2 = 0xbe44c4a3a3d3212bULL;
};

template<class ContainerAllocator>
struct DataType< ::dockerpublisher::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dockerpublisher/Num";
  }

  static const char* value(const ::dockerpublisher::Num_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dockerpublisher::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 num\n"
"string val\n"
;
  }

  static const char* value(const ::dockerpublisher::Num_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dockerpublisher::Num_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num);
      stream.next(m.val);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Num_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dockerpublisher::Num_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dockerpublisher::Num_<ContainerAllocator>& v)
  {
    s << indent << "num: ";
    Printer<int64_t>::stream(s, indent + "  ", v.num);
    s << indent << "val: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.val);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DOCKERPUBLISHER_MESSAGE_NUM_H
