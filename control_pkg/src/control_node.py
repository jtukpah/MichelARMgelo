#!/usr/bin/env python3

# This node will subscribe to trajectory messages, and send those to the robot arm.

import rospy
from std_msgs.msg import Float32MultiArray
from interbotix_xs_modules.arm import InterbotixManipulatorXS
import rospkg
from math import sin, cos

########## Global Variables ############
constraints = None
bot = None
###################################


def command_arm_relative_arc(msg):
    """
    Command the arm to make this motion relative to its current position.
    @param data. Float32MultiArray message: [dx,dz,dr,dp]
    """
    # don't start until constraints have been set.
    while constraints is None:
        rospy.sleep(0.05)
    dx = msg.data[0];  dz = msg.data[1]; dr = msg.data[2]; dp = msg.data[3]
    try:
        # send this command to the robot.
        bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, constraints["PEN_OFFSET"])
        rospy.loginfo("Commanding relative arc motion " + str(msg.data))
    except:
        rospy.logerr("Cannot make relative arc motion " + str(msg.data) + " from current position.")


def command_arm_relative_arc_inner(msg):
    """
    Command the arm to make this motion relative to its current position.
    @param data. Float32MultiArray message: [dx,dz,dr,dp]
    """
    # don't start until constraints have been set.
    while constraints is None:
        rospy.sleep(0.05)
    dx = msg.data[0];  dz = msg.data[1]; dr = msg.data[2]; dp = msg.data[3]
    try:
        # send this command to the robot.
        bot.arm.set_ee_inner_arc_trajectory(dx, dz, dr, dp, constraints["PEN_OFFSET"])
        rospy.loginfo("Commanding relative arc motion " + str(msg.data))
    except:
        rospy.logerr("Cannot make relative arc motion " + str(msg.data) + " from current position.")


def command_arm_cartesian(msg):
    """
    Receive a single cartesian point in a trajectory.
    Command the arm to go to this point, w/in constraints.
    @param data. Float32MultiArray message with (x,y,z,r,p).
    """
    # don't start until constraints have been set.
    while constraints is None:
        rospy.sleep(0.05)
    # ensure command is within constraints.
    x = min(max(msg.data[0], constraints["X_MIN"]), constraints["X_MAX"])
    y = min(max(msg.data[1], constraints["Y_MIN"]), constraints["Y_MAX"])
    z = min(max(msg.data[2], constraints["Z_MIN"]), constraints["Z_MAX"])
    r = msg.data[3]
    p = msg.data[4]
    try:
        # send this command to the robot.
        bot.arm.set_ee_pose_components(x, y, z, r, p)
        rospy.loginfo("Travelling to cartesian " + str([x,y,z,r,p]))
    except:
        rospy.logerr("Cannot travel to cartesian " + str([x,y,z,r,p]) + " from current position.")


def command_arm_polar(msg):
    """
    Receive a single polar point in a trajectory.
    Command the arm to go to this point, w/in constraints.
    @param data. Float32MultiArray message with (r,theta,z).
    """
    # don't start until constraints have been set.
    while constraints is None:
        rospy.sleep(0.05)
    # ensure command is within constraints.
    r = min(max(msg.data[0], constraints["R_MIN"]), constraints["R_MAX"])
    theta = min(max(msg.data[1], constraints["THETA_MIN"]), constraints["THETA_MAX"])
    z = min(max(msg.data[2], constraints["Z_MIN"]), constraints["Z_MAX"])
    # convert polar to cartesian.
    x = r * cos(theta)
    y = r * sin(theta)
    try:
        # send this command to the robot.
        bot.arm.set_ee_pose_components(x=x, y=y, z=z)
        rospy.loginfo("Travelling to polar " + str([r,theta,z]))
    except:
        rospy.logerr("Cannot travel to polar " + str([r,theta,z]) + " from current position.")


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
        bot.arm.set_ee_pose_components(x=0.3, y = 0.0, z=0.3)
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
    # cartesian:
    rospy.Subscriber("/traj/point/cartesian", Float32MultiArray, command_arm_cartesian)
    # polar:
    rospy.Subscriber("/traj/point/polar", Float32MultiArray, command_arm_polar)
    # relative arcs:
    rospy.Subscriber("/traj/point/arc_outer", Float32MultiArray, command_arm_relative_arc)
    rospy.Subscriber("/traj/point/arc_inner", Float32MultiArray, command_arm_relative_arc_inner)

    # pump callbacks.
    rospy.spin()


if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass