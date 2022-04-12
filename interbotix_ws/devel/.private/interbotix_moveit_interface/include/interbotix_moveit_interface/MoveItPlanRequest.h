// Generated by gencpp from file interbotix_moveit_interface/MoveItPlanRequest.msg
// DO NOT EDIT!


#ifndef INTERBOTIX_MOVEIT_INTERFACE_MESSAGE_MOVEITPLANREQUEST_H
#define INTERBOTIX_MOVEIT_INTERFACE_MESSAGE_MOVEITPLANREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace interbotix_moveit_interface
{
template <class ContainerAllocator>
struct MoveItPlanRequest_
{
  typedef MoveItPlanRequest_<ContainerAllocator> Type;

  MoveItPlanRequest_()
    : cmd(0)
    , ee_pose()  {
    }
  MoveItPlanRequest_(const ContainerAllocator& _alloc)
    : cmd(0)
    , ee_pose(_alloc)  {
  (void)_alloc;
    }



   typedef int8_t _cmd_type;
  _cmd_type cmd;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _ee_pose_type;
  _ee_pose_type ee_pose;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(CMD_PLAN_POSE)
  #undef CMD_PLAN_POSE
#endif
#if defined(_WIN32) && defined(CMD_PLAN_POSITION)
  #undef CMD_PLAN_POSITION
#endif
#if defined(_WIN32) && defined(CMD_PLAN_ORIENTATION)
  #undef CMD_PLAN_ORIENTATION
#endif
#if defined(_WIN32) && defined(CMD_EXECUTE)
  #undef CMD_EXECUTE
#endif

  enum {
    CMD_PLAN_POSE = 1,
    CMD_PLAN_POSITION = 2,
    CMD_PLAN_ORIENTATION = 3,
    CMD_EXECUTE = 4,
  };


  typedef boost::shared_ptr< ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MoveItPlanRequest_

typedef ::interbotix_moveit_interface::MoveItPlanRequest_<std::allocator<void> > MoveItPlanRequest;

typedef boost::shared_ptr< ::interbotix_moveit_interface::MoveItPlanRequest > MoveItPlanRequestPtr;
typedef boost::shared_ptr< ::interbotix_moveit_interface::MoveItPlanRequest const> MoveItPlanRequestConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator1> & lhs, const ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator2> & rhs)
{
  return lhs.cmd == rhs.cmd &&
    lhs.ee_pose == rhs.ee_pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator1> & lhs, const ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace interbotix_moveit_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "83858a8a41306e5b1efdbc05501e2275";
  }

  static const char* value(const ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x83858a8a41306e5bULL;
  static const uint64_t static_value2 = 0x1efdbc05501e2275ULL;
};

template<class ContainerAllocator>
struct DataType< ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "interbotix_moveit_interface/MoveItPlanRequest";
  }

  static const char* value(const ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Send commands to the moveit_plan server\n"
"#\n"
"# Enum values that define the commands available for the server. Note that all\n"
"# ee_poses (defined in the 'ee_arm_link' frame) are relative to the 'world' frame.\n"
"# There are 4 options:\n"
"#   1) CMD_PLAN_POSE - Desired ee_pose which is made up of a position and orientation element\n"
"#   2) CMD_PLAN_POSITION - Desired ee_position which is made up of a position element only; orientation is not constrained\n"
"#   3) CMD_PLAN_ORIENTATION - Desired ee_orientation which is made up of an orientation element only; position is not constrained\n"
"#   4) CMD_EXECUTE - Once a plan is available, this command executes the planned trajectory on the gazebo or physical robot\n"
"int8 CMD_PLAN_POSE = 1\n"
"int8 CMD_PLAN_POSITION = 2\n"
"int8 CMD_PLAN_ORIENTATION = 3\n"
"int8 CMD_EXECUTE = 4\n"
"int8 cmd\n"
"\n"
"# desired ee_pose, position, or orientation\n"
"geometry_msgs/Pose ee_pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd);
      stream.next(m.ee_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveItPlanRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::interbotix_moveit_interface::MoveItPlanRequest_<ContainerAllocator>& v)
  {
    s << indent << "cmd: ";
    Printer<int8_t>::stream(s, indent + "  ", v.cmd);
    s << indent << "ee_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.ee_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // INTERBOTIX_MOVEIT_INTERFACE_MESSAGE_MOVEITPLANREQUEST_H
