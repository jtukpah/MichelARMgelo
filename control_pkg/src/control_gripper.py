#!/usr/bin/env python3

from interbotix_xs_modules.arm import InterbotixManipulatorXS

def main():
    # define the arm object.
    bot = InterbotixManipulatorXS("px150", "arm", "gripper")
    # set home pose.
    bot.arm.set_ee_pose_components(x=0.3, y = 0.0, z=0.3)
    # open all the way.
    bot.gripper.open()
    # loop and keep asking for new effort.
    print("Enter effort (-250 = full close, 250 = full open).")
    while True:
        effort = input("Effort: ")
        if effort in ["c", "close"]:
            bot.gripper.close()
        elif effort in ["o", "open"]:
            bot.gripper.open()
        else:
            try:
                eff = float(effort)
                eff = min(max(eff, -250.0), 250.0)
                bot.gripper.gripper_controller(eff, 1.0)
            except:
                print("Effort must be a float or o/c.")
    

if __name__=='__main__':
    main()
