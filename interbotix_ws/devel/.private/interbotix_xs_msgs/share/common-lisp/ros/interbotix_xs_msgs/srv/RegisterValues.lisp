; Auto-generated. Do not edit!


(cl:in-package interbotix_xs_msgs-srv)


;//! \htmlinclude RegisterValues-request.msg.html

(cl:defclass <RegisterValues-request> (roslisp-msg-protocol:ros-message)
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
   (reg
    :reader reg
    :initarg :reg
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass RegisterValues-request (<RegisterValues-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterValues-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterValues-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_xs_msgs-srv:<RegisterValues-request> is deprecated: use interbotix_xs_msgs-srv:RegisterValues-request instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <RegisterValues-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:cmd_type-val is deprecated.  Use interbotix_xs_msgs-srv:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <RegisterValues-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:name-val is deprecated.  Use interbotix_xs_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'reg-val :lambda-list '(m))
(cl:defmethod reg-val ((m <RegisterValues-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:reg-val is deprecated.  Use interbotix_xs_msgs-srv:reg instead.")
  (reg m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RegisterValues-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:value-val is deprecated.  Use interbotix_xs_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterValues-request>) ostream)
  "Serializes a message object of type '<RegisterValues-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reg))
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterValues-request>) istream)
  "Deserializes a message object of type '<RegisterValues-request>"
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
      (cl:setf (cl:slot-value msg 'reg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterValues-request>)))
  "Returns string type for a service object of type '<RegisterValues-request>"
  "interbotix_xs_msgs/RegisterValuesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterValues-request)))
  "Returns string type for a service object of type 'RegisterValues-request"
  "interbotix_xs_msgs/RegisterValuesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterValues-request>)))
  "Returns md5sum for a message object of type '<RegisterValues-request>"
  "27940ff80d633a7a6df113cf798c0f70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterValues-request)))
  "Returns md5sum for a message object of type 'RegisterValues-request"
  "27940ff80d633a7a6df113cf798c0f70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterValues-request>)))
  "Returns full string definition for message of type '<RegisterValues-request>"
  (cl:format cl:nil "# Set or get the register(s) value(s) from motor(s)~%#~%# To get familiar with the register values, go to...~%# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/~%# ...click on a motor model, and scroll down to the 'Control Table of RAM Area' section.~%~%string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint~%string name              # name of the group if commanding a joint group or joint if commanding a single joint~%string reg               # register name (like Profile_Velocity, Profile_Acceleration, etc...)~%int32 value              # desired register value (only set if 'setting' a register)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterValues-request)))
  "Returns full string definition for message of type 'RegisterValues-request"
  (cl:format cl:nil "# Set or get the register(s) value(s) from motor(s)~%#~%# To get familiar with the register values, go to...~%# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/~%# ...click on a motor model, and scroll down to the 'Control Table of RAM Area' section.~%~%string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint~%string name              # name of the group if commanding a joint group or joint if commanding a single joint~%string reg               # register name (like Profile_Velocity, Profile_Acceleration, etc...)~%int32 value              # desired register value (only set if 'setting' a register)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterValues-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd_type))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'reg))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterValues-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterValues-request
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':name (name msg))
    (cl:cons ':reg (reg msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude RegisterValues-response.msg.html

(cl:defclass <RegisterValues-response> (roslisp-msg-protocol:ros-message)
  ((values
    :reader values
    :initarg :values
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass RegisterValues-response (<RegisterValues-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterValues-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterValues-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_xs_msgs-srv:<RegisterValues-response> is deprecated: use interbotix_xs_msgs-srv:RegisterValues-response instead.")))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <RegisterValues-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:values-val is deprecated.  Use interbotix_xs_msgs-srv:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterValues-response>) ostream)
  "Serializes a message object of type '<RegisterValues-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterValues-response>) istream)
  "Deserializes a message object of type '<RegisterValues-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterValues-response>)))
  "Returns string type for a service object of type '<RegisterValues-response>"
  "interbotix_xs_msgs/RegisterValuesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterValues-response)))
  "Returns string type for a service object of type 'RegisterValues-response"
  "interbotix_xs_msgs/RegisterValuesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterValues-response>)))
  "Returns md5sum for a message object of type '<RegisterValues-response>"
  "27940ff80d633a7a6df113cf798c0f70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterValues-response)))
  "Returns md5sum for a message object of type 'RegisterValues-response"
  "27940ff80d633a7a6df113cf798c0f70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterValues-response>)))
  "Returns full string definition for message of type '<RegisterValues-response>"
  (cl:format cl:nil "int32[] values           # current register values (only filled if 'getting' a register)~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterValues-response)))
  "Returns full string definition for message of type 'RegisterValues-response"
  (cl:format cl:nil "int32[] values           # current register values (only filled if 'getting' a register)~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterValues-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterValues-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterValues-response
    (cl:cons ':values (values msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RegisterValues)))
  'RegisterValues-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RegisterValues)))
  'RegisterValues-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterValues)))
  "Returns string type for a service object of type '<RegisterValues>"
  "interbotix_xs_msgs/RegisterValues")