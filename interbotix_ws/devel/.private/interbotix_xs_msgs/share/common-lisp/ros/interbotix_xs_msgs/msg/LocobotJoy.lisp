; Auto-generated. Do not edit!


(cl:in-package interbotix_xs_msgs-msg)


;//! \htmlinclude LocobotJoy.msg.html

(cl:defclass <LocobotJoy> (roslisp-msg-protocol:ros-message)
  ((base_x_cmd
    :reader base_x_cmd
    :initarg :base_x_cmd
    :type cl:float
    :initform 0.0)
   (base_theta_cmd
    :reader base_theta_cmd
    :initarg :base_theta_cmd
    :type cl:float
    :initform 0.0)
   (base_reset_odom_cmd
    :reader base_reset_odom_cmd
    :initarg :base_reset_odom_cmd
    :type cl:fixnum
    :initform 0)
   (pan_cmd
    :reader pan_cmd
    :initarg :pan_cmd
    :type cl:fixnum
    :initform 0)
   (tilt_cmd
    :reader tilt_cmd
    :initarg :tilt_cmd
    :type cl:fixnum
    :initform 0)
   (ee_x_cmd
    :reader ee_x_cmd
    :initarg :ee_x_cmd
    :type cl:fixnum
    :initform 0)
   (ee_y_cmd
    :reader ee_y_cmd
    :initarg :ee_y_cmd
    :type cl:fixnum
    :initform 0)
   (ee_z_cmd
    :reader ee_z_cmd
    :initarg :ee_z_cmd
    :type cl:fixnum
    :initform 0)
   (ee_roll_cmd
    :reader ee_roll_cmd
    :initarg :ee_roll_cmd
    :type cl:fixnum
    :initform 0)
   (ee_pitch_cmd
    :reader ee_pitch_cmd
    :initarg :ee_pitch_cmd
    :type cl:fixnum
    :initform 0)
   (waist_cmd
    :reader waist_cmd
    :initarg :waist_cmd
    :type cl:fixnum
    :initform 0)
   (gripper_cmd
    :reader gripper_cmd
    :initarg :gripper_cmd
    :type cl:fixnum
    :initform 0)
   (pose_cmd
    :reader pose_cmd
    :initarg :pose_cmd
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
    :initform 0)
   (gripper_pwm_cmd
    :reader gripper_pwm_cmd
    :initarg :gripper_pwm_cmd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LocobotJoy (<LocobotJoy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocobotJoy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocobotJoy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_xs_msgs-msg:<LocobotJoy> is deprecated: use interbotix_xs_msgs-msg:LocobotJoy instead.")))

(cl:ensure-generic-function 'base_x_cmd-val :lambda-list '(m))
(cl:defmethod base_x_cmd-val ((m <LocobotJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:base_x_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:base_x_cmd instead.")
  (base_x_cmd m))

(cl:ensure-generic-function 'base_theta_cmd-val :lambda-list '(m))
(cl:defmethod base_theta_cmd-val ((m <LocobotJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:base_theta_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:base_theta_cmd instead.")
  (base_theta_cmd m))

(cl:ensure-generic-function 'base_reset_odom_cmd-val :lambda-list '(m))
(cl:defmethod base_reset_odom_cmd-val ((m <LocobotJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:base_reset_odom_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:base_reset_odom_cmd instead.")
  (base_reset_odom_cmd m))

(cl:ensure-generic-function 'pan_cmd-val :lambda-list '(m))
(cl:defmethod pan_cmd-val ((m <LocobotJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:pan_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:pan_cmd instead.")
  (pan_cmd m))

(cl:ensure-generic-function 'tilt_cmd-val :lambda-list '(m))
(cl:defmethod tilt_cmd-val ((m <LocobotJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:tilt_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:tilt_cmd instead.")
  (tilt_cmd m))

(cl:ensure-generic-function 'ee_x_cmd-val :lambda-list '(m))
(cl:defmethod ee_x_cmd-val ((m <LocobotJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:ee_x_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:ee_x_cmd instead.")
  (ee_x_cmd m))

(cl:ensure-generic-function 'ee_y_cmd-val :lambda-list '(m))
(cl:defmethod ee_y_cmd-val ((m <LocobotJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:ee_y_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:ee_y_cmd instead.")
  (ee_y_cmd m))

(cl:ensure-generic-function 'ee_z_cmd-val :lambda-list '(m))
(cl:defmethod ee_z_cmd-val ((m <LocobotJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:ee_z_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:ee_z_cmd instead.")
  (ee_z_cmd m))

(cl:ensure-generic-function 'ee_roll_cmd-val :lambda-list '(m))
(cl:defmethod ee_roll_cmd-val ((m <LocobotJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:ee_roll_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:ee_roll_cmd instead.")
  (ee_roll_cmd m))

(cl:ensure-generic-function 'ee_pitch_cmd-val :lambda-list '(m))
(cl:defmethod ee_pitch_cmd-val ((m <LocobotJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:ee_pitch_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:ee_pitch_cmd instead.")
  (ee_pitch_cmd m))

(cl:ensure-generic-function 'waist_cmd-val :lambda-list '(m))
(cl:defmethod waist_cmd-val ((m <LocobotJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:waist_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:waist_cmd instead.")
  (waist_cmd m))

(cl:ensure-generic-function 'gripper_cmd-val :lambda-list '(m))
(cl:defmethod gripper_cmd-val ((m <LocobotJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:gripper_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:gripper_cmd instead.")
  (gripper_cmd m))

(cl:ensure-generic-function 'pose_cmd-val :lambda-list '(m))
(cl:defmethod pose_cmd-val ((m <LocobotJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:pose_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:pose_cmd instead.")
  (pose_cmd m))

(cl:ensure-generic-function 'speed_cmd-val :lambda-list '(m))
(cl:defmethod speed_cmd-val ((m <LocobotJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:speed_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:speed_cmd instead.")
  (speed_cmd m))

(cl:ensure-generic-function 'speed_toggle_cmd-val :lambda-list '(m))
(cl:defmethod speed_toggle_cmd-val ((m <LocobotJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:speed_toggle_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:speed_toggle_cmd instead.")
  (speed_toggle_cmd m))

(cl:ensure-generic-function 'gripper_pwm_cmd-val :lambda-list '(m))
(cl:defmethod gripper_pwm_cmd-val ((m <LocobotJoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:gripper_pwm_cmd-val is deprecated.  Use interbotix_xs_msgs-msg:gripper_pwm_cmd instead.")
  (gripper_pwm_cmd m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LocobotJoy>)))
    "Constants for message type '<LocobotJoy>"
  '((:RESET_ODOM . 1)
    (:PAN_CCW . 2)
    (:PAN_CW . 3)
    (:TILT_UP . 4)
    (:TILT_DOWN . 5)
    (:PAN_TILT_HOME . 6)
    (:EE_X_INC . 7)
    (:EE_X_DEC . 8)
    (:EE_Y_INC . 9)
    (:EE_Y_DEC . 10)
    (:EE_Z_INC . 11)
    (:EE_Z_DEC . 12)
    (:EE_ROLL_CCW . 13)
    (:EE_ROLL_CW . 14)
    (:EE_PITCH_UP . 15)
    (:EE_PITCH_DOWN . 16)
    (:WAIST_CCW . 17)
    (:WAIST_CW . 18)
    (:GRIPPER_OPEN . 19)
    (:GRIPPER_CLOSE . 20)
    (:HOME_POSE . 21)
    (:SLEEP_POSE . 22)
    (:SPEED_INC . 23)
    (:SPEED_DEC . 24)
    (:SPEED_COURSE . 25)
    (:SPEED_FINE . 26)
    (:GRIPPER_PWM_INC . 27)
    (:GRIPPER_PWM_DEC . 28))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LocobotJoy)))
    "Constants for message type 'LocobotJoy"
  '((:RESET_ODOM . 1)
    (:PAN_CCW . 2)
    (:PAN_CW . 3)
    (:TILT_UP . 4)
    (:TILT_DOWN . 5)
    (:PAN_TILT_HOME . 6)
    (:EE_X_INC . 7)
    (:EE_X_DEC . 8)
    (:EE_Y_INC . 9)
    (:EE_Y_DEC . 10)
    (:EE_Z_INC . 11)
    (:EE_Z_DEC . 12)
    (:EE_ROLL_CCW . 13)
    (:EE_ROLL_CW . 14)
    (:EE_PITCH_UP . 15)
    (:EE_PITCH_DOWN . 16)
    (:WAIST_CCW . 17)
    (:WAIST_CW . 18)
    (:GRIPPER_OPEN . 19)
    (:GRIPPER_CLOSE . 20)
    (:HOME_POSE . 21)
    (:SLEEP_POSE . 22)
    (:SPEED_INC . 23)
    (:SPEED_DEC . 24)
    (:SPEED_COURSE . 25)
    (:SPEED_FINE . 26)
    (:GRIPPER_PWM_INC . 27)
    (:GRIPPER_PWM_DEC . 28))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocobotJoy>) ostream)
  "Serializes a message object of type '<LocobotJoy>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'base_x_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'base_theta_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'base_reset_odom_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pan_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'tilt_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ee_x_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ee_y_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ee_z_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ee_roll_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ee_pitch_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'waist_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gripper_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pose_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_toggle_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gripper_pwm_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocobotJoy>) istream)
  "Deserializes a message object of type '<LocobotJoy>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'base_x_cmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'base_theta_cmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'base_reset_odom_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pan_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tilt_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ee_x_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ee_y_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ee_z_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ee_roll_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ee_pitch_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'waist_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gripper_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pose_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_toggle_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gripper_pwm_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocobotJoy>)))
  "Returns string type for a message object of type '<LocobotJoy>"
  "interbotix_xs_msgs/LocobotJoy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocobotJoy)))
  "Returns string type for a message object of type 'LocobotJoy"
  "interbotix_xs_msgs/LocobotJoy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocobotJoy>)))
  "Returns md5sum for a message object of type '<LocobotJoy>"
  "31ceb27301fc34085add57595354ba17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocobotJoy)))
  "Returns md5sum for a message object of type 'LocobotJoy"
  "31ceb27301fc34085add57595354ba17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocobotJoy>)))
  "Returns full string definition for message of type '<LocobotJoy>"
  (cl:format cl:nil "# This message is used specifically in the interbotix_xslocobot_joy package~%#~%# Maps raw 'joy' commands to more specific ones to control an Interbotix LoCoBot~%~%# enum values that define the joystick controls for the robot~%~%#########################################################################################################~%~%# Reset base odometry~%int8 RESET_ODOM = 1~%~%#########################################################################################################~%~%# Control the pan-and-tilt mechanism~%int8 PAN_CCW = 2~%int8 PAN_CW = 3~%int8 TILT_UP = 4~%int8 TILT_DOWN = 5~%int8 PAN_TILT_HOME = 6~%~%#########################################################################################################~%~%# Control the motion of the virtual 'ee_gripper_link' or end effector using the modern_robotics_ik engine~%# Position Control~%int8 EE_X_INC = 7~%int8 EE_X_DEC = 8~%int8 EE_Y_INC = 9~%int8 EE_Y_DEC = 10~%int8 EE_Z_INC = 11~%int8 EE_Z_DEC = 12~%~%# Orientation Control~%int8 EE_ROLL_CCW = 13~%int8 EE_ROLL_CW = 14~%int8 EE_PITCH_UP = 15~%int8 EE_PITCH_DOWN = 16~%~%#########################################################################################################~%~%# Control the motion of independent joints on the Arm or send predefined robot poses~%# Waist Joint Control~%int8 WAIST_CCW = 17~%int8 WAIST_CW = 18~%~%# Gripper Control~%int8 GRIPPER_OPEN = 19~%int8 GRIPPER_CLOSE = 20~%~%# Pose Control~%int8 HOME_POSE = 21~%int8 SLEEP_POSE = 22~%~%#########################################################################################################~%~%# Customize configurations for the Interbotix Arm~%# Inc/Dec Joint speed~%int8 SPEED_INC = 23~%int8 SPEED_DEC = 24~%~%# Quickly toggle between a fast and slow speed setting~%int8 SPEED_COURSE = 25~%int8 SPEED_FINE = 26~%~%# Inc/Dec Gripper pressure~%int8 GRIPPER_PWM_INC = 27~%int8 GRIPPER_PWM_DEC = 28~%~%#########################################################################################################~%~%# Control the motion of the Kobuki base~%float64 base_x_cmd~%float64 base_theta_cmd~%int8 base_reset_odom_cmd~%~%# Control the motion of the camera pan-and-tilt mechanism~%int8 pan_cmd~%int8 tilt_cmd~%~%# Control the motion of the Interbotix Arm~%int8 ee_x_cmd~%int8 ee_y_cmd~%int8 ee_z_cmd~%int8 ee_roll_cmd~%int8 ee_pitch_cmd~%~%# Independent Joint/Pose Control~%int8 waist_cmd~%int8 gripper_cmd~%int8 pose_cmd~%~%# Arm Configs~%int8 speed_cmd~%int8 speed_toggle_cmd~%int8 gripper_pwm_cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocobotJoy)))
  "Returns full string definition for message of type 'LocobotJoy"
  (cl:format cl:nil "# This message is used specifically in the interbotix_xslocobot_joy package~%#~%# Maps raw 'joy' commands to more specific ones to control an Interbotix LoCoBot~%~%# enum values that define the joystick controls for the robot~%~%#########################################################################################################~%~%# Reset base odometry~%int8 RESET_ODOM = 1~%~%#########################################################################################################~%~%# Control the pan-and-tilt mechanism~%int8 PAN_CCW = 2~%int8 PAN_CW = 3~%int8 TILT_UP = 4~%int8 TILT_DOWN = 5~%int8 PAN_TILT_HOME = 6~%~%#########################################################################################################~%~%# Control the motion of the virtual 'ee_gripper_link' or end effector using the modern_robotics_ik engine~%# Position Control~%int8 EE_X_INC = 7~%int8 EE_X_DEC = 8~%int8 EE_Y_INC = 9~%int8 EE_Y_DEC = 10~%int8 EE_Z_INC = 11~%int8 EE_Z_DEC = 12~%~%# Orientation Control~%int8 EE_ROLL_CCW = 13~%int8 EE_ROLL_CW = 14~%int8 EE_PITCH_UP = 15~%int8 EE_PITCH_DOWN = 16~%~%#########################################################################################################~%~%# Control the motion of independent joints on the Arm or send predefined robot poses~%# Waist Joint Control~%int8 WAIST_CCW = 17~%int8 WAIST_CW = 18~%~%# Gripper Control~%int8 GRIPPER_OPEN = 19~%int8 GRIPPER_CLOSE = 20~%~%# Pose Control~%int8 HOME_POSE = 21~%int8 SLEEP_POSE = 22~%~%#########################################################################################################~%~%# Customize configurations for the Interbotix Arm~%# Inc/Dec Joint speed~%int8 SPEED_INC = 23~%int8 SPEED_DEC = 24~%~%# Quickly toggle between a fast and slow speed setting~%int8 SPEED_COURSE = 25~%int8 SPEED_FINE = 26~%~%# Inc/Dec Gripper pressure~%int8 GRIPPER_PWM_INC = 27~%int8 GRIPPER_PWM_DEC = 28~%~%#########################################################################################################~%~%# Control the motion of the Kobuki base~%float64 base_x_cmd~%float64 base_theta_cmd~%int8 base_reset_odom_cmd~%~%# Control the motion of the camera pan-and-tilt mechanism~%int8 pan_cmd~%int8 tilt_cmd~%~%# Control the motion of the Interbotix Arm~%int8 ee_x_cmd~%int8 ee_y_cmd~%int8 ee_z_cmd~%int8 ee_roll_cmd~%int8 ee_pitch_cmd~%~%# Independent Joint/Pose Control~%int8 waist_cmd~%int8 gripper_cmd~%int8 pose_cmd~%~%# Arm Configs~%int8 speed_cmd~%int8 speed_toggle_cmd~%int8 gripper_pwm_cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocobotJoy>))
  (cl:+ 0
     8
     8
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocobotJoy>))
  "Converts a ROS message object to a list"
  (cl:list 'LocobotJoy
    (cl:cons ':base_x_cmd (base_x_cmd msg))
    (cl:cons ':base_theta_cmd (base_theta_cmd msg))
    (cl:cons ':base_reset_odom_cmd (base_reset_odom_cmd msg))
    (cl:cons ':pan_cmd (pan_cmd msg))
    (cl:cons ':tilt_cmd (tilt_cmd msg))
    (cl:cons ':ee_x_cmd (ee_x_cmd msg))
    (cl:cons ':ee_y_cmd (ee_y_cmd msg))
    (cl:cons ':ee_z_cmd (ee_z_cmd msg))
    (cl:cons ':ee_roll_cmd (ee_roll_cmd msg))
    (cl:cons ':ee_pitch_cmd (ee_pitch_cmd msg))
    (cl:cons ':waist_cmd (waist_cmd msg))
    (cl:cons ':gripper_cmd (gripper_cmd msg))
    (cl:cons ':pose_cmd (pose_cmd msg))
    (cl:cons ':speed_cmd (speed_cmd msg))
    (cl:cons ':speed_toggle_cmd (speed_toggle_cmd msg))
    (cl:cons ':gripper_pwm_cmd (gripper_pwm_cmd msg))
))
