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

class JointGroupCommand {
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
        this.cmd = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointGroupCommand
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [cmd]
    bufferOffset = _arraySerializer.float32(obj.cmd, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointGroupCommand
    let len;
    let data = new JointGroupCommand(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cmd]
    data.cmd = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += 4 * object.cmd.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'interbotix_xs_msgs/JointGroupCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa54c229b7238fc905e59a51a526f379';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Command the joints in the specified joint group. Note that the commands are processed differently based on the group's operating mode.
    # For example, if a group's operating mode is set to 'position', the commands are interpreted as positions in radians
    
    string name            # Name of joint group
    float32[] cmd          # List of joint commands; order is dictated by the index of each joint name for the given group in the 'groups' section of a 'motor_config' yaml file
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointGroupCommand(null);
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
      resolved.cmd = []
    }

    return resolved;
    }
};

module.exports = JointGroupCommand;
