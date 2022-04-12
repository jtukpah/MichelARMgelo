;; Auto-generated. Do not edit!


(when (boundp 'interbotix_xs_msgs::MotorGains)
  (if (not (find-package "INTERBOTIX_XS_MSGS"))
    (make-package "INTERBOTIX_XS_MSGS"))
  (shadow 'MotorGains (find-package "INTERBOTIX_XS_MSGS")))
(unless (find-package "INTERBOTIX_XS_MSGS::MOTORGAINS")
  (make-package "INTERBOTIX_XS_MSGS::MOTORGAINS"))
(unless (find-package "INTERBOTIX_XS_MSGS::MOTORGAINSREQUEST")
  (make-package "INTERBOTIX_XS_MSGS::MOTORGAINSREQUEST"))
(unless (find-package "INTERBOTIX_XS_MSGS::MOTORGAINSRESPONSE")
  (make-package "INTERBOTIX_XS_MSGS::MOTORGAINSRESPONSE"))

(in-package "ROS")





(defclass interbotix_xs_msgs::MotorGainsRequest
  :super ros::object
  :slots (_cmd_type _name _kp_pos _ki_pos _kd_pos _k1 _k2 _kp_vel _ki_vel ))

(defmethod interbotix_xs_msgs::MotorGainsRequest
  (:init
   (&key
    ((:cmd_type __cmd_type) "")
    ((:name __name) "")
    ((:kp_pos __kp_pos) 0)
    ((:ki_pos __ki_pos) 0)
    ((:kd_pos __kd_pos) 0)
    ((:k1 __k1) 0)
    ((:k2 __k2) 0)
    ((:kp_vel __kp_vel) 0)
    ((:ki_vel __ki_vel) 0)
    )
   (send-super :init)
   (setq _cmd_type (string __cmd_type))
   (setq _name (string __name))
   (setq _kp_pos (round __kp_pos))
   (setq _ki_pos (round __ki_pos))
   (setq _kd_pos (round __kd_pos))
   (setq _k1 (round __k1))
   (setq _k2 (round __k2))
   (setq _kp_vel (round __kp_vel))
   (setq _ki_vel (round __ki_vel))
   self)
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:kp_pos
   (&optional __kp_pos)
   (if __kp_pos (setq _kp_pos __kp_pos)) _kp_pos)
  (:ki_pos
   (&optional __ki_pos)
   (if __ki_pos (setq _ki_pos __ki_pos)) _ki_pos)
  (:kd_pos
   (&optional __kd_pos)
   (if __kd_pos (setq _kd_pos __kd_pos)) _kd_pos)
  (:k1
   (&optional __k1)
   (if __k1 (setq _k1 __k1)) _k1)
  (:k2
   (&optional __k2)
   (if __k2 (setq _k2 __k2)) _k2)
  (:kp_vel
   (&optional __kp_vel)
   (if __kp_vel (setq _kp_vel __kp_vel)) _kp_vel)
  (:ki_vel
   (&optional __ki_vel)
   (if __ki_vel (setq _ki_vel __ki_vel)) _ki_vel)
  (:serialization-length
   ()
   (+
    ;; string _cmd_type
    4 (length _cmd_type)
    ;; string _name
    4 (length _name)
    ;; int32 _kp_pos
    4
    ;; int32 _ki_pos
    4
    ;; int32 _kd_pos
    4
    ;; int32 _k1
    4
    ;; int32 _k2
    4
    ;; int32 _kp_vel
    4
    ;; int32 _ki_vel
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
     ;; int32 _kp_pos
       (write-long _kp_pos s)
     ;; int32 _ki_pos
       (write-long _ki_pos s)
     ;; int32 _kd_pos
       (write-long _kd_pos s)
     ;; int32 _k1
       (write-long _k1 s)
     ;; int32 _k2
       (write-long _k2 s)
     ;; int32 _kp_vel
       (write-long _kp_vel s)
     ;; int32 _ki_vel
       (write-long _ki_vel s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cmd_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _kp_pos
     (setq _kp_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ki_pos
     (setq _ki_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _kd_pos
     (setq _kd_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _k1
     (setq _k1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _k2
     (setq _k2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _kp_vel
     (setq _kp_vel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ki_vel
     (setq _ki_vel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass interbotix_xs_msgs::MotorGainsResponse
  :super ros::object
  :slots ())

(defmethod interbotix_xs_msgs::MotorGainsResponse
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

(defclass interbotix_xs_msgs::MotorGains
  :super ros::object
  :slots ())

(setf (get interbotix_xs_msgs::MotorGains :md5sum-) "7c362297bf8bae149936ba71305f3900")
(setf (get interbotix_xs_msgs::MotorGains :datatype-) "interbotix_xs_msgs/MotorGains")
(setf (get interbotix_xs_msgs::MotorGains :request) interbotix_xs_msgs::MotorGainsRequest)
(setf (get interbotix_xs_msgs::MotorGains :response) interbotix_xs_msgs::MotorGainsResponse)

(defmethod interbotix_xs_msgs::MotorGainsRequest
  (:response () (instance interbotix_xs_msgs::MotorGainsResponse :init)))

(setf (get interbotix_xs_msgs::MotorGainsRequest :md5sum-) "7c362297bf8bae149936ba71305f3900")
(setf (get interbotix_xs_msgs::MotorGainsRequest :datatype-) "interbotix_xs_msgs/MotorGainsRequest")
(setf (get interbotix_xs_msgs::MotorGainsRequest :definition-)
      "# Set PID gains
#
# To get familiar with the various PID gains, go to...
# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/
# ...click on a motor model, and scroll down to the 'PID' section.

string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint
string name              # name of the group if commanding a joint group or joint if commanding a single joint
int32 kp_pos             # acts as a pass-through to the Position_P_Gain register
int32 ki_pos             # acts as a pass-through to the Position_I_Gain register
int32 kd_pos             # acts as a pass-through to the Position_D_Gain register
int32 k1                 # acts as a pass-through to the Feedforward_1st_Gain register
int32 k2                 # acts as a pass-through to the Feedforward_2nd_Gain register
int32 kp_vel             # acts as a pass-through to the Velocity_P_Gain register
int32 ki_vel             # acts as a pass-through to the Velocity_I_Gain register
---

")

(setf (get interbotix_xs_msgs::MotorGainsResponse :md5sum-) "7c362297bf8bae149936ba71305f3900")
(setf (get interbotix_xs_msgs::MotorGainsResponse :datatype-) "interbotix_xs_msgs/MotorGainsResponse")
(setf (get interbotix_xs_msgs::MotorGainsResponse :definition-)
      "# Set PID gains
#
# To get familiar with the various PID gains, go to...
# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/
# ...click on a motor model, and scroll down to the 'PID' section.

string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint
string name              # name of the group if commanding a joint group or joint if commanding a single joint
int32 kp_pos             # acts as a pass-through to the Position_P_Gain register
int32 ki_pos             # acts as a pass-through to the Position_I_Gain register
int32 kd_pos             # acts as a pass-through to the Position_D_Gain register
int32 k1                 # acts as a pass-through to the Feedforward_1st_Gain register
int32 k2                 # acts as a pass-through to the Feedforward_2nd_Gain register
int32 kp_vel             # acts as a pass-through to the Velocity_P_Gain register
int32 ki_vel             # acts as a pass-through to the Velocity_I_Gain register
---

")



(provide :interbotix_xs_msgs/MotorGains "7c362297bf8bae149936ba71305f3900")


