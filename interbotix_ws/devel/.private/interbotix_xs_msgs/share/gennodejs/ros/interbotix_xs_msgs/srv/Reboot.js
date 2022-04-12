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

class RebootRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_type = null;
      this.name = null;
      this.enable = null;
      this.smart_reboot = null;
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
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = false;
      }
      if (initObj.hasOwnProperty('smart_reboot')) {
        this.smart_reboot = initObj.smart_reboot
      }
      else {
        this.smart_reboot = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RebootRequest
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.string(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [enable]
    bufferOffset = _serializer.bool(obj.enable, buffer, bufferOffset);
    // Serialize message field [smart_reboot]
    bufferOffset = _serializer.bool(obj.smart_reboot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RebootRequest
    let len;
    let data = new RebootRequest(null);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [enable]
    data.enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [smart_reboot]
    data.smart_reboot = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cmd_type.length;
    length += object.name.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_xs_msgs/RebootRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '229067e7bfb48bf403b702d5f7f1ee93';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Reboot motors
    #
    # Note that if a dual-joint is selected, both motors will be rebooted. Also note
    # that motors will NOT hold position during the reboot process. Additionally, only
    # EEPROM registers will retain their values, but RAM registers will not. See details
    # at https://emanual.robotis.com/docs/en/dxl/x/xm430-w350/#area-eeprom-ram
    
    string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint
    string name              # name of the group if commanding a joint group or joint if commanding a single joint
    bool enable              # whether to torque the selected joints on after reboot
    bool smart_reboot        # set to true to only reboot motors in a specified group that are in an error state
                             # (as opposed to a blanket reboot of all motors in said group)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RebootRequest(null);
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

    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = false
    }

    if (msg.smart_reboot !== undefined) {
      resolved.smart_reboot = msg.smart_reboot;
    }
    else {
      resolved.smart_reboot = false
    }

    return resolved;
    }
};

class RebootResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RebootResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RebootResponse
    let len;
    let data = new RebootResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_xs_msgs/RebootResponse';
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
    const resolved = new RebootResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: RebootRequest,
  Response: RebootResponse,
  md5sum() { return '229067e7bfb48bf403b702d5f7f1ee93'; },
  datatype() { return 'interbotix_xs_msgs/Reboot'; }
};
