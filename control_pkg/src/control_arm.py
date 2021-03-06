#!/usr/bin/env python3

# Script to manually control arm position from console.
# First run:
# roslaunch interbotix_xsarm_control xsarm_control.launch robot_model:=px150

import sys
from interbotix_xs_modules.arm import InterbotixManipulatorXS

######### GLOBAL VARIABLES ###########
# offset of pen tip from original gripper location.
PEN_OFFSET = 0.055
# center position of sphere in arm's coordinate frame.
C = (0.21, 0.0, 0.1)
# radius of sphere in meters.
R = 0.19 #0.115
######################################

def go_home(bot):
    # set home pose.
    pos = [0.1, 0.0, 0.3, 0.0, 0.0]
    bot.arm.set_ee_pose_components(x=pos[0], y=pos[1], z=pos[2], roll=pos[3], pitch=pos[4])
    return pos


def free_control(bot):
    print("Running in FREE CONTROL mode.")
    # set home pose.
    last_pos = [0.3, 0.0, 0.3, 0.0, 0.0]
    bot.arm.set_ee_pose_components(x=last_pos[0], y=last_pos[1], z=last_pos[2], roll=last_pos[3], pitch=last_pos[4])
    # loop and keep asking for new pose.
    print("Enter E.E. position ('x y z') or single component (e.g. 'x 0.1').")
    print("Possible components: x, y, z, r, p.")

    # Test of set_ee_cartesian_trajectory function. found good values:
    # bot.arm.set_ee_cartesian_trajectory(x=0.1, z=0.1, roll=0, pitch=0, moving_time=2, wp_moving_time=0.2, wp_accel_time=0.1, wp_period=0.1)
    
    while True:
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
            bot.arm.set_ee_pose_components(x=pos[0], y=pos[1], z=pos[2], roll=pos[3], pitch=pos[4])
            # bot.arm.set_ee_cartesian_trajectory(x=pos[0], y=pos[1], z=pos[2], roll=pos[3], pitch=pos[4], moving_time=0.2, wp_moving_time=0.2, wp_period=0.05)
            last_pos = pos
        except:
            print("Position must be in format 'x y z' or 'component value'.")
            continue


def triangle_on_sphere(bot):
    print("Running TRIANGLE ON SPHERE monotonic routine.")
    # set starting pose.
    pos = [0.4, 0.0, 0.11, 0.0, 0.7] # base of main arc
    bot.arm.set_ee_pose_components(x=pos[0], y=pos[1], z=pos[2], roll=pos[3], pitch=pos[4])
    # first arc.
    dx = -0.18; dz = 0.0756; dr = -0.5236; dp = -0.8
    dr = -0.7
    bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # across.
    dx = 0.0; dz = 0.0; dr = 1.05; dp = 0
    dr = 1.4
    bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # back down.
    dx = 0.16; dz = -0.0756; dr = -0.8; dp = 0.8
    bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # return to home position.
    go_home(bot)


def triangle_on_small_sphere(bot):
    print("Running TRIANGLE ON SMALL SPHERE monotonic routine.")
    # set starting pose.
    pos = [0.34, 0.0, 0.08, 0.0, 0.7] # base of main arc
    bot.arm.set_ee_pose_components(x=pos[0], y=pos[1], z=pos[2], roll=pos[3], pitch=pos[4])
    # first arc.
    dx = -0.11; dz = 0.038; dr = -0.3; dp = -0.8
    bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # across.
    dx = 0.0; dz = 0.0; dr = 0.6; dp = 0
    bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # back down.
    dx = 0.1; dz = -0.038; dr = -0.3; dp = 0.8
    bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # return to home position.
    go_home(bot)


def triangle_on_sphere_geodesic(bot):
    print("Running TRIANGLE ON SPHERE geodesic routine.")
    print("WARNING: this does not work.")
    # set starting pose.
    pos = [0.4, 0.0, 0.1, 0.0, 0.7] # base of main arc
    bot.arm.set_ee_pose_components(x=pos[0], y=pos[1], z=pos[2], roll=pos[3], pitch=pos[4])
    # first arc.
    bot.arm.set_ee_geodesic_trajectory((-0.19, 0.0, 0.02, -0.5, -0.8), C, R, PEN_OFFSET)
    # across.
    bot.arm.set_ee_geodesic_trajectory((0.0, 0.0, 0.0, 1.05, 0.0), C, R, PEN_OFFSET)
    # back down.
    bot.arm.set_ee_geodesic_trajectory((0.15, 0.0, -0.0756, -0.5236, 0.8), C, R, PEN_OFFSET)
    # return to home position.
    # go_home(bot)
    

def square_on_paper(bot):
    print("Running SQUARE ON PAPER routine.")
    # set starting pose (bottom left corner).
    pos = [0.35, 0.0, 0.08, 0.0, 0.0] # base of main arc
    bot.arm.set_ee_pose_components(x=pos[0], y=pos[1], z=pos[2], roll=pos[3], pitch=pos[4])
    # bottom edge.
    dx = 0.0; dz = 0.0; dp = 0.0; dr = 0.5
    bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # right edge.
    dx = 0.1; dz = 0.0; dp = 0.01; dr = 0.0
    bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # top edge.
    dx = 0.0; dz = 0.0; dp = 0.0; dr = -1
    bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # left edge.
    dx = -0.1; dz = 0.0; dp = -0.01; dr = 0.0
    bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # return to home position.
    go_home(bot)
    

def diamond_on_paper(bot):
    print("Running DIAMOND ON PAPER routine.")
    # set starting pose (bottom center).
    pos = [0.35, 0.0, 0.14, 0, 0.0] # base of main arc
    bot.arm.set_ee_pose_components(x=pos[0], y=pos[1], z=pos[2], roll=pos[3], pitch=pos[4])
    # down
    dx = 0.0; dz = -0.05; dp = 0.0; dr = 0.0
    bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # left
    dx = 0.03; dz = 0.0; dp = 0.0; dr = -0.7
    bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # top
    dx = 0.03; dz = -0.01; dp = 0.01; dr = 0.7
    bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # right
    dx = -0.05; dz = 0.0; dp = 0.0; dr = 0.7
    bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # bottom
    dx = -0.05; dz = 0.01; dp = -0.01; dr = -0.7
    bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # return to home position.
    go_home(bot)
    

def triangle_on_inner_sphere(bot):
    print("Running TRIANGLE ON INNER SPHERE monotonic routine.")
    # set starting pose.
    pos = [0.28, 0.0, 0.06, 0.0, 0.5] # base of main arc
    bot.arm.set_ee_pose_components(x=pos[0], y=pos[1], z=pos[2], roll=pos[3], pitch=pos[4])
    # first arc.
    dx = -0.17; dz = 0.17; dr = 0.0; dp = 0.6
    bot.arm.set_ee_inner_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # # across.
    # dx = 0.0; dz = 0.0; dr = 1.05; dp = 0
    # bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # # back down.
    # dx = 0.16; dz = -0.0756; dr = -0.5; dp = 0.8
    # bot.arm.set_ee_arc_trajectory(dx, dz, dr, dp, PEN_OFFSET)
    # return to home position.
    go_home(bot)


def main():
    # define the arm object.
    bot = InterbotixManipulatorXS("px150", "arm", "gripper")

    # choose function based on cmd line param.
    functions = {0 : free_control,
                 1 : triangle_on_sphere,
                 2 : triangle_on_sphere_geodesic,
                 3 : square_on_paper,
                 4 : diamond_on_paper,
                 5 : triangle_on_small_sphere,
                 6 : triangle_on_inner_sphere}

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
    functions[mode](bot)


if __name__=='__main__':
    main()
