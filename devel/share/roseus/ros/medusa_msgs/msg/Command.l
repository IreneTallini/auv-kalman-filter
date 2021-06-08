;; Auto-generated. Do not edit!


(when (boundp 'medusa_msgs::Command)
  (if (not (find-package "MEDUSA_MSGS"))
    (make-package "MEDUSA_MSGS"))
  (shadow 'Command (find-package "MEDUSA_MSGS")))
(unless (find-package "MEDUSA_MSGS::COMMAND")
  (make-package "MEDUSA_MSGS::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass medusa_msgs::Command
  :super ros::object
  :slots (_command ))

(defmethod medusa_msgs::Command
  (:init
   (&key
    ((:command __command) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _command __command)
   self)
  (:command
   (&rest __command)
   (if (keywordp (car __command))
       (send* _command __command)
     (progn
       (if __command (setq _command (car __command)))
       _command)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _command
    (send _command :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _command
       (send _command :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _command
     (send _command :deserialize buf ptr-) (incf ptr- (send _command :serialization-length))
   ;;
   self)
  )

(setf (get medusa_msgs::Command :md5sum-) "b45d65857bb7a4d869afeb1d0e4bf0c7")
(setf (get medusa_msgs::Command :datatype-) "medusa_msgs/Command")
(setf (get medusa_msgs::Command :definition-)
      "std_msgs/String command
================================================================================
MSG: std_msgs/String
string data

")



(provide :medusa_msgs/Command "b45d65857bb7a4d869afeb1d0e4bf0c7")


