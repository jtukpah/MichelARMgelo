;; Auto-generated. Do not edit!


(when (boundp 'interbotix_xs_msgs::TurretJoy)
  (if (not (find-package "INTERBOTIX_XS_MSGS"))
    (make-package "INTERBOTIX_XS_MSGS"))
  (shadow 'TurretJoy (find-package "INTERBOTIX_XS_MSGS")))
(unless (find-package "INTERBOTIX_XS_MSGS::TURRETJOY")
  (make-package "INTERBOTIX_XS_MSGS::TURRETJOY"))

(in-package "ROS")
;;//! \htmlinclude TurretJoy.msg.html


(intern "*PAN_CCW*" (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(shadow '*PAN_CCW* (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(defconstant interbotix_xs_msgs::TurretJoy::*PAN_CCW* 1)
(intern "*PAN_CW*" (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(shadow '*PAN_CW* (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(defconstant interbotix_xs_msgs::TurretJoy::*PAN_CW* 2)
(intern "*TILT_UP*" (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(shadow '*TILT_UP* (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(defconstant interbotix_xs_msgs::TurretJoy::*TILT_UP* 3)
(intern "*TILT_DOWN*" (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(shadow '*TILT_DOWN* (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(defconstant interbotix_xs_msgs::TurretJoy::*TILT_DOWN* 4)
(intern "*PAN_TILT_HOME*" (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(shadow '*PAN_TILT_HOME* (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(defconstant interbotix_xs_msgs::TurretJoy::*PAN_TILT_HOME* 5)
(intern "*SPEED_INC*" (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(shadow '*SPEED_INC* (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(defconstant interbotix_xs_msgs::TurretJoy::*SPEED_INC* 6)
(intern "*SPEED_DEC*" (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(shadow '*SPEED_DEC* (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(defconstant interbotix_xs_msgs::TurretJoy::*SPEED_DEC* 7)
(intern "*SPEED_COURSE*" (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(shadow '*SPEED_COURSE* (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(defconstant interbotix_xs_msgs::TurretJoy::*SPEED_COURSE* 8)
(intern "*SPEED_FINE*" (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(shadow '*SPEED_FINE* (find-package "INTERBOTIX_XS_MSGS::TURRETJOY"))
(defconstant interbotix_xs_msgs::TurretJoy::*SPEED_FINE* 9)
(defclass interbotix_xs_msgs::TurretJoy
  :super ros::object
  :slots (_pan_cmd _tilt_cmd _speed_cmd _speed_toggle_cmd ))

(defmethod interbotix_xs_msgs::TurretJoy
  (:init
   (&key
    ((:pan_cmd __pan_cmd) 0)
    ((:tilt_cmd __tilt_cmd) 0)
    ((:speed_cmd __speed_cmd) 0)
    ((:speed_toggle_cmd __speed_toggle_cmd) 0)
    )
   (send-super :init)
   (setq _pan_cmd (round __pan_cmd))
   (setq _tilt_cmd (round __tilt_cmd))
   (setq _speed_cmd (round __speed_cmd))
   (setq _speed_toggle_cmd (round __speed_toggle_cmd))
   self)
  (:pan_cmd
   (&optional __pan_cmd)
   (if __pan_cmd (setq _pan_cmd __pan_cmd)) _pan_cmd)
  (:tilt_cmd
   (&optional __tilt_cmd)
   (if __tilt_cmd (setq _tilt_cmd __tilt_cmd)) _tilt_cmd)
  (:speed_cmd
   (&optional __speed_cmd)
   (if __speed_cmd (setq _speed_cmd __speed_cmd)) _speed_cmd)
  (:speed_toggle_cmd
   (&optional __speed_toggle_cmd)
   (if __speed_toggle_cmd (setq _speed_toggle_cmd __speed_toggle_cmd)) _speed_toggle_cmd)
  (:serialization-length
   ()
   (+
    ;; int8 _pan_cmd
    1
    ;; int8 _tilt_cmd
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
     ;; int8 _pan_cmd
       (write-byte _pan_cmd s)
     ;; int8 _tilt_cmd
       (write-byte _tilt_cmd s)
     ;; int8 _speed_cmd
       (write-byte _speed_cmd s)
     ;; int8 _speed_toggle_cmd
       (write-byte _speed_toggle_cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _pan_cmd
     (setq _pan_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pan_cmd 127) (setq _pan_cmd (- _pan_cmd 256)))
   ;; int8 _tilt_cmd
     (setq _tilt_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _tilt_cmd 127) (setq _tilt_cmd (- _tilt_cmd 256)))
   ;; int8 _speed_cmd
     (setq _speed_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _speed_cmd 127) (setq _speed_cmd (- _speed_cmd 256)))
   ;; int8 _speed_toggle_cmd
     (setq _speed_toggle_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _speed_toggle_cmd 127) (setq _speed_toggle_cmd (- _speed_toggle_cmd 256)))
   ;;
   self)
  )

(setf (get interbotix_xs_msgs::TurretJoy :md5sum-) "cac3aec45a4ead9e4b41e201bb45d797")
(setf (get interbotix_xs_msgs::TurretJoy :datatype-) "interbotix_xs_msgs/TurretJoy")
(setf (get interbotix_xs_msgs::TurretJoy :definition-)
      "# This message is used specifically in the interbotix_xsturret_simple_interface package
#
# Maps raw 'joy' commands to more specific ones to control an Interbotix turret

# enum values that define the joystick controls for the robot

#########################################################################################################

# Control the pan-and-tilt mechanism
int8 PAN_CCW = 1
int8 PAN_CW = 2
int8 TILT_UP = 3
int8 TILT_DOWN = 4
int8 PAN_TILT_HOME = 5

#########################################################################################################

# Customize configurations for the Interbotix Turret
# Inc/Dec Joint speed
int8 SPEED_INC = 6
int8 SPEED_DEC = 7

# Quickly toggle between a fast and slow speed setting
int8 SPEED_COURSE = 8
int8 SPEED_FINE = 9

#########################################################################################################

# Control the motion of the pan-and-tilt mechanism
int8 pan_cmd
int8 tilt_cmd

# Speed Configs
int8 speed_cmd
int8 speed_toggle_cmd

")



(provide :interbotix_xs_msgs/TurretJoy "cac3aec45a4ead9e4b41e201bb45d797")


