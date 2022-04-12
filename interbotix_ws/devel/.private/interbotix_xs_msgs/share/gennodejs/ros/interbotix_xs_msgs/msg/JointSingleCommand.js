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

class JointSingleCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointSingleCommand
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [cmd]
    bufferOffset = _serializer.float32(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointSingleCommand
    let len;
    let data = new JointSingleCommand(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'interbotix_xs_msgs/JointSingleCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79b74399c9cdcc4c0be32d540424ed2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Command a desired joint. Note that the command is processed differently based on the joint's operating mode.
    # For example, if a joint's operating mode is set to 'position', the command is interpreted as a position in radians
    
    string name          # Name of joint
    float32 cmd          # Joint command
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointSingleCommand(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0.0
    }

    return resolved;
    }
};

module.exports = JointSingleCommand;
