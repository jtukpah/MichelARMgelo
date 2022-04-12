; Auto-generated. Do not edit!


(cl:in-package interbotix_xs_msgs-msg)


;//! \htmlinclude JointSingleCommand.msg.html

(cl:defclass <JointSingleCommand> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (cmd
    :reader cmd
    :initarg :cmd
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointSingleCommand (<JointSingleCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointSingleCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointSingleCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_xs_msgs-msg:<JointSingleCommand> is deprecated: use interbotix_xs_msgs-msg:JointSingleCommand instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <JointSingleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:name-val is deprecated.  Use interbotix_xs_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <JointSingleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:cmd-val is deprecated.  Use interbotix_xs_msgs-msg:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointSingleCommand>) ostream)
  "Serializes a message object of type '<JointSingleCommand>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointSingleCommand>) istream)
  "Deserializes a message object of type '<JointSingleCommand>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmd) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointSingleCommand>)))
  "Returns string type for a message object of type '<JointSingleCommand>"
  "interbotix_xs_msgs/JointSingleCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointSingleCommand)))
  "Returns string type for a message object of type 'JointSingleCommand"
  "interbotix_xs_msgs/JointSingleCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointSingleCommand>)))
  "Returns md5sum for a message object of type '<JointSingleCommand>"
  "79b74399c9cdcc4c0be32d540424ed2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointSingleCommand)))
  "Returns md5sum for a message object of type 'JointSingleCommand"
  "79b74399c9cdcc4c0be32d540424ed2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointSingleCommand>)))
  "Returns full string definition for message of type '<JointSingleCommand>"
  (cl:format cl:nil "# Command a desired joint. Note that the command is processed differently based on the joint's operating mode.~%# For example, if a joint's operating mode is set to 'position', the command is interpreted as a position in radians~%~%string name          # Name of joint~%float32 cmd          # Joint command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointSingleCommand)))
  "Returns full string definition for message of type 'JointSingleCommand"
  (cl:format cl:nil "# Command a desired joint. Note that the command is processed differently based on the joint's operating mode.~%# For example, if a joint's operating mode is set to 'position', the command is interpreted as a position in radians~%~%string name          # Name of joint~%float32 cmd          # Joint command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointSingleCommand>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointSingleCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'JointSingleCommand
    (cl:cons ':name (name msg))
    (cl:cons ':cmd (cmd msg))
))
