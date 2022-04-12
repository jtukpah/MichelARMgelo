;; Auto-generated. Do not edit!


(when (boundp 'interbotix_xs_msgs::JointTrajectoryCommand)
  (if (not (find-package "INTERBOTIX_XS_MSGS"))
    (make-package "INTERBOTIX_XS_MSGS"))
  (shadow 'JointTrajectoryCommand (find-package "INTERBOTIX_XS_MSGS")))
(unless (find-package "INTERBOTIX_XS_MSGS::JOINTTRAJECTORYCOMMAND")
  (make-package "INTERBOTIX_XS_MSGS::JOINTTRAJECTORYCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude JointTrajectoryCommand.msg.html
(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass interbotix_xs_msgs::JointTrajectoryCommand
  :super ros::object
  :slots (_cmd_type _name _traj ))

(defmethod interbotix_xs_msgs::JointTrajectoryCommand
  (:init
   (&key
    ((:cmd_type __cmd_type) "")
    ((:name __name) "")
    ((:traj __traj) (instance trajectory_msgs::JointTrajectory :init))
    )
   (send-super :init)
   (setq _cmd_type (string __cmd_type))
   (setq _name (string __name))
   (setq _traj __traj)
   self)
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:traj
   (&rest __traj)
   (if (keywordp (car __traj))
       (send* _traj __traj)
     (progn
       (if __traj (setq _traj (car __traj)))
       _traj)))
  (:serialization-length
   ()
   (+
    ;; string _cmd_type
    4 (length _cmd_type)
    ;; string _name
    4 (length _name)
    ;; trajectory_msgs/JointTrajectory _traj
    (send _traj :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cmd_type
       (write-long (length _cmd_type) s) (princ _cmd_type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; trajectory_msgs/JointTrajectory _traj
       (send _traj :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cmd_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; trajectory_msgs/JointTrajectory _traj
     (send _traj :deserialize buf ptr-) (incf ptr- (send _traj :serialization-length))
   ;;
   self)
  )

(setf (get interbotix_xs_msgs::JointTrajectoryCommand :md5sum-) "039c1a8f9200d555267cf39243b5e969")
(setf (get interbotix_xs_msgs::JointTrajectoryCommand :datatype-) "interbotix_xs_msgs/JointTrajectoryCommand")
(setf (get interbotix_xs_msgs::JointTrajectoryCommand :definition-)
      "# Command a joint trajectory to the desired joint(s). Note that the commands are processed differently based on the currently set operating mode.
# For example, if the operating mode is set to 'position', the commands are interpreted as positions in radians

string cmd_type                               # set to 'single' for a single joint or 'group' for a group of joints
string name                                   # joint group name if 'cmd_type' is set to 'group' or joint name if 'cmd_type' is set to 'single'
trajectory_msgs/JointTrajectory traj          # ROS trajectory message

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

")



(provide :interbotix_xs_msgs/JointTrajectoryCommand "039c1a8f9200d555267cf39243b5e969")


