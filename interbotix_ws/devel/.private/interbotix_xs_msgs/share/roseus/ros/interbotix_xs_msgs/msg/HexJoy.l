;; Auto-generated. Do not edit!


(when (boundp 'interbotix_xs_msgs::HexJoy)
  (if (not (find-package "INTERBOTIX_XS_MSGS"))
    (make-package "INTERBOTIX_XS_MSGS"))
  (shadow 'HexJoy (find-package "INTERBOTIX_XS_MSGS")))
(unless (find-package "INTERBOTIX_XS_MSGS::HEXJOY")
  (make-package "INTERBOTIX_XS_MSGS::HEXJOY"))

(in-package "ROS")
;;//! \htmlinclude HexJoy.msg.html


(intern "*WORLD_X_INC*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*WORLD_X_INC* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*WORLD_X_INC* 1)
(intern "*WORLD_X_DEC*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*WORLD_X_DEC* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*WORLD_X_DEC* 2)
(intern "*WORLD_Y_INC*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*WORLD_Y_INC* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*WORLD_Y_INC* 3)
(intern "*WORLD_Y_DEC*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*WORLD_Y_DEC* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*WORLD_Y_DEC* 4)
(intern "*WORLD_YAW_CCW*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*WORLD_YAW_CCW* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*WORLD_YAW_CCW* 5)
(intern "*WORLD_YAW_CW*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*WORLD_YAW_CW* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*WORLD_YAW_CW* 6)
(intern "*PLACE_X_INC*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*PLACE_X_INC* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*PLACE_X_INC* 7)
(intern "*PLACE_X_DEC*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*PLACE_X_DEC* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*PLACE_X_DEC* 8)
(intern "*PLACE_Y_INC*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*PLACE_Y_INC* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*PLACE_Y_INC* 9)
(intern "*PLACE_Y_DEC*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*PLACE_Y_DEC* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*PLACE_Y_DEC* 10)
(intern "*PLACE_Z_INC*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*PLACE_Z_INC* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*PLACE_Z_INC* 11)
(intern "*PLACE_Z_DEC*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*PLACE_Z_DEC* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*PLACE_Z_DEC* 12)
(intern "*PLACE_ROLL_CCW*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*PLACE_ROLL_CCW* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*PLACE_ROLL_CCW* 13)
(intern "*PLACE_ROLL_CW*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*PLACE_ROLL_CW* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*PLACE_ROLL_CW* 14)
(intern "*PLACE_PITCH_UP*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*PLACE_PITCH_UP* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*PLACE_PITCH_UP* 15)
(intern "*PLACE_PITCH_DOWN*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*PLACE_PITCH_DOWN* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*PLACE_PITCH_DOWN* 16)
(intern "*MOVE_HEXAPOD*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*MOVE_HEXAPOD* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*MOVE_HEXAPOD* 17)
(intern "*MOVE_LEG*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*MOVE_LEG* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*MOVE_LEG* 18)
(intern "*HOME_POSE*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*HOME_POSE* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*HOME_POSE* 19)
(intern "*SLEEP_POSE*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*SLEEP_POSE* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*SLEEP_POSE* 20)
(intern "*GAIT_NEXT*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*GAIT_NEXT* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*GAIT_NEXT* 21)
(intern "*GAIT_PREVIOUS*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*GAIT_PREVIOUS* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*GAIT_PREVIOUS* 22)
(intern "*LEG_NEXT*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*LEG_NEXT* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*LEG_NEXT* 23)
(intern "*LEG_PREVIOUS*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*LEG_PREVIOUS* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*LEG_PREVIOUS* 24)
(intern "*WIDEN_STANCE*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*WIDEN_STANCE* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*WIDEN_STANCE* 25)
(intern "*NARROW_STANCE*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*NARROW_STANCE* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*NARROW_STANCE* 26)
(intern "*REBOOT_MOTORS*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*REBOOT_MOTORS* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*REBOOT_MOTORS* 27)
(intern "*SET_HOME_POSE*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*SET_HOME_POSE* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*SET_HOME_POSE* 28)
(intern "*SPEED_INC*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*SPEED_INC* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*SPEED_INC* 29)
(intern "*SPEED_DEC*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*SPEED_DEC* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*SPEED_DEC* 30)
(intern "*SPEED_COURSE*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*SPEED_COURSE* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*SPEED_COURSE* 31)
(intern "*SPEED_FINE*" (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(shadow '*SPEED_FINE* (find-package "INTERBOTIX_XS_MSGS::HEXJOY"))
(defconstant interbotix_xs_msgs::HexJoy::*SPEED_FINE* 32)
(defclass interbotix_xs_msgs::HexJoy
  :super ros::object
  :slots (_world_x_cmd _world_y_cmd _world_yaw_cmd _place_x_cmd _place_y_cmd _place_z_cmd _place_roll_cmd _place_pitch_cmd _pose_cmd _move_type_cmd _gait_toggle_cmd _leg_toggle_cmd _stance_cmd _reboot_cmd _set_home_pose_cmd _speed_cmd _speed_toggle_cmd ))

(defmethod interbotix_xs_msgs::HexJoy
  (:init
   (&key
    ((:world_x_cmd __world_x_cmd) 0)
    ((:world_y_cmd __world_y_cmd) 0)
    ((:world_yaw_cmd __world_yaw_cmd) 0)
    ((:place_x_cmd __place_x_cmd) 0)
    ((:place_y_cmd __place_y_cmd) 0)
    ((:place_z_cmd __place_z_cmd) 0)
    ((:place_roll_cmd __place_roll_cmd) 0)
    ((:place_pitch_cmd __place_pitch_cmd) 0)
    ((:pose_cmd __pose_cmd) 0)
    ((:move_type_cmd __move_type_cmd) 0)
    ((:gait_toggle_cmd __gait_toggle_cmd) 0)
    ((:leg_toggle_cmd __leg_toggle_cmd) 0)
    ((:stance_cmd __stance_cmd) 0)
    ((:reboot_cmd __reboot_cmd) 0)
    ((:set_home_pose_cmd __set_home_pose_cmd) 0)
    ((:speed_cmd __speed_cmd) 0)
    ((:speed_toggle_cmd __speed_toggle_cmd) 0)
    )
   (send-super :init)
   (setq _world_x_cmd (round __world_x_cmd))
   (setq _world_y_cmd (round __world_y_cmd))
   (setq _world_yaw_cmd (round __world_yaw_cmd))
   (setq _place_x_cmd (round __place_x_cmd))
   (setq _place_y_cmd (round __place_y_cmd))
   (setq _place_z_cmd (round __place_z_cmd))
   (setq _place_roll_cmd (round __place_roll_cmd))
   (setq _place_pitch_cmd (round __place_pitch_cmd))
   (setq _pose_cmd (round __pose_cmd))
   (setq _move_type_cmd (round __move_type_cmd))
   (setq _gait_toggle_cmd (round __gait_toggle_cmd))
   (setq _leg_toggle_cmd (round __leg_toggle_cmd))
   (setq _stance_cmd (round __stance_cmd))
   (setq _reboot_cmd (round __reboot_cmd))
   (setq _set_home_pose_cmd (round __set_home_pose_cmd))
   (setq _speed_cmd (round __speed_cmd))
   (setq _speed_toggle_cmd (round __speed_toggle_cmd))
   self)
  (:world_x_cmd
   (&optional __world_x_cmd)
   (if __world_x_cmd (setq _world_x_cmd __world_x_cmd)) _world_x_cmd)
  (:world_y_cmd
   (&optional __world_y_cmd)
   (if __world_y_cmd (setq _world_y_cmd __world_y_cmd)) _world_y_cmd)
  (:world_yaw_cmd
   (&optional __world_yaw_cmd)
   (if __world_yaw_cmd (setq _world_yaw_cmd __world_yaw_cmd)) _world_yaw_cmd)
  (:place_x_cmd
   (&optional __place_x_cmd)
   (if __place_x_cmd (setq _place_x_cmd __place_x_cmd)) _place_x_cmd)
  (:place_y_cmd
   (&optional __place_y_cmd)
   (if __place_y_cmd (setq _place_y_cmd __place_y_cmd)) _place_y_cmd)
  (:place_z_cmd
   (&optional __place_z_cmd)
   (if __place_z_cmd (setq _place_z_cmd __place_z_cmd)) _place_z_cmd)
  (:place_roll_cmd
   (&optional __place_roll_cmd)
   (if __place_roll_cmd (setq _place_roll_cmd __place_roll_cmd)) _place_roll_cmd)
  (:place_pitch_cmd
   (&optional __place_pitch_cmd)
   (if __place_pitch_cmd (setq _place_pitch_cmd __place_pitch_cmd)) _place_pitch_cmd)
  (:pose_cmd
   (&optional __pose_cmd)
   (if __pose_cmd (setq _pose_cmd __pose_cmd)) _pose_cmd)
  (:move_type_cmd
   (&optional __move_type_cmd)
   (if __move_type_cmd (setq _move_type_cmd __move_type_cmd)) _move_type_cmd)
  (:gait_toggle_cmd
   (&optional __gait_toggle_cmd)
   (if __gait_toggle_cmd (setq _gait_toggle_cmd __gait_toggle_cmd)) _gait_toggle_cmd)
  (:leg_toggle_cmd
   (&optional __leg_toggle_cmd)
   (if __leg_toggle_cmd (setq _leg_toggle_cmd __leg_toggle_cmd)) _leg_toggle_cmd)
  (:stance_cmd
   (&optional __stance_cmd)
   (if __stance_cmd (setq _stance_cmd __stance_cmd)) _stance_cmd)
  (:reboot_cmd
   (&optional __reboot_cmd)
   (if __reboot_cmd (setq _reboot_cmd __reboot_cmd)) _reboot_cmd)
  (:set_home_pose_cmd
   (&optional __set_home_pose_cmd)
   (if __set_home_pose_cmd (setq _set_home_pose_cmd __set_home_pose_cmd)) _set_home_pose_cmd)
  (:speed_cmd
   (&optional __speed_cmd)
   (if __speed_cmd (setq _speed_cmd __speed_cmd)) _speed_cmd)
  (:speed_toggle_cmd
   (&optional __speed_toggle_cmd)
   (if __speed_toggle_cmd (setq _speed_toggle_cmd __speed_toggle_cmd)) _speed_toggle_cmd)
  (:serialization-length
   ()
   (+
    ;; int8 _world_x_cmd
    1
    ;; int8 _world_y_cmd
    1
    ;; int8 _world_yaw_cmd
    1
    ;; int8 _place_x_cmd
    1
    ;; int8 _place_y_cmd
    1
    ;; int8 _place_z_cmd
    1
    ;; int8 _place_roll_cmd
    1
    ;; int8 _place_pitch_cmd
    1
    ;; int8 _pose_cmd
    1
    ;; int8 _move_type_cmd
    1
    ;; int8 _gait_toggle_cmd
    1
    ;; int8 _leg_toggle_cmd
    1
    ;; int8 _stance_cmd
    1
    ;; int8 _reboot_cmd
    1
    ;; int8 _set_home_pose_cmd
    1
    ;; int8 _speed_cmd
    1
    ;; int8 _speed_toggle_cmd
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _world_x_cmd
       (write-byte _world_x_cmd s)
     ;; int8 _world_y_cmd
       (write-byte _world_y_cmd s)
     ;; int8 _world_yaw_cmd
       (write-byte _world_yaw_cmd s)
     ;; int8 _place_x_cmd
       (write-byte _place_x_cmd s)
     ;; int8 _place_y_cmd
       (write-byte _place_y_cmd s)
     ;; int8 _place_z_cmd
       (write-byte _place_z_cmd s)
     ;; int8 _place_roll_cmd
       (write-byte _place_roll_cmd s)
     ;; int8 _place_pitch_cmd
       (write-byte _place_pitch_cmd s)
     ;; int8 _pose_cmd
       (write-byte _pose_cmd s)
     ;; int8 _move_type_cmd
       (write-byte _move_type_cmd s)
     ;; int8 _gait_toggle_cmd
       (write-byte _gait_toggle_cmd s)
     ;; int8 _leg_toggle_cmd
       (write-byte _leg_toggle_cmd s)
     ;; int8 _stance_cmd
       (write-byte _stance_cmd s)
     ;; int8 _reboot_cmd
       (write-byte _reboot_cmd s)
     ;; int8 _set_home_pose_cmd
       (write-byte _set_home_pose_cmd s)
     ;; int8 _speed_cmd
       (write-byte _speed_cmd s)
     ;; int8 _speed_toggle_cmd
       (write-byte _speed_toggle_cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _world_x_cmd
     (setq _world_x_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _world_x_cmd 127) (setq _world_x_cmd (- _world_x_cmd 256)))
   ;; int8 _world_y_cmd
     (setq _world_y_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _world_y_cmd 127) (setq _world_y_cmd (- _world_y_cmd 256)))
   ;; int8 _world_yaw_cmd
     (setq _world_yaw_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _world_yaw_cmd 127) (setq _world_yaw_cmd (- _world_yaw_cmd 256)))
   ;; int8 _place_x_cmd
     (setq _place_x_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _place_x_cmd 127) (setq _place_x_cmd (- _place_x_cmd 256)))
   ;; int8 _place_y_cmd
     (setq _place_y_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _place_y_cmd 127) (setq _place_y_cmd (- _place_y_cmd 256)))
   ;; int8 _place_z_cmd
     (setq _place_z_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _place_z_cmd 127) (setq _place_z_cmd (- _place_z_cmd 256)))
   ;; int8 _place_roll_cmd
     (setq _place_roll_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _place_roll_cmd 127) (setq _place_roll_cmd (- _place_roll_cmd 256)))
   ;; int8 _place_pitch_cmd
     (setq _place_pitch_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _place_pitch_cmd 127) (setq _place_pitch_cmd (- _place_pitch_cmd 256)))
   ;; int8 _pose_cmd
     (setq _pose_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pose_cmd 127) (setq _pose_cmd (- _pose_cmd 256)))
   ;; int8 _move_type_cmd
     (setq _move_type_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _move_type_cmd 127) (setq _move_type_cmd (- _move_type_cmd 256)))
   ;; int8 _gait_toggle_cmd
     (setq _gait_toggle_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gait_toggle_cmd 127) (setq _gait_toggle_cmd (- _gait_toggle_cmd 256)))
   ;; int8 _leg_toggle_cmd
     (setq _leg_toggle_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _leg_toggle_cmd 127) (setq _leg_toggle_cmd (- _leg_toggle_cmd 256)))
   ;; int8 _stance_cmd
     (setq _stance_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _stance_cmd 127) (setq _stance_cmd (- _stance_cmd 256)))
   ;; int8 _reboot_cmd
     (setq _reboot_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _reboot_cmd 127) (setq _reboot_cmd (- _reboot_cmd 256)))
   ;; int8 _set_home_pose_cmd
     (setq _set_home_pose_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _set_home_pose_cmd 127) (setq _set_home_pose_cmd (- _set_home_pose_cmd 256)))
   ;; int8 _speed_cmd
     (setq _speed_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _speed_cmd 127) (setq _speed_cmd (- _speed_cmd 256)))
   ;; int8 _speed_toggle_cmd
     (setq _speed_toggle_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _speed_toggle_cmd 127) (setq _speed_toggle_cmd (- _speed_toggle_cmd 256)))
   ;;
   self)
  )

(setf (get interbotix_xs_msgs::HexJoy :md5sum-) "99b1d8cef626ff2a04f51ab2f81ac80a")
(setf (get interbotix_xs_msgs::HexJoy :datatype-) "interbotix_xs_msgs/HexJoy")
(setf (get interbotix_xs_msgs::HexJoy :definition-)
      "# This message is used specifically in the interbotix_xshexapod_joy package
#
# Maps raw 'joy' commands to more specific ones to control an Interbotix hexapod

# enum values that define the joystick controls for the robot

#########################################################################################################

# Command Options to move the Hexapod in the 'world' or in 'place'
# World Control
int8 WORLD_X_INC = 1
int8 WORLD_X_DEC = 2
int8 WORLD_Y_INC = 3
int8 WORLD_Y_DEC = 4
int8 WORLD_YAW_CCW = 5
int8 WORLD_YAW_CW = 6

# In Place Control
int8 PLACE_X_INC = 7
int8 PLACE_X_DEC = 8
int8 PLACE_Y_INC = 9
int8 PLACE_Y_DEC = 10
int8 PLACE_Z_INC = 11
int8 PLACE_Z_DEC = 12
int8 PLACE_ROLL_CCW = 13
int8 PLACE_ROLL_CW = 14
int8 PLACE_PITCH_UP = 15
int8 PLACE_PITCH_DOWN = 16

# Move Type
int8 MOVE_HEXAPOD = 17
int8 MOVE_LEG = 18

# Pose Control
int8 HOME_POSE = 19
int8 SLEEP_POSE = 20

#########################################################################################################

# Customize configurations for the Interbotix Hexapod

# Cycle through the various gaits when in 'move_hexapod' mode
int8 GAIT_NEXT = 21
int8 GAIT_PREVIOUS = 22

# Cycle through the legs when in 'move_leg' mode
int8 LEG_NEXT = 23
int8 LEG_PREVIOUS = 24

# Widen or narrow the hexapod's stance
int8 WIDEN_STANCE = 25
int8 NARROW_STANCE = 26

# Reboot motors if necessary
int8 REBOOT_MOTORS = 27

# Set the current stance and hexapod height to be the new 'Home Pose'
int8 SET_HOME_POSE = 28

# Inc/Dec speed
int8 SPEED_INC = 29
int8 SPEED_DEC = 30

# Quickly toggle between a fast and slow speed setting
int8 SPEED_COURSE = 31
int8 SPEED_FINE = 32

#########################################################################################################

# Control the motion of the Interbotix Hexapod
int8 world_x_cmd
int8 world_y_cmd
int8 world_yaw_cmd

int8 place_x_cmd
int8 place_y_cmd
int8 place_z_cmd
int8 place_roll_cmd
int8 place_pitch_cmd

int8 pose_cmd
int8 move_type_cmd

# Other Options
int8 gait_toggle_cmd
int8 leg_toggle_cmd
int8 stance_cmd
int8 reboot_cmd
int8 set_home_pose_cmd

# Speed Configs
int8 speed_cmd
int8 speed_toggle_cmd

")



(provide :interbotix_xs_msgs/HexJoy "99b1d8cef626ff2a04f51ab2f81ac80a")


