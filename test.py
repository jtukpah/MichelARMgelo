#!/usr/bin/env python3

from interbotix_xs_modules.arm import InterbotixManipulatorXS
from std_msgs.msg import Float32MultiArray
import numpy as np
import rospy
import time

# This script makes the end-effector perform pick, pour, and place tasks
#
# To get started, open a terminal and type 'roslaunch interbotix_xsarm_control xsarm_control.launch robot_model:=wx250'
# Then change to this directory and type 'python bartender.py'

bot = InterbotixManipulatorXS("px150", "arm", "gripper") #define the robot

def callback(data):
    for i in range(len(data.data)//3):
        x= data.data[i*3]
        y= data.data[i*3+1]
        z= data.data[i*3+2]                                #TODO Since this is where Z is the singled out here is where the ZBound should be set
        bot.arm.set_ee_pose_components(x=x, y=y, z=z)      #See where this sends the end effector #value of x = 0.1 and z=0.1 returns an invalid positon

def main():
    
    bot.arm.set_ee_pose_components(x=0.3, y = 0.2, z=0.3)             #set the intial end effecotr position telling it to rise out of the holder
    #bot.arm.set_ee_pose_components(x=0.3, y=-0.2, z=0.3)             #set the intial end effecotr position telling it to rise out of the holder

    #bot.arm.set_single_joint_position("waist", np.pi/2.0)    #rotate the waist so that it defiens a new positon
    bot.gripper.close()                                       #Open/close the gripper
    
    rospy.Subscriber("traj", Float32MultiArray, callback)               #Other topic was traj
    rospy.loginfo("I'm being called")                                                #Starting the listener before the publisher means it should hopefully remain open while the publisher is called
    

if __name__=='__main__':
    main()
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()
