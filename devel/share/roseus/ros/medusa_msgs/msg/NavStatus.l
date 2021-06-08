;; Auto-generated. Do not edit!


(when (boundp 'medusa_msgs::NavStatus)
  (if (not (find-package "MEDUSA_MSGS"))
    (make-package "MEDUSA_MSGS"))
  (shadow 'NavStatus (find-package "MEDUSA_MSGS")))
(unless (find-package "MEDUSA_MSGS::NAVSTATUS")
  (make-package "MEDUSA_MSGS::NAVSTATUS"))

(in-package "ROS")
;;//! \htmlinclude NavStatus.msg.html


(defclass medusa_msgs::NavStatus
  :super ros::object
  :slots (_position _attitude _linear_velocity _timestamp ))

(defmethod medusa_msgs::NavStatus
  (:init
   (&key
    ((:position __position) (instance medusa_msgs::Position :init))
    ((:attitude __attitude) (instance medusa_msgs::AttitudeEuler :init))
    ((:linear_velocity __linear_velocity) (instance medusa_msgs::VelocityNED :init))
    ((:timestamp __timestamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _attitude __attitude)
   (setq _linear_velocity __linear_velocity)
   (setq _timestamp __timestamp)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:attitude
   (&rest __attitude)
   (if (keywordp (car __attitude))
       (send* _attitude __attitude)
     (progn
       (if __attitude (setq _attitude (car __attitude)))
       _attitude)))
  (:linear_velocity
   (&rest __linear_velocity)
   (if (keywordp (car __linear_velocity))
       (send* _linear_velocity __linear_velocity)
     (progn
       (if __linear_velocity (setq _linear_velocity (car __linear_velocity)))
       _linear_velocity)))
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; medusa_msgs/Position _position
    (send _position :serialization-length)
    ;; medusa_msgs/AttitudeEuler _attitude
    (send _attitude :serialization-length)
    ;; medusa_msgs/VelocityNED _linear_velocity
    (send _linear_velocity :serialization-length)
    ;; time _timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; medusa_msgs/Position _position
       (send _position :serialize s)
     ;; medusa_msgs/AttitudeEuler _attitude
       (send _attitude :serialize s)
     ;; medusa_msgs/VelocityNED _linear_velocity
       (send _linear_velocity :serialize s)
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; medusa_msgs/Position _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; medusa_msgs/AttitudeEuler _attitude
     (send _attitude :deserialize buf ptr-) (incf ptr- (send _attitude :serialization-length))
   ;; medusa_msgs/VelocityNED _linear_velocity
     (send _linear_velocity :deserialize buf ptr-) (incf ptr- (send _linear_velocity :serialization-length))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get medusa_msgs::NavStatus :md5sum-) "efaabb5a01aa1186aa62d98b6b280789")
(setf (get medusa_msgs::NavStatus :datatype-) "medusa_msgs/NavStatus")
(setf (get medusa_msgs::NavStatus :definition-)
      "#NavStatus Info

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



(provide :medusa_msgs/NavStatus "efaabb5a01aa1186aa62d98b6b280789")


