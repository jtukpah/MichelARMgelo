
"use strict";

let TorqueEnable = require('./TorqueEnable.js')
let OperatingModes = require('./OperatingModes.js')
let RegisterValues = require('./RegisterValues.js')
let Reboot = require('./Reboot.js')
let RobotInfo = require('./RobotInfo.js')
let MotorGains = require('./MotorGains.js')

module.exports = {
  TorqueEnable: TorqueEnable,
  OperatingModes: OperatingModes,
  RegisterValues: RegisterValues,
  Reboot: Reboot,
  RobotInfo: RobotInfo,
  MotorGains: MotorGains,
};
