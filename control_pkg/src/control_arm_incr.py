#!/usr/bin/env python3

# Script to manually control arm position incrementally from console.
# First run:
# roslaunch interbotix_xsarm_control xsarm_control.launch robot_model:=px150

from interbotix_xs_modules.arm import InterbotixManipulatorXS

def main():
    # define the arm object.
    bot = InterbotixManipulatorXS("px150", "arm", "gripper")
    # set home pose.
    last_pos = [0.2, 0.1, 0.2, 0.0, 0.0]
    bot.arm.set_ee_pose_components(x=last_pos[0], y=last_pos[1], z=last_pos[2])
    # loop and keep asking for new effort.
    print("Enter E.E. position ('x y z') or single component (e.g. 'x 0.1').")
    print("Possible components: x, y, z, r, p. not yaw")
    # print(InterbotixManipulatorXS.srv_robot_info())

    _ = input()
    # bot.arm.set_ee_cartesian_trajectory(x=0.1, z=0.1, roll=1, pitch=-0.6, moving_time=2, wp_moving_time=0.2, wp_accel_time=0.1, wp_period=0.1)

    # good ratios:
    bot.arm.set_ee_cartesian_trajectory(x=0.1, z=0.1, roll=0, pitch=0, moving_time=2, wp_moving_time=0.2, wp_accel_time=0.1, wp_period=0.1)

if __name__=='__main__':
    main()
