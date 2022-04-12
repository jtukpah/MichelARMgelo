// Auto-generated. Do not edit!

// (in-package interbotix_xs_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RobotInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_type = null;
      this.name = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotInfoRequest
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.string(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotInfoRequest
    let len;
    let data = new RobotInfoRequest(null);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cmd_type.length;
    length += object.name.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_xs_msgs/RobotInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81f769be1f5fc7b940e801609273b513';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Get robot information
    #
    # Note that if a 'gripper' joint is specified, all information will be specified in terms of the 'left_finger' joint
    
    string cmd_type                          # set to 'group' if requesting info about a joint group or 'single' if requesting info about a single joint
    string name                              # the group name if requesting info about a group or the joint name if requesting info about a single joint
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotInfoRequest(null);
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

    return resolved;
    }
};

class RobotInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.profile_type = null;
      this.joint_names = null;
      this.joint_ids = null;
      this.joint_lower_limits = null;
      this.joint_upper_limits = null;
      this.joint_velocity_limits = null;
      this.joint_sleep_positions = null;
      this.joint_state_indices = null;
      this.num_joints = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
      if (initObj.hasOwnProperty('profile_type')) {
        this.profile_type = initObj.profile_type
      }
      else {
        this.profile_type = '';
      }
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
      if (initObj.hasOwnProperty('joint_ids')) {
        this.joint_ids = initObj.joint_ids
      }
      else {
        this.joint_ids = [];
      }
      if (initObj.hasOwnProperty('joint_lower_limits')) {
        this.joint_lower_limits = initObj.joint_lower_limits
      }
      else {
        this.joint_lower_limits = [];
      }
      if (initObj.hasOwnProperty('joint_upper_limits')) {
        this.joint_upper_limits = initObj.joint_upper_limits
      }
      else {
        this.joint_upper_limits = [];
      }
      if (initObj.hasOwnProperty('joint_velocity_limits')) {
        this.joint_velocity_limits = initObj.joint_velocity_limits
      }
      else {
        this.joint_velocity_limits = [];
      }
      if (initObj.hasOwnProperty('joint_sleep_positions')) {
        this.joint_sleep_positions = initObj.joint_sleep_positions
      }
      else {
        this.joint_sleep_positions = [];
      }
      if (initObj.hasOwnProperty('joint_state_indices')) {
        this.joint_state_indices = initObj.joint_state_indices
      }
      else {
        this.joint_state_indices = [];
      }
      if (initObj.hasOwnProperty('num_joints')) {
        this.num_joints = initObj.num_joints
      }
      else {
        this.num_joints = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotInfoResponse
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [profile_type]
    bufferOffset = _serializer.string(obj.profile_type, buffer, bufferOffset);
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    // Serialize message field [joint_ids]
    bufferOffset = _arraySerializer.int16(obj.joint_ids, buffer, bufferOffset, null);
    // Serialize message field [joint_lower_limits]
    bufferOffset = _arraySerializer.float32(obj.joint_lower_limits, buffer, bufferOffset, null);
    // Serialize message field [joint_upper_limits]
    bufferOffset = _arraySerializer.float32(obj.joint_upper_limits, buffer, bufferOffset, null);
    // Serialize message field [joint_velocity_limits]
    bufferOffset = _arraySerializer.float32(obj.joint_velocity_limits, buffer, bufferOffset, null);
    // Serialize message field [joint_sleep_positions]
    bufferOffset = _arraySerializer.float32(obj.joint_sleep_positions, buffer, bufferOffset, null);
    // Serialize message field [joint_state_indices]
    bufferOffset = _arraySerializer.int16(obj.joint_state_indices, buffer, bufferOffset, null);
    // Serialize message field [num_joints]
    bufferOffset = _serializer.int16(obj.num_joints, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotInfoResponse
    let len;
    let data = new RobotInfoResponse(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [profile_type]
    data.profile_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [joint_ids]
    data.joint_ids = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [joint_lower_limits]
    data.joint_lower_limits = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [joint_upper_limits]
    data.joint_upper_limits = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [joint_velocity_limits]
    data.joint_velocity_limits = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [joint_sleep_positions]
    data.joint_sleep_positions = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [joint_state_indices]
    data.joint_state_indices = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [num_joints]
    data.num_joints = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mode.length;
    length += object.profile_type.length;
    object.joint_names.forEach((val) => {
      length += 4 + val.length;
    });
    length += 2 * object.joint_ids.length;
    length += 4 * object.joint_lower_limits.length;
    length += 4 * object.joint_upper_limits.length;
    length += 4 * object.joint_velocity_limits.length;
    length += 4 * object.joint_sleep_positions.length;
    length += 2 * object.joint_state_indices.length;
    return length + 38;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_xs_msgs/RobotInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aab05469cfeca32ce718e0ba473d9ba5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string mode                              # the operating mode for the specified joint group or joint
    string profile_type                      # the profile type for the specified joint group or joint
    string[] joint_names                     # the name of each joint in a group or just the specified joint
    int16[] joint_ids                        # the Dynamixel ID for each joint in a group or for the specified joint
    float32[] joint_lower_limits             # the lower limit [radians] for each joint in a group or for the specified joint (taken from URDF)
    float32[] joint_upper_limits             # the upper limit [radians] for each joint in a group or for the specified joint (taken from URDF)
    float32[] joint_velocity_limits          # the velocity limit [rad/s] for each joint in a group or for the specified joint (taken from URDF)
    float32[] joint_sleep_positions          # the sleep position [rad] for each joint in a group or for the specified joint
    int16[] joint_state_indices              # index for each joint in a group or for the specified joint in the published JointState message
    int16 num_joints                         # the number of joints in a group or 1
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotInfoResponse(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    if (msg.profile_type !== undefined) {
      resolved.profile_type = msg.profile_type;
    }
    else {
      resolved.profile_type = ''
    }

    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    if (msg.joint_ids !== undefined) {
      resolved.joint_ids = msg.joint_ids;
    }
    else {
      resolved.joint_ids = []
    }

    if (msg.joint_lower_limits !== undefined) {
      resolved.joint_lower_limits = msg.joint_lower_limits;
    }
    else {
      resolved.joint_lower_limits = []
    }

    if (msg.joint_upper_limits !== undefined) {
      resolved.joint_upper_limits = msg.joint_upper_limits;
    }
    else {
      resolved.joint_upper_limits = []
    }

    if (msg.joint_velocity_limits !== undefined) {
      resolved.joint_velocity_limits = msg.joint_velocity_limits;
    }
    else {
      resolved.joint_velocity_limits = []
    }

    if (msg.joint_sleep_positions !== undefined) {
      resolved.joint_sleep_positions = msg.joint_sleep_positions;
    }
    else {
      resolved.joint_sleep_positions = []
    }

    if (msg.joint_state_indices !== undefined) {
      resolved.joint_state_indices = msg.joint_state_indices;
    }
    else {
      resolved.joint_state_indices = []
    }

    if (msg.num_joints !== undefined) {
      resolved.num_joints = msg.num_joints;
    }
    else {
      resolved.num_joints = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: RobotInfoRequest,
  Response: RobotInfoResponse,
  md5sum() { return '7a389566d99903aa71839d0052c9a055'; },
  datatype() { return 'interbotix_xs_msgs/RobotInfo'; }
};
