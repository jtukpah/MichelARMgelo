// Auto-generated. Do not edit!

// (in-package interbotix_moveit_interface.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MoveItPlanRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
      this.ee_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
      if (initObj.hasOwnProperty('ee_pose')) {
        this.ee_pose = initObj.ee_pose
      }
      else {
        this.ee_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveItPlanRequest
    // Serialize message field [cmd]
    bufferOffset = _serializer.int8(obj.cmd, buffer, bufferOffset);
    // Serialize message field [ee_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.ee_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveItPlanRequest
    let len;
    let data = new MoveItPlanRequest(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ee_pose]
    data.ee_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 57;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_moveit_interface/MoveItPlanRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83858a8a41306e5b1efdbc05501e2275';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Send commands to the moveit_plan server
    #
    # Enum values that define the commands available for the server. Note that all
    # ee_poses (defined in the 'ee_arm_link' frame) are relative to the 'world' frame.
    # There are 4 options:
    #   1) CMD_PLAN_POSE - Desired ee_pose which is made up of a position and orientation element
    #   2) CMD_PLAN_POSITION - Desired ee_position which is made up of a position element only; orientation is not constrained
    #   3) CMD_PLAN_ORIENTATION - Desired ee_orientation which is made up of an orientation element only; position is not constrained
    #   4) CMD_EXECUTE - Once a plan is available, this command executes the planned trajectory on the gazebo or physical robot
    int8 CMD_PLAN_POSE = 1
    int8 CMD_PLAN_POSITION = 2
    int8 CMD_PLAN_ORIENTATION = 3
    int8 CMD_EXECUTE = 4
    int8 cmd
    
    # desired ee_pose, position, or orientation
    geometry_msgs/Pose ee_pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveItPlanRequest(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    if (msg.ee_pose !== undefined) {
      resolved.ee_pose = geometry_msgs.msg.Pose.Resolve(msg.ee_pose)
    }
    else {
      resolved.ee_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

// Constants for message
MoveItPlanRequest.Constants = {
  CMD_PLAN_POSE: 1,
  CMD_PLAN_POSITION: 2,
  CMD_PLAN_ORIENTATION: 3,
  CMD_EXECUTE: 4,
}

class MoveItPlanResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveItPlanResponse
    // Serialize message field [msg]
    bufferOffset = std_msgs.msg.String.serialize(obj.msg, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveItPlanResponse
    let len;
    let data = new MoveItPlanResponse(null);
    // Deserialize message field [msg]
    data.msg = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.msg);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'interbotix_moveit_interface/MoveItPlanResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6815ecbafa5176f5e638e681f8dd5385';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # message if the planning or execution was successful; this is displayed in the custom GUI.
    std_msgs/String msg
    
    # boolean to easily check if the planning or execution was successful.
    bool success
    
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveItPlanResponse(null);
    if (msg.msg !== undefined) {
      resolved.msg = std_msgs.msg.String.Resolve(msg.msg)
    }
    else {
      resolved.msg = new std_msgs.msg.String()
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: MoveItPlanRequest,
  Response: MoveItPlanResponse,
  md5sum() { return 'eff4f39614e2625df73027e93071de20'; },
  datatype() { return 'interbotix_moveit_interface/MoveItPlan'; }
};
