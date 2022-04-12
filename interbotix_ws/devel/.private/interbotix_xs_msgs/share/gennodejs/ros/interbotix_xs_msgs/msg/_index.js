
"use strict";

let TurretJoy = require('./TurretJoy.js');
let HexJoy = require('./HexJoy.js');
let JointTemps = require('./JointTemps.js');
let ArmJoy = require('./ArmJoy.js');
let JointGroupCommand = require('./JointGroupCommand.js');
let JointTrajectoryCommand = require('./JointTrajectoryCommand.js');
let JointSingleCommand = require('./JointSingleCommand.js');
let LocobotJoy = require('./LocobotJoy.js');

module.exports = {
  TurretJoy: TurretJoy,
  HexJoy: HexJoy,
  JointTemps: JointTemps,
  ArmJoy: ArmJoy,
  JointGroupCommand: JointGroupCommand,
  JointTrajectoryCommand: JointTrajectoryCommand,
  JointSingleCommand: JointSingleCommand,
  LocobotJoy: LocobotJoy,
};
