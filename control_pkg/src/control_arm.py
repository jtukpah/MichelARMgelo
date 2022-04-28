#!/usr/bin/env python3

# Script to manually control arm position from console.
# First run:
# roslaunch interbotix_xsarm_control xsarm_control.launch robot_model:=px150

from interbotix_xs_modules.arm import InterbotixManipulatorXS

FREE_CONTROL = False

def main():
    # define the arm object.
    bot = InterbotixManipulatorXS("px150", "arm", "gripper")
    if FREE_CONTROL:
        # set home pose.
        last_pos = [0.3, 0.0, 0.3, 0.0, 0.0]
    else:
        # starting pose for circle.
        last_pos = [0.4, 0.0, 0.1, 0.0, 0.7] # main arc
        # last_pos = [0.25, 0.0, 0.15, 0.7, 0.0]
        #last_pos = [0.21, 0.0, 0.19, 0.0, 0.0]
    bot.arm.set_ee_pose_components(x=last_pos[0], y=last_pos[1], z=last_pos[2], roll=last_pos[3], pitch=last_pos[4])

    if not FREE_CONTROL:
        # dx = -0.18; dz = 0.105; dp = -0.8; dr = 0.0 # main arc
        # dx = 0.0; dz = -0.0074; dp = 0.0; dr = 0.5236
        dx = -0.19; dz = 0.0756; dp = -0.8; dr = -0.5236
        bot.arm.set_ee_arc_trajectory(x=dx, z=dz, pitch=dp, roll=dr)
    else:
        # loop and keep asking for new effort.
        print("Enter E.E. position ('x y z') or single component (e.g. 'x 0.1').")
        print("Possible components: x, y, z, r, p. not yaw")
        # print(InterbotixManipulatorXS.srv_robot_info())
        while True:
            try:
                line = input("Position: ").split(" ")
                if len(line) == 3:
                    # got x y z
                    pos = [float(p) for p in line]
                elif len(line) == 2:
                    # got e.g. x 1
                    comp = line[0]; val = float(line[1])
                    if comp == 'x':
                        pos = [val,last_pos[1],last_pos[2],last_pos[3],last_pos[4]]
                    elif comp == 'y':
                        pos = [last_pos[0],val,last_pos[2],last_pos[3],last_pos[4]]
                    elif comp == 'z':
                        pos = [last_pos[0],last_pos[1],val,last_pos[3],last_pos[4]]
                    elif comp == 'r':
                        pos = [last_pos[0],last_pos[1],last_pos[2],val,last_pos[4]]
                    elif comp == 'p':
                        pos = [last_pos[0],last_pos[1],last_pos[2],last_pos[3],val]
                    else:
                        raise Exception()
                else:
                    raise Exception()
                print("Chose ", pos)
                bot.arm.set_ee_pose_components(x=pos[0], y=pos[1], z=pos[2], roll=pos[3], pitch=pos[4])
                # bot.arm.set_ee_cartesian_trajectory(x=pos[0], y=pos[1], z=pos[2], roll=pos[3], pitch=pos[4], moving_time=0.2, wp_moving_time=0.2, wp_period=0.05)
                last_pos = pos
            except:
                print("Position must be in format 'x y z' or 'component value'")
                continue
    

if __name__=='__main__':
    main()
