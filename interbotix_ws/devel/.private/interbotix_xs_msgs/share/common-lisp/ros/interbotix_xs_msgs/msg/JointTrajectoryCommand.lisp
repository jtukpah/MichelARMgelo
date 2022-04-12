; Auto-generated. Do not edit!


(cl:in-package interbotix_xs_msgs-msg)


;//! \htmlinclude JointTrajectoryCommand.msg.html

(cl:defclass <JointTrajectoryCommand> (roslisp-msg-protocol:ros-message)
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
   (traj
    :reader traj
    :initarg :traj
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory)))
)

(cl:defclass JointTrajectoryCommand (<JointTrajectoryCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointTrajectoryCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointTrajectoryCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_xs_msgs-msg:<JointTrajectoryCommand> is deprecated: use interbotix_xs_msgs-msg:JointTrajectoryCommand instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <JointTrajectoryCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:cmd_type-val is deprecated.  Use interbotix_xs_msgs-msg:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <JointTrajectoryCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:name-val is deprecated.  Use interbotix_xs_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'traj-val :lambda-list '(m))
(cl:defmethod traj-val ((m <JointTrajectoryCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:traj-val is deprecated.  Use interbotix_xs_msgs-msg:traj instead.")
  (traj m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointTrajectoryCommand>) ostream)
  "Serializes a message object of type '<JointTrajectoryCommand>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'traj) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointTrajectoryCommand>) istream)
  "Deserializes a message object of type '<JointTrajectoryCommand>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'traj) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointTrajectoryCommand>)))
  "Returns string type for a message object of type '<JointTrajectoryCommand>"
  "interbotix_xs_msgs/JointTrajectoryCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointTrajectoryCommand)))
  "Returns string type for a message object of type 'JointTrajectoryCommand"
  "interbotix_xs_msgs/JointTrajectoryCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointTrajectoryCommand>)))
  "Returns md5sum for a message object of type '<JointTrajectoryCommand>"
  "039c1a8f9200d555267cf39243b5e969")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointTrajectoryCommand)))
  "Returns md5sum for a message object of type 'JointTrajectoryCommand"
  "039c1a8f9200d555267cf39243b5e969")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointTrajectoryCommand>)))
  "Returns full string definition for message of type '<JointTrajectoryCommand>"
  (cl:format cl:nil "# Command a joint trajectory to the desired joint(s). Note that the commands are processed differently based on the currently set operating mode.~%# For example, if the operating mode is set to 'position', the commands are interpreted as positions in radians~%~%string cmd_type                               # set to 'single' for a single joint or 'group' for a group of joints~%string name                                   # joint group name if 'cmd_type' is set to 'group' or joint name if 'cmd_type' is set to 'single'~%trajectory_msgs/JointTrajectory traj          # ROS trajectory message~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointTrajectoryCommand)))
  "Returns full string definition for message of type 'JointTrajectoryCommand"
  (cl:format cl:nil "# Command a joint trajectory to the desired joint(s). Note that the commands are processed differently based on the currently set operating mode.~%# For example, if the operating mode is set to 'position', the commands are interpreted as positions in radians~%~%string cmd_type                               # set to 'single' for a single joint or 'group' for a group of joints~%string name                                   # joint group name if 'cmd_type' is set to 'group' or joint name if 'cmd_type' is set to 'single'~%trajectory_msgs/JointTrajectory traj          # ROS trajectory message~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointTrajectoryCommand>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd_type))
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'traj))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointTrajectoryCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'JointTrajectoryCommand
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':name (name msg))
    (cl:cons ':traj (traj msg))
))
