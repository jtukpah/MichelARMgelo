;; Auto-generated. Do not edit!


(when (boundp 'interbotix_xs_msgs::JointSingleCommand)
  (if (not (find-package "INTERBOTIX_XS_MSGS"))
    (make-package "INTERBOTIX_XS_MSGS"))
  (shadow 'JointSingleCommand (find-package "INTERBOTIX_XS_MSGS")))
(unless (find-package "INTERBOTIX_XS_MSGS::JOINTSINGLECOMMAND")
  (make-package "INTERBOTIX_XS_MSGS::JOINTSINGLECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude JointSingleCommand.msg.html


(defclass interbotix_xs_msgs::JointSingleCommand
  :super ros::object
  :slots (_name _cmd ))

(defmethod interbotix_xs_msgs::JointSingleCommand
  (:init
   (&key
    ((:name __name) "")
    ((:cmd __cmd) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _cmd (float __cmd))
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
    ;; float32 _cmd
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _cmd
       (sys::poke _cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _cmd
     (setq _cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get interbotix_xs_msgs::JointSingleCommand :md5sum-) "79b74399c9cdcc4c0be32d540424ed2e")
(setf (get interbotix_xs_msgs::JointSingleCommand :datatype-) "interbotix_xs_msgs/JointSingleCommand")
(setf (get interbotix_xs_msgs::JointSingleCommand :definition-)
      "# Command a desired joint. Note that the command is processed differently based on the joint's operating mode.
# For example, if a joint's operating mode is set to 'position', the command is interpreted as a position in radians

string name          # Name of joint
float32 cmd          # Joint command

")



(provide :interbotix_xs_msgs/JointSingleCommand "79b74399c9cdcc4c0be32d540424ed2e")


