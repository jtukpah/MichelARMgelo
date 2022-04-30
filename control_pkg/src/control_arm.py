#!/usr/bin/env python3

# Script to manually control arm position from console.
# First run:
# roslaunch interbotix_xsarm_control xsarm_control.launch robot_model:=px150

import sys
from interbotix_xs_modules.arm import InterbotixManipulatorXS


def free_control(bot):
    print("Running in FREE CONTROL mode.")
    # set home pose.
    last_pos = [0.3, 0.0, 0.3, 0.0, 0.0]
    bot.arm.set_ee_pose_components(x=last_pos[0], y=last_pos[1], z=last_pos[2], roll=last_pos[3], pitch=last_pos[4])
    # loop and keep asking for new pose.
    print("Enter E.E. position ('x y z') or single component (e.g. 'x 0.1').")
    print("Possible components: x, y, z, r, p.")
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
    print("Running TRIANGLE ON SPHERE routine.")
    # set starting pose.
    last_pos = [0.4, 0.0, 0.1, 0.0, 0.7] # base of main arc
    bot.arm.set_ee_pose_components(x=last_pos[0], y=last_pos[1], z=last_pos[2], roll=last_pos[3], pitch=last_pos[4])
    # first arc.
    dx = -0.19; dz = 0.0756; dp = -0.8; dr = -0.5236
    bot.arm.set_ee_arc_trajectory(x=dx, z=dz, pitch=dp, roll=dr)
    # across.
    dx = 0.0; dz = 0.0; dp = 0; dr = 1.05
    bot.arm.set_ee_arc_trajectory(x=dx, z=dz, pitch=dp, roll=dr)
    # back down.
    dx = 0.15; dz = -0.0756; dp = 0.8; dr = -0.5236
    bot.arm.set_ee_arc_trajectory(x=dx, z=dz, pitch=dp, roll=dr)
    

def square_on_paper(bot):
    print("Running SQUARE ON PAPER routine.")
    # set starting pose (top left corner).
    last_pos = [0.3, 0.0, 0.1, 0.5236, 0.1] # base of main arc
    bot.arm.set_ee_pose_components(x=last_pos[0], y=last_pos[1], z=last_pos[2], roll=last_pos[3], pitch=last_pos[4])
    # top edge.
    dx = 0.0; dz = 0.0; dp = 0.0; dr = 1.05
    bot.arm.set_ee_arc_trajectory(x=dx, z=dz, pitch=dp, roll=dr)
    # right edge.
    dx = -0.2; dz = 0.0; dp = 0; dr = 0.0
    bot.arm.set_ee_arc_trajectory(x=dx, z=dz, pitch=dp, roll=dr)
    # bottom edge.
    dx = 0.0; dz = 0.0; dp = 0.0; dr = -1.05
    bot.arm.set_ee_arc_trajectory(x=dx, z=dz, pitch=dp, roll=dr)
    # left edge.
    dx = 0.2; dz = 0.0; dp = 0; dr = 0.0
    bot.arm.set_ee_arc_trajectory(x=dx, z=dz, pitch=dp, roll=dr)
    

def main():
    # define the arm object.
    bot = InterbotixManipulatorXS("px150", "arm", "gripper")

    # choose function based on cmd line param.
    functions = {0 : free_control,
                 1 : triangle_on_sphere,
                 2 : square_on_paper}

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
    
    functions[mode](bot)


if __name__=='__main__':
    main()
