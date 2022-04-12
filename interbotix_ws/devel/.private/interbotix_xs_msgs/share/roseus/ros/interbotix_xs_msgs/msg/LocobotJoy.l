;; Auto-generated. Do not edit!


(when (boundp 'interbotix_xs_msgs::LocobotJoy)
  (if (not (find-package "INTERBOTIX_XS_MSGS"))
    (make-package "INTERBOTIX_XS_MSGS"))
  (shadow 'LocobotJoy (find-package "INTERBOTIX_XS_MSGS")))
(unless (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY")
  (make-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))

(in-package "ROS")
;;//! \htmlinclude LocobotJoy.msg.html


(intern "*RESET_ODOM*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*RESET_ODOM* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*RESET_ODOM* 1)
(intern "*PAN_CCW*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*PAN_CCW* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*PAN_CCW* 2)
(intern "*PAN_CW*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*PAN_CW* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*PAN_CW* 3)
(intern "*TILT_UP*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*TILT_UP* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*TILT_UP* 4)
(intern "*TILT_DOWN*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*TILT_DOWN* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*TILT_DOWN* 5)
(intern "*PAN_TILT_HOME*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*PAN_TILT_HOME* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*PAN_TILT_HOME* 6)
(intern "*EE_X_INC*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*EE_X_INC* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*EE_X_INC* 7)
(intern "*EE_X_DEC*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*EE_X_DEC* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*EE_X_DEC* 8)
(intern "*EE_Y_INC*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*EE_Y_INC* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*EE_Y_INC* 9)
(intern "*EE_Y_DEC*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*EE_Y_DEC* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*EE_Y_DEC* 10)
(intern "*EE_Z_INC*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*EE_Z_INC* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*EE_Z_INC* 11)
(intern "*EE_Z_DEC*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*EE_Z_DEC* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*EE_Z_DEC* 12)
(intern "*EE_ROLL_CCW*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*EE_ROLL_CCW* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*EE_ROLL_CCW* 13)
(intern "*EE_ROLL_CW*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*EE_ROLL_CW* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*EE_ROLL_CW* 14)
(intern "*EE_PITCH_UP*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*EE_PITCH_UP* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*EE_PITCH_UP* 15)
(intern "*EE_PITCH_DOWN*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*EE_PITCH_DOWN* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*EE_PITCH_DOWN* 16)
(intern "*WAIST_CCW*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*WAIST_CCW* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*WAIST_CCW* 17)
(intern "*WAIST_CW*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*WAIST_CW* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*WAIST_CW* 18)
(intern "*GRIPPER_OPEN*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*GRIPPER_OPEN* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*GRIPPER_OPEN* 19)
(intern "*GRIPPER_CLOSE*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*GRIPPER_CLOSE* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*GRIPPER_CLOSE* 20)
(intern "*HOME_POSE*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*HOME_POSE* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*HOME_POSE* 21)
(intern "*SLEEP_POSE*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*SLEEP_POSE* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*SLEEP_POSE* 22)
(intern "*SPEED_INC*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*SPEED_INC* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*SPEED_INC* 23)
(intern "*SPEED_DEC*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*SPEED_DEC* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*SPEED_DEC* 24)
(intern "*SPEED_COURSE*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*SPEED_COURSE* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*SPEED_COURSE* 25)
(intern "*SPEED_FINE*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*SPEED_FINE* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*SPEED_FINE* 26)
(intern "*GRIPPER_PWM_INC*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*GRIPPER_PWM_INC* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*GRIPPER_PWM_INC* 27)
(intern "*GRIPPER_PWM_DEC*" (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(shadow '*GRIPPER_PWM_DEC* (find-package "INTERBOTIX_XS_MSGS::LOCOBOTJOY"))
(defconstant interbotix_xs_msgs::LocobotJoy::*GRIPPER_PWM_DEC* 28)
(defclass interbotix_xs_msgs::LocobotJoy
  :super ros::object
  :slots (_base_x_cmd _base_theta_cmd _base_reset_odom_cmd _pan_cmd _tilt_cmd _ee_x_cmd _ee_y_cmd _ee_z_cmd _ee_roll_cmd _ee_pitch_cmd _waist_cmd _gripper_cmd _pose_cmd _speed_cmd _speed_toggle_cmd _gripper_pwm_cmd ))

(defmethod interbotix_xs_msgs::LocobotJoy
  (:init
   (&key
    ((:base_x_cmd __base_x_cmd) 0.0)
    ((:base_theta_cmd __base_theta_cmd) 0.0)
    ((:base_reset_odom_cmd __base_reset_odom_cmd) 0)
    ((:pan_cmd __pan_cmd) 0)
    ((:tilt_cmd __tilt_cmd) 0)
    ((:ee_x_cmd __ee_x_cmd) 0)
    ((:ee_y_cmd __ee_y_cmd) 0)
    ((:ee_z_cmd __ee_z_cmd) 0)
    ((:ee_roll_cmd __ee_roll_cmd) 0)
    ((:ee_pitch_cmd __ee_pitch_cmd) 0)
    ((:waist_cmd __waist_cmd) 0)
    ((:gripper_cmd __gripper_cmd) 0)
    ((:pose_cmd __pose_cmd) 0)
    ((:speed_cmd __speed_cmd) 0)
    ((:speed_toggle_cmd __speed_toggle_cmd) 0)
    ((:gripper_pwm_cmd __gripper_pwm_cmd) 0)
    )
   (send-super :init)
   (setq _base_x_cmd (float __base_x_cmd))
   (setq _base_theta_cmd (float __base_theta_cmd))
   (setq _base_reset_odom_cmd (round __base_reset_odom_cmd))
   (setq _pan_cmd (round __pan_cmd))
   (setq _tilt_cmd (round __tilt_cmd))
   (setq _ee_x_cmd (round __ee_x_cmd))
   (setq _ee_y_cmd (round __ee_y_cmd))
   (setq _ee_z_cmd (round __ee_z_cmd))
   (setq _ee_roll_cmd (round __ee_roll_cmd))
   (setq _ee_pitch_cmd (round __ee_pitch_cmd))
   (setq _waist_cmd (round __waist_cmd))
   (setq _gripper_cmd (round __gripper_cmd))
   (setq _pose_cmd (round __pose_cmd))
   (setq _speed_cmd (round __speed_cmd))
   (setq _speed_toggle_cmd (round __speed_toggle_cmd))
   (setq _gripper_pwm_cmd (round __gripper_pwm_cmd))
   self)
  (:base_x_cmd
   (&optional __base_x_cmd)
   (if __base_x_cmd (setq _base_x_cmd __base_x_cmd)) _base_x_cmd)
  (:base_theta_cmd
   (&optional __base_theta_cmd)
   (if __base_theta_cmd (setq _base_theta_cmd __base_theta_cmd)) _base_theta_cmd)
  (:base_reset_odom_cmd
   (&optional __base_reset_odom_cmd)
   (if __base_reset_odom_cmd (setq _base_reset_odom_cmd __base_reset_odom_cmd)) _base_reset_odom_cmd)
  (:pan_cmd
   (&optional __pan_cmd)
   (if __pan_cmd (setq _pan_cmd __pan_cmd)) _pan_cmd)
  (:tilt_cmd
   (&optional __tilt_cmd)
   (if __tilt_cmd (setq _tilt_cmd __tilt_cmd)) _tilt_cmd)
  (:ee_x_cmd
   (&optional __ee_x_cmd)
   (if __ee_x_cmd (setq _ee_x_cmd __ee_x_cmd)) _ee_x_cmd)
  (:ee_y_cmd
   (&optional __ee_y_cmd)
   (if __ee_y_cmd (setq _ee_y_cmd __ee_y_cmd)) _ee_y_cmd)
  (:ee_z_cmd
   (&optional __ee_z_cmd)
   (if __ee_z_cmd (setq _ee_z_cmd __ee_z_cmd)) _ee_z_cmd)
  (:ee_roll_cmd
   (&optional __ee_roll_cmd)
   (if __ee_roll_cmd (setq _ee_roll_cmd __ee_roll_cmd)) _ee_roll_cmd)
  (:ee_pitch_cmd
   (&optional __ee_pitch_cmd)
   (if __ee_pitch_cmd (setq _ee_pitch_cmd __ee_pitch_cmd)) _ee_pitch_cmd)
  (:waist_cmd
   (&optional __waist_cmd)
   (if __waist_cmd (setq _waist_cmd __waist_cmd)) _waist_cmd)
  (:gripper_cmd
   (&optional __gripper_cmd)
   (if __gripper_cmd (setq _gripper_cmd __gripper_cmd)) _gripper_cmd)
  (:pose_cmd
   (&optional __pose_cmd)
   (if __pose_cmd (setq _pose_cmd __pose_cmd)) _pose_cmd)
  (:speed_cmd
   (&optional __speed_cmd)
   (if __speed_cmd (setq _speed_cmd __speed_cmd)) _speed_cmd)
  (:speed_toggle_cmd
   (&optional __speed_toggle_cmd)
   (if __speed_toggle_cmd (setq _speed_toggle_cmd __speed_toggle_cmd)) _speed_toggle_cmd)
  (:gripper_pwm_cmd
   (&optional __gripper_pwm_cmd)
   (if __gripper_pwm_cmd (setq _gripper_pwm_cmd __gripper_pwm_cmd)) _gripper_pwm_cmd)
  (:serialization-length
   ()
   (+
    ;; float64 _base_x_cmd
    8
    ;; float64 _base_theta_cmd
    8
    ;; int8 _base_reset_odom_cmd
    1
    ;; int8 _pan_cmd
    1
    ;; int8 _tilt_cmd
    1
    ;; int8 _ee_x_cmd
    1
    ;; int8 _ee_y_cmd
    1
    ;; int8 _ee_z_cmd
    1
    ;; int8 _ee_roll_cmd
    1
    ;; int8 _ee_pitch_cmd
    1
    ;; int8 _waist_cmd
    1
    ;; int8 _gripper_cmd
    1
    ;; int8 _pose_cmd
    1
    ;; int8 _speed_cmd
    1
    ;; int8 _speed_toggle_cmd
    1
    ;; int8 _gripper_pwm_cmd
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _base_x_cmd
       (sys::poke _base_x_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _base_theta_cmd
       (sys::poke _base_theta_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _base_reset_odom_cmd
       (write-byte _base_reset_odom_cmd s)
     ;; int8 _pan_cmd
       (write-byte _pan_cmd s)
     ;; int8 _tilt_cmd
       (write-byte _tilt_cmd s)
     ;; int8 _ee_x_cmd
       (write-byte _ee_x_cmd s)
     ;; int8 _ee_y_cmd
       (write-byte _ee_y_cmd s)
     ;; int8 _ee_z_cmd
       (write-byte _ee_z_cmd s)
     ;; int8 _ee_roll_cmd
       (write-byte _ee_roll_cmd s)
     ;; int8 _ee_pitch_cmd
       (write-byte _ee_pitch_cmd s)
     ;; int8 _waist_cmd
       (write-byte _waist_cmd s)
     ;; int8 _gripper_cmd
       (write-byte _gripper_cmd s)
     ;; int8 _pose_cmd
       (write-byte _pose_cmd s)
     ;; int8 _speed_cmd
       (write-byte _speed_cmd s)
     ;; int8 _speed_toggle_cmd
       (write-byte _speed_toggle_cmd s)
     ;; int8 _gripper_pwm_cmd
       (write-byte _gripper_pwm_cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _base_x_cmd
     (setq _base_x_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _base_theta_cmd
     (setq _base_theta_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _base_reset_odom_cmd
     (setq _base_reset_odom_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _base_reset_odom_cmd 127) (setq _base_reset_odom_cmd (- _base_reset_odom_cmd 256)))
   ;; int8 _pan_cmd
     (setq _pan_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pan_cmd 127) (setq _pan_cmd (- _pan_cmd 256)))
   ;; int8 _tilt_cmd
     (setq _tilt_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _tilt_cmd 127) (setq _tilt_cmd (- _tilt_cmd 256)))
   ;; int8 _ee_x_cmd
     (setq _ee_x_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ee_x_cmd 127) (setq _ee_x_cmd (- _ee_x_cmd 256)))
   ;; int8 _ee_y_cmd
     (setq _ee_y_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ee_y_cmd 127) (setq _ee_y_cmd (- _ee_y_cmd 256)))
   ;; int8 _ee_z_cmd
     (setq _ee_z_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ee_z_cmd 127) (setq _ee_z_cmd (- _ee_z_cmd 256)))
   ;; int8 _ee_roll_cmd
     (setq _ee_roll_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ee_roll_cmd 127) (setq _ee_roll_cmd (- _ee_roll_cmd 256)))
   ;; int8 _ee_pitch_cmd
     (setq _ee_pitch_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ee_pitch_cmd 127) (setq _ee_pitch_cmd (- _ee_pitch_cmd 256)))
   ;; int8 _waist_cmd
     (setq _waist_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _waist_cmd 127) (setq _waist_cmd (- _waist_cmd 256)))
   ;; int8 _gripper_cmd
     (setq _gripper_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gripper_cmd 127) (setq _gripper_cmd (- _gripper_cmd 256)))
   ;; int8 _pose_cmd
     (setq _pose_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pose_cmd 127) (setq _pose_cmd (- _pose_cmd 256)))
   ;; int8 _speed_cmd
     (setq _speed_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _speed_cmd 127) (setq _speed_cmd (- _speed_cmd 256)))
   ;; int8 _speed_toggle_cmd
     (setq _speed_toggle_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _speed_toggle_cmd 127) (setq _speed_toggle_cmd (- _speed_toggle_cmd 256)))
   ;; int8 _gripper_pwm_cmd
     (setq _gripper_pwm_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gripper_pwm_cmd 127) (setq _gripper_pwm_cmd (- _gripper_pwm_cmd 256)))
   ;;
   self)
  )

(setf (get interbotix_xs_msgs::LocobotJoy :md5sum-) "31ceb27301fc34085add57595354ba17")
(setf (get interbotix_xs_msgs::LocobotJoy :datatype-) "interbotix_xs_msgs/LocobotJoy")
(setf (get interbotix_xs_msgs::LocobotJoy :definition-)
      "# This message is used specifically in the interbotix_xslocobot_joy package
#
# Maps raw 'joy' commands to more specific ones to control an Interbotix LoCoBot

# enum values that define the joystick controls for the robot

#########################################################################################################

# Reset base odometry
int8 RESET_ODOM = 1

#########################################################################################################

# Control the pan-and-tilt mechanism
int8 PAN_CCW = 2
int8 PAN_CW = 3
int8 TILT_UP = 4
int8 TILT_DOWN = 5
int8 PAN_TILT_HOME = 6

#########################################################################################################

# Control the motion of the virtual 'ee_gripper_link' or end effector using the modern_robotics_ik engine
# Position Control
int8 EE_X_INC = 7
int8 EE_X_DEC = 8
int8 EE_Y_INC = 9
int8 EE_Y_DEC = 10
int8 EE_Z_INC = 11
int8 EE_Z_DEC = 12

# Orientation Control
int8 EE_ROLL_CCW = 13
int8 EE_ROLL_CW = 14
int8 EE_PITCH_UP = 15
int8 EE_PITCH_DOWN = 16

#########################################################################################################

# Control the motion of independent joints on the Arm or send predefined robot poses
# Waist Joint Control
int8 WAIST_CCW = 17
int8 WAIST_CW = 18

# Gripper Control
int8 GRIPPER_OPEN = 19
int8 GRIPPER_CLOSE = 20

# Pose Control
int8 HOME_POSE = 21
int8 SLEEP_POSE = 22

#########################################################################################################

# Customize configurations for the Interbotix Arm
# Inc/Dec Joint speed
int8 SPEED_INC = 23
int8 SPEED_DEC = 24

# Quickly toggle between a fast and slow speed setting
int8 SPEED_COURSE = 25
int8 SPEED_FINE = 26

# Inc/Dec Gripper pressure
int8 GRIPPER_PWM_INC = 27
int8 GRIPPER_PWM_DEC = 28

#########################################################################################################

# Control the motion of the Kobuki base
float64 base_x_cmd
float64 base_theta_cmd
int8 base_reset_odom_cmd

# Control the motion of the camera pan-and-tilt mechanism
int8 pan_cmd
int8 tilt_cmd

# Control the motion of the Interbotix Arm
int8 ee_x_cmd
int8 ee_y_cmd
int8 ee_z_cmd
int8 ee_roll_cmd
int8 ee_pitch_cmd

# Independent Joint/Pose Control
int8 waist_cmd
int8 gripper_cmd
int8 pose_cmd

# Arm Configs
int8 speed_cmd
int8 speed_toggle_cmd
int8 gripper_pwm_cmd

")



(provide :interbotix_xs_msgs/LocobotJoy "31ceb27301fc34085add57595354ba17")


