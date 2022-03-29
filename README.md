# MichelARMgelo
RSS group project, working with a interbotix 5DOF arm

# PincherX-150 Manipulator Arm Setup

## Important codewords/keywords
Robot Model: px150

The following commands are how to create the interbotix workspace on you machine:

* `$ sudo apt install curl`
* `$ curl 'https://raw.githubusercontent.com/Interbotix/interbotix_ros_manipulators/main/interbotix_ros_xsarms/install/amd64/xsarm_amd64_install.sh' > xsarm_amd64_install.sh`
* `$ chmod +x xsarm_amd64_install.sh`
* `$ ./xsarm_amd64_install.sh`

After setting up the workspace remember to `catkin_make`/`catkin build` your interbotix_ws.
If you opt to `catkin_make` you should be good to do so automatically. If you wsh to `catkin build`, you will need to delete
your build and devel folders and then `catkin build` the workspace.
After building the workspace, source the workspace, and then you will be good to run the arm.

## Initial Visualization
Once your worspace is set up and sourced, you wll want to visualize the robot in simulation. There are a number of ways to do this.
1) Viewing the robot description in rviz.
2) Viewing the robot control in rviz.
3) Viewing and controlling the robot using movit in rviz.

### Viewing The Robot Description in RVIZ
This is simply a way of visualizing the robot's URDF in rviz. You have no ability to control the robot but this view is helpful, when you are not physically conencted to the robot, or you want to verify modifications to the URDF, or you want to verify changes to the frames of each joint of the robot.
The command to bring this visualization up is listed below

`$ roslaunch interbotix_xsarm_descriptions xsarm_description.launch robot_model:=px150 use_joint_pub_gui:=true`

### Viewing The Robot Control in RVIZ
This is a way to view the robot, when you are physically connected to it. This will allow you to be able to get the current joint state, as well as change the current joint state manually. Manually changing the joint state refers to disabling the torque of the arms, and allowing you to physically move the arm to various locations. Once you are in the desired joint position, then you will be able to reset the torque and that position will be held.
Below are the commands for pulling up the control visualization:

`$ roslaunch interbotix_xsarm_control xsarm_control.launch robot_model:=px150`

Below are the comands for disabling and renabling the torque, when the control visualization is up and running:

`$ rosservice call /px150/torque_enable "{cmd_type: 'group', name: 'all', enable: false}"`        
`$ rosservice call /px150/torque_enable "{cmd_type: 'group', name: 'all', enable: true}"`


TODO: 
Get the visualization for move it working properly then document the commands to run it. 

---

# AprilTag Detection

This section details necessary steps to detect AprilTags using an Intel RealSense D435 Depth Camera. The necessary submodules [apriltag](https://github.com/AprilRobotics/apriltag) and [apriltag_ros](https://github.com/AprilRobotics/apriltag_ros) have been added to this repository as packages. These should not be modified. The `tag_detection_pkg` contains our tag configs, custom launch files, and custom node(s) specific to this project.

## Setup
 - First, install the ROS wrapper for the RealSense D435 depth camera to your system: `sudo apt-get install ros-$ROS_DISTRO-realsense2-camera`. Note: Using the standard usb_cam package did not work for this camera, and made all images display depth info as green, and nothing else.
 - Clone this repository if you haven't already, and ensure the `apriltag` and `apriltag_ros` submodules have their contents downloaded with the commands `git submodule init` and `git submodule update`.
 - In the workspace directory, run `catkin_make_isolated` to build the ROS workspace.
 - Set details of tags to search for in `tag_detection_pkg/config/tags.yaml`. We use the default tag family 36h11, but the specific IDs and real-world sizes of our tags must be specified in the "standalone_tags" section.
 - If the camera images aren't showing up, the `realsense-viewer` utility may be useful. This application starts an interface with the D435 camera that allows settings to be changed, firmware to be updated, and the RGB live feed to be previewed. If the camera feed doesn't show up, you likely need to install the proper drivers for your machine, or perform a firmware update on the camera.
 - The camera may need to be calibrated for apriltag detection.

## Running it
 - `roslaunch tag_detection_pkg tag_detection.launch` will startup the camera's ROS driver, the apriltag detection, and set all specified static tag transforms. This sets the camera's base tf frame to `camera_link`, and several ROS messages are published to topics beginning with "/camera/...". The default fixed frame in rviz is `map`, so we set this equal to the camera frame (for now). 
 - OPTIONAL: `rviz` to open rviz. Click "Add", select "By topic", and choose "/camera/color/image_raw" Camera to see the RGB image, and/or "/camera/depth/image_rect_raw" Camera and DepthCloud to see the image with depth information, and this depth projected on the 3D vizualizer, respectively.
 - OPTIONAL: `rosrun rqt_image_view rqt_image_view` opens an image viewer that allows the image topic to be selected from all available. This is an easy way to see detected tags overlaid on the camera feed by selecting the "/tag_detections/image" topic.
 - OPTIONAL: `rosrun tf tf_monitor` can help determine names and connections between published TF frames.
