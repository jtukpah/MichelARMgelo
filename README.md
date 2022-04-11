# MichelARMgelo
RSS group project, working with a interbotix 5DOF arm

Important codewords/keywords
Robot Model: px150

The following commands are how to create the interbotix workspace on you machine:

* `$ sudo apt install curl`
* `$ curl 'https://raw.githubusercontent.com/Interbotix/interbotix_ros_manipulators/main/interbotix_ros_xsarms/install/amd64/xsarm_amd64_install.sh' > xsarm_amd64_install.sh`
* `$ chmod +x xsarm_amd64_install.sh`
* `$ ./xsarm_amd64_install.sh`


After setting up the workspace remember to catkin_make/catkin build your interbotix_ws
If you opt to catkin_make you should be good to do so automatically. If you wsh to catkin build, you will need to delete
your build and devel folders and then catkin build the workspace.
After building the workspace, source the workspace, and then you will be good to run the arm.

INTIAL VISUALIZATION
Once your worspace is set up and sourced, you wll want to visualize the robot in simulation. There are a number of ways to do this.
1) Viewing the robot description in rviz
2) Viewing the robot control in rviz
3) viewing and controlling the robot using movit in rviz

Viewing The Robot Description in RVIZ
This is simply a way of visualizing the robot's URDF in rviz. You have no ability to control the robot but this view is helpful, when you are not physically conencted to the robot, or you want to verify modifications to the URDF, or you want to verify changes to the frames of each joint of the robot.
The command to bring this visualization up is listed below

`$ roslaunch interbotix_xsarm_descriptions xsarm_description.launch robot_model:=px150 use_joint_pub_gui:=true`

Viewing The Robot Control in RVIZ
This is a way to view the robot, when you are physically connected to it. This will allow you to be able to get the current joint state, as well as change the current joint state manually. Manually changing the joint state refers to disabling the torque of the arms, and allowing you to physically move the arm to various locations. Once you are in the desired joint position, then you will be able to reset the torque and that position will be held.
Below are the commands for pulling up the control visualization:

`$ roslaunch interbotix_xsarm_control xsarm_control.launch robot_model:=px150`

Below are the comands for disabling and renabling the torque, when the control visualization is up and running:

`$ rosservice call /px150/torque_enable "{cmd_type: 'group', name: 'all', enable: false}"`        
`$ rosservice call /px150/torque_enable "{cmd_type: 'group', name: 'all', enable: true}"`


Control and View The Robot using MoveIt in RVIZ
This is a way to control and view the robot, when you are physically connected to it. This will allow you to be able to get the current joint state, as well as change the current joint state using sliders in a panel related to moveit. The sliders are on the left hand side of the rviz visualization and under the tab named Joints. 

Below are the commands for pulling up the MoveIt visualization:

`$ roslaunch interbotix_xsarm_moveit xsarm_moveit.launch robot_model:=px150 use_actual:=true`

