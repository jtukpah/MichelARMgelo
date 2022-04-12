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

class MotorGainsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_type = null;
      this.name = null;
      this.kp_pos = null;
      this.ki_pos = null;
      this.kd_pos = null;
      this.k1 = null;
      this.k2 = null;
      this.kp_vel = null;
      this.ki_vel = null;
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
      if (initObj.hasOwnProperty('kp_pos')) {
        this.kp_pos = initObj.kp_pos
      }
      else {
        this.kp_pos = 0;
      }
      if (initObj.hasOwnProperty('ki_pos')) {
        this.ki_pos = initObj.ki_pos
      }
      else {
        this.ki_pos = 0;
      }
      if (initObj.hasOwnProperty('kd_pos')) {
        this.kd_pos = initObj.kd_pos
      }
      else {
        this.kd_pos = 0;
      }
      if (initObj.hasOwnProperty('k1')) {
        this.k1 = initObj.k1
      }
      else {
        this.k1 = 0;
      }
      if (initObj.hasOwnProperty('k2')) {
        this.k2 = initObj.k2
      }
      else {
        this.k2 = 0;
      }
      if (initObj.hasOwnProperty('kp_vel')) {
        this.kp_vel = initObj.kp_vel
      }
      else {
        this.kp_vel = 0;
      }
      if (initObj.hasOwnProperty('ki_vel')) {
        this.ki_vel = initObj.ki_vel
      }
      else {
        this.ki_vel = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorGainsRequest
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.string(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [kp_pos]
    bufferOffset = _serializer.int32(obj.kp_pos, buffer, bufferOffset);
    // Serialize message field [ki_pos]
    bufferOffset = _serializer.int32(obj.ki_pos, buffer, bufferOffset);
    // Serialize message field [kd_pos]
    bufferOffset = _serializer.int32(obj.kd_pos, buffer, bufferOffset);
    // Serialize message field [k1]
    bufferOffset = _serializer.int32(obj.k1, buffer, bufferOffset);
    // Serialize message field [k2]
    bufferOffset = _serializer.int32(obj.k2, buffer, bufferOffset);
    // Serialize message field [kp_vel]
    bufferOffset = _serializer.int32(obj.kp_vel, buffer, bufferOffset);
    // Serialize message field [ki_vel]
    bufferOffset = _serializer.int32(obj.ki_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorGainsRequest
    let len;
    let data = new MotorGainsRequest(null);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [kp_pos]
    data.kp_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ki_pos]
    data.ki_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [kd_pos]
    data.kd_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [k1]
    data.k1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [k2]
    data.k2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [kp_vel]
    data.kp_vel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ki_vel]
    data.ki_vel = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cmd_type.length;
    length += object.name.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_xs_msgs/MotorGainsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c362297bf8bae149936ba71305f3900';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Set PID gains
    #
    # To get familiar with the various PID gains, go to...
    # http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/
    # ...click on a motor model, and scroll down to the 'PID' section.
    
    string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint
    string name              # name of the group if commanding a joint group or joint if commanding a single joint
    int32 kp_pos             # acts as a pass-through to the Position_P_Gain register
    int32 ki_pos             # acts as a pass-through to the Position_I_Gain register
    int32 kd_pos             # acts as a pass-through to the Position_D_Gain register
    int32 k1                 # acts as a pass-through to the Feedforward_1st_Gain register
    int32 k2                 # acts as a pass-through to the Feedforward_2nd_Gain register
    int32 kp_vel             # acts as a pass-through to the Velocity_P_Gain register
    int32 ki_vel             # acts as a pass-through to the Velocity_I_Gain register
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorGainsRequest(null);
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

    if (msg.kp_pos !== undefined) {
      resolved.kp_pos = msg.kp_pos;
    }
    else {
      resolved.kp_pos = 0
    }

    if (msg.ki_pos !== undefined) {
      resolved.ki_pos = msg.ki_pos;
    }
    else {
      resolved.ki_pos = 0
    }

    if (msg.kd_pos !== undefined) {
      resolved.kd_pos = msg.kd_pos;
    }
    else {
      resolved.kd_pos = 0
    }

    if (msg.k1 !== undefined) {
      resolved.k1 = msg.k1;
    }
    else {
      resolved.k1 = 0
    }

    if (msg.k2 !== undefined) {
      resolved.k2 = msg.k2;
    }
    else {
      resolved.k2 = 0
    }

    if (msg.kp_vel !== undefined) {
      resolved.kp_vel = msg.kp_vel;
    }
    else {
      resolved.kp_vel = 0
    }

    if (msg.ki_vel !== undefined) {
      resolved.ki_vel = msg.ki_vel;
    }
    else {
      resolved.ki_vel = 0
    }

    return resolved;
    }
};

class MotorGainsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorGainsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorGainsResponse
    let len;
    let data = new MotorGainsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_xs_msgs/MotorGainsResponse';
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
    const resolved = new MotorGainsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: MotorGainsRequest,
  Response: MotorGainsResponse,
  md5sum() { return '7c362297bf8bae149936ba71305f3900'; },
  datatype() { return 'interbotix_xs_msgs/MotorGains'; }
};
