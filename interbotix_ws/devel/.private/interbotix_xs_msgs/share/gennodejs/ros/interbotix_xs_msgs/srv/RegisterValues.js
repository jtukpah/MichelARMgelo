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

class RegisterValuesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_type = null;
      this.name = null;
      this.reg = null;
      this.value = null;
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
      if (initObj.hasOwnProperty('reg')) {
        this.reg = initObj.reg
      }
      else {
        this.reg = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegisterValuesRequest
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.string(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [reg]
    bufferOffset = _serializer.string(obj.reg, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.int32(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegisterValuesRequest
    let len;
    let data = new RegisterValuesRequest(null);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reg]
    data.reg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cmd_type.length;
    length += object.name.length;
    length += object.reg.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_xs_msgs/RegisterValuesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff17efd6d442abdb0ecf037a885cc01c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Set or get the register(s) value(s) from motor(s)
    #
    # To get familiar with the register values, go to...
    # http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/
    # ...click on a motor model, and scroll down to the 'Control Table of RAM Area' section.
    
    string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint
    string name              # name of the group if commanding a joint group or joint if commanding a single joint
    string reg               # register name (like Profile_Velocity, Profile_Acceleration, etc...)
    int32 value              # desired register value (only set if 'setting' a register)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RegisterValuesRequest(null);
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

    if (msg.reg !== undefined) {
      resolved.reg = msg.reg;
    }
    else {
      resolved.reg = ''
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

class RegisterValuesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegisterValuesResponse
    // Serialize message field [values]
    bufferOffset = _arraySerializer.int32(obj.values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegisterValuesResponse
    let len;
    let data = new RegisterValuesResponse(null);
    // Deserialize message field [values]
    data.values = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.values.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_xs_msgs/RegisterValuesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5dd1053b3769329bd3895728a55810d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] values           # current register values (only filled if 'getting' a register)
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RegisterValuesResponse(null);
    if (msg.values !== undefined) {
      resolved.values = msg.values;
    }
    else {
      resolved.values = []
    }

    return resolved;
    }
};

module.exports = {
  Request: RegisterValuesRequest,
  Response: RegisterValuesResponse,
  md5sum() { return '27940ff80d633a7a6df113cf798c0f70'; },
  datatype() { return 'interbotix_xs_msgs/RegisterValues'; }
};
