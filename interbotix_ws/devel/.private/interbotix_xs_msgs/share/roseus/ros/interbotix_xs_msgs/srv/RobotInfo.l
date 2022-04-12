;; Auto-generated. Do not edit!


(when (boundp 'interbotix_xs_msgs::RobotInfo)
  (if (not (find-package "INTERBOTIX_XS_MSGS"))
    (make-package "INTERBOTIX_XS_MSGS"))
  (shadow 'RobotInfo (find-package "INTERBOTIX_XS_MSGS")))
(unless (find-package "INTERBOTIX_XS_MSGS::ROBOTINFO")
  (make-package "INTERBOTIX_XS_MSGS::ROBOTINFO"))
(unless (find-package "INTERBOTIX_XS_MSGS::ROBOTINFOREQUEST")
  (make-package "INTERBOTIX_XS_MSGS::ROBOTINFOREQUEST"))
(unless (find-package "INTERBOTIX_XS_MSGS::ROBOTINFORESPONSE")
  (make-package "INTERBOTIX_XS_MSGS::ROBOTINFORESPONSE"))

(in-package "ROS")





(defclass interbotix_xs_msgs::RobotInfoRequest
  :super ros::object
  :slots (_cmd_type _name ))

(defmethod interbotix_xs_msgs::RobotInfoRequest
  (:init
   (&key
    ((:cmd_type __cmd_type) "")
    ((:name __name) "")
    )
   (send-super :init)
   (setq _cmd_type (string __cmd_type))
   (setq _name (string __name))
   self)
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _cmd_type
    4 (length _cmd_type)
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cmd_type
       (write-long (length _cmd_type) s) (princ _cmd_type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cmd_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass interbotix_xs_msgs::RobotInfoResponse
  :super ros::object
  :slots (_mode _profile_type _joint_names _joint_ids _joint_lower_limits _joint_upper_limits _joint_velocity_limits _joint_sleep_positions _joint_state_indices _num_joints ))

(defmethod interbotix_xs_msgs::RobotInfoResponse
  (:init
   (&key
    ((:mode __mode) "")
    ((:profile_type __profile_type) "")
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:joint_ids __joint_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:joint_lower_limits __joint_lower_limits) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_upper_limits __joint_upper_limits) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_velocity_limits __joint_velocity_limits) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_sleep_positions __joint_sleep_positions) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_state_indices __joint_state_indices) (make-array 0 :initial-element 0 :element-type :integer))
    ((:num_joints __num_joints) 0)
    )
   (send-super :init)
   (setq _mode (string __mode))
   (setq _profile_type (string __profile_type))
   (setq _joint_names __joint_names)
   (setq _joint_ids __joint_ids)
   (setq _joint_lower_limits __joint_lower_limits)
   (setq _joint_upper_limits __joint_upper_limits)
   (setq _joint_velocity_limits __joint_velocity_limits)
   (setq _joint_sleep_positions __joint_sleep_positions)
   (setq _joint_state_indices __joint_state_indices)
   (setq _num_joints (round __num_joints))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:profile_type
   (&optional __profile_type)
   (if __profile_type (setq _profile_type __profile_type)) _profile_type)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:joint_ids
   (&optional __joint_ids)
   (if __joint_ids (setq _joint_ids __joint_ids)) _joint_ids)
  (:joint_lower_limits
   (&optional __joint_lower_limits)
   (if __joint_lower_limits (setq _joint_lower_limits __joint_lower_limits)) _joint_lower_limits)
  (:joint_upper_limits
   (&optional __joint_upper_limits)
   (if __joint_upper_limits (setq _joint_upper_limits __joint_upper_limits)) _joint_upper_limits)
  (:joint_velocity_limits
   (&optional __joint_velocity_limits)
   (if __joint_velocity_limits (setq _joint_velocity_limits __joint_velocity_limits)) _joint_velocity_limits)
  (:joint_sleep_positions
   (&optional __joint_sleep_positions)
   (if __joint_sleep_positions (setq _joint_sleep_positions __joint_sleep_positions)) _joint_sleep_positions)
  (:joint_state_indices
   (&optional __joint_state_indices)
   (if __joint_state_indices (setq _joint_state_indices __joint_state_indices)) _joint_state_indices)
  (:num_joints
   (&optional __num_joints)
   (if __num_joints (setq _num_joints __num_joints)) _num_joints)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ;; string _profile_type
    4 (length _profile_type)
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; int16[] _joint_ids
    (* 2    (length _joint_ids)) 4
    ;; float32[] _joint_lower_limits
    (* 4    (length _joint_lower_limits)) 4
    ;; float32[] _joint_upper_limits
    (* 4    (length _joint_upper_limits)) 4
    ;; float32[] _joint_velocity_limits
    (* 4    (length _joint_velocity_limits)) 4
    ;; float32[] _joint_sleep_positions
    (* 4    (length _joint_sleep_positions)) 4
    ;; int16[] _joint_state_indices
    (* 2    (length _joint_state_indices)) 4
    ;; int16 _num_joints
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; string _profile_type
       (write-long (length _profile_type) s) (princ _profile_type s)
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int16[] _joint_ids
     (write-long (length _joint_ids) s)
     (dotimes (i (length _joint_ids))
       (write-word (elt _joint_ids i) s)
       )
     ;; float32[] _joint_lower_limits
     (write-long (length _joint_lower_limits) s)
     (dotimes (i (length _joint_lower_limits))
       (sys::poke (elt _joint_lower_limits i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _joint_upper_limits
     (write-long (length _joint_upper_limits) s)
     (dotimes (i (length _joint_upper_limits))
       (sys::poke (elt _joint_upper_limits i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _joint_velocity_limits
     (write-long (length _joint_velocity_limits) s)
     (dotimes (i (length _joint_velocity_limits))
       (sys::poke (elt _joint_velocity_limits i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _joint_sleep_positions
     (write-long (length _joint_sleep_positions) s)
     (dotimes (i (length _joint_sleep_positions))
       (sys::poke (elt _joint_sleep_positions i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int16[] _joint_state_indices
     (write-long (length _joint_state_indices) s)
     (dotimes (i (length _joint_state_indices))
       (write-word (elt _joint_state_indices i) s)
       )
     ;; int16 _num_joints
       (write-word _num_joints s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _profile_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _profile_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int16[] _joint_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _joint_ids i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float32[] _joint_lower_limits
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_lower_limits (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_lower_limits i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _joint_upper_limits
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_upper_limits (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_upper_limits i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _joint_velocity_limits
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_velocity_limits (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_velocity_limits i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _joint_sleep_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_sleep_positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_sleep_positions i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int16[] _joint_state_indices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_state_indices (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _joint_state_indices i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16 _num_joints
     (setq _num_joints (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass interbotix_xs_msgs::RobotInfo
  :super ros::object
  :slots ())

(setf (get interbotix_xs_msgs::RobotInfo :md5sum-) "7a389566d99903aa71839d0052c9a055")
(setf (get interbotix_xs_msgs::RobotInfo :datatype-) "interbotix_xs_msgs/RobotInfo")
(setf (get interbotix_xs_msgs::RobotInfo :request) interbotix_xs_msgs::RobotInfoRequest)
(setf (get interbotix_xs_msgs::RobotInfo :response) interbotix_xs_msgs::RobotInfoResponse)

(defmethod interbotix_xs_msgs::RobotInfoRequest
  (:response () (instance interbotix_xs_msgs::RobotInfoResponse :init)))

(setf (get interbotix_xs_msgs::RobotInfoRequest :md5sum-) "7a389566d99903aa71839d0052c9a055")
(setf (get interbotix_xs_msgs::RobotInfoRequest :datatype-) "interbotix_xs_msgs/RobotInfoRequest")
(setf (get interbotix_xs_msgs::RobotInfoRequest :definition-)
      "# Get robot information
#
# Note that if a 'gripper' joint is specified, all information will be specified in terms of the 'left_finger' joint

string cmd_type                          # set to 'group' if requesting info about a joint group or 'single' if requesting info about a single joint
string name                              # the group name if requesting info about a group or the joint name if requesting info about a single joint
---
string mode                              # the operating mode for the specified joint group or joint
string profile_type                      # the profile type for the specified joint group or joint
string[] joint_names                     # the name of each joint in a group or just the specified joint
int16[] joint_ids                        # the Dynamixel ID for each joint in a group or for the specified joint
float32[] joint_lower_limits             # the lower limit [radians] for each joint in a group or for the specified joint (taken from URDF)
float32[] joint_upper_limits             # the upper limit [radians] for each joint in a group or for the specified joint (taken from URDF)
float32[] joint_velocity_limits          # the velocity limit [rad/s] for each joint in a group or for the specified joint (taken from URDF)
float32[] joint_sleep_positions          # the sleep position [rad] for each joint in a group or for the specified joint
int16[] joint_state_indices              # index for each joint in a group or for the specified joint in the published JointState message
int16 num_joints                         # the number of joints in a group or 1

")

(setf (get interbotix_xs_msgs::RobotInfoResponse :md5sum-) "7a389566d99903aa71839d0052c9a055")
(setf (get interbotix_xs_msgs::RobotInfoResponse :datatype-) "interbotix_xs_msgs/RobotInfoResponse")
(setf (get interbotix_xs_msgs::RobotInfoResponse :definition-)
      "# Get robot information
#
# Note that if a 'gripper' joint is specified, all information will be specified in terms of the 'left_finger' joint

string cmd_type                          # set to 'group' if requesting info about a joint group or 'single' if requesting info about a single joint
string name                              # the group name if requesting info about a group or the joint name if requesting info about a single joint
---
string mode                              # the operating mode for the specified joint group or joint
string profile_type                      # the profile type for the specified joint group or joint
string[] joint_names                     # the name of each joint in a group or just the specified joint
int16[] joint_ids                        # the Dynamixel ID for each joint in a group or for the specified joint
float32[] joint_lower_limits             # the lower limit [radians] for each joint in a group or for the specified joint (taken from URDF)
float32[] joint_upper_limits             # the upper limit [radians] for each joint in a group or for the specified joint (taken from URDF)
float32[] joint_velocity_limits          # the velocity limit [rad/s] for each joint in a group or for the specified joint (taken from URDF)
float32[] joint_sleep_positions          # the sleep position [rad] for each joint in a group or for the specified joint
int16[] joint_state_indices              # index for each joint in a group or for the specified joint in the published JointState message
int16 num_joints                         # the number of joints in a group or 1

")



(provide :interbotix_xs_msgs/RobotInfo "7a389566d99903aa71839d0052c9a055")


