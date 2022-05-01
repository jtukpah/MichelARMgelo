#!/usr/bin/env python3

# This node will find or generate a trajectory and publish it one point at a time.

import rospy
from geometry_msgs.msg import Vector3
import sys
import rospkg
from random import uniform
import numpy as np
from math import pi, sin, cos

####### GLOBAL VARIABLES #########
constraints = None
traj_pub_cartesian = None
traj_pub_polar = None
MODES = ["file","random","circles","lines","forward"]
##################################


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


def send_trajectory_from_file(traj_file, loop):
    """
    Read a file, with rows in format x,y,z.
    Publish each point in the trajectory,
    @param traj_file: file object.
    @param loop: bool. True will repeat the traj forever.
    """
    # now the control node should be setup.
    lines = traj_file.readlines()
    r = rospy.Rate(0.5) # freq in Hz
    while not rospy.is_shutdown():
        for i in range(1, len(lines)):
            vals = [float(v) for v in lines[i].split(",")]
            msg = Vector3(x=vals[0], y=vals[1], z=vals[2])
            traj_pub_cartesian.publish(msg)
            # sleep to publish at desired freq.
            r.sleep()
        if not loop: return


def randomize_trajectory():
    """
    Publish a random position within constraints.
    """
    # loop forever, sending new random positions.
    msg = Vector3()
    r = rospy.Rate(0.5) # freq in Hz
    while not rospy.is_shutdown():
        msg.x = uniform(constraints["X_MIN"],constraints["X_MAX"])
        msg.y = uniform(constraints["Y_MIN"],constraints["Y_MAX"])
        msg.z = uniform(constraints["Z_MIN"],constraints["Z_MAX"])
        traj_pub_cartesian.publish(msg)
        # wait between sending points.
        r.sleep()


def traj_circle(c, r):
    """
    Generate a trajectory that will draw a circle with the end effector.
    The minimum z will be used, where the pen tip is in contact with the paper.
    Pick up the pen between circles.
    @param center: Tuple containing (x,y) of center point.
    @param radius: float. radius of the circle to draw.
    """
    # set angle increment lower to increase roundness of circle.
    ang_incr = pi/6
    # go to first location with pen held up.
    msg = Vector3(x = c[0]+r, y=c[1], z=constraints["Z_MIN"]+0.1)
    traj_pub_cartesian.publish(msg)
    # draw the circle.
    for theta in np.arange(0, 2*pi+ang_incr, ang_incr):
        msg.x = c[0]+r*cos(theta)
        msg.y = c[1]+r*sin(theta)
        msg.z = constraints["Z_MIN"]
        traj_pub_cartesian.publish(msg)
        # rospy.sleep(0.01)
    # pick up pen at same location it just ended at.
    msg.z = constraints["Z_MIN"] + 0.1
    traj_pub_cartesian.publish(msg)


def rand_circles(use_polar=True):
    """
    Create random circles.
    @param use_polar: bool. True will use polar instaad of cartesian.
    """
    # loop forever, sending new random positions.
    rad_range = [0.03, 0.07]
    r = rospy.Rate(0.2) # freq in Hz
    while not rospy.is_shutdown():
        if not use_polar:
            # center = [uniform(constraints["X_MIN"],constraints["X_MAX"]),
            #           uniform(constraints["Y_MIN"],constraints["Y_MAX"])]
            center = [0.3, 0.0]
            # radius = uniform(rad_range[0], rad_range[1])
            radius = 0.03
            # make the circle with these params.
            traj_circle(center, radius)
        else:
            # choose center position within polar constraints.
            r0 = uniform(constraints["R_MIN"],constraints["R_MAX"])
            th0 = uniform(constraints["THETA_MIN"],constraints["THETA_MAX"])
            # get center in cartesian.
            center = [r0*cos(th0), r0*sin(th0)]
            # choose radius of circle to draw.
            radius = uniform(rad_range[0], rad_range[1])
            # make the circle.
            traj_circle(center, radius)
        # wait between sending points.
        r.sleep()


def traj_line(p1, p2):
    """
    Generate a trajectory that will draw a line between the specified points.
    Pick up the ben before and after.
    @param p1: Tuple containing (x,y) of first point.
    @param p2: Tuple containing (x,y) of second point.
    """
    # # go to first location with pen held up.
    # msg = Vector3(x=p1[0], y=p1[1], z=constraints["Z_MIN"]+0.05)
    # traj_pub_cartesian.publish(msg)
    # put down pen.
    msg = Vector3(x=p1[0], y=p1[1], z=constraints["Z_MIN"])
    traj_pub_cartesian.publish(msg)
    # go to next pt with pen still down.
    msg = Vector3(x=p2[0], y=p2[1], z=constraints["Z_MIN"])
    traj_pub_cartesian.publish(msg)
    # # pick up pen.
    # msg = Vector3(x=p2[0], y=p2[1], z=constraints["Z_MIN"]+0.05)
    # traj_pub_cartesian.publish(msg)


def rand_lines():
    """
    Create random lines.
    """
    # loop forever, sending new random positions.
    r = rospy.Rate(0.2) # freq in Hz
    while not rospy.is_shutdown():
        p1 = [uniform(constraints["X_MIN"],constraints["X_MAX"]),
              uniform(constraints["Y_MIN"],constraints["Y_MAX"])]
        p2 = [uniform(constraints["X_MIN"],constraints["X_MAX"]),
              uniform(constraints["Y_MIN"],constraints["Y_MAX"])]
        # make the line with these params.
        traj_line(p1, p2)
        # wait between sending points.
        r.sleep()


def main(mode:str):
    global traj_pub_cartesian, traj_pub_polar
    rospy.init_node('traj_processing_node')
    # define publishers.
    traj_pub_cartesian = rospy.Publisher('/traj/point/cartesian', Vector3, queue_size=100)
    traj_pub_polar = rospy.Publisher('/traj/point/polar', Vector3, queue_size=100)
    # find the filepath to this package.
    rospack = rospkg.RosPack()
    pkg_path = rospack.get_path('control_pkg')
    # read constraints from file.
    constraints_file = open(pkg_path+"/config/constraints.txt", "r")
    read_constraints(constraints_file)
    # don't start anything else until constraints have been set.
    while constraints is None:
        rospy.sleep(0.05)
    # wait to make sure the control node is ready to receive messages.
    rospy.sleep(1)

    # source of trajectory depends on cmd line arg "mode".
    if mode == "file":
        # find a file to read a trajectory from.
        traj_file = open(pkg_path+"/trajectories/traj1.csv", "r")
        send_trajectory_from_file(traj_file, loop=False)
    elif mode == "random":
        # keep generating random trajectory points on loop.
        randomize_trajectory()
    elif mode == "circles":
        # keep generating random circles on loop.
        rand_circles(use_polar=False)
    elif mode == "lines":
        # keep generating random lines on loop.
        rand_lines()
    elif mode == "forward":
        # TODO subscribe to array of points from 
        # a different node that has generated it directly, and 
        # forward those points along one at a time.
        rospy.logerr("forward mode not yet implemented")
        exit(0)
    else:
        rospy.logerr("mode argument must be one of "+str(MODES))
        exit(0)
    
    # pump callbacks.
    rospy.spin()


if __name__ == '__main__':
    try:
        if len(sys.argv) > 1 and sys.argv[1] in MODES:
            main(sys.argv[1])
        else:
            rospy.logerr("Usage: one of\n\troslaunch control_pkg control_arm.launch mode:=MODE\n\trosrun control_pkg traj_processing_node.py MODE\nAvailable modes: "+str(MODES))
    except rospy.ROSInterruptException:
        pass