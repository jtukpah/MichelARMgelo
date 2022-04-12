// Auto-generated. Do not edit!

// (in-package interbotix_xs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let trajectory_msgs = _finder('trajectory_msgs');

//-----------------------------------------------------------

class JointTrajectoryCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_type = null;
      this.name = null;
      this.traj = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd_type')) {
        this.cmd_type = initObj.cmd_type
      }
      else {
        this.cmd_type = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('traj')) {
        this.traj = initObj.traj
      }
      else {
        this.traj = new trajectory_msgs.msg.JointTrajectory();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointTrajectoryCommand
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.string(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [traj]
    bufferOffset = trajectory_msgs.msg.JointTrajectory.serialize(obj.traj, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointTrajectoryCommand
    let len;
    let data = new JointTrajectoryCommand(null);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [traj]
    data.traj = trajectory_msgs.msg.JointTrajectory.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cmd_type.length;
    length += object.name.length;
    length += trajectory_msgs.msg.JointTrajectory.getMessageSize(object.traj);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'interbotix_xs_msgs/JointTrajectoryCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '039c1a8f9200d555267cf39243b5e969';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Command a joint trajectory to the desired joint(s). Note that the commands are processed differently based on the currently set operating mode.
    # For example, if the operating mode is set to 'position', the commands are interpreted as positions in radians
    
    string cmd_type                               # set to 'single' for a single joint or 'group' for a group of joints
    string name                                   # joint group name if 'cmd_type' is set to 'group' or joint name if 'cmd_type' is set to 'single'
    trajectory_msgs/JointTrajectory traj          # ROS trajectory message
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectory
    Header header
    string[] joint_names
    JointTrajectoryPoint[] points
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectoryPoint
    # Each trajectory point specifies either positions[, velocities[, accelerations]]
    # or positions[, effort] for the trajectory to be executed.
    # All specified values are in the same order as the joint names in JointTrajectory.msg
    
    float64[] positions
    float64[] velocities
    float64[] accelerations
    float64[] effort
    duration time_from_start
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointTrajectoryCommand(null);
    if (msg.cmd_type !== undefined) {
      resolved.cmd_type = msg.cmd_type;
    }
    else {
      resolved.cmd_type = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.traj !== undefined) {
      resolved.traj = trajectory_msgs.msg.JointTrajectory.Resolve(msg.traj)
    }
    else {
      resolved.traj = new trajectory_msgs.msg.JointTrajectory()
    }

    return resolved;
    }
};

module.exports = JointTrajectoryCommand;
