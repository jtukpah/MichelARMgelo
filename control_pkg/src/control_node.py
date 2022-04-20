#!/usr/bin/env python3

# This node will subscribe to trajectory messages, and send those to the robot arm.

import rospy
from geometry_msgs.msg import Vector3
from interbotix_xs_modules.arm import InterbotixManipulatorXS
import rospkg

########## Global Variables ############
constraints = None
bot = None
###################################


def command_arm(msg):
    """
    Receive a single point in a trajectory.
    Command the arm to go to this point, w/in constraints.
    @param data. Vector3 message.
    """
    # don't start until constraints have been set.
    while constraints is None:
        rospy.sleep(0.05)
    # ensure command is within constraints.
    x = min(max(msg.x, constraints["X_MIN"]), constraints["X_MAX"])
    y = min(max(msg.y, constraints["Y_MIN"]), constraints["Y_MAX"])
    z = min(max(msg.z, constraints["Z_MIN"]), constraints["Z_MAX"])
    try:
        # send this command to the robot.
        bot.arm.set_ee_pose_components(x=x, y=y, z=z)
        rospy.loginfo("Travelling to " + str([x,y,z]))
    except:
        rospy.logerr("Cannot travel to " + str([x,y,z]) + " from current position.")


def read_constraints(constraints_file):
    """
    Read constraints from config file.
    @param constraints_file: file object
    """
    global constraints
    constraints = {}
    lines = constraints_file.readlines()
    for line in lines:
        params = line.split("=")
        constraints[params[0].strip()] = float(params[1].strip())


def main():
    global bot
    # rospy.init_node('traj_control_node')

    try:
        # define the robot object.
        bot = InterbotixManipulatorXS("px150", "arm", "gripper")
        # set initial end effector position.
        bot.arm.set_ee_pose_components(x=0.3, y = 0.2, z=0.3)
        # close the gripper.
        # bot.gripper.close()
    except:
        rospy.logerr("Unable to setup interbotix arm. Ensure the px150 arm is connected, and you have launched the drivers with\n\troslaunch interbotix_xsarm_control xsarm_control.launch robot_model:=px150\nExiting control_node.")
        exit(0)

    # find the filepath to this package.
    rospack = rospkg.RosPack()
    pkg_path = rospack.get_path('control_pkg')
    # read constraints from file.
    constraints_file = open(pkg_path+"/config/constraints.txt", "r")
    read_constraints(constraints_file)
    
    # subscribe to trajectory points.
    rospy.Subscriber("/traj/point", Vector3, command_arm)

    # pump callbacks.
    rospy.spin()


if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass