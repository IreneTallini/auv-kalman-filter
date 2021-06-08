;; Auto-generated. Do not edit!


(when (boundp 'medusa_msgs::Battery)
  (if (not (find-package "MEDUSA_MSGS"))
    (make-package "MEDUSA_MSGS"))
  (shadow 'Battery (find-package "MEDUSA_MSGS")))
(unless (find-package "MEDUSA_MSGS::BATTERY")
  (make-package "MEDUSA_MSGS::BATTERY"))

(in-package "ROS")
;;//! \htmlinclude Battery.msg.html


(defclass medusa_msgs::Battery
  :super ros::object
  :slots (_nav_status _timestamp _percentage ))

(defmethod medusa_msgs::Battery
  (:init
   (&key
    ((:nav_status __nav_status) (instance medusa_msgs::NavStatus :init))
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:percentage __percentage) 0.0)
    )
   (send-super :init)
   (setq _nav_status __nav_status)
   (setq _timestamp __timestamp)
   (setq _percentage (float __percentage))
   self)
  (:nav_status
   (&rest __nav_status)
   (if (keywordp (car __nav_status))
       (send* _nav_status __nav_status)
     (progn
       (if __nav_status (setq _nav_status (car __nav_status)))
       _nav_status)))
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:percentage
   (&optional __percentage)
   (if __percentage (setq _percentage __percentage)) _percentage)
  (:serialization-length
   ()
   (+
    ;; medusa_msgs/NavStatus _nav_status
    (send _nav_status :serialization-length)
    ;; time _timestamp
    8
    ;; float32 _percentage
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; medusa_msgs/NavStatus _nav_status
       (send _nav_status :serialize s)
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; float32 _percentage
       (sys::poke _percentage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; medusa_msgs/NavStatus _nav_status
     (send _nav_status :deserialize buf ptr-) (incf ptr- (send _nav_status :serialization-length))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _percentage
     (setq _percentage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get medusa_msgs::Battery :md5sum-) "c9b87d3791e115e77dfb5d873b235e5d")
(setf (get medusa_msgs::Battery :datatype-) "medusa_msgs/Battery")
(setf (get medusa_msgs::Battery :definition-)
      "#Battery Info

medusa_msgs/NavStatus nav_status
time timestamp
float32 percentage

================================================================================
MSG: medusa_msgs/NavStatus
#NavStatus Info

medusa_msgs/Position position
medusa_msgs/AttitudeEuler attitude
medusa_msgs/VelocityNED linear_velocity
time timestamp
================================================================================
MSG: medusa_msgs/Position
#Position Info

float64 latitude
float64 longitude
float64 depth
float64 altitude
================================================================================
MSG: medusa_msgs/AttitudeEuler
float64 roll
float64 pitch
float64 yaw
================================================================================
MSG: medusa_msgs/VelocityNED
float64 north_vel
float64 east_vel
float64 down_vel
")



(provide :medusa_msgs/Battery "c9b87d3791e115e77dfb5d873b235e5d")


