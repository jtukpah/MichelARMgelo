; Auto-generated. Do not edit!


(cl:in-package interbotix_xs_msgs-msg)


;//! \htmlinclude JointTemps.msg.html

(cl:defclass <JointTemps> (roslisp-msg-protocol:ros-message)
  ((names
    :reader names
    :initarg :names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (temps
    :reader temps
    :initarg :temps
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass JointTemps (<JointTemps>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointTemps>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointTemps)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_xs_msgs-msg:<JointTemps> is deprecated: use interbotix_xs_msgs-msg:JointTemps instead.")))

(cl:ensure-generic-function 'names-val :lambda-list '(m))
(cl:defmethod names-val ((m <JointTemps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:names-val is deprecated.  Use interbotix_xs_msgs-msg:names instead.")
  (names m))

(cl:ensure-generic-function 'temps-val :lambda-list '(m))
(cl:defmethod temps-val ((m <JointTemps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-msg:temps-val is deprecated.  Use interbotix_xs_msgs-msg:temps instead.")
  (temps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointTemps>) ostream)
  "Serializes a message object of type '<JointTemps>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'temps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'temps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointTemps>) istream)
  "Deserializes a message object of type '<JointTemps>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'temps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'temps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointTemps>)))
  "Returns string type for a message object of type '<JointTemps>"
  "interbotix_xs_msgs/JointTemps")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointTemps)))
  "Returns string type for a message object of type 'JointTemps"
  "interbotix_xs_msgs/JointTemps")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointTemps>)))
  "Returns md5sum for a message object of type '<JointTemps>"
  "2c3b043513eb09ccdff55ab4d97383c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointTemps)))
  "Returns md5sum for a message object of type 'JointTemps"
  "2c3b043513eb09ccdff55ab4d97383c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointTemps>)))
  "Returns full string definition for message of type '<JointTemps>"
  (cl:format cl:nil "# This message is used specifically in the interbotix_xsarm_diagnostic_tool package~%~%# Holds the temperatures [C] for the specified joints~%~%string[] names~%int32[] temps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointTemps)))
  "Returns full string definition for message of type 'JointTemps"
  (cl:format cl:nil "# This message is used specifically in the interbotix_xsarm_diagnostic_tool package~%~%# Holds the temperatures [C] for the specified joints~%~%string[] names~%int32[] temps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointTemps>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'temps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointTemps>))
  "Converts a ROS message object to a list"
  (cl:list 'JointTemps
    (cl:cons ':names (names msg))
    (cl:cons ':temps (temps msg))
))
