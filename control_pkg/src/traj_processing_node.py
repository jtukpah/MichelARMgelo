#!/usr/bin/env python3

# This node will find or generate a trajectory and publish it one point at a time.

import rospy
from std_msgs.msg import Float32MultiArray
import sys
import rospkg
from random import uniform
import numpy as np
from math import pi, sin, cos

####### GLOBAL VARIABLES #########
constraints = None
traj_pub_cartesian = None
traj_pub_polar = None
traj_pub_arc_outer = None
traj_pub_arc_inner = None
loop = False
traj_file = None
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


def send_trajectory_from_file():
    """
    Read a file, with rows in format x,y,z.
    Publish each point in the trajectory,
    Use global vars for params.
    @param traj_file: file object.
    @param loop: bool. True will repeat the traj forever.
    """
    # now the control node should be setup.
    lines = traj_file.readlines()
    r = rospy.Rate(0.5) # freq in Hz
    while not rospy.is_shutdown():
        for i in range(1, len(lines)):
            vals = [float(v) for v in lines[i].split(",")]
            msg = Float32MultiArray()
            msg.data = [vals[0], vals[1], vals[2]]
            traj_pub_cartesian.publish(msg)
            # sleep to publish at desired freq.
            r.sleep()
        if not loop: return


def randomize_trajectory():
    """
    Publish a random position within constraints.
    """
    # loop forever, sending new random positions.
    msg = Float32MultiArray()
    r = rospy.Rate(0.5) # freq in Hz
    while not rospy.is_shutdown():
        msg.data = [uniform(constraints["X_MIN"],constraints["X_MAX"]),
                    uniform(constraints["Y_MIN"],constraints["Y_MAX"]),
                    uniform(constraints["Z_MIN"],constraints["Z_MAX"])]
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
    msg = Float32MultiArray()
    msg.data = [c[0]+r, c[1], constraints["Z_MIN"]+0.1]
    traj_pub_cartesian.publish(msg)
    # draw the circle.
    for theta in np.arange(0, 2*pi+ang_incr, ang_incr):
        msg.data[0] = c[0]+r*cos(theta)
        msg.data[1] = c[1]+r*sin(theta)
        msg.data[2] = constraints["Z_MIN"]
        traj_pub_cartesian.publish(msg)
        # rospy.sleep(0.01)
    # pick up pen at same location it just ended at.
    msg.data[2] = constraints["Z_MIN"] + 0.1
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
    msg = Float32MultiArray()
    msg.data = [p1[0], p1[1], constraints["Z_MIN"]]
    traj_pub_cartesian.publish(msg)
    # go to next pt with pen still down.
    msg.data = [p2[0], p2[1], constraints["Z_MIN"]]
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


######### GLOBAL VARIABLES ###########
# center position of sphere in arm's coordinate frame.
C = (0.21, 0.0, 0.1)
# radius of sphere in meters.
R = 0.19 #0.115
######################################


def go_home():
    # set home pose.
    pos = [0.1, 0.0, 0.3, 0.0, 0.0]
    msg = Float32MultiArray()
    msg.data = pos
    traj_pub_cartesian.publish(msg)
    return pos


def free_control():
    print("Running in FREE CONTROL mode.")
    # set home pose.
    go_home()
    # loop and keep asking for new pose.
    print("Enter E.E. position ('x y z') or single component (e.g. 'x 0.1').")
    print("Possible components: x, y, z, r, p.")
    msg = Float32MultiArray()
    # Test of set_ee_cartesian_trajectory function. found good values:
    # bot.arm.set_ee_cartesian_trajectory(x=0.1, z=0.1, roll=0, pitch=0, moving_time=2, wp_moving_time=0.2, wp_accel_time=0.1, wp_period=0.1)
    
    while not rospy.is_shutdown():
        try:
            line = input("Position: ").split(" ")
            if len(line) < 2:
                # quit if user presses enter without entering anything.
                exit()
            elif len(line) == 3:
                # got x y z
                pos = [float(p) for p in line] + [0,0]
            elif len(line) == 5:
                # got x y z r p
                pos = [float(p) for p in line]
            elif len(line) == 2:
                # got single component e.g. "x 0.1"
                comp = line[0]; val = float(line[1])
                if comp == 'x':
                    pos = last_pos; pos[0] = val
                elif comp == 'y':
                    pos = last_pos; pos[1] = val
                elif comp == 'z':
                    pos = last_pos; pos[2] = val
                elif comp == 'r':
                    pos = last_pos; pos[3] = val
                elif comp == 'p':
                    pos = last_pos; pos[4] = val
                else:
                    raise Exception()
            else:
                raise Exception()
            print("Chose ", pos)
            msg.data = pos
            traj_pub_cartesian.publish(msg)
            last_pos = pos
        except:
            print("Position must be in format 'x y z', 'x y z r p', or 'component value'.")
            continue


def triangle_on_sphere():
    print("Running TRIANGLE ON SPHERE monotonic routine.")
    msg = Float32MultiArray()
    # set starting pose.
    pos = [0.4, 0.0, 0.11, 0.0, 0.7] # base of main arc
    msg.data = pos
    traj_pub_cartesian.publish(msg)
    # first arc.
    dx = -0.18; dz = 0.0756; dr = -0.5236; dp = -0.8
    msg.data = [dx, dz, dr, dp]
    traj_pub_arc_outer.publish(msg)
    # across.
    dx = 0.0; dz = 0.0; dr = 1.05; dp = 0
    msg.data = [dx, dz, dr, dp]
    traj_pub_arc_outer.publish(msg)
    # back down.
    dx = 0.16; dz = -0.0756; dr = -0.8; dp = 0.8
    msg.data = [dx, dz, dr, dp]
    traj_pub_arc_outer.publish(msg)
    # return to home position.
    go_home()


def triangle_on_small_sphere():
    print("Running TRIANGLE ON SMALL SPHERE monotonic routine.")
    msg = Float32MultiArray()
    # set starting pose.
    pos = [0.34, 0.0, 0.08, 0.0, 0.7] # base of main arc
    msg.data = pos
    traj_pub_cartesian.publish(msg)
    # first arc.
    dx = -0.11; dz = 0.038; dr = -0.3; dp = -0.8
    msg.data = [dx, dz, dr, dp]
    traj_pub_arc_outer.publish(msg)
    # across.
    dx = 0.0; dz = 0.0; dr = 0.6; dp = 0
    msg.data = [dx, dz, dr, dp]
    traj_pub_arc_outer.publish(msg)
    # back down.
    dx = 0.1; dz = -0.038; dr = -0.3; dp = 0.8
    msg.data = [dx, dz, dr, dp]
    traj_pub_arc_outer.publish(msg)
    # return to home position.
    go_home()


def square_on_paper():
    print("Running SQUARE ON PAPER routine.")
    msg = Float32MultiArray()
    # set starting pose (bottom left corner).
    pos = [0.35, 0.0, 0.08, 0.0, 0.0] # base of main arc
    msg.data = pos
    traj_pub_cartesian.publish(msg)
    # bottom edge.
    dx = 0.0; dz = 0.0; dp = 0.0; dr = 0.5
    msg.data = [dx, dz, dr, dp]
    traj_pub_arc_outer.publish(msg)
    # right edge.
    dx = 0.1; dz = 0.0; dp = 0.01; dr = 0.0
    msg.data = [dx, dz, dr, dp]
    traj_pub_arc_outer.publish(msg)
    # top edge.
    dx = 0.0; dz = 0.0; dp = 0.0; dr = -1
    msg.data = [dx, dz, dr, dp]
    traj_pub_arc_outer.publish(msg)
    # left edge.
    dx = -0.1; dz = 0.0; dp = -0.01; dr = 0.0
    msg.data = [dx, dz, dr, dp]
    traj_pub_arc_outer.publish(msg)
    # return to home position.
    go_home()
    

def diamond_on_paper():
    print("Running DIAMOND ON PAPER routine.")
    msg = Float32MultiArray()
    # set starting pose (bottom center).
    pos = [0.35, 0.0, 0.14, 0, 0.0] # base of main arc
    msg.data = pos
    traj_pub_cartesian.publish(msg)
    # down
    dx = 0.0; dz = -0.05; dp = 0.0; dr = 0.0
    msg.data = [dx, dz, dr, dp]
    traj_pub_arc_outer.publish(msg)
    # left
    dx = 0.03; dz = 0.0; dp = 0.0; dr = -0.7
    msg.data = [dx, dz, dr, dp]
    traj_pub_arc_outer.publish(msg)
    # top
    dx = 0.03; dz = -0.01; dp = 0.01; dr = 0.7
    msg.data = [dx, dz, dr, dp]
    traj_pub_arc_outer.publish(msg)
    # right
    dx = -0.05; dz = 0.0; dp = 0.0; dr = 0.7
    msg.data = [dx, dz, dr, dp]
    traj_pub_arc_outer.publish(msg)
    # bottom
    dx = -0.05; dz = 0.01; dp = -0.01; dr = -0.7
    msg.data = [dx, dz, dr, dp]
    traj_pub_arc_outer.publish(msg)
    # return to home position.
    go_home()
    

def triangle_on_inner_sphere():
    print("Running TRIANGLE ON INNER SPHERE monotonic routine.")
    msg = Float32MultiArray()
    # set starting pose.
    pos = [0.28, 0.0, 0.06, 0.0, 0.5] # base of main arc
    msg.data = pos
    traj_pub_cartesian.publish(msg)
    # first arc.
    dx = -0.17; dz = 0.17; dr = 0.0; dp = 0.6
    msg.data = [dx, dz, dr, dp]
    traj_pub_arc_inner.publish(msg)
    # return to home position.
    go_home()


def main():
    global traj_pub_cartesian, traj_pub_polar, traj_file, traj_pub_arc_outer, traj_pub_arc_inner
    rospy.init_node('traj_processing_node')
    # define publishers.
    traj_pub_cartesian = rospy.Publisher('/traj/point/cartesian', Float32MultiArray, queue_size=100)
    traj_pub_polar = rospy.Publisher('/traj/point/polar', Float32MultiArray, queue_size=100)
    traj_pub_arc_outer = rospy.Publisher("/traj/point/arc_outer", Float32MultiArray, queue_size=100)
    traj_pub_arc_inner = rospy.Publisher("/traj/point/arc_inner", Float32MultiArray, queue_size=100)
    # find the filepath to this package.
    rospack = rospkg.RosPack()
    pkg_path = rospack.get_path('control_pkg')
    # read constraints from file.
    constraints_file = open(pkg_path+"/config/constraints.txt", "r")
    read_constraints(constraints_file)
    # find a file to read a trajectory from.
    traj_file = open(pkg_path+"/trajectories/traj1.csv", "r")
    # don't start anything else until constraints have been set.
    while constraints is None:
        rospy.sleep(0.05)
    # wait to make sure the control node is ready to receive messages.
    rospy.sleep(6)

    # choose function based on cmd line param.
    functions = {0 : free_control,
                 1 : triangle_on_sphere,
                 3 : square_on_paper,
                 4 : diamond_on_paper,
                 5 : triangle_on_small_sphere,
                 6 : triangle_on_inner_sphere,
                 7 : send_trajectory_from_file,
                 8 : randomize_trajectory,
                 9 : rand_circles,
                 10: rand_lines}
    mode = 0
    try:
        if len(sys.argv) > 1:
            mode = int(sys.argv[1])
    except:
        print("Mode param must be an integer.")
        exit()
    if mode not in functions.keys():
        print("Mode param must be one of " + str(functions.keys()))
        exit()
    
    # call the desired function.
    functions[mode]()
    
    # pump callbacks.
    rospy.spin()


if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass