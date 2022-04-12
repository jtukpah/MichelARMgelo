; Auto-generated. Do not edit!


(cl:in-package interbotix_moveit_interface-srv)


;//! \htmlinclude MoveItPlan-request.msg.html

(cl:defclass <MoveItPlan-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:fixnum
    :initform 0)
   (ee_pose
    :reader ee_pose
    :initarg :ee_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass MoveItPlan-request (<MoveItPlan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveItPlan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveItPlan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_moveit_interface-srv:<MoveItPlan-request> is deprecated: use interbotix_moveit_interface-srv:MoveItPlan-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <MoveItPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_moveit_interface-srv:cmd-val is deprecated.  Use interbotix_moveit_interface-srv:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'ee_pose-val :lambda-list '(m))
(cl:defmethod ee_pose-val ((m <MoveItPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_moveit_interface-srv:ee_pose-val is deprecated.  Use interbotix_moveit_interface-srv:ee_pose instead.")
  (ee_pose m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MoveItPlan-request>)))
    "Constants for message type '<MoveItPlan-request>"
  '((:CMD_PLAN_POSE . 1)
    (:CMD_PLAN_POSITION . 2)
    (:CMD_PLAN_ORIENTATION . 3)
    (:CMD_EXECUTE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MoveItPlan-request)))
    "Constants for message type 'MoveItPlan-request"
  '((:CMD_PLAN_POSE . 1)
    (:CMD_PLAN_POSITION . 2)
    (:CMD_PLAN_ORIENTATION . 3)
    (:CMD_EXECUTE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveItPlan-request>) ostream)
  "Serializes a message object of type '<MoveItPlan-request>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ee_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveItPlan-request>) istream)
  "Deserializes a message object of type '<MoveItPlan-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ee_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveItPlan-request>)))
  "Returns string type for a service object of type '<MoveItPlan-request>"
  "interbotix_moveit_interface/MoveItPlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveItPlan-request)))
  "Returns string type for a service object of type 'MoveItPlan-request"
  "interbotix_moveit_interface/MoveItPlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveItPlan-request>)))
  "Returns md5sum for a message object of type '<MoveItPlan-request>"
  "eff4f39614e2625df73027e93071de20")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveItPlan-request)))
  "Returns md5sum for a message object of type 'MoveItPlan-request"
  "eff4f39614e2625df73027e93071de20")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveItPlan-request>)))
  "Returns full string definition for message of type '<MoveItPlan-request>"
  (cl:format cl:nil "# Send commands to the moveit_plan server~%#~%# Enum values that define the commands available for the server. Note that all~%# ee_poses (defined in the 'ee_arm_link' frame) are relative to the 'world' frame.~%# There are 4 options:~%#   1) CMD_PLAN_POSE - Desired ee_pose which is made up of a position and orientation element~%#   2) CMD_PLAN_POSITION - Desired ee_position which is made up of a position element only; orientation is not constrained~%#   3) CMD_PLAN_ORIENTATION - Desired ee_orientation which is made up of an orientation element only; position is not constrained~%#   4) CMD_EXECUTE - Once a plan is available, this command executes the planned trajectory on the gazebo or physical robot~%int8 CMD_PLAN_POSE = 1~%int8 CMD_PLAN_POSITION = 2~%int8 CMD_PLAN_ORIENTATION = 3~%int8 CMD_EXECUTE = 4~%int8 cmd~%~%# desired ee_pose, position, or orientation~%geometry_msgs/Pose ee_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveItPlan-request)))
  "Returns full string definition for message of type 'MoveItPlan-request"
  (cl:format cl:nil "# Send commands to the moveit_plan server~%#~%# Enum values that define the commands available for the server. Note that all~%# ee_poses (defined in the 'ee_arm_link' frame) are relative to the 'world' frame.~%# There are 4 options:~%#   1) CMD_PLAN_POSE - Desired ee_pose which is made up of a position and orientation element~%#   2) CMD_PLAN_POSITION - Desired ee_position which is made up of a position element only; orientation is not constrained~%#   3) CMD_PLAN_ORIENTATION - Desired ee_orientation which is made up of an orientation element only; position is not constrained~%#   4) CMD_EXECUTE - Once a plan is available, this command executes the planned trajectory on the gazebo or physical robot~%int8 CMD_PLAN_POSE = 1~%int8 CMD_PLAN_POSITION = 2~%int8 CMD_PLAN_ORIENTATION = 3~%int8 CMD_EXECUTE = 4~%int8 cmd~%~%# desired ee_pose, position, or orientation~%geometry_msgs/Pose ee_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveItPlan-request>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ee_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveItPlan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveItPlan-request
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':ee_pose (ee_pose msg))
))
;//! \htmlinclude MoveItPlan-response.msg.html

(cl:defclass <MoveItPlan-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveItPlan-response (<MoveItPlan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveItPlan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveItPlan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_moveit_interface-srv:<MoveItPlan-response> is deprecated: use interbotix_moveit_interface-srv:MoveItPlan-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <MoveItPlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_moveit_interface-srv:msg-val is deprecated.  Use interbotix_moveit_interface-srv:msg instead.")
  (msg m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MoveItPlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_moveit_interface-srv:success-val is deprecated.  Use interbotix_moveit_interface-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveItPlan-response>) ostream)
  "Serializes a message object of type '<MoveItPlan-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'msg) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveItPlan-response>) istream)
  "Deserializes a message object of type '<MoveItPlan-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'msg) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveItPlan-response>)))
  "Returns string type for a service object of type '<MoveItPlan-response>"
  "interbotix_moveit_interface/MoveItPlanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveItPlan-response)))
  "Returns string type for a service object of type 'MoveItPlan-response"
  "interbotix_moveit_interface/MoveItPlanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveItPlan-response>)))
  "Returns md5sum for a message object of type '<MoveItPlan-response>"
  "eff4f39614e2625df73027e93071de20")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveItPlan-response)))
  "Returns md5sum for a message object of type 'MoveItPlan-response"
  "eff4f39614e2625df73027e93071de20")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveItPlan-response>)))
  "Returns full string definition for message of type '<MoveItPlan-response>"
  (cl:format cl:nil "# message if the planning or execution was successful; this is displayed in the custom GUI.~%std_msgs/String msg~%~%# boolean to easily check if the planning or execution was successful.~%bool success~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveItPlan-response)))
  "Returns full string definition for message of type 'MoveItPlan-response"
  (cl:format cl:nil "# message if the planning or execution was successful; this is displayed in the custom GUI.~%std_msgs/String msg~%~%# boolean to easily check if the planning or execution was successful.~%bool success~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveItPlan-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'msg))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveItPlan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveItPlan-response
    (cl:cons ':msg (msg msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveItPlan)))
  'MoveItPlan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveItPlan)))
  'MoveItPlan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveItPlan)))
  "Returns string type for a service object of type '<MoveItPlan>"
  "interbotix_moveit_interface/MoveItPlan")