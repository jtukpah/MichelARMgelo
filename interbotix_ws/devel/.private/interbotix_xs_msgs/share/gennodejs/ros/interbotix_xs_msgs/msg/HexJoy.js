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

class HexJoy {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.world_x_cmd = null;
      this.world_y_cmd = null;
      this.world_yaw_cmd = null;
      this.place_x_cmd = null;
      this.place_y_cmd = null;
      this.place_z_cmd = null;
      this.place_roll_cmd = null;
      this.place_pitch_cmd = null;
      this.pose_cmd = null;
      this.move_type_cmd = null;
      this.gait_toggle_cmd = null;
      this.leg_toggle_cmd = null;
      this.stance_cmd = null;
      this.reboot_cmd = null;
      this.set_home_pose_cmd = null;
      this.speed_cmd = null;
      this.speed_toggle_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('world_x_cmd')) {
        this.world_x_cmd = initObj.world_x_cmd
      }
      else {
        this.world_x_cmd = 0;
      }
      if (initObj.hasOwnProperty('world_y_cmd')) {
        this.world_y_cmd = initObj.world_y_cmd
      }
      else {
        this.world_y_cmd = 0;
      }
      if (initObj.hasOwnProperty('world_yaw_cmd')) {
        this.world_yaw_cmd = initObj.world_yaw_cmd
      }
      else {
        this.world_yaw_cmd = 0;
      }
      if (initObj.hasOwnProperty('place_x_cmd')) {
        this.place_x_cmd = initObj.place_x_cmd
      }
      else {
        this.place_x_cmd = 0;
      }
      if (initObj.hasOwnProperty('place_y_cmd')) {
        this.place_y_cmd = initObj.place_y_cmd
      }
      else {
        this.place_y_cmd = 0;
      }
      if (initObj.hasOwnProperty('place_z_cmd')) {
        this.place_z_cmd = initObj.place_z_cmd
      }
      else {
        this.place_z_cmd = 0;
      }
      if (initObj.hasOwnProperty('place_roll_cmd')) {
        this.place_roll_cmd = initObj.place_roll_cmd
      }
      else {
        this.place_roll_cmd = 0;
      }
      if (initObj.hasOwnProperty('place_pitch_cmd')) {
        this.place_pitch_cmd = initObj.place_pitch_cmd
      }
      else {
        this.place_pitch_cmd = 0;
      }
      if (initObj.hasOwnProperty('pose_cmd')) {
        this.pose_cmd = initObj.pose_cmd
      }
      else {
        this.pose_cmd = 0;
      }
      if (initObj.hasOwnProperty('move_type_cmd')) {
        this.move_type_cmd = initObj.move_type_cmd
      }
      else {
        this.move_type_cmd = 0;
      }
      if (initObj.hasOwnProperty('gait_toggle_cmd')) {
        this.gait_toggle_cmd = initObj.gait_toggle_cmd
      }
      else {
        this.gait_toggle_cmd = 0;
      }
      if (initObj.hasOwnProperty('leg_toggle_cmd')) {
        this.leg_toggle_cmd = initObj.leg_toggle_cmd
      }
      else {
        this.leg_toggle_cmd = 0;
      }
      if (initObj.hasOwnProperty('stance_cmd')) {
        this.stance_cmd = initObj.stance_cmd
      }
      else {
        this.stance_cmd = 0;
      }
      if (initObj.hasOwnProperty('reboot_cmd')) {
        this.reboot_cmd = initObj.reboot_cmd
      }
      else {
        this.reboot_cmd = 0;
      }
      if (initObj.hasOwnProperty('set_home_pose_cmd')) {
        this.set_home_pose_cmd = initObj.set_home_pose_cmd
      }
      else {
        this.set_home_pose_cmd = 0;
      }
      if (initObj.hasOwnProperty('speed_cmd')) {
        this.speed_cmd = initObj.speed_cmd
      }
      else {
        this.speed_cmd = 0;
      }
      if (initObj.hasOwnProperty('speed_toggle_cmd')) {
        this.speed_toggle_cmd = initObj.speed_toggle_cmd
      }
      else {
        this.speed_toggle_cmd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HexJoy
    // Serialize message field [world_x_cmd]
    bufferOffset = _serializer.int8(obj.world_x_cmd, buffer, bufferOffset);
    // Serialize message field [world_y_cmd]
    bufferOffset = _serializer.int8(obj.world_y_cmd, buffer, bufferOffset);
    // Serialize message field [world_yaw_cmd]
    bufferOffset = _serializer.int8(obj.world_yaw_cmd, buffer, bufferOffset);
    // Serialize message field [place_x_cmd]
    bufferOffset = _serializer.int8(obj.place_x_cmd, buffer, bufferOffset);
    // Serialize message field [place_y_cmd]
    bufferOffset = _serializer.int8(obj.place_y_cmd, buffer, bufferOffset);
    // Serialize message field [place_z_cmd]
    bufferOffset = _serializer.int8(obj.place_z_cmd, buffer, bufferOffset);
    // Serialize message field [place_roll_cmd]
    bufferOffset = _serializer.int8(obj.place_roll_cmd, buffer, bufferOffset);
    // Serialize message field [place_pitch_cmd]
    bufferOffset = _serializer.int8(obj.place_pitch_cmd, buffer, bufferOffset);
    // Serialize message field [pose_cmd]
    bufferOffset = _serializer.int8(obj.pose_cmd, buffer, bufferOffset);
    // Serialize message field [move_type_cmd]
    bufferOffset = _serializer.int8(obj.move_type_cmd, buffer, bufferOffset);
    // Serialize message field [gait_toggle_cmd]
    bufferOffset = _serializer.int8(obj.gait_toggle_cmd, buffer, bufferOffset);
    // Serialize message field [leg_toggle_cmd]
    bufferOffset = _serializer.int8(obj.leg_toggle_cmd, buffer, bufferOffset);
    // Serialize message field [stance_cmd]
    bufferOffset = _serializer.int8(obj.stance_cmd, buffer, bufferOffset);
    // Serialize message field [reboot_cmd]
    bufferOffset = _serializer.int8(obj.reboot_cmd, buffer, bufferOffset);
    // Serialize message field [set_home_pose_cmd]
    bufferOffset = _serializer.int8(obj.set_home_pose_cmd, buffer, bufferOffset);
    // Serialize message field [speed_cmd]
    bufferOffset = _serializer.int8(obj.speed_cmd, buffer, bufferOffset);
    // Serialize message field [speed_toggle_cmd]
    bufferOffset = _serializer.int8(obj.speed_toggle_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HexJoy
    let len;
    let data = new HexJoy(null);
    // Deserialize message field [world_x_cmd]
    data.world_x_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [world_y_cmd]
    data.world_y_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [world_yaw_cmd]
    data.world_yaw_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [place_x_cmd]
    data.place_x_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [place_y_cmd]
    data.place_y_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [place_z_cmd]
    data.place_z_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [place_roll_cmd]
    data.place_roll_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [place_pitch_cmd]
    data.place_pitch_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [pose_cmd]
    data.pose_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [move_type_cmd]
    data.move_type_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [gait_toggle_cmd]
    data.gait_toggle_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [leg_toggle_cmd]
    data.leg_toggle_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [stance_cmd]
    data.stance_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [reboot_cmd]
    data.reboot_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [set_home_pose_cmd]
    data.set_home_pose_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [speed_cmd]
    data.speed_cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [speed_toggle_cmd]
    data.speed_toggle_cmd = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'interbotix_xs_msgs/HexJoy';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99b1d8cef626ff2a04f51ab2f81ac80a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is used specifically in the interbotix_xshexapod_joy package
    #
    # Maps raw 'joy' commands to more specific ones to control an Interbotix hexapod
    
    # enum values that define the joystick controls for the robot
    
    #########################################################################################################
    
    # Command Options to move the Hexapod in the 'world' or in 'place'
    # World Control
    int8 WORLD_X_INC = 1
    int8 WORLD_X_DEC = 2
    int8 WORLD_Y_INC = 3
    int8 WORLD_Y_DEC = 4
    int8 WORLD_YAW_CCW = 5
    int8 WORLD_YAW_CW = 6
    
    # In Place Control
    int8 PLACE_X_INC = 7
    int8 PLACE_X_DEC = 8
    int8 PLACE_Y_INC = 9
    int8 PLACE_Y_DEC = 10
    int8 PLACE_Z_INC = 11
    int8 PLACE_Z_DEC = 12
    int8 PLACE_ROLL_CCW = 13
    int8 PLACE_ROLL_CW = 14
    int8 PLACE_PITCH_UP = 15
    int8 PLACE_PITCH_DOWN = 16
    
    # Move Type
    int8 MOVE_HEXAPOD = 17
    int8 MOVE_LEG = 18
    
    # Pose Control
    int8 HOME_POSE = 19
    int8 SLEEP_POSE = 20
    
    #########################################################################################################
    
    # Customize configurations for the Interbotix Hexapod
    
    # Cycle through the various gaits when in 'move_hexapod' mode
    int8 GAIT_NEXT = 21
    int8 GAIT_PREVIOUS = 22
    
    # Cycle through the legs when in 'move_leg' mode
    int8 LEG_NEXT = 23
    int8 LEG_PREVIOUS = 24
    
    # Widen or narrow the hexapod's stance
    int8 WIDEN_STANCE = 25
    int8 NARROW_STANCE = 26
    
    # Reboot motors if necessary
    int8 REBOOT_MOTORS = 27
    
    # Set the current stance and hexapod height to be the new 'Home Pose'
    int8 SET_HOME_POSE = 28
    
    # Inc/Dec speed
    int8 SPEED_INC = 29
    int8 SPEED_DEC = 30
    
    # Quickly toggle between a fast and slow speed setting
    int8 SPEED_COURSE = 31
    int8 SPEED_FINE = 32
    
    #########################################################################################################
    
    # Control the motion of the Interbotix Hexapod
    int8 world_x_cmd
    int8 world_y_cmd
    int8 world_yaw_cmd
    
    int8 place_x_cmd
    int8 place_y_cmd
    int8 place_z_cmd
    int8 place_roll_cmd
    int8 place_pitch_cmd
    
    int8 pose_cmd
    int8 move_type_cmd
    
    # Other Options
    int8 gait_toggle_cmd
    int8 leg_toggle_cmd
    int8 stance_cmd
    int8 reboot_cmd
    int8 set_home_pose_cmd
    
    # Speed Configs
    int8 speed_cmd
    int8 speed_toggle_cmd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HexJoy(null);
    if (msg.world_x_cmd !== undefined) {
      resolved.world_x_cmd = msg.world_x_cmd;
    }
    else {
      resolved.world_x_cmd = 0
    }

    if (msg.world_y_cmd !== undefined) {
      resolved.world_y_cmd = msg.world_y_cmd;
    }
    else {
      resolved.world_y_cmd = 0
    }

    if (msg.world_yaw_cmd !== undefined) {
      resolved.world_yaw_cmd = msg.world_yaw_cmd;
    }
    else {
      resolved.world_yaw_cmd = 0
    }

    if (msg.place_x_cmd !== undefined) {
      resolved.place_x_cmd = msg.place_x_cmd;
    }
    else {
      resolved.place_x_cmd = 0
    }

    if (msg.place_y_cmd !== undefined) {
      resolved.place_y_cmd = msg.place_y_cmd;
    }
    else {
      resolved.place_y_cmd = 0
    }

    if (msg.place_z_cmd !== undefined) {
      resolved.place_z_cmd = msg.place_z_cmd;
    }
    else {
      resolved.place_z_cmd = 0
    }

    if (msg.place_roll_cmd !== undefined) {
      resolved.place_roll_cmd = msg.place_roll_cmd;
    }
    else {
      resolved.place_roll_cmd = 0
    }

    if (msg.place_pitch_cmd !== undefined) {
      resolved.place_pitch_cmd = msg.place_pitch_cmd;
    }
    else {
      resolved.place_pitch_cmd = 0
    }

    if (msg.pose_cmd !== undefined) {
      resolved.pose_cmd = msg.pose_cmd;
    }
    else {
      resolved.pose_cmd = 0
    }

    if (msg.move_type_cmd !== undefined) {
      resolved.move_type_cmd = msg.move_type_cmd;
    }
    else {
      resolved.move_type_cmd = 0
    }

    if (msg.gait_toggle_cmd !== undefined) {
      resolved.gait_toggle_cmd = msg.gait_toggle_cmd;
    }
    else {
      resolved.gait_toggle_cmd = 0
    }

    if (msg.leg_toggle_cmd !== undefined) {
      resolved.leg_toggle_cmd = msg.leg_toggle_cmd;
    }
    else {
      resolved.leg_toggle_cmd = 0
    }

    if (msg.stance_cmd !== undefined) {
      resolved.stance_cmd = msg.stance_cmd;
    }
    else {
      resolved.stance_cmd = 0
    }

    if (msg.reboot_cmd !== undefined) {
      resolved.reboot_cmd = msg.reboot_cmd;
    }
    else {
      resolved.reboot_cmd = 0
    }

    if (msg.set_home_pose_cmd !== undefined) {
      resolved.set_home_pose_cmd = msg.set_home_pose_cmd;
    }
    else {
      resolved.set_home_pose_cmd = 0
    }

    if (msg.speed_cmd !== undefined) {
      resolved.speed_cmd = msg.speed_cmd;
    }
    else {
      resolved.speed_cmd = 0
    }

    if (msg.speed_toggle_cmd !== undefined) {
      resolved.speed_toggle_cmd = msg.speed_toggle_cmd;
    }
    else {
      resolved.speed_toggle_cmd = 0
    }

    return resolved;
    }
};

// Constants for message
HexJoy.Constants = {
  WORLD_X_INC: 1,
  WORLD_X_DEC: 2,
  WORLD_Y_INC: 3,
  WORLD_Y_DEC: 4,
  WORLD_YAW_CCW: 5,
  WORLD_YAW_CW: 6,
  PLACE_X_INC: 7,
  PLACE_X_DEC: 8,
  PLACE_Y_INC: 9,
  PLACE_Y_DEC: 10,
  PLACE_Z_INC: 11,
  PLACE_Z_DEC: 12,
  PLACE_ROLL_CCW: 13,
  PLACE_ROLL_CW: 14,
  PLACE_PITCH_UP: 15,
  PLACE_PITCH_DOWN: 16,
  MOVE_HEXAPOD: 17,
  MOVE_LEG: 18,
  HOME_POSE: 19,
  SLEEP_POSE: 20,
  GAIT_NEXT: 21,
  GAIT_PREVIOUS: 22,
  LEG_NEXT: 23,
  LEG_PREVIOUS: 24,
  WIDEN_STANCE: 25,
  NARROW_STANCE: 26,
  REBOOT_MOTORS: 27,
  SET_HOME_POSE: 28,
  SPEED_INC: 29,
  SPEED_DEC: 30,
  SPEED_COURSE: 31,
  SPEED_FINE: 32,
}

module.exports = HexJoy;
