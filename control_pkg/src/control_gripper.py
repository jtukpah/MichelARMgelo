#!/usr/bin/env python3

from interbotix_xs_modules.arm import InterbotixManipulatorXS

def main():
    # define the arm object.
    bot = InterbotixManipulatorXS("px150", "arm", "gripper")
    # set home pose.
    bot.arm.set_ee_pose_components(x=0.3, y = 0.2, z=0.3)
    # open all the way.
    bot.gripper.open()
    # loop and keep asking for new effort.
    print("Enter effort; -250 = close at full force, 250 = open all the way.")
    while True:
        effort = float(input("Effort: "))
        bot.gripper.gripper_controller(effort,1.0)
    

if __name__=='__main__':
    main()
