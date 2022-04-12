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

class OperatingModesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_type = null;
      this.name = null;
      this.mode = null;
      this.profile_type = null;
      this.profile_velocity = null;
      this.profile_acceleration = null;
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
      if (initObj.hasOwnProperty('profile_velocity')) {
        this.profile_velocity = initObj.profile_velocity
      }
      else {
        this.profile_velocity = 0;
      }
      if (initObj.hasOwnProperty('profile_acceleration')) {
        this.profile_acceleration = initObj.profile_acceleration
      }
      else {
        this.profile_acceleration = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OperatingModesRequest
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.string(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [profile_type]
    bufferOffset = _serializer.string(obj.profile_type, buffer, bufferOffset);
    // Serialize message field [profile_velocity]
    bufferOffset = _serializer.int32(obj.profile_velocity, buffer, bufferOffset);
    // Serialize message field [profile_acceleration]
    bufferOffset = _serializer.int32(obj.profile_acceleration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OperatingModesRequest
    let len;
    let data = new OperatingModesRequest(null);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [profile_type]
    data.profile_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [profile_velocity]
    data.profile_velocity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [profile_acceleration]
    data.profile_acceleration = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cmd_type.length;
    length += object.name.length;
    length += object.mode.length;
    length += object.profile_type.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_xs_msgs/OperatingModesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb68bef3d517c840b0a5cc0f73d64e36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Set Operating Modes
    #
    # To get familiar with the various operating modes, go to...
    # http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/
    # ...click on a motor model, and scroll down to the 'Operating Mode' section.
    #
    # There are 6 valid operating modes. They are...
    #   "position" - allows up to 1 complete joint revolution (perfect for arm joints); units are in radians
    #   "ext_position" - allows up to 512 joint revolutions; units are in radians
    #   "velocity" - allows infinite number of rotations (perfect for wheeled robots); units are in rad/s
    #   "current" - allows infinite number of rotations (perfect for grippers); units are in milliamps
    #   "current_based_position" - allows up to 512 joint revolutions; units are in radians
    #   "pwm" - allows infinite number of rotations (perfect for grippers); units are in PWM
    #
    # Note that the interbotix_xs_sdk offers one other 'pseudo' operating mode that can be useful in controlling Interbotix Grippers - called "linear_position".
    # Behind the scenes, it uses the "position" operating mode mentioned above. The main difference is that with this mode, a desired linear distance [m]
    # between the two gripper fingers can be commanded. In the "position" mode though, only the angular position of the motor can be commanded.
    #
    # There are 2 valid profile types - either 'time' or 'velocity'. Depending on which is chosen, the following parameters behave differently.
    #
    # 1) profile_velocity: acts as a pass-through to the Profile_Velocity register and operates in one of two ways. If
    #    'profile_type' is set to 'velocity', this parameter describes the max velocity limit for the specified joint(s);
    #    for example, if doing 'position' control, setting this to '131' would be equivalent to a limit of 3.14 rad/s; if
    #    'profile_type' is set to 'time', this parameter sets the time span (in milliseconds) that it should take for the
    #    specified joint(s) to move; to have an 'infinite' max limit, set to '0'.
    #
    # 2) profile_acceleration: acts as a pass-through to the Profile_Acceleration register and operates in one of two ways. If
    #    'profile_type' is set to 'velocity', this parameter describes the max acceleration limit for the specified joint(s);
    #    for example, if doing 'position' or 'velocity' control, setting this to '15' would be equivalent to a limit of 5.6 rad/s^2;
    #    if 'profile_type' is set to 'time', this parameter sets the time span (in milliseconds) that it should take for the
    #    specified joint(s) to accelerate; to have an 'infinite' max limit, set to '0'.
    
    string cmd_type                     # set to 'group' if commanding a joint group or 'single' if commanding a single joint
    string name                         # name of the group if commanding a joint group or joint if commanding a single joint
    string mode                         # desired operating mode as described above
    string profile_type                 # desired 'profile' type - either 'time' or 'velocity' as described above
    int32 profile_velocity              # desired velocity profile as explained above - only used in 'position' or the 'ext_position' control modes
    int32 profile_acceleration          # desired acceleration profile as explained above - used in all modes except for 'current' and 'pwm' control
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OperatingModesRequest(null);
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

    if (msg.profile_velocity !== undefined) {
      resolved.profile_velocity = msg.profile_velocity;
    }
    else {
      resolved.profile_velocity = 0
    }

    if (msg.profile_acceleration !== undefined) {
      resolved.profile_acceleration = msg.profile_acceleration;
    }
    else {
      resolved.profile_acceleration = 0
    }

    return resolved;
    }
};

class OperatingModesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OperatingModesResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OperatingModesResponse
    let len;
    let data = new OperatingModesResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_xs_msgs/OperatingModesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OperatingModesResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: OperatingModesRequest,
  Response: OperatingModesResponse,
  md5sum() { return 'cb68bef3d517c840b0a5cc0f73d64e36'; },
  datatype() { return 'interbotix_xs_msgs/OperatingModes'; }
};
