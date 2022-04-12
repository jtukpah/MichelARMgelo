// Generated by gencpp from file interbotix_xs_msgs/RebootRequest.msg
// DO NOT EDIT!


#ifndef INTERBOTIX_XS_MSGS_MESSAGE_REBOOTREQUEST_H
#define INTERBOTIX_XS_MSGS_MESSAGE_REBOOTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace interbotix_xs_msgs
{
template <class ContainerAllocator>
struct RebootRequest_
{
  typedef RebootRequest_<ContainerAllocator> Type;

  RebootRequest_()
    : cmd_type()
    , name()
    , enable(false)
    , smart_reboot(false)  {
    }
  RebootRequest_(const ContainerAllocator& _alloc)
    : cmd_type(_alloc)
    , name(_alloc)
    , enable(false)
    , smart_reboot(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _cmd_type_type;
  _cmd_type_type cmd_type;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef uint8_t _enable_type;
  _enable_type enable;

   typedef uint8_t _smart_reboot_type;
  _smart_reboot_type smart_reboot;





  typedef boost::shared_ptr< ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RebootRequest_

typedef ::interbotix_xs_msgs::RebootRequest_<std::allocator<void> > RebootRequest;

typedef boost::shared_ptr< ::interbotix_xs_msgs::RebootRequest > RebootRequestPtr;
typedef boost::shared_ptr< ::interbotix_xs_msgs::RebootRequest const> RebootRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator1> & lhs, const ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator2> & rhs)
{
  return lhs.cmd_type == rhs.cmd_type &&
    lhs.name == rhs.name &&
    lhs.enable == rhs.enable &&
    lhs.smart_reboot == rhs.smart_reboot;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator1> & lhs, const ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace interbotix_xs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "229067e7bfb48bf403b702d5f7f1ee93";
  }

  static const char* value(const ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x229067e7bfb48bf4ULL;
  static const uint64_t static_value2 = 0x03b702d5f7f1ee93ULL;
};

template<class ContainerAllocator>
struct DataType< ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "interbotix_xs_msgs/RebootRequest";
  }

  static const char* value(const ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Reboot motors\n"
"#\n"
"# Note that if a dual-joint is selected, both motors will be rebooted. Also note\n"
"# that motors will NOT hold position during the reboot process. Additionally, only\n"
"# EEPROM registers will retain their values, but RAM registers will not. See details\n"
"# at https://emanual.robotis.com/docs/en/dxl/x/xm430-w350/#area-eeprom-ram\n"
"\n"
"string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint\n"
"string name              # name of the group if commanding a joint group or joint if commanding a single joint\n"
"bool enable              # whether to torque the selected joints on after reboot\n"
"bool smart_reboot        # set to true to only reboot motors in a specified group that are in an error state\n"
"                         # (as opposed to a blanket reboot of all motors in said group)\n"
;
  }

  static const char* value(const ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd_type);
      stream.next(m.name);
      stream.next(m.enable);
      stream.next(m.smart_reboot);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RebootRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::interbotix_xs_msgs::RebootRequest_<ContainerAllocator>& v)
  {
    s << indent << "cmd_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.cmd_type);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "enable: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable);
    s << indent << "smart_reboot: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.smart_reboot);
  }
};

} // namespace message_operations
} // namespace ros

#endif // INTERBOTIX_XS_MSGS_MESSAGE_REBOOTREQUEST_H
