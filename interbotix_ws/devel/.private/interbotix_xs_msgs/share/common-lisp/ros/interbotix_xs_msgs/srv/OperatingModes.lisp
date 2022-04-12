; Auto-generated. Do not edit!


(cl:in-package interbotix_xs_msgs-srv)


;//! \htmlinclude OperatingModes-request.msg.html

(cl:defclass <OperatingModes-request> (roslisp-msg-protocol:ros-message)
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
   (mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (profile_type
    :reader profile_type
    :initarg :profile_type
    :type cl:string
    :initform "")
   (profile_velocity
    :reader profile_velocity
    :initarg :profile_velocity
    :type cl:integer
    :initform 0)
   (profile_acceleration
    :reader profile_acceleration
    :initarg :profile_acceleration
    :type cl:integer
    :initform 0))
)

(cl:defclass OperatingModes-request (<OperatingModes-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OperatingModes-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OperatingModes-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_xs_msgs-srv:<OperatingModes-request> is deprecated: use interbotix_xs_msgs-srv:OperatingModes-request instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <OperatingModes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:cmd_type-val is deprecated.  Use interbotix_xs_msgs-srv:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <OperatingModes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:name-val is deprecated.  Use interbotix_xs_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <OperatingModes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:mode-val is deprecated.  Use interbotix_xs_msgs-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'profile_type-val :lambda-list '(m))
(cl:defmethod profile_type-val ((m <OperatingModes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:profile_type-val is deprecated.  Use interbotix_xs_msgs-srv:profile_type instead.")
  (profile_type m))

(cl:ensure-generic-function 'profile_velocity-val :lambda-list '(m))
(cl:defmethod profile_velocity-val ((m <OperatingModes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:profile_velocity-val is deprecated.  Use interbotix_xs_msgs-srv:profile_velocity instead.")
  (profile_velocity m))

(cl:ensure-generic-function 'profile_acceleration-val :lambda-list '(m))
(cl:defmethod profile_acceleration-val ((m <OperatingModes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:profile_acceleration-val is deprecated.  Use interbotix_xs_msgs-srv:profile_acceleration instead.")
  (profile_acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OperatingModes-request>) ostream)
  "Serializes a message object of type '<OperatingModes-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'profile_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'profile_type))
  (cl:let* ((signed (cl:slot-value msg 'profile_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'profile_acceleration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OperatingModes-request>) istream)
  "Deserializes a message object of type '<OperatingModes-request>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'profile_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'profile_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'profile_velocity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'profile_acceleration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OperatingModes-request>)))
  "Returns string type for a service object of type '<OperatingModes-request>"
  "interbotix_xs_msgs/OperatingModesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OperatingModes-request)))
  "Returns string type for a service object of type 'OperatingModes-request"
  "interbotix_xs_msgs/OperatingModesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OperatingModes-request>)))
  "Returns md5sum for a message object of type '<OperatingModes-request>"
  "cb68bef3d517c840b0a5cc0f73d64e36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OperatingModes-request)))
  "Returns md5sum for a message object of type 'OperatingModes-request"
  "cb68bef3d517c840b0a5cc0f73d64e36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OperatingModes-request>)))
  "Returns full string definition for message of type '<OperatingModes-request>"
  (cl:format cl:nil "# Set Operating Modes~%#~%# To get familiar with the various operating modes, go to...~%# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/~%# ...click on a motor model, and scroll down to the 'Operating Mode' section.~%#~%# There are 6 valid operating modes. They are...~%#   \"position\" - allows up to 1 complete joint revolution (perfect for arm joints); units are in radians~%#   \"ext_position\" - allows up to 512 joint revolutions; units are in radians~%#   \"velocity\" - allows infinite number of rotations (perfect for wheeled robots); units are in rad/s~%#   \"current\" - allows infinite number of rotations (perfect for grippers); units are in milliamps~%#   \"current_based_position\" - allows up to 512 joint revolutions; units are in radians~%#   \"pwm\" - allows infinite number of rotations (perfect for grippers); units are in PWM~%#~%# Note that the interbotix_xs_sdk offers one other 'pseudo' operating mode that can be useful in controlling Interbotix Grippers - called \"linear_position\".~%# Behind the scenes, it uses the \"position\" operating mode mentioned above. The main difference is that with this mode, a desired linear distance [m]~%# between the two gripper fingers can be commanded. In the \"position\" mode though, only the angular position of the motor can be commanded.~%#~%# There are 2 valid profile types - either 'time' or 'velocity'. Depending on which is chosen, the following parameters behave differently.~%#~%# 1) profile_velocity: acts as a pass-through to the Profile_Velocity register and operates in one of two ways. If~%#    'profile_type' is set to 'velocity', this parameter describes the max velocity limit for the specified joint(s);~%#    for example, if doing 'position' control, setting this to '131' would be equivalent to a limit of 3.14 rad/s; if~%#    'profile_type' is set to 'time', this parameter sets the time span (in milliseconds) that it should take for the~%#    specified joint(s) to move; to have an 'infinite' max limit, set to '0'.~%#~%# 2) profile_acceleration: acts as a pass-through to the Profile_Acceleration register and operates in one of two ways. If~%#    'profile_type' is set to 'velocity', this parameter describes the max acceleration limit for the specified joint(s);~%#    for example, if doing 'position' or 'velocity' control, setting this to '15' would be equivalent to a limit of 5.6 rad/s^2;~%#    if 'profile_type' is set to 'time', this parameter sets the time span (in milliseconds) that it should take for the~%#    specified joint(s) to accelerate; to have an 'infinite' max limit, set to '0'.~%~%string cmd_type                     # set to 'group' if commanding a joint group or 'single' if commanding a single joint~%string name                         # name of the group if commanding a joint group or joint if commanding a single joint~%string mode                         # desired operating mode as described above~%string profile_type                 # desired 'profile' type - either 'time' or 'velocity' as described above~%int32 profile_velocity              # desired velocity profile as explained above - only used in 'position' or the 'ext_position' control modes~%int32 profile_acceleration          # desired acceleration profile as explained above - used in all modes except for 'current' and 'pwm' control~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OperatingModes-request)))
  "Returns full string definition for message of type 'OperatingModes-request"
  (cl:format cl:nil "# Set Operating Modes~%#~%# To get familiar with the various operating modes, go to...~%# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/~%# ...click on a motor model, and scroll down to the 'Operating Mode' section.~%#~%# There are 6 valid operating modes. They are...~%#   \"position\" - allows up to 1 complete joint revolution (perfect for arm joints); units are in radians~%#   \"ext_position\" - allows up to 512 joint revolutions; units are in radians~%#   \"velocity\" - allows infinite number of rotations (perfect for wheeled robots); units are in rad/s~%#   \"current\" - allows infinite number of rotations (perfect for grippers); units are in milliamps~%#   \"current_based_position\" - allows up to 512 joint revolutions; units are in radians~%#   \"pwm\" - allows infinite number of rotations (perfect for grippers); units are in PWM~%#~%# Note that the interbotix_xs_sdk offers one other 'pseudo' operating mode that can be useful in controlling Interbotix Grippers - called \"linear_position\".~%# Behind the scenes, it uses the \"position\" operating mode mentioned above. The main difference is that with this mode, a desired linear distance [m]~%# between the two gripper fingers can be commanded. In the \"position\" mode though, only the angular position of the motor can be commanded.~%#~%# There are 2 valid profile types - either 'time' or 'velocity'. Depending on which is chosen, the following parameters behave differently.~%#~%# 1) profile_velocity: acts as a pass-through to the Profile_Velocity register and operates in one of two ways. If~%#    'profile_type' is set to 'velocity', this parameter describes the max velocity limit for the specified joint(s);~%#    for example, if doing 'position' control, setting this to '131' would be equivalent to a limit of 3.14 rad/s; if~%#    'profile_type' is set to 'time', this parameter sets the time span (in milliseconds) that it should take for the~%#    specified joint(s) to move; to have an 'infinite' max limit, set to '0'.~%#~%# 2) profile_acceleration: acts as a pass-through to the Profile_Acceleration register and operates in one of two ways. If~%#    'profile_type' is set to 'velocity', this parameter describes the max acceleration limit for the specified joint(s);~%#    for example, if doing 'position' or 'velocity' control, setting this to '15' would be equivalent to a limit of 5.6 rad/s^2;~%#    if 'profile_type' is set to 'time', this parameter sets the time span (in milliseconds) that it should take for the~%#    specified joint(s) to accelerate; to have an 'infinite' max limit, set to '0'.~%~%string cmd_type                     # set to 'group' if commanding a joint group or 'single' if commanding a single joint~%string name                         # name of the group if commanding a joint group or joint if commanding a single joint~%string mode                         # desired operating mode as described above~%string profile_type                 # desired 'profile' type - either 'time' or 'velocity' as described above~%int32 profile_velocity              # desired velocity profile as explained above - only used in 'position' or the 'ext_position' control modes~%int32 profile_acceleration          # desired acceleration profile as explained above - used in all modes except for 'current' and 'pwm' control~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OperatingModes-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd_type))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'mode))
     4 (cl:length (cl:slot-value msg 'profile_type))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OperatingModes-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OperatingModes-request
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':name (name msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':profile_type (profile_type msg))
    (cl:cons ':profile_velocity (profile_velocity msg))
    (cl:cons ':profile_acceleration (profile_acceleration msg))
))
;//! \htmlinclude OperatingModes-response.msg.html

(cl:defclass <OperatingModes-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass OperatingModes-response (<OperatingModes-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OperatingModes-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OperatingModes-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_xs_msgs-srv:<OperatingModes-response> is deprecated: use interbotix_xs_msgs-srv:OperatingModes-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OperatingModes-response>) ostream)
  "Serializes a message object of type '<OperatingModes-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OperatingModes-response>) istream)
  "Deserializes a message object of type '<OperatingModes-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OperatingModes-response>)))
  "Returns string type for a service object of type '<OperatingModes-response>"
  "interbotix_xs_msgs/OperatingModesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OperatingModes-response)))
  "Returns string type for a service object of type 'OperatingModes-response"
  "interbotix_xs_msgs/OperatingModesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OperatingModes-response>)))
  "Returns md5sum for a message object of type '<OperatingModes-response>"
  "cb68bef3d517c840b0a5cc0f73d64e36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OperatingModes-response)))
  "Returns md5sum for a message object of type 'OperatingModes-response"
  "cb68bef3d517c840b0a5cc0f73d64e36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OperatingModes-response>)))
  "Returns full string definition for message of type '<OperatingModes-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OperatingModes-response)))
  "Returns full string definition for message of type 'OperatingModes-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OperatingModes-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OperatingModes-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OperatingModes-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OperatingModes)))
  'OperatingModes-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OperatingModes)))
  'OperatingModes-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OperatingModes)))
  "Returns string type for a service object of type '<OperatingModes>"
  "interbotix_xs_msgs/OperatingModes")