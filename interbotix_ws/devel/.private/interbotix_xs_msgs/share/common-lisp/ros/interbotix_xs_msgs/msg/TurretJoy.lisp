; Auto-generated. Do not edit!


(cl:in-package interbotix_xs_msgs-msg)


;//! \htmlinclude TurretJoy.msg.html

(cl:defclass <TurretJoy> (roslisp-msg-protocol:ros-message)
  ((pan_cmd
    :reader pan_cmd
    :initarg :pan_cmd
    :type cl:fixnum
    :initform 0)
   (tilt_cmd
    :reader tilt_cmd
    :initarg :tilt_cmd
    :type cl:fixnum
    :initform 0)
   (speed_cmd
    :reader speed_cmd
    :initarg :speed_cmd
    :type cl:fixnum
    :initform 0)
   (speed_toggle_cmd
    :reader speed_toggle_cmd
    :initarg :speed_toggle_cmd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TurretJoy (<TurretJoy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurretJoy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurretJoy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_xs_msgs-msg:<TurretJoy> is deprecated: use interbotix_xs_msgs-msg:TurretJoy instead.")))

(cl:ensure-generic-function 'pan_cmd-val :lambda-list '(m))
(cl:defmethod pan_cmd-val ((m <TurretJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:pan_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:pan_cmd instead.")
  (pan_cmd m))

(cl:ensure-generic-function 'tilt_cmd-val :lambda-list '(m))
(cl:defmethod tilt_cmd-val ((m <TurretJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:tilt_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:tilt_cmd instead.")
  (tilt_cmd m))

(cl:ensure-generic-function 'speed_cmd-val :lambda-list '(m))
(cl:defmethod speed_cmd-val ((m <TurretJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:speed_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:speed_cmd instead.")
  (speed_cmd m))

(cl:ensure-generic-function 'speed_toggle_cmd-val :lambda-list '(m))
(cl:defmethod speed_toggle_cmd-val ((m <TurretJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:speed_toggle_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:speed_toggle_cmd instead.")
  (speed_toggle_cmd m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TurretJoy>)))
    "Constants for message type '<TurretJoy>"
  '((:PAN_CCW . 1)
    (:PAN_CW . 2)
    (:TILT_UP . 3)
    (:TILT_DOWN . 4)
    (:PAN_TILT_HOME . 5)
    (:SPEED_INC . 6)
    (:SPEED_DEC . 7)
    (:SPEED_COURSE . 8)
    (:SPEED_FINE . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TurretJoy)))
    "Constants for message type 'TurretJoy"
  '((:PAN_CCW . 1)
    (:PAN_CW . 2)
    (:TILT_UP . 3)
    (:TILT_DOWN . 4)
    (:PAN_TILT_HOME . 5)
    (:SPEED_INC . 6)
    (:SPEED_DEC . 7)
    (:SPEED_COURSE . 8)
    (:SPEED_FINE . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurretJoy>) ostream)
  "Serializes a message object of type '<TurretJoy>"
  (cl:let* ((signed (cl:slot-value msg 'pan_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tilt_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_toggle_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurretJoy>) istream)
  "Deserializes a message object of type '<TurretJoy>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pan_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tilt_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_toggle_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurretJoy>)))
  "Returns string type for a message object of type '<TurretJoy>"
  "interbotix_xs_msgs/TurretJoy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurretJoy)))
  "Returns string type for a message object of type 'TurretJoy"
  "interbotix_xs_msgs/TurretJoy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurretJoy>)))
  "Returns md5sum for a message object of type '<TurretJoy>"
  "cac3aec45a4ead9e4b41e201bb45d797")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurretJoy)))
  "Returns md5sum for a message object of type 'TurretJoy"
  "cac3aec45a4ead9e4b41e201bb45d797")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurretJoy>)))
  "Returns full string definition for message of type '<TurretJoy>"
  (cl:format cl:nil "# This message is used specifically in the interbotix_xsturret_simple_interface package~%#~%# Maps raw 'joy' commands to more specific ones to control an Interbotix turret~%~%# enum values that define the joystick controls for the robot~%~%#########################################################################################################~%~%# Control the pan-and-tilt mechanism~%int8 PAN_CCW = 1~%int8 PAN_CW = 2~%int8 TILT_UP = 3~%int8 TILT_DOWN = 4~%int8 PAN_TILT_HOME = 5~%~%#########################################################################################################~%~%# Customize configurations for the Interbotix Turret~%# Inc/Dec Joint speed~%int8 SPEED_INC = 6~%int8 SPEED_DEC = 7~%~%# Quickly toggle between a fast and slow speed setting~%int8 SPEED_COURSE = 8~%int8 SPEED_FINE = 9~%~%#########################################################################################################~%~%# Control the motion of the pan-and-tilt mechanism~%int8 pan_cmd~%int8 tilt_cmd~%~%# Speed Configs~%int8 speed_cmd~%int8 speed_toggle_cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurretJoy)))
  "Returns full string definition for message of type 'TurretJoy"
  (cl:format cl:nil "# This message is used specifically in the interbotix_xsturret_simple_interface package~%#~%# Maps raw 'joy' commands to more specific ones to control an Interbotix turret~%~%# enum values that define the joystick controls for the robot~%~%#########################################################################################################~%~%# Control the pan-and-tilt mechanism~%int8 PAN_CCW = 1~%int8 PAN_CW = 2~%int8 TILT_UP = 3~%int8 TILT_DOWN = 4~%int8 PAN_TILT_HOME = 5~%~%#########################################################################################################~%~%# Customize configurations for the Interbotix Turret~%# Inc/Dec Joint speed~%int8 SPEED_INC = 6~%int8 SPEED_DEC = 7~%~%# Quickly toggle between a fast and slow speed setting~%int8 SPEED_COURSE = 8~%int8 SPEED_FINE = 9~%~%#########################################################################################################~%~%# Control the motion of the pan-and-tilt mechanism~%int8 pan_cmd~%int8 tilt_cmd~%~%# Speed Configs~%int8 speed_cmd~%int8 speed_toggle_cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurretJoy>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurretJoy>))
  "Converts a ROS message object to a list"
  (cl:list 'TurretJoy
    (cl:cons ':pan_cmd (pan_cmd msg))
    (cl:cons ':tilt_cmd (tilt_cmd msg))
    (cl:cons ':speed_cmd (speed_cmd msg))
    (cl:cons ':speed_toggle_cmd (speed_toggle_cmd msg))
))
