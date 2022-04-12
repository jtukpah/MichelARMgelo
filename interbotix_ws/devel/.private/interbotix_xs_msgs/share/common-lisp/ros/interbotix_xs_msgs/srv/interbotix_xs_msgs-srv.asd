
(cl:in-package :asdf)

(defsystem "interbotix_xs_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MotorGains" :depends-on ("_package_MotorGains"))
    (:file "_package_MotorGains" :depends-on ("_package"))
    (:file "OperatingModes" :depends-on ("_package_OperatingModes"))
    (:file "_package_OperatingModes" :depends-on ("_package"))
    (:file "Reboot" :depends-on ("_package_Reboot"))
    (:file "_package_Reboot" :depends-on ("_package"))
    (:file "RegisterValues" :depends-on ("_package_RegisterValues"))
    (:file "_package_RegisterValues" :depends-on ("_package"))
    (:file "RobotInfo" :depends-on ("_package_RobotInfo"))
    (:file "_package_RobotInfo" :depends-on ("_package"))
    (:file "TorqueEnable" :depends-on ("_package_TorqueEnable"))
    (:file "_package_TorqueEnable" :depends-on ("_package"))
  ))