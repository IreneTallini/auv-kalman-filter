// Generated by gencpp from file medusa_msgs/VelocityBody.msg
// DO NOT EDIT!


#ifndef MEDUSA_MSGS_MESSAGE_VELOCITYBODY_H
#define MEDUSA_MSGS_MESSAGE_VELOCITYBODY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace medusa_msgs
{
template <class ContainerAllocator>
struct VelocityBody_
{
  typedef VelocityBody_<ContainerAllocator> Type;

  VelocityBody_()
    : vx(0.0)
    , vy(0.0)
    , vz(0.0)  {
    }
  VelocityBody_(const ContainerAllocator& _alloc)
    : vx(0.0)
    , vy(0.0)
    , vz(0.0)  {
  (void)_alloc;
    }



   typedef double _vx_type;
  _vx_type vx;

   typedef double _vy_type;
  _vy_type vy;

   typedef double _vz_type;
  _vz_type vz;





  typedef boost::shared_ptr< ::medusa_msgs::VelocityBody_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::medusa_msgs::VelocityBody_<ContainerAllocator> const> ConstPtr;

}; // struct VelocityBody_

typedef ::medusa_msgs::VelocityBody_<std::allocator<void> > VelocityBody;

typedef boost::shared_ptr< ::medusa_msgs::VelocityBody > VelocityBodyPtr;
typedef boost::shared_ptr< ::medusa_msgs::VelocityBody const> VelocityBodyConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::medusa_msgs::VelocityBody_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::medusa_msgs::VelocityBody_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::medusa_msgs::VelocityBody_<ContainerAllocator1> & lhs, const ::medusa_msgs::VelocityBody_<ContainerAllocator2> & rhs)
{
  return lhs.vx == rhs.vx &&
    lhs.vy == rhs.vy &&
    lhs.vz == rhs.vz;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::medusa_msgs::VelocityBody_<ContainerAllocator1> & lhs, const ::medusa_msgs::VelocityBody_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace medusa_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::medusa_msgs::VelocityBody_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::medusa_msgs::VelocityBody_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::medusa_msgs::VelocityBody_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::medusa_msgs::VelocityBody_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::medusa_msgs::VelocityBody_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::medusa_msgs::VelocityBody_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::medusa_msgs::VelocityBody_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ffb367ff390f5e01cb55c0c75927c19a";
  }

  static const char* value(const ::medusa_msgs::VelocityBody_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xffb367ff390f5e01ULL;
  static const uint64_t static_value2 = 0xcb55c0c75927c19aULL;
};

template<class ContainerAllocator>
struct DataType< ::medusa_msgs::VelocityBody_<ContainerAllocator> >
{
  static const char* value()
  {
    return "medusa_msgs/VelocityBody";
  }

  static const char* value(const ::medusa_msgs::VelocityBody_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::medusa_msgs::VelocityBody_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 vx\n"
"float64 vy\n"
"float64 vz\n"
;
  }

  static const char* value(const ::medusa_msgs::VelocityBody_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::medusa_msgs::VelocityBody_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vx);
      stream.next(m.vy);
      stream.next(m.vz);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VelocityBody_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::medusa_msgs::VelocityBody_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::medusa_msgs::VelocityBody_<ContainerAllocator>& v)
  {
    s << indent << "vx: ";
    Printer<double>::stream(s, indent + "  ", v.vx);
    s << indent << "vy: ";
    Printer<double>::stream(s, indent + "  ", v.vy);
    s << indent << "vz: ";
    Printer<double>::stream(s, indent + "  ", v.vz);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MEDUSA_MSGS_MESSAGE_VELOCITYBODY_H