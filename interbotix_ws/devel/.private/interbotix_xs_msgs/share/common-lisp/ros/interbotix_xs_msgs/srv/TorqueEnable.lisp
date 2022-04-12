; Auto-generated. Do not edit!


(cl:in-package interbotix_xs_msgs-srv)


;//! \htmlinclude TorqueEnable-request.msg.html

(cl:defclass <TorqueEnable-request> (roslisp-msg-protocol:ros-message)
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
   (enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TorqueEnable-request (<TorqueEnable-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TorqueEnable-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TorqueEnable-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_xs_msgs-srv:<TorqueEnable-request> is deprecated: use interbotix_xs_msgs-srv:TorqueEnable-request instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <TorqueEnable-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:cmd_type-val is deprecated.  Use interbotix_xs_msgs-srv:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <TorqueEnable-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:name-val is deprecated.  Use interbotix_xs_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <TorqueEnable-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:enable-val is deprecated.  Use interbotix_xs_msgs-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TorqueEnable-request>) ostream)
  "Serializes a message object of type '<TorqueEnable-request>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TorqueEnable-request>) istream)
  "Deserializes a message object of type '<TorqueEnable-request>"
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
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TorqueEnable-request>)))
  "Returns string type for a service object of type '<TorqueEnable-request>"
  "interbotix_xs_msgs/TorqueEnableRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TorqueEnable-request)))
  "Returns string type for a service object of type 'TorqueEnable-request"
  "interbotix_xs_msgs/TorqueEnableRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TorqueEnable-request>)))
  "Returns md5sum for a message object of type '<TorqueEnable-request>"
  "023452ade9f3d4979c75bd4e0d60f0c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TorqueEnable-request)))
  "Returns md5sum for a message object of type 'TorqueEnable-request"
  "023452ade9f3d4979c75bd4e0d60f0c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TorqueEnable-request>)))
  "Returns full string definition for message of type '<TorqueEnable-request>"
  (cl:format cl:nil "# Torque joints on/off~%~%string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint~%string name              # name of the group if commanding a joint group or joint if commanding a single joint~%bool enable              # set to 'true' to torque on or 'false' to torque off~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TorqueEnable-request)))
  "Returns full string definition for message of type 'TorqueEnable-request"
  (cl:format cl:nil "# Torque joints on/off~%~%string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint~%string name              # name of the group if commanding a joint group or joint if commanding a single joint~%bool enable              # set to 'true' to torque on or 'false' to torque off~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TorqueEnable-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd_type))
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TorqueEnable-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TorqueEnable-request
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':name (name msg))
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude TorqueEnable-response.msg.html

(cl:defclass <TorqueEnable-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TorqueEnable-response (<TorqueEnable-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TorqueEnable-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TorqueEnable-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_xs_msgs-srv:<TorqueEnable-response> is deprecated: use interbotix_xs_msgs-srv:TorqueEnable-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TorqueEnable-response>) ostream)
  "Serializes a message object of type '<TorqueEnable-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TorqueEnable-response>) istream)
  "Deserializes a message object of type '<TorqueEnable-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TorqueEnable-response>)))
  "Returns string type for a service object of type '<TorqueEnable-response>"
  "interbotix_xs_msgs/TorqueEnableResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TorqueEnable-response)))
  "Returns string type for a service object of type 'TorqueEnable-response"
  "interbotix_xs_msgs/TorqueEnableResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TorqueEnable-response>)))
  "Returns md5sum for a message object of type '<TorqueEnable-response>"
  "023452ade9f3d4979c75bd4e0d60f0c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TorqueEnable-response)))
  "Returns md5sum for a message object of type 'TorqueEnable-response"
  "023452ade9f3d4979c75bd4e0d60f0c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TorqueEnable-response>)))
  "Returns full string definition for message of type '<TorqueEnable-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TorqueEnable-response)))
  "Returns full string definition for message of type 'TorqueEnable-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TorqueEnable-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TorqueEnable-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TorqueEnable-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TorqueEnable)))
  'TorqueEnable-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TorqueEnable)))
  'TorqueEnable-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TorqueEnable)))
  "Returns string type for a service object of type '<TorqueEnable>"
  "interbotix_xs_msgs/TorqueEnable")