;; Auto-generated. Do not edit!


(when (boundp 'interbotix_xs_msgs::OperatingModes)
  (if (not (find-package "INTERBOTIX_XS_MSGS"))
    (make-package "INTERBOTIX_XS_MSGS"))
  (shadow 'OperatingModes (find-package "INTERBOTIX_XS_MSGS")))
(unless (find-package "INTERBOTIX_XS_MSGS::OPERATINGMODES")
  (make-package "INTERBOTIX_XS_MSGS::OPERATINGMODES"))
(unless (find-package "INTERBOTIX_XS_MSGS::OPERATINGMODESREQUEST")
  (make-package "INTERBOTIX_XS_MSGS::OPERATINGMODESREQUEST"))
(unless (find-package "INTERBOTIX_XS_MSGS::OPERATINGMODESRESPONSE")
  (make-package "INTERBOTIX_XS_MSGS::OPERATINGMODESRESPONSE"))

(in-package "ROS")





(defclass interbotix_xs_msgs::OperatingModesRequest
  :super ros::object
  :slots (_cmd_type _name _mode _profile_type _profile_velocity _profile_acceleration ))

(defmethod interbotix_xs_msgs::OperatingModesRequest
  (:init
   (&key
    ((:cmd_type __cmd_type) "")
    ((:name __name) "")
    ((:mode __mode) "")
    ((:profile_type __profile_type) "")
    ((:profile_velocity __profile_velocity) 0)
    ((:profile_acceleration __profile_acceleration) 0)
    )
   (send-super :init)
   (setq _cmd_type (string __cmd_type))
   (setq _name (string __name))
   (setq _mode (string __mode))
   (setq _profile_type (string __profile_type))
   (setq _profile_velocity (round __profile_velocity))
   (setq _profile_acceleration (round __profile_acceleration))
   self)
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:profile_type
   (&optional __profile_type)
   (if __profile_type (setq _profile_type __profile_type)) _profile_type)
  (:profile_velocity
   (&optional __profile_velocity)
   (if __profile_velocity (setq _profile_velocity __profile_velocity)) _profile_velocity)
  (:profile_acceleration
   (&optional __profile_acceleration)
   (if __profile_acceleration (setq _profile_acceleration __profile_acceleration)) _profile_acceleration)
  (:serialization-length
   ()
   (+
    ;; string _cmd_type
    4 (length _cmd_type)
    ;; string _name
    4 (length _name)
    ;; string _mode
    4 (length _mode)
    ;; string _profile_type
    4 (length _profile_type)
    ;; int32 _profile_velocity
    4
    ;; int32 _profile_acceleration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cmd_type
       (write-long (length _cmd_type) s) (princ _cmd_type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; string _profile_type
       (write-long (length _profile_type) s) (princ _profile_type s)
     ;; int32 _profile_velocity
       (write-long _profile_velocity s)
     ;; int32 _profile_acceleration
       (write-long _profile_acceleration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cmd_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _profile_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _profile_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _profile_velocity
     (setq _profile_velocity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _profile_acceleration
     (setq _profile_acceleration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass interbotix_xs_msgs::OperatingModesResponse
  :super ros::object
  :slots ())

(defmethod interbotix_xs_msgs::OperatingModesResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass interbotix_xs_msgs::OperatingModes
  :super ros::object
  :slots ())

(setf (get interbotix_xs_msgs::OperatingModes :md5sum-) "cb68bef3d517c840b0a5cc0f73d64e36")
(setf (get interbotix_xs_msgs::OperatingModes :datatype-) "interbotix_xs_msgs/OperatingModes")
(setf (get interbotix_xs_msgs::OperatingModes :request) interbotix_xs_msgs::OperatingModesRequest)
(setf (get interbotix_xs_msgs::OperatingModes :response) interbotix_xs_msgs::OperatingModesResponse)

(defmethod interbotix_xs_msgs::OperatingModesRequest
  (:response () (instance interbotix_xs_msgs::OperatingModesResponse :init)))

(setf (get interbotix_xs_msgs::OperatingModesRequest :md5sum-) "cb68bef3d517c840b0a5cc0f73d64e36")
(setf (get interbotix_xs_msgs::OperatingModesRequest :datatype-) "interbotix_xs_msgs/OperatingModesRequest")
(setf (get interbotix_xs_msgs::OperatingModesRequest :definition-)
      "# Set Operating Modes
#
# To get familiar with the various operating modes, go to...
# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/
# ...click on a motor model, and scroll down to the 'Operating Mode' section.
#
# There are 6 valid operating modes. They are...
#   \"position\" - allows up to 1 complete joint revolution (perfect for arm joints); units are in radians
#   \"ext_position\" - allows up to 512 joint revolutions; units are in radians
#   \"velocity\" - allows infinite number of rotations (perfect for wheeled robots); units are in rad/s
#   \"current\" - allows infinite number of rotations (perfect for grippers); units are in milliamps
#   \"current_based_position\" - allows up to 512 joint revolutions; units are in radians
#   \"pwm\" - allows infinite number of rotations (perfect for grippers); units are in PWM
#
# Note that the interbotix_xs_sdk offers one other 'pseudo' operating mode that can be useful in controlling Interbotix Grippers - called \"linear_position\".
# Behind the scenes, it uses the \"position\" operating mode mentioned above. The main difference is that with this mode, a desired linear distance [m]
# between the two gripper fingers can be commanded. In the \"position\" mode though, only the angular position of the motor can be commanded.
#
# There are 2 valid profile types - either 'time' or 'velocity'. Depending on which is chosen, the following parameters behave differently.
#
# 1) profile_velocity: acts as a pass-through to the Profile_Velocity register and operates in one of two ways. If
#    'profile_type' is set to 'velocity', this parameter describes the max velocity limit for the specified joint(s);
#    for example, if doing 'position' control, setting this to '131' would be equivalent to a limit of 3.14 rad/s; if
#    'profile_type' is set to 'time', this parameter sets the time span (in milliseconds) that it should take for the
#    specified joint(s) to move; to have an 'infinite' max limit, set to '0'.
#
# 2) profile_acceleration: acts as a pass-through to the Profile_Acceleration register and operates in one of two ways. If
#    'profile_type' is set to 'velocity', this parameter describes the max acceleration limit for the specified joint(s);
#    for example, if doing 'position' or 'velocity' control, setting this to '15' would be equivalent to a limit of 5.6 rad/s^2;
#    if 'profile_type' is set to 'time', this parameter sets the time span (in milliseconds) that it should take for the
#    specified joint(s) to accelerate; to have an 'infinite' max limit, set to '0'.

string cmd_type                     # set to 'group' if commanding a joint group or 'single' if commanding a single joint
string name                         # name of the group if commanding a joint group or joint if commanding a single joint
string mode                         # desired operating mode as described above
string profile_type                 # desired 'profile' type - either 'time' or 'velocity' as described above
int32 profile_velocity              # desired velocity profile as explained above - only used in 'position' or the 'ext_position' control modes
int32 profile_acceleration          # desired acceleration profile as explained above - used in all modes except for 'current' and 'pwm' control
---

")

(setf (get interbotix_xs_msgs::OperatingModesResponse :md5sum-) "cb68bef3d517c840b0a5cc0f73d64e36")
(setf (get interbotix_xs_msgs::OperatingModesResponse :datatype-) "interbotix_xs_msgs/OperatingModesResponse")
(setf (get interbotix_xs_msgs::OperatingModesResponse :definition-)
      "# Set Operating Modes
#
# To get familiar with the various operating modes, go to...
# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/
# ...click on a motor model, and scroll down to the 'Operating Mode' section.
#
# There are 6 valid operating modes. They are...
#   \"position\" - allows up to 1 complete joint revolution (perfect for arm joints); units are in radians
#   \"ext_position\" - allows up to 512 joint revolutions; units are in radians
#   \"velocity\" - allows infinite number of rotations (perfect for wheeled robots); units are in rad/s
#   \"current\" - allows infinite number of rotations (perfect for grippers); units are in milliamps
#   \"current_based_position\" - allows up to 512 joint revolutions; units are in radians
#   \"pwm\" - allows infinite number of rotations (perfect for grippers); units are in PWM
#
# Note that the interbotix_xs_sdk offers one other 'pseudo' operating mode that can be useful in controlling Interbotix Grippers - called \"linear_position\".
# Behind the scenes, it uses the \"position\" operating mode mentioned above. The main difference is that with this mode, a desired linear distance [m]
# between the two gripper fingers can be commanded. In the \"position\" mode though, only the angular position of the motor can be commanded.
#
# There are 2 valid profile types - either 'time' or 'velocity'. Depending on which is chosen, the following parameters behave differently.
#
# 1) profile_velocity: acts as a pass-through to the Profile_Velocity register and operates in one of two ways. If
#    'profile_type' is set to 'velocity', this parameter describes the max velocity limit for the specified joint(s);
#    for example, if doing 'position' control, setting this to '131' would be equivalent to a limit of 3.14 rad/s; if
#    'profile_type' is set to 'time', this parameter sets the time span (in milliseconds) that it should take for the
#    specified joint(s) to move; to have an 'infinite' max limit, set to '0'.
#
# 2) profile_acceleration: acts as a pass-through to the Profile_Acceleration register and operates in one of two ways. If
#    'profile_type' is set to 'velocity', this parameter describes the max acceleration limit for the specified joint(s);
#    for example, if doing 'position' or 'velocity' control, setting this to '15' would be equivalent to a limit of 5.6 rad/s^2;
#    if 'profile_type' is set to 'time', this parameter sets the time span (in milliseconds) that it should take for the
#    specified joint(s) to accelerate; to have an 'infinite' max limit, set to '0'.

string cmd_type                     # set to 'group' if commanding a joint group or 'single' if commanding a single joint
string name                         # name of the group if commanding a joint group or joint if commanding a single joint
string mode                         # desired operating mode as described above
string profile_type                 # desired 'profile' type - either 'time' or 'velocity' as described above
int32 profile_velocity              # desired velocity profile as explained above - only used in 'position' or the 'ext_position' control modes
int32 profile_acceleration          # desired acceleration profile as explained above - used in all modes except for 'current' and 'pwm' control
---

")



(provide :interbotix_xs_msgs/OperatingModes "cb68bef3d517c840b0a5cc0f73d64e36")


