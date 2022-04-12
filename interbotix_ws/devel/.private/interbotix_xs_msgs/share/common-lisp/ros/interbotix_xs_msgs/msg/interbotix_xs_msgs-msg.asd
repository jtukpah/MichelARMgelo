
(cl:in-package :asdf)

(defsystem "interbotix_xs_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :trajectory_msgs-msg
)
  :components ((:file "_package")
    (:file "ArmJoy" :depends-on ("_package_ArmJoy"))
    (:file "_package_ArmJoy" :depends-on ("_package"))
    (:file "HexJoy" :depends-on ("_package_HexJoy"))
    (:file "_package_HexJoy" :depends-on ("_package"))
    (:file "JointGroupCommand" :depends-on ("_package_JointGroupCommand"))
    (:file "_package_JointGroupCommand" :depends-on ("_package"))
    (:file "JointSingleCommand" :depends-on ("_package_JointSingleCommand"))
    (:file "_package_JointSingleCommand" :depends-on ("_package"))
    (:file "JointTemps" :depends-on ("_package_JointTemps"))
    (:file "_package_JointTemps" :depends-on ("_package"))
    (:file "JointTrajectoryCommand" :depends-on ("_package_JointTrajectoryCommand"))
    (:file "_package_JointTrajectoryCommand" :depends-on ("_package"))
    (:file "LocobotJoy" :depends-on ("_package_LocobotJoy"))
    (:file "_package_LocobotJoy" :depends-on ("_package"))
    (:file "TurretJoy" :depends-on ("_package_TurretJoy"))
    (:file "_package_TurretJoy" :depends-on ("_package"))
  ))