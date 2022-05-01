# MichelARMgelo
Group project for EECE-5335 Robotic Science & Systems at Northeastern University.

Team consists of Kevin Robb, James Tukpah, Ricky Kaufman, and Michael Carvajal.

We are working with an interbotix PincherX 150 5DOF arm, as well as a RealSense D435 camera. Slight modifications to terminal commands and our launch files should allow this to work on a variety of monocular RGB cameras and interbotix arms.

# Quick Start 
## Full Setup
Run the following commands to fully setup our project on your machine. We assume you have a machine running Ubuntu 20.04 with ROS Noetic installed, as well as any dependencies for AprilTags, such as OpenCV2.

First install `interbotix_ws`, the workspace that holds everything related to the robot arm.

    cd ~
    sudo apt install curl
    curl 'https://raw.githubusercontent.com/Interbotix/interbotix_ros_manipulators/main/interbotix_ros_xsarms/install/amd64/xsarm_amd64_install.sh' > xsarm_amd64_install.s
    chmod +x xsarm_amd64_install.sh
    ./xsarm_amd64_install.sh

Now clone our repository into the `src` directory and ensure the AprilTag submodules are setup correctly. This repo will be treated as a folder of several ROS packages.

    cd ~/interbotix_ws/src
    git clone git@github.com:jtukpah/MichelARMgelo.git
    cd MichelARMgelo
    git submodule init
    git submodule update
    cd ../..
    catkin_make_isolated

Add a line near the bottom of your `.bashrc` to source this repository automatically in every new terminal.
 - Open the file with `nano ~/.bashrc`.
 - Add this to the end: `source /home/kevin-robb/interbotix_ws/devel_isolated/setup.bash`
 - You may see a similar line containing `devel` rather than `devel_isolated`. You can remove this line.
 - Restart your terminal or run `source ~/.bashrc` to ensure this is updated.

## Running Our Scripts to Control the Arm
Ensure the arm is connected to power and to your machine. Start it up to receive control commands by running

    roslaunch interbotix_xsarm_control xsarm_control.launch robot_model:=px150

For testing and for simple maneuvers, we've made some simple python scripts that are quick and easy to run. In a new terminal, run

    cd ~/interbotix_ws/src/MichelARMgelo
    python3 control_pkg/src/control_arm.py <MODE>

where `<MODE>` is an integer that will set which function in the `control_arm.py` script will be run. Mode 0 will prompt the user on a loop for a pose "x y z" or "x y z r p"; you can also control only a single component, i.e., "r 0.1", which will be adjusted while maintaining all other components at their current values. All other modes run predefined routines, such as mode 1 drawing a triangle on the spherical canvas and mode 3 drawing a square on the flat canvas. See the function dictionary in the script's `main()` function for a full up-to-date list of routines.

We also have a small script to open and close the gripper with different effort values.

    python3 control_pkg/src/control_gripper.py

## Testing AprilTag Detection
This section details necessary steps to detect AprilTags using an Intel RealSense D435 Depth Camera. The necessary submodules [apriltag](https://github.com/AprilRobotics/apriltag) and [apriltag_ros](https://github.com/AprilRobotics/apriltag_ros) have been added to this repository as packages. These should not be modified. The `tag_detection_pkg` contains our tag configs, custom launch files, and custom node(s) specific to this project.

Setup:
 - Install the ROS wrapper for the RealSense D435 depth camera to your system: `sudo apt-get install ros-$ROS_DISTRO-realsense2-camera`. Note: Using the standard usb_cam package did not work for this camera, and made all images display depth info as green, and nothing else.
 - Set details of tags to search for in `tag_detection_pkg/config/tags.yaml`. We use the default tag family 36h11, but the specific IDs and real-world sizes of our tags must be specified in the "standalone_tags" section.
 - If the camera images aren't showing up, the `realsense-viewer` utility may be useful. This application starts an interface with the D435 camera that allows settings to be changed, firmware to be updated, and the RGB live feed to be previewed. If the camera feed doesn't show up, you likely need to install the proper drivers for your machine, or perform a firmware update on the camera.
 - The camera may need to be calibrated if AprilTag detections are incorrect or missing.

We've included the necessary steps to launch the RealSense ROS wrapper and AprilTag detection in our `tag_detection_pkg`, so simply ensure the RealSense D435 camera is connected to your machine and run the following command. This launch file also sets up several tf links. 

    roslaunch tag_detection_pkg tag_detection.launch

You can then open a new terminal and enter the following command to preview detected AprilTags overlaid on the camera feed. Ensure you change the topic in the upper dropdown menu to `/tag_detections_image`.

    rosrun rqt_image_view rqt_image_view

To check the relationships between detected tags and other frames, you can run `rviz` or `rosrun tf tf_monitor`. To see the camera feed in rviz, click "Add", select "By topic", and choose one of:
 - "/camera/color/image_raw" -> Camera to see the RGB image.
 - "/camera/depth/image_rect_raw" -> Camera to see the image with depth information.
 - "/camera/depth/image_rect_raw" -> DepthCloud to see depth information projected on the 3D vizualizer.

This can run concurrently with the previous section to control the arm, or you can kill the joint torques and move it around yourself with

    rosservice call /px150/torque_enable "{cmd_type: 'group', name: 'all', enable: false}"

## Running Our ROS Architecture
For our full project, start up all our custom nodes. In two terminals, run the following:

    roslaunch control_pkg control_arm.launch mode:=<MODE>
    roslaunch tag_detection_pkg tag_detection.launch

The `tag_detection_node` will use the camera to determine the position of the canvas relative to the arm's coordinate frame, and will also estimate the end effector's pose via the attached AprilTags; this is important for drawing smooth arcs on the surface of our spherical canvas. The `traj_processing_node` will read or generate trajectories, and publish them one step at a time. The `control_node` subscribes to these trajectory points, ensures they fit within our constraints, and sends the actual commands to the robot to move. Here `<MODE>` is a string that specifies what sorts of trajectories will be sent to the arm to perform. It can be one of:
 - `file`: execute the trajectory in `control_pkg/trajectories/traj1.csv`.
 - `random`: send a random position within constraints on a loop.
 - `circles`: draw circles of random size in random locations on a loop.
 - `lines`: draw lines at random on a loop.
 - `forward`: forward trajectories published from elsewhere. (not yet implemented)

Constraints can be edited in `control_pkg/config/constraints.txt`.

---

That's all! Thanks for checking out our project. A video montage of our progress and results is available [on YouTube](https://www.youtube.com/watch?v=guDpAhEtJ5c)! Our slides and written report are also included in this repository. 

<!-- TODO embed video if possible, or even just GIF of triangle being drawn. -->

---

# PincherX-150 Manipulator Arm Setup
This section details installation and some functionality of the PincherX 150 arm, unrelated to any code we've written for the project.

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


Control and View The Robot using MoveIt in RVIZ
This is a way to control and view the robot, when you are physically connected to it. This will allow you to be able to get the current joint state, as well as change the current joint state using sliders in a panel related to moveit. The sliders are on the left hand side of the rviz visualization and under the tab named Joints. 

Below are the commands for pulling up the MoveIt visualization:

`$ roslaunch interbotix_xsarm_moveit xsarm_moveit.launch robot_model:=px150 use_actual:=true`
