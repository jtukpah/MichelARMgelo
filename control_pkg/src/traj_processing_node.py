#!/usr/bin/env python3

# This node will read a CSV file containing a trajectory, and will publish it one point at a time.

import rospy
from geometry_msgs.msg import Vector3
import sys
import rospkg
from random import uniform

####### GLOBAL VARIABLES #########
constraints = None
traj_pt_pub = None
##################################


def send_trajectory(traj_file, loop:bool):
    """
    Read a file, with rows in format x,y,z.
    Publish each point in the trajectory,
    @param traj_file: file object.
    @param loop: bool. True will repeat the traj forever.
    """
    # don't start until constraints have been set.
    while constraints is None:
        rospy.sleep(0.05)
    rospy.sleep(1)
    # now the control node should be setup.
    lines = traj_file.readlines()
    r = rospy.Rate(0.5) # freq in Hz
    while not rospy.is_shutdown():
        for i in range(1, len(lines)):
            vals = [float(v) for v in lines[i].split(",")]
            msg = Vector3(x=vals[0], y=vals[1], z=vals[2])
            traj_pt_pub.publish(msg)
            # sleep to publish at desired freq.
            r.sleep()
        if not loop: return


def randomize_trajectory():
    """
    Publish a random position within constraints.
    """
    # don't start until constraints have been set.
    while constraints is None:
        rospy.sleep(0.05)
    # loop forever, sending new random positions.
    msg = Vector3()
    r = rospy.Rate(0.5) # freq in Hz
    while not rospy.is_shutdown():
        msg.x = uniform(constraints["X_MIN"],constraints["X_MAX"])
        msg.y = uniform(constraints["Y_MIN"],constraints["Y_MAX"])
        msg.z = uniform(constraints["Z_MIN"],constraints["Z_MAX"])
        traj_pt_pub.publish(msg)
        # wait between sending points.
        r.sleep()


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
    rospy.loginfo("Found constraints:" + str(constraints))


def main(mode:str):
    global traj_pt_pub
    rospy.init_node('traj_processing_node')

    # define publisher.
    traj_pt_pub = rospy.Publisher('/traj/point', Vector3, queue_size=100)

    # find the filepath to this package.
    rospack = rospkg.RosPack()
    pkg_path = rospack.get_path('control_pkg')
    # read constraints from file.
    constraints_file = open(pkg_path+"/config/constraints.txt", "r")
    read_constraints(constraints_file)

    # source of trajectory depends on cmd line arg "mode".
    if mode == "file":
        # find a file to read a trajectory from.
        traj_file = open(pkg_path+"/trajectories/traj1.csv", "r")
        send_trajectory(traj_file, loop=False)
    elif mode == "random":
        # keep generating random trajectory points on loop.
        randomize_trajectory()
    elif mode == "forward":
        # TODO subscribe to Float32MultiArray of points from 
        # a different node that has generated it directly, and 
        # forward those points along one at a time.
        rospy.loginfo("forward mode not yet implemented")
        exit(0)
    else:
        rospy.logerr("mode argument must be one of 'file', 'random', 'forward'.")
        exit(0)
    
    # pump callbacks.
    rospy.spin()


if __name__ == '__main__':
    modes = ["file","random","forward"]
    try:
        if len(sys.argv) > 1 and sys.argv[1] in modes:
            main(sys.argv[1])
        else:
            rospy.logerr("Usage: one of\n\troslaunch control_pkg control_arm.launch mode:=MODE\n\trosrun control_pkg traj_processing_node.py MODE\nAvailable modes: ",modes)
    except rospy.ROSInterruptException:
        pass