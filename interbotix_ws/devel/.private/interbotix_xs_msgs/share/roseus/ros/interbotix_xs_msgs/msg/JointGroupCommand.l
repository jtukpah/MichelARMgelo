;; Auto-generated. Do not edit!


(when (boundp 'interbotix_xs_msgs::JointGroupCommand)
  (if (not (find-package "INTERBOTIX_XS_MSGS"))
    (make-package "INTERBOTIX_XS_MSGS"))
  (shadow 'JointGroupCommand (find-package "INTERBOTIX_XS_MSGS")))
(unless (find-package "INTERBOTIX_XS_MSGS::JOINTGROUPCOMMAND")
  (make-package "INTERBOTIX_XS_MSGS::JOINTGROUPCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude JointGroupCommand.msg.html


(defclass interbotix_xs_msgs::JointGroupCommand
  :super ros::object
  :slots (_name _cmd ))

(defmethod interbotix_xs_msgs::JointGroupCommand
  (:init
   (&key
    ((:name __name) "")
    ((:cmd __cmd) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _cmd __cmd)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32[] _cmd
    (* 4    (length _cmd)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32[] _cmd
     (write-long (length _cmd) s)
     (dotimes (i (length _cmd))
       (sys::poke (elt _cmd i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _cmd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cmd (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cmd i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get interbotix_xs_msgs::JointGroupCommand :md5sum-) "fa54c229b7238fc905e59a51a526f379")
(setf (get interbotix_xs_msgs::JointGroupCommand :datatype-) "interbotix_xs_msgs/JointGroupCommand")
(setf (get interbotix_xs_msgs::JointGroupCommand :definition-)
      "# Command the joints in the specified joint group. Note that the commands are processed differently based on the group's operating mode.
# For example, if a group's operating mode is set to 'position', the commands are interpreted as positions in radians

string name            # Name of joint group
float32[] cmd          # List of joint commands; order is dictated by the index of each joint name for the given group in the 'groups' section of a 'motor_config' yaml file

")



(provide :interbotix_xs_msgs/JointGroupCommand "fa54c229b7238fc905e59a51a526f379")


