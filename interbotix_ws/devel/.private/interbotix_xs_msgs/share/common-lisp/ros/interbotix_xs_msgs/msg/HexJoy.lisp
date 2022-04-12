; Auto-generated. Do not edit!


(cl:in-package interbotix_xs_msgs-msg)


;//! \htmlinclude HexJoy.msg.html

(cl:defclass <HexJoy> (roslisp-msg-protocol:ros-message)
  ((world_x_cmd
    :reader world_x_cmd
    :initarg :world_x_cmd
    :type cl:fixnum
    :initform 0)
   (world_y_cmd
    :reader world_y_cmd
    :initarg :world_y_cmd
    :type cl:fixnum
    :initform 0)
   (world_yaw_cmd
    :reader world_yaw_cmd
    :initarg :world_yaw_cmd
    :type cl:fixnum
    :initform 0)
   (place_x_cmd
    :reader place_x_cmd
    :initarg :place_x_cmd
    :type cl:fixnum
    :initform 0)
   (place_y_cmd
    :reader place_y_cmd
    :initarg :place_y_cmd
    :type cl:fixnum
    :initform 0)
   (place_z_cmd
    :reader place_z_cmd
    :initarg :place_z_cmd
    :type cl:fixnum
    :initform 0)
   (place_roll_cmd
    :reader place_roll_cmd
    :initarg :place_roll_cmd
    :type cl:fixnum
    :initform 0)
   (place_pitch_cmd
    :reader place_pitch_cmd
    :initarg :place_pitch_cmd
    :type cl:fixnum
    :initform 0)
   (pose_cmd
    :reader pose_cmd
    :initarg :pose_cmd
    :type cl:fixnum
    :initform 0)
   (move_type_cmd
    :reader move_type_cmd
    :initarg :move_type_cmd
    :type cl:fixnum
    :initform 0)
   (gait_toggle_cmd
    :reader gait_toggle_cmd
    :initarg :gait_toggle_cmd
    :type cl:fixnum
    :initform 0)
   (leg_toggle_cmd
    :reader leg_toggle_cmd
    :initarg :leg_toggle_cmd
    :type cl:fixnum
    :initform 0)
   (stance_cmd
    :reader stance_cmd
    :initarg :stance_cmd
    :type cl:fixnum
    :initform 0)
   (reboot_cmd
    :reader reboot_cmd
    :initarg :reboot_cmd
    :type cl:fixnum
    :initform 0)
   (set_home_pose_cmd
    :reader set_home_pose_cmd
    :initarg :set_home_pose_cmd
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

(cl:defclass HexJoy (<HexJoy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HexJoy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HexJoy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_xs_msgs-msg:<HexJoy> is deprecated: use interbotix_xs_msgs-msg:HexJoy instead.")))

(cl:ensure-generic-function 'world_x_cmd-val :lambda-list '(m))
(cl:defmethod world_x_cmd-val ((m <HexJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:world_x_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:world_x_cmd instead.")
  (world_x_cmd m))

(cl:ensure-generic-function 'world_y_cmd-val :lambda-list '(m))
(cl:defmethod world_y_cmd-val ((m <HexJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:world_y_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:world_y_cmd instead.")
  (world_y_cmd m))

(cl:ensure-generic-function 'world_yaw_cmd-val :lambda-list '(m))
(cl:defmethod world_yaw_cmd-val ((m <HexJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:world_yaw_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:world_yaw_cmd instead.")
  (world_yaw_cmd m))

(cl:ensure-generic-function 'place_x_cmd-val :lambda-list '(m))
(cl:defmethod place_x_cmd-val ((m <HexJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:place_x_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:place_x_cmd instead.")
  (place_x_cmd m))

(cl:ensure-generic-function 'place_y_cmd-val :lambda-list '(m))
(cl:defmethod place_y_cmd-val ((m <HexJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:place_y_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:place_y_cmd instead.")
  (place_y_cmd m))

(cl:ensure-generic-function 'place_z_cmd-val :lambda-list '(m))
(cl:defmethod place_z_cmd-val ((m <HexJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:place_z_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:place_z_cmd instead.")
  (place_z_cmd m))

(cl:ensure-generic-function 'place_roll_cmd-val :lambda-list '(m))
(cl:defmethod place_roll_cmd-val ((m <HexJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:place_roll_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:place_roll_cmd instead.")
  (place_roll_cmd m))

(cl:ensure-generic-function 'place_pitch_cmd-val :lambda-list '(m))
(cl:defmethod place_pitch_cmd-val ((m <HexJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:place_pitch_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:place_pitch_cmd instead.")
  (place_pitch_cmd m))

(cl:ensure-generic-function 'pose_cmd-val :lambda-list '(m))
(cl:defmethod pose_cmd-val ((m <HexJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:pose_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:pose_cmd instead.")
  (pose_cmd m))

(cl:ensure-generic-function 'move_type_cmd-val :lambda-list '(m))
(cl:defmethod move_type_cmd-val ((m <HexJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:move_type_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:move_type_cmd instead.")
  (move_type_cmd m))

(cl:ensure-generic-function 'gait_toggle_cmd-val :lambda-list '(m))
(cl:defmethod gait_toggle_cmd-val ((m <HexJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:gait_toggle_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:gait_toggle_cmd instead.")
  (gait_toggle_cmd m))

(cl:ensure-generic-function 'leg_toggle_cmd-val :lambda-list '(m))
(cl:defmethod leg_toggle_cmd-val ((m <HexJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:leg_toggle_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:leg_toggle_cmd instead.")
  (leg_toggle_cmd m))

(cl:ensure-generic-function 'stance_cmd-val :lambda-list '(m))
(cl:defmethod stance_cmd-val ((m <HexJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:stance_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:stance_cmd instead.")
  (stance_cmd m))

(cl:ensure-generic-function 'reboot_cmd-val :lambda-list '(m))
(cl:defmethod reboot_cmd-val ((m <HexJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:reboot_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:reboot_cmd instead.")
  (reboot_cmd m))

(cl:ensure-generic-function 'set_home_pose_cmd-val :lambda-list '(m))
(cl:defmethod set_home_pose_cmd-val ((m <HexJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:set_home_pose_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:set_home_pose_cmd instead.")
  (set_home_pose_cmd m))

(cl:ensure-generic-function 'speed_cmd-val :lambda-list '(m))
(cl:defmethod speed_cmd-val ((m <HexJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:speed_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:speed_cmd instead.")
  (speed_cmd m))

(cl:ensure-generic-function 'speed_toggle_cmd-val :lambda-list '(m))
(cl:defmethod speed_toggle_cmd-val ((m <HexJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:speed_toggle_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:speed_toggle_cmd instead.")
  (speed_toggle_cmd m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HexJoy>)))
    "Constants for message type '<HexJoy>"
  '((:WORLD_X_INC . 1)
    (:WORLD_X_DEC . 2)
    (:WORLD_Y_INC . 3)
    (:WORLD_Y_DEC . 4)
    (:WORLD_YAW_CCW . 5)
    (:WORLD_YAW_CW . 6)
    (:PLACE_X_INC . 7)
    (:PLACE_X_DEC . 8)
    (:PLACE_Y_INC . 9)
    (:PLACE_Y_DEC . 10)
    (:PLACE_Z_INC . 11)
    (:PLACE_Z_DEC . 12)
    (:PLACE_ROLL_CCW . 13)
    (:PLACE_ROLL_CW . 14)
    (:PLACE_PITCH_UP . 15)
    (:PLACE_PITCH_DOWN . 16)
    (:MOVE_HEXAPOD . 17)
    (:MOVE_LEG . 18)
    (:HOME_POSE . 19)
    (:SLEEP_POSE . 20)
    (:GAIT_NEXT . 21)
    (:GAIT_PREVIOUS . 22)
    (:LEG_NEXT . 23)
    (:LEG_PREVIOUS . 24)
    (:WIDEN_STANCE . 25)
    (:NARROW_STANCE . 26)
    (:REBOOT_MOTORS . 27)
    (:SET_HOME_POSE . 28)
    (:SPEED_INC . 29)
    (:SPEED_DEC . 30)
    (:SPEED_COURSE . 31)
    (:SPEED_FINE . 32))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HexJoy)))
    "Constants for message type 'HexJoy"
  '((:WORLD_X_INC . 1)
    (:WORLD_X_DEC . 2)
    (:WORLD_Y_INC . 3)
    (:WORLD_Y_DEC . 4)
    (:WORLD_YAW_CCW . 5)
    (:WORLD_YAW_CW . 6)
    (:PLACE_X_INC . 7)
    (:PLACE_X_DEC . 8)
    (:PLACE_Y_INC . 9)
    (:PLACE_Y_DEC . 10)
    (:PLACE_Z_INC . 11)
    (:PLACE_Z_DEC . 12)
    (:PLACE_ROLL_CCW . 13)
    (:PLACE_ROLL_CW . 14)
    (:PLACE_PITCH_UP . 15)
    (:PLACE_PITCH_DOWN . 16)
    (:MOVE_HEXAPOD . 17)
    (:MOVE_LEG . 18)
    (:HOME_POSE . 19)
    (:SLEEP_POSE . 20)
    (:GAIT_NEXT . 21)
    (:GAIT_PREVIOUS . 22)
    (:LEG_NEXT . 23)
    (:LEG_PREVIOUS . 24)
    (:WIDEN_STANCE . 25)
    (:NARROW_STANCE . 26)
    (:REBOOT_MOTORS . 27)
    (:SET_HOME_POSE . 28)
    (:SPEED_INC . 29)
    (:SPEED_DEC . 30)
    (:SPEED_COURSE . 31)
    (:SPEED_FINE . 32))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HexJoy>) ostream)
  "Serializes a message object of type '<HexJoy>"
  (cl:let* ((signed (cl:slot-value msg 'world_x_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'world_y_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'world_yaw_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'place_x_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'place_y_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'place_z_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'place_roll_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'place_pitch_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pose_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'move_type_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gait_toggle_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'leg_toggle_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'stance_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reboot_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'set_home_pose_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_toggle_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HexJoy>) istream)
  "Deserializes a message object of type '<HexJoy>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'world_x_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'world_y_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'world_yaw_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'place_x_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'place_y_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'place_z_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'place_roll_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'place_pitch_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pose_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'move_type_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gait_toggle_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leg_toggle_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stance_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reboot_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'set_home_pose_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_toggle_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HexJoy>)))
  "Returns string type for a message object of type '<HexJoy>"
  "interbotix_xs_msgs/HexJoy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HexJoy)))
  "Returns string type for a message object of type 'HexJoy"
  "interbotix_xs_msgs/HexJoy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HexJoy>)))
  "Returns md5sum for a message object of type '<HexJoy>"
  "99b1d8cef626ff2a04f51ab2f81ac80a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HexJoy)))
  "Returns md5sum for a message object of type 'HexJoy"
  "99b1d8cef626ff2a04f51ab2f81ac80a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HexJoy>)))
  "Returns full string definition for message of type '<HexJoy>"
  (cl:format cl:nil "# This message is used specifically in the interbotix_xshexapod_joy package~%#~%# Maps raw 'joy' commands to more specific ones to control an Interbotix hexapod~%~%# enum values that define the joystick controls for the robot~%~%#########################################################################################################~%~%# Command Options to move the Hexapod in the 'world' or in 'place'~%# World Control~%int8 WORLD_X_INC = 1~%int8 WORLD_X_DEC = 2~%int8 WORLD_Y_INC = 3~%int8 WORLD_Y_DEC = 4~%int8 WORLD_YAW_CCW = 5~%int8 WORLD_YAW_CW = 6~%~%# In Place Control~%int8 PLACE_X_INC = 7~%int8 PLACE_X_DEC = 8~%int8 PLACE_Y_INC = 9~%int8 PLACE_Y_DEC = 10~%int8 PLACE_Z_INC = 11~%int8 PLACE_Z_DEC = 12~%int8 PLACE_ROLL_CCW = 13~%int8 PLACE_ROLL_CW = 14~%int8 PLACE_PITCH_UP = 15~%int8 PLACE_PITCH_DOWN = 16~%~%# Move Type~%int8 MOVE_HEXAPOD = 17~%int8 MOVE_LEG = 18~%~%# Pose Control~%int8 HOME_POSE = 19~%int8 SLEEP_POSE = 20~%~%#########################################################################################################~%~%# Customize configurations for the Interbotix Hexapod~%~%# Cycle through the various gaits when in 'move_hexapod' mode~%int8 GAIT_NEXT = 21~%int8 GAIT_PREVIOUS = 22~%~%# Cycle through the legs when in 'move_leg' mode~%int8 LEG_NEXT = 23~%int8 LEG_PREVIOUS = 24~%~%# Widen or narrow the hexapod's stance~%int8 WIDEN_STANCE = 25~%int8 NARROW_STANCE = 26~%~%# Reboot motors if necessary~%int8 REBOOT_MOTORS = 27~%~%# Set the current stance and hexapod height to be the new 'Home Pose'~%int8 SET_HOME_POSE = 28~%~%# Inc/Dec speed~%int8 SPEED_INC = 29~%int8 SPEED_DEC = 30~%~%# Quickly toggle between a fast and slow speed setting~%int8 SPEED_COURSE = 31~%int8 SPEED_FINE = 32~%~%#########################################################################################################~%~%# Control the motion of the Interbotix Hexapod~%int8 world_x_cmd~%int8 world_y_cmd~%int8 world_yaw_cmd~%~%int8 place_x_cmd~%int8 place_y_cmd~%int8 place_z_cmd~%int8 place_roll_cmd~%int8 place_pitch_cmd~%~%int8 pose_cmd~%int8 move_type_cmd~%~%# Other Options~%int8 gait_toggle_cmd~%int8 leg_toggle_cmd~%int8 stance_cmd~%int8 reboot_cmd~%int8 set_home_pose_cmd~%~%# Speed Configs~%int8 speed_cmd~%int8 speed_toggle_cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HexJoy)))
  "Returns full string definition for message of type 'HexJoy"
  (cl:format cl:nil "# This message is used specifically in the interbotix_xshexapod_joy package~%#~%# Maps raw 'joy' commands to more specific ones to control an Interbotix hexapod~%~%# enum values that define the joystick controls for the robot~%~%#########################################################################################################~%~%# Command Options to move the Hexapod in the 'world' or in 'place'~%# World Control~%int8 WORLD_X_INC = 1~%int8 WORLD_X_DEC = 2~%int8 WORLD_Y_INC = 3~%int8 WORLD_Y_DEC = 4~%int8 WORLD_YAW_CCW = 5~%int8 WORLD_YAW_CW = 6~%~%# In Place Control~%int8 PLACE_X_INC = 7~%int8 PLACE_X_DEC = 8~%int8 PLACE_Y_INC = 9~%int8 PLACE_Y_DEC = 10~%int8 PLACE_Z_INC = 11~%int8 PLACE_Z_DEC = 12~%int8 PLACE_ROLL_CCW = 13~%int8 PLACE_ROLL_CW = 14~%int8 PLACE_PITCH_UP = 15~%int8 PLACE_PITCH_DOWN = 16~%~%# Move Type~%int8 MOVE_HEXAPOD = 17~%int8 MOVE_LEG = 18~%~%# Pose Control~%int8 HOME_POSE = 19~%int8 SLEEP_POSE = 20~%~%#########################################################################################################~%~%# Customize configurations for the Interbotix Hexapod~%~%# Cycle through the various gaits when in 'move_hexapod' mode~%int8 GAIT_NEXT = 21~%int8 GAIT_PREVIOUS = 22~%~%# Cycle through the legs when in 'move_leg' mode~%int8 LEG_NEXT = 23~%int8 LEG_PREVIOUS = 24~%~%# Widen or narrow the hexapod's stance~%int8 WIDEN_STANCE = 25~%int8 NARROW_STANCE = 26~%~%# Reboot motors if necessary~%int8 REBOOT_MOTORS = 27~%~%# Set the current stance and hexapod height to be the new 'Home Pose'~%int8 SET_HOME_POSE = 28~%~%# Inc/Dec speed~%int8 SPEED_INC = 29~%int8 SPEED_DEC = 30~%~%# Quickly toggle between a fast and slow speed setting~%int8 SPEED_COURSE = 31~%int8 SPEED_FINE = 32~%~%#########################################################################################################~%~%# Control the motion of the Interbotix Hexapod~%int8 world_x_cmd~%int8 world_y_cmd~%int8 world_yaw_cmd~%~%int8 place_x_cmd~%int8 place_y_cmd~%int8 place_z_cmd~%int8 place_roll_cmd~%int8 place_pitch_cmd~%~%int8 pose_cmd~%int8 move_type_cmd~%~%# Other Options~%int8 gait_toggle_cmd~%int8 leg_toggle_cmd~%int8 stance_cmd~%int8 reboot_cmd~%int8 set_home_pose_cmd~%~%# Speed Configs~%int8 speed_cmd~%int8 speed_toggle_cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HexJoy>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HexJoy>))
  "Converts a ROS message object to a list"
  (cl:list 'HexJoy
    (cl:cons ':world_x_cmd (world_x_cmd msg))
    (cl:cons ':world_y_cmd (world_y_cmd msg))
    (cl:cons ':world_yaw_cmd (world_yaw_cmd msg))
    (cl:cons ':place_x_cmd (place_x_cmd msg))
    (cl:cons ':place_y_cmd (place_y_cmd msg))
    (cl:cons ':place_z_cmd (place_z_cmd msg))
    (cl:cons ':place_roll_cmd (place_roll_cmd msg))
    (cl:cons ':place_pitch_cmd (place_pitch_cmd msg))
    (cl:cons ':pose_cmd (pose_cmd msg))
    (cl:cons ':move_type_cmd (move_type_cmd msg))
    (cl:cons ':gait_toggle_cmd (gait_toggle_cmd msg))
    (cl:cons ':leg_toggle_cmd (leg_toggle_cmd msg))
    (cl:cons ':stance_cmd (stance_cmd msg))
    (cl:cons ':reboot_cmd (reboot_cmd msg))
    (cl:cons ':set_home_pose_cmd (set_home_pose_cmd msg))
    (cl:cons ':speed_cmd (speed_cmd msg))
    (cl:cons ':speed_toggle_cmd (speed_toggle_cmd msg))
))
