;; Auto-generated. Do not edit!


(when (boundp 'interbotix_moveit_interface::MoveItPlan)
  (if (not (find-package "INTERBOTIX_MOVEIT_INTERFACE"))
    (make-package "INTERBOTIX_MOVEIT_INTERFACE"))
  (shadow 'MoveItPlan (find-package "INTERBOTIX_MOVEIT_INTERFACE")))
(unless (find-package "INTERBOTIX_MOVEIT_INTERFACE::MOVEITPLAN")
  (make-package "INTERBOTIX_MOVEIT_INTERFACE::MOVEITPLAN"))
(unless (find-package "INTERBOTIX_MOVEIT_INTERFACE::MOVEITPLANREQUEST")
  (make-package "INTERBOTIX_MOVEIT_INTERFACE::MOVEITPLANREQUEST"))
(unless (find-package "INTERBOTIX_MOVEIT_INTERFACE::MOVEITPLANRESPONSE")
  (make-package "INTERBOTIX_MOVEIT_INTERFACE::MOVEITPLANRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*CMD_PLAN_POSE*" (find-package "INTERBOTIX_MOVEIT_INTERFACE::MOVEITPLANREQUEST"))
(shadow '*CMD_PLAN_POSE* (find-package "INTERBOTIX_MOVEIT_INTERFACE::MOVEITPLANREQUEST"))
(defconstant interbotix_moveit_interface::MoveItPlanRequest::*CMD_PLAN_POSE* 1)
(intern "*CMD_PLAN_POSITION*" (find-package "INTERBOTIX_MOVEIT_INTERFACE::MOVEITPLANREQUEST"))
(shadow '*CMD_PLAN_POSITION* (find-package "INTERBOTIX_MOVEIT_INTERFACE::MOVEITPLANREQUEST"))
(defconstant interbotix_moveit_interface::MoveItPlanRequest::*CMD_PLAN_POSITION* 2)
(intern "*CMD_PLAN_ORIENTATION*" (find-package "INTERBOTIX_MOVEIT_INTERFACE::MOVEITPLANREQUEST"))
(shadow '*CMD_PLAN_ORIENTATION* (find-package "INTERBOTIX_MOVEIT_INTERFACE::MOVEITPLANREQUEST"))
(defconstant interbotix_moveit_interface::MoveItPlanRequest::*CMD_PLAN_ORIENTATION* 3)
(intern "*CMD_EXECUTE*" (find-package "INTERBOTIX_MOVEIT_INTERFACE::MOVEITPLANREQUEST"))
(shadow '*CMD_EXECUTE* (find-package "INTERBOTIX_MOVEIT_INTERFACE::MOVEITPLANREQUEST"))
(defconstant interbotix_moveit_interface::MoveItPlanRequest::*CMD_EXECUTE* 4)
(defclass interbotix_moveit_interface::MoveItPlanRequest
  :super ros::object
  :slots (_cmd _ee_pose ))

(defmethod interbotix_moveit_interface::MoveItPlanRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:ee_pose __ee_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _ee_pose __ee_pose)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:ee_pose
   (&rest __ee_pose)
   (if (keywordp (car __ee_pose))
       (send* _ee_pose __ee_pose)
     (progn
       (if __ee_pose (setq _ee_pose (car __ee_pose)))
       _ee_pose)))
  (:serialization-length
   ()
   (+
    ;; int8 _cmd
    1
    ;; geometry_msgs/Pose _ee_pose
    (send _ee_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _cmd
       (write-byte _cmd s)
     ;; geometry_msgs/Pose _ee_pose
       (send _ee_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _cmd
     (setq _cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cmd 127) (setq _cmd (- _cmd 256)))
   ;; geometry_msgs/Pose _ee_pose
     (send _ee_pose :deserialize buf ptr-) (incf ptr- (send _ee_pose :serialization-length))
   ;;
   self)
  )

(defclass interbotix_moveit_interface::MoveItPlanResponse
  :super ros::object
  :slots (_msg _success ))

(defmethod interbotix_moveit_interface::MoveItPlanResponse
  (:init
   (&key
    ((:msg __msg) (instance std_msgs::String :init))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _msg __msg)
   (setq _success __success)
   self)
  (:msg
   (&rest __msg)
   (if (keywordp (car __msg))
       (send* _msg __msg)
     (progn
       (if __msg (setq _msg (car __msg)))
       _msg)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _msg
    (send _msg :serialization-length)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _msg
       (send _msg :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _msg
     (send _msg :deserialize buf ptr-) (incf ptr- (send _msg :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass interbotix_moveit_interface::MoveItPlan
  :super ros::object
  :slots ())

(setf (get interbotix_moveit_interface::MoveItPlan :md5sum-) "eff4f39614e2625df73027e93071de20")
(setf (get interbotix_moveit_interface::MoveItPlan :datatype-) "interbotix_moveit_interface/MoveItPlan")
(setf (get interbotix_moveit_interface::MoveItPlan :request) interbotix_moveit_interface::MoveItPlanRequest)
(setf (get interbotix_moveit_interface::MoveItPlan :response) interbotix_moveit_interface::MoveItPlanResponse)

(defmethod interbotix_moveit_interface::MoveItPlanRequest
  (:response () (instance interbotix_moveit_interface::MoveItPlanResponse :init)))

(setf (get interbotix_moveit_interface::MoveItPlanRequest :md5sum-) "eff4f39614e2625df73027e93071de20")
(setf (get interbotix_moveit_interface::MoveItPlanRequest :datatype-) "interbotix_moveit_interface/MoveItPlanRequest")
(setf (get interbotix_moveit_interface::MoveItPlanRequest :definition-)
      "# Send commands to the moveit_plan server
#
# Enum values that define the commands available for the server. Note that all
# ee_poses (defined in the 'ee_arm_link' frame) are relative to the 'world' frame.
# There are 4 options:
#   1) CMD_PLAN_POSE - Desired ee_pose which is made up of a position and orientation element
#   2) CMD_PLAN_POSITION - Desired ee_position which is made up of a position element only; orientation is not constrained
#   3) CMD_PLAN_ORIENTATION - Desired ee_orientation which is made up of an orientation element only; position is not constrained
#   4) CMD_EXECUTE - Once a plan is available, this command executes the planned trajectory on the gazebo or physical robot
int8 CMD_PLAN_POSE = 1
int8 CMD_PLAN_POSITION = 2
int8 CMD_PLAN_ORIENTATION = 3
int8 CMD_EXECUTE = 4
int8 cmd

# desired ee_pose, position, or orientation
geometry_msgs/Pose ee_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
# message if the planning or execution was successful; this is displayed in the custom GUI.
std_msgs/String msg

# boolean to easily check if the planning or execution was successful.
bool success


================================================================================
MSG: std_msgs/String
string data
")

(setf (get interbotix_moveit_interface::MoveItPlanResponse :md5sum-) "eff4f39614e2625df73027e93071de20")
(setf (get interbotix_moveit_interface::MoveItPlanResponse :datatype-) "interbotix_moveit_interface/MoveItPlanResponse")
(setf (get interbotix_moveit_interface::MoveItPlanResponse :definition-)
      "# Send commands to the moveit_plan server
#
# Enum values that define the commands available for the server. Note that all
# ee_poses (defined in the 'ee_arm_link' frame) are relative to the 'world' frame.
# There are 4 options:
#   1) CMD_PLAN_POSE - Desired ee_pose which is made up of a position and orientation element
#   2) CMD_PLAN_POSITION - Desired ee_position which is made up of a position element only; orientation is not constrained
#   3) CMD_PLAN_ORIENTATION - Desired ee_orientation which is made up of an orientation element only; position is not constrained
#   4) CMD_EXECUTE - Once a plan is available, this command executes the planned trajectory on the gazebo or physical robot
int8 CMD_PLAN_POSE = 1
int8 CMD_PLAN_POSITION = 2
int8 CMD_PLAN_ORIENTATION = 3
int8 CMD_EXECUTE = 4
int8 cmd

# desired ee_pose, position, or orientation
geometry_msgs/Pose ee_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
# message if the planning or execution was successful; this is displayed in the custom GUI.
std_msgs/String msg

# boolean to easily check if the planning or execution was successful.
bool success


================================================================================
MSG: std_msgs/String
string data
")



(provide :interbotix_moveit_interface/MoveItPlan "eff4f39614e2625df73027e93071de20")


