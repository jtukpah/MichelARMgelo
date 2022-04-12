; Auto-generated. Do not edit!


(cl:in-package interbotix_xs_msgs-srv)


;//! \htmlinclude Reboot-request.msg.html

(cl:defclass <Reboot-request> (roslisp-msg-protocol:ros-message)
  ((cmd_type
    :reader cmd_type
    :initarg :cmd_type
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (smart_reboot
    :reader smart_reboot
    :initarg :smart_reboot
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Reboot-request (<Reboot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reboot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reboot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_xs_msgs-srv:<Reboot-request> is deprecated: use interbotix_xs_msgs-srv:Reboot-request instead.")))

(cl:ensure-generic-function 'cmd_type-val :lambda-list '(m))
(cl:defmethod cmd_type-val ((m <Reboot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:cmd_type-val is deprecated.  Use interbotix_xs_msgs-srv:cmd_type instead.")
  (cmd_type m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Reboot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:name-val is deprecated.  Use interbotix_xs_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <Reboot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:enable-val is deprecated.  Use interbotix_xs_msgs-srv:enable instead.")
  (enable m))

(cl:ensure-generic-function 'smart_reboot-val :lambda-list '(m))
(cl:defmethod smart_reboot-val ((m <Reboot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interbotix_xs_msgs-srv:smart_reboot-val is deprecated.  Use interbotix_xs_msgs-srv:smart_reboot instead.")
  (smart_reboot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reboot-request>) ostream)
  "Serializes a message object of type '<Reboot-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'smart_reboot) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reboot-request>) istream)
  "Deserializes a message object of type '<Reboot-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'smart_reboot) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reboot-request>)))
  "Returns string type for a service object of type '<Reboot-request>"
  "interbotix_xs_msgs/RebootRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reboot-request)))
  "Returns string type for a service object of type 'Reboot-request"
  "interbotix_xs_msgs/RebootRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reboot-request>)))
  "Returns md5sum for a message object of type '<Reboot-request>"
  "229067e7bfb48bf403b702d5f7f1ee93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reboot-request)))
  "Returns md5sum for a message object of type 'Reboot-request"
  "229067e7bfb48bf403b702d5f7f1ee93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reboot-request>)))
  "Returns full string definition for message of type '<Reboot-request>"
  (cl:format cl:nil "# Reboot motors~%#~%# Note that if a dual-joint is selected, both motors will be rebooted. Also note~%# that motors will NOT hold position during the reboot process. Additionally, only~%# EEPROM registers will retain their values, but RAM registers will not. See details~%# at https://emanual.robotis.com/docs/en/dxl/x/xm430-w350/#area-eeprom-ram~%~%string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint~%string name              # name of the group if commanding a joint group or joint if commanding a single joint~%bool enable              # whether to torque the selected joints on after reboot~%bool smart_reboot        # set to true to only reboot motors in a specified group that are in an error state~%                         # (as opposed to a blanket reboot of all motors in said group)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reboot-request)))
  "Returns full string definition for message of type 'Reboot-request"
  (cl:format cl:nil "# Reboot motors~%#~%# Note that if a dual-joint is selected, both motors will be rebooted. Also note~%# that motors will NOT hold position during the reboot process. Additionally, only~%# EEPROM registers will retain their values, but RAM registers will not. See details~%# at https://emanual.robotis.com/docs/en/dxl/x/xm430-w350/#area-eeprom-ram~%~%string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint~%string name              # name of the group if commanding a joint group or joint if commanding a single joint~%bool enable              # whether to torque the selected joints on after reboot~%bool smart_reboot        # set to true to only reboot motors in a specified group that are in an error state~%                         # (as opposed to a blanket reboot of all motors in said group)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reboot-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd_type))
     4 (cl:length (cl:slot-value msg 'name))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reboot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Reboot-request
    (cl:cons ':cmd_type (cmd_type msg))
    (cl:cons ':name (name msg))
    (cl:cons ':enable (enable msg))
    (cl:cons ':smart_reboot (smart_reboot msg))
))
;//! \htmlinclude Reboot-response.msg.html

(cl:defclass <Reboot-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Reboot-response (<Reboot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reboot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reboot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interbotix_xs_msgs-srv:<Reboot-response> is deprecated: use interbotix_xs_msgs-srv:Reboot-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reboot-response>) ostream)
  "Serializes a message object of type '<Reboot-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reboot-response>) istream)
  "Deserializes a message object of type '<Reboot-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reboot-response>)))
  "Returns string type for a service object of type '<Reboot-response>"
  "interbotix_xs_msgs/RebootResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reboot-response)))
  "Returns string type for a service object of type 'Reboot-response"
  "interbotix_xs_msgs/RebootResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reboot-response>)))
  "Returns md5sum for a message object of type '<Reboot-response>"
  "229067e7bfb48bf403b702d5f7f1ee93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reboot-response)))
  "Returns md5sum for a message object of type 'Reboot-response"
  "229067e7bfb48bf403b702d5f7f1ee93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reboot-response>)))
  "Returns full string definition for message of type '<Reboot-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reboot-response)))
  "Returns full string definition for message of type 'Reboot-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reboot-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reboot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Reboot-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Reboot)))
  'Reboot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Reboot)))
  'Reboot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reboot)))
  "Returns string type for a service object of type '<Reboot>"
  "interbotix_xs_msgs/Reboot")