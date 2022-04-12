// Auto-generated. Do not edit!

// (in-package interbotix_xs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JointTemps {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.names = null;
      this.temps = null;
    }
    else {
      if (initObj.hasOwnProperty('names')) {
        this.names = initObj.names
      }
      else {
        this.names = [];
      }
      if (initObj.hasOwnProperty('temps')) {
        this.temps = initObj.temps
      }
      else {
        this.temps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointTemps
    // Serialize message field [names]
    bufferOffset = _arraySerializer.string(obj.names, buffer, bufferOffset, null);
    // Serialize message field [temps]
    bufferOffset = _arraySerializer.int32(obj.temps, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointTemps
    let len;
    let data = new JointTemps(null);
    // Deserialize message field [names]
    data.names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [temps]
    data.temps = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.names.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.temps.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'interbotix_xs_msgs/JointTemps';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c3b043513eb09ccdff55ab4d97383c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is used specifically in the interbotix_xsarm_diagnostic_tool package
    
    # Holds the temperatures [C] for the specified joints
    
    string[] names
    int32[] temps
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointTemps(null);
    if (msg.names !== undefined) {
      resolved.names = msg.names;
    }
    else {
      resolved.names = []
    }

    if (msg.temps !== undefined) {
      resolved.temps = msg.temps;
    }
    else {
      resolved.temps = []
    }

    return resolved;
    }
};

module.exports = JointTemps;
