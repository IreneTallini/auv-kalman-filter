;; Auto-generated. Do not edit!


(when (boundp 'medusa_msgs::List)
  (if (not (find-package "MEDUSA_MSGS"))
    (make-package "MEDUSA_MSGS"))
  (shadow 'List (find-package "MEDUSA_MSGS")))
(unless (find-package "MEDUSA_MSGS::LIST")
  (make-package "MEDUSA_MSGS::LIST"))

(in-package "ROS")
;;//! \htmlinclude List.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass medusa_msgs::List
  :super ros::object
  :slots (_obj_num _obj_name ))

(defmethod medusa_msgs::List
  (:init
   (&key
    ((:obj_num __obj_num) 0)
    ((:obj_name __obj_name) (let (r) (dotimes (i 0) (push (instance std_msgs::String :init) r)) r))
    )
   (send-super :init)
   (setq _obj_num (round __obj_num))
   (setq _obj_name __obj_name)
   self)
  (:obj_num
   (&optional __obj_num)
   (if __obj_num (setq _obj_num __obj_num)) _obj_num)
  (:obj_name
   (&rest __obj_name)
   (if (keywordp (car __obj_name))
       (send* _obj_name __obj_name)
     (progn
       (if __obj_name (setq _obj_name (car __obj_name)))
       _obj_name)))
  (:serialization-length
   ()
   (+
    ;; int32 _obj_num
    4
    ;; std_msgs/String[] _obj_name
    (apply #'+ (send-all _obj_name :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _obj_num
       (write-long _obj_num s)
     ;; std_msgs/String[] _obj_name
     (write-long (length _obj_name) s)
     (dolist (elem _obj_name)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _obj_num
     (setq _obj_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; std_msgs/String[] _obj_name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obj_name (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _obj_name)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get medusa_msgs::List :md5sum-) "61b929708fa3003d53352792f40a4e8c")
(setf (get medusa_msgs::List :datatype-) "medusa_msgs/List")
(setf (get medusa_msgs::List :definition-)
      "#List

int32 obj_num
std_msgs/String[] obj_name
================================================================================
MSG: std_msgs/String
string data

")



(provide :medusa_msgs/List "61b929708fa3003d53352792f40a4e8c")


