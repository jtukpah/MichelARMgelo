# This node will subscribe to trajectory messages, and send those to the robot arm.

import rospy
from geometry_msgs.msg import Vector3
from interbotix_xs_modules.arm import InterbotixManipulatorXS

########## CONSTRAINTS ############
Z_MIN = 0.1

###################################


def command_arm(data):
    """
    Receive a single point in a trajectory.
    Command the arm to go to this point, w/in constraints.
    @param data. Vector3 message.
    """
    x = data.x
    y = data.y
    z = max(data.z, Z_MIN)
    # send this command to the robot.
    bot.arm.set_ee_pose_components(x=x, y=y, z=z)


def main():
    global bot
    rospy.init_node('control_node')

    # define the robot object.
    bot = InterbotixManipulatorXS("px150", "arm", "gripper")
    # set initial end effector position.
    bot.arm.set_ee_pose_components(x=0.3, y = 0.2, z=0.3)
    # close the gripper.
    bot.gripper.close()
    
    rospy.Subscriber("/traj/point", Vector3, command_arm)
    rospy.loginfo("Control Node Initiated")

    # pump callbacks.
    rospy.spin()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass