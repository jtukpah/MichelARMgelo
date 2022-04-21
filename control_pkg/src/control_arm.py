#!/usr/bin/env python3

# Script to manually control arm position from console.

from interbotix_xs_modules.arm import InterbotixManipulatorXS

def main():
    # define the arm object.
    bot = InterbotixManipulatorXS("px150", "arm", "gripper")
    # set home pose.
    last_pos = [0.3,0.0,0.3]
    bot.arm.set_ee_pose_components(x=last_pos[0], y=last_pos[1], z=last_pos[2])
    # loop and keep asking for new effort.
    print("Enter E.E. position ('x y z') or single component (e.g. 'x 0.1').")
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
                    pos = [val,last_pos[1],last_pos[2]]
                elif comp == 'y':
                    pos = [last_pos[0],val,last_pos[2]]
                elif comp == 'z':
                    pos = [last_pos[0],last_pos[1],val]
                else:
                    raise Exception()
            else:
                raise Exception()
            print("Chose ", pos)
            bot.arm.set_ee_pose_components(x=pos[0], y=pos[1], z=pos[2])
            last_pos = pos
        except:
            print("Position must be in format 'x y z' or 'component value'")
            continue
    

if __name__=='__main__':
    main()
