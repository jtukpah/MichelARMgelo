; Auto-generated. Do not edit!


(cl:in-package interbotix_xs_msgs-srv)


;//! \htmlinclude MotorGains-request.msg.html

(cl:defclass <MotorGains-request> (roslisp-msg-protocol:ros-message)
  ((cmd_type
    :reader cmd_type
    :initarg :cmd_type
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (kp_pos
    :reader kp_pos
    :initarg :kp_pos
    :type cl:integer
    :initform 0)
   (ki_pos
    :reader ki_pos
    :initarg :ki_pos
    :type cl:integer
    :initform 0)
   (kd_pos
    :reader kd_pos
    :initarg :kd_pos
    :type cl:integer
    :initform 0)
   (k1
    :reader k1
    :initarg :k1
    :type cl:integer
    :initform 0)
   (k2
    :reader k2
    :initarg :k2
    :type cl:integer
    :initform 0)
   (kp_vel
    :reader kp_vel
    :initarg :kp_vel
    :type cl:integer
    :initform 0)
   (ki_vel
    :reader ki_vel
    :initarg :ki_vel
    :type cl:integer
    :initform 0))
)

(cl:defclass MotorGains-request (<MotorGains-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorGains-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorGains-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_xs_msgs-srv:<MotorGains-request> is deprecated: use interbotix_xs_msgs-srv:MotorGains-request instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <MotorGains-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:cmd_type-val is deprecated.  Use interbotix_xs_msgs-srv:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <MotorGains-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:name-val is deprecated.  Use interbotix_xs_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'kp_pos-val :lambda-list '(m))
(cl:defmethod kp_pos-val ((m <MotorGains-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:kp_pos-val is deprecated.  Use interbotix_xs_msgs-srv:kp_pos instead.")
  (kp_pos m))

(cl:ensure-generic-function 'ki_pos-val :lambda-list '(m))
(cl:defmethod ki_pos-val ((m <MotorGains-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:ki_pos-val is deprecated.  Use interbotix_xs_msgs-srv:ki_pos instead.")
  (ki_pos m))

(cl:ensure-generic-function 'kd_pos-val :lambda-list '(m))
(cl:defmethod kd_pos-val ((m <MotorGains-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:kd_pos-val is deprecated.  Use interbotix_xs_msgs-srv:kd_pos instead.")
  (kd_pos m))

(cl:ensure-generic-function 'k1-val :lambda-list '(m))
(cl:defmethod k1-val ((m <MotorGains-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:k1-val is deprecated.  Use interbotix_xs_msgs-srv:k1 instead.")
  (k1 m))

(cl:ensure-generic-function 'k2-val :lambda-list '(m))
(cl:defmethod k2-val ((m <MotorGains-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:k2-val is deprecated.  Use interbotix_xs_msgs-srv:k2 instead.")
  (k2 m))

(cl:ensure-generic-function 'kp_vel-val :lambda-list '(m))
(cl:defmethod kp_vel-val ((m <MotorGains-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:kp_vel-val is deprecated.  Use interbotix_xs_msgs-srv:kp_vel instead.")
  (kp_vel m))

(cl:ensure-generic-function 'ki_vel-val :lambda-list '(m))
(cl:defmethod ki_vel-val ((m <MotorGains-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:ki_vel-val is deprecated.  Use interbotix_xs_msgs-srv:ki_vel instead.")
  (ki_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorGains-request>) ostream)
  "Serializes a message object of type '<MotorGains-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'kp_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ki_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'kd_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'k1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'k2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'kp_vel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ki_vel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorGains-request>) istream)
  "Deserializes a message object of type '<MotorGains-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kp_pos) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ki_pos) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kd_pos) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'k1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'k2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kp_vel) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ki_vel) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorGains-request>)))
  "Returns string type for a service object of type '<MotorGains-request>"
  "interbotix_xs_msgs/MotorGainsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorGains-request)))
  "Returns string type for a service object of type 'MotorGains-request"
  "interbotix_xs_msgs/MotorGainsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorGains-request>)))
  "Returns md5sum for a message object of type '<MotorGains-request>"
  "7c362297bf8bae149936ba71305f3900")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorGains-request)))
  "Returns md5sum for a message object of type 'MotorGains-request"
  "7c362297bf8bae149936ba71305f3900")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorGains-request>)))
  "Returns full string definition for message of type '<MotorGains-request>"
  (cl:format cl:nil "# Set PID gains~%#~%# To get familiar with the various PID gains, go to...~%# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/~%# ...click on a motor model, and scroll down to the 'PID' section.~%~%string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint~%string name              # name of the group if commanding a joint group or joint if commanding a single joint~%int32 kp_pos             # acts as a pass-through to the Position_P_Gain register~%int32 ki_pos             # acts as a pass-through to the Position_I_Gain register~%int32 kd_pos             # acts as a pass-through to the Position_D_Gain register~%int32 k1                 # acts as a pass-through to the Feedforward_1st_Gain register~%int32 k2                 # acts as a pass-through to the Feedforward_2nd_Gain register~%int32 kp_vel             # acts as a pass-through to the Velocity_P_Gain register~%int32 ki_vel             # acts as a pass-through to the Velocity_I_Gain register~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorGains-request)))
  "Returns full string definition for message of type 'MotorGains-request"
  (cl:format cl:nil "# Set PID gains~%#~%# To get familiar with the various PID gains, go to...~%# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/~%# ...click on a motor model, and scroll down to the 'PID' section.~%~%string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint~%string name              # name of the group if commanding a joint group or joint if commanding a single joint~%int32 kp_pos             # acts as a pass-through to the Position_P_Gain register~%int32 ki_pos             # acts as a pass-through to the Position_I_Gain register~%int32 kd_pos             # acts as a pass-through to the Position_D_Gain register~%int32 k1                 # acts as a pass-through to the Feedforward_1st_Gain register~%int32 k2                 # acts as a pass-through to the Feedforward_2nd_Gain register~%int32 kp_vel             # acts as a pass-through to the Velocity_P_Gain register~%int32 ki_vel             # acts as a pass-through to the Velocity_I_Gain register~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorGains-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd_type))
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorGains-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorGains-request
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':name (name msg))
    (cl:cons ':kp_pos (kp_pos msg))
    (cl:cons ':ki_pos (ki_pos msg))
    (cl:cons ':kd_pos (kd_pos msg))
    (cl:cons ':k1 (k1 msg))
    (cl:cons ':k2 (k2 msg))
    (cl:cons ':kp_vel (kp_vel msg))
    (cl:cons ':ki_vel (ki_vel msg))
))
;//! \htmlinclude MotorGains-response.msg.html

(cl:defclass <MotorGains-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MotorGains-response (<MotorGains-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorGains-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorGains-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_xs_msgs-srv:<MotorGains-response> is deprecated: use interbotix_xs_msgs-srv:MotorGains-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorGains-response>) ostream)
  "Serializes a message object of type '<MotorGains-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorGains-response>) istream)
  "Deserializes a message object of type '<MotorGains-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorGains-response>)))
  "Returns string type for a service object of type '<MotorGains-response>"
  "interbotix_xs_msgs/MotorGainsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorGains-response)))
  "Returns string type for a service object of type 'MotorGains-response"
  "interbotix_xs_msgs/MotorGainsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorGains-response>)))
  "Returns md5sum for a message object of type '<MotorGains-response>"
  "7c362297bf8bae149936ba71305f3900")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorGains-response)))
  "Returns md5sum for a message object of type 'MotorGains-response"
  "7c362297bf8bae149936ba71305f3900")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorGains-response>)))
  "Returns full string definition for message of type '<MotorGains-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorGains-response)))
  "Returns full string definition for message of type 'MotorGains-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorGains-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorGains-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorGains-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MotorGains)))
  'MotorGains-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MotorGains)))
  'MotorGains-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorGains)))
  "Returns string type for a service object of type '<MotorGains>"
  "interbotix_xs_msgs/MotorGains")