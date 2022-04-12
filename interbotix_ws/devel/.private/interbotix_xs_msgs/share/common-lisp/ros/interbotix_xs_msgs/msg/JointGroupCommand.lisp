; Auto-generated. Do not edit!


(cl:in-package interbotix_xs_msgs-msg)


;//! \htmlinclude JointGroupCommand.msg.html

(cl:defclass <JointGroupCommand> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (cmd
    :reader cmd
    :initarg :cmd
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass JointGroupCommand (<JointGroupCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointGroupCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointGroupCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_xs_msgs-msg:<JointGroupCommand> is deprecated: use interbotix_xs_msgs-msg:JointGroupCommand instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <JointGroupCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:name-val is deprecated.  Use interbotix_xs_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <JointGroupCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:cmd-val is deprecated.  Use interbotix_xs_msgs-msg:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointGroupCommand>) ostream)
  "Serializes a message object of type '<JointGroupCommand>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointGroupCommand>) istream)
  "Deserializes a message object of type '<JointGroupCommand>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cmd) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cmd)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointGroupCommand>)))
  "Returns string type for a message object of type '<JointGroupCommand>"
  "interbotix_xs_msgs/JointGroupCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointGroupCommand)))
  "Returns string type for a message object of type 'JointGroupCommand"
  "interbotix_xs_msgs/JointGroupCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointGroupCommand>)))
  "Returns md5sum for a message object of type '<JointGroupCommand>"
  "fa54c229b7238fc905e59a51a526f379")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointGroupCommand)))
  "Returns md5sum for a message object of type 'JointGroupCommand"
  "fa54c229b7238fc905e59a51a526f379")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointGroupCommand>)))
  "Returns full string definition for message of type '<JointGroupCommand>"
  (cl:format cl:nil "# Command the joints in the specified joint group. Note that the commands are processed differently based on the group's operating mode.~%# For example, if a group's operating mode is set to 'position', the commands are interpreted as positions in radians~%~%string name            # Name of joint group~%float32[] cmd          # List of joint commands; order is dictated by the index of each joint name for the given group in the 'groups' section of a 'motor_config' yaml file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointGroupCommand)))
  "Returns full string definition for message of type 'JointGroupCommand"
  (cl:format cl:nil "# Command the joints in the specified joint group. Note that the commands are processed differently based on the group's operating mode.~%# For example, if a group's operating mode is set to 'position', the commands are interpreted as positions in radians~%~%string name            # Name of joint group~%float32[] cmd          # List of joint commands; order is dictated by the index of each joint name for the given group in the 'groups' section of a 'motor_config' yaml file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointGroupCommand>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cmd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointGroupCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'JointGroupCommand
    (cl:cons ':name (name msg))
    (cl:cons ':cmd (cmd msg))
))
