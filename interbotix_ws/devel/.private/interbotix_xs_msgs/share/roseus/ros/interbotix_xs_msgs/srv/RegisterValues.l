;; Auto-generated. Do not edit!


(when (boundp 'interbotix_xs_msgs::RegisterValues)
  (if (not (find-package "INTERBOTIX_XS_MSGS"))
    (make-package "INTERBOTIX_XS_MSGS"))
  (shadow 'RegisterValues (find-package "INTERBOTIX_XS_MSGS")))
(unless (find-package "INTERBOTIX_XS_MSGS::REGISTERVALUES")
  (make-package "INTERBOTIX_XS_MSGS::REGISTERVALUES"))
(unless (find-package "INTERBOTIX_XS_MSGS::REGISTERVALUESREQUEST")
  (make-package "INTERBOTIX_XS_MSGS::REGISTERVALUESREQUEST"))
(unless (find-package "INTERBOTIX_XS_MSGS::REGISTERVALUESRESPONSE")
  (make-package "INTERBOTIX_XS_MSGS::REGISTERVALUESRESPONSE"))

(in-package "ROS")





(defclass interbotix_xs_msgs::RegisterValuesRequest
  :super ros::object
  :slots (_cmd_type _name _reg _value ))

(defmethod interbotix_xs_msgs::RegisterValuesRequest
  (:init
   (&key
    ((:cmd_type __cmd_type) "")
    ((:name __name) "")
    ((:reg __reg) "")
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _cmd_type (string __cmd_type))
   (setq _name (string __name))
   (setq _reg (string __reg))
   (setq _value (round __value))
   self)
  (:cmd_type
   (&optional __cmd_type)
   (if __cmd_type (setq _cmd_type __cmd_type)) _cmd_type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:reg
   (&optional __reg)
   (if __reg (setq _reg __reg)) _reg)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _cmd_type
    4 (length _cmd_type)
    ;; string _name
    4 (length _name)
    ;; string _reg
    4 (length _reg)
    ;; int32 _value
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
     ;; string _reg
       (write-long (length _reg) s) (princ _reg s)
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cmd_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _reg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass interbotix_xs_msgs::RegisterValuesResponse
  :super ros::object
  :slots (_values ))

(defmethod interbotix_xs_msgs::RegisterValuesResponse
  (:init
   (&key
    ((:values __values) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _values __values)
   self)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; int32[] _values
    (* 4    (length _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _values
     (write-long (length _values) s)
     (dotimes (i (length _values))
       (write-long (elt _values i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _values i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass interbotix_xs_msgs::RegisterValues
  :super ros::object
  :slots ())

(setf (get interbotix_xs_msgs::RegisterValues :md5sum-) "27940ff80d633a7a6df113cf798c0f70")
(setf (get interbotix_xs_msgs::RegisterValues :datatype-) "interbotix_xs_msgs/RegisterValues")
(setf (get interbotix_xs_msgs::RegisterValues :request) interbotix_xs_msgs::RegisterValuesRequest)
(setf (get interbotix_xs_msgs::RegisterValues :response) interbotix_xs_msgs::RegisterValuesResponse)

(defmethod interbotix_xs_msgs::RegisterValuesRequest
  (:response () (instance interbotix_xs_msgs::RegisterValuesResponse :init)))

(setf (get interbotix_xs_msgs::RegisterValuesRequest :md5sum-) "27940ff80d633a7a6df113cf798c0f70")
(setf (get interbotix_xs_msgs::RegisterValuesRequest :datatype-) "interbotix_xs_msgs/RegisterValuesRequest")
(setf (get interbotix_xs_msgs::RegisterValuesRequest :definition-)
      "# Set or get the register(s) value(s) from motor(s)
#
# To get familiar with the register values, go to...
# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/
# ...click on a motor model, and scroll down to the 'Control Table of RAM Area' section.

string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint
string name              # name of the group if commanding a joint group or joint if commanding a single joint
string reg               # register name (like Profile_Velocity, Profile_Acceleration, etc...)
int32 value              # desired register value (only set if 'setting' a register)
---
int32[] values           # current register values (only filled if 'getting' a register)

")

(setf (get interbotix_xs_msgs::RegisterValuesResponse :md5sum-) "27940ff80d633a7a6df113cf798c0f70")
(setf (get interbotix_xs_msgs::RegisterValuesResponse :datatype-) "interbotix_xs_msgs/RegisterValuesResponse")
(setf (get interbotix_xs_msgs::RegisterValuesResponse :definition-)
      "# Set or get the register(s) value(s) from motor(s)
#
# To get familiar with the register values, go to...
# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/
# ...click on a motor model, and scroll down to the 'Control Table of RAM Area' section.

string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint
string name              # name of the group if commanding a joint group or joint if commanding a single joint
string reg               # register name (like Profile_Velocity, Profile_Acceleration, etc...)
int32 value              # desired register value (only set if 'setting' a register)
---
int32[] values           # current register values (only filled if 'getting' a register)

")



(provide :interbotix_xs_msgs/RegisterValues "27940ff80d633a7a6df113cf798c0f70")


