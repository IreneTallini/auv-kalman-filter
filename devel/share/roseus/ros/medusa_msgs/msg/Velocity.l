;; Auto-generated. Do not edit!


(when (boundp 'medusa_msgs::Velocity)
  (if (not (find-package "MEDUSA_MSGS"))
    (make-package "MEDUSA_MSGS"))
  (shadow 'Velocity (find-package "MEDUSA_MSGS")))
(unless (find-package "MEDUSA_MSGS::VELOCITY")
  (make-package "MEDUSA_MSGS::VELOCITY"))

(in-package "ROS")
;;//! \htmlinclude Velocity.msg.html


(defclass medusa_msgs::Velocity
  :super ros::object
  :slots (_ned_velocity _body_velocity _speed _timestamp ))

(defmethod medusa_msgs::Velocity
  (:init
   (&key
    ((:ned_velocity __ned_velocity) (instance medusa_msgs::VelocityNED :init))
    ((:body_velocity __body_velocity) (instance medusa_msgs::VelocityBody :init))
    ((:speed __speed) 0.0)
    ((:timestamp __timestamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _ned_velocity __ned_velocity)
   (setq _body_velocity __body_velocity)
   (setq _speed (float __speed))
   (setq _timestamp __timestamp)
   self)
  (:ned_velocity
   (&rest __ned_velocity)
   (if (keywordp (car __ned_velocity))
       (send* _ned_velocity __ned_velocity)
     (progn
       (if __ned_velocity (setq _ned_velocity (car __ned_velocity)))
       _ned_velocity)))
  (:body_velocity
   (&rest __body_velocity)
   (if (keywordp (car __body_velocity))
       (send* _body_velocity __body_velocity)
     (progn
       (if __body_velocity (setq _body_velocity (car __body_velocity)))
       _body_velocity)))
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; medusa_msgs/VelocityNED _ned_velocity
    (send _ned_velocity :serialization-length)
    ;; medusa_msgs/VelocityBody _body_velocity
    (send _body_velocity :serialization-length)
    ;; float64 _speed
    8
    ;; time _timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; medusa_msgs/VelocityNED _ned_velocity
       (send _ned_velocity :serialize s)
     ;; medusa_msgs/VelocityBody _body_velocity
       (send _body_velocity :serialize s)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; medusa_msgs/VelocityNED _ned_velocity
     (send _ned_velocity :deserialize buf ptr-) (incf ptr- (send _ned_velocity :serialization-length))
   ;; medusa_msgs/VelocityBody _body_velocity
     (send _body_velocity :deserialize buf ptr-) (incf ptr- (send _body_velocity :serialization-length))
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get medusa_msgs::Velocity :md5sum-) "89c3e51eae0c79f238e531a3238e0f88")
(setf (get medusa_msgs::Velocity :datatype-) "medusa_msgs/Velocity")
(setf (get medusa_msgs::Velocity :definition-)
      "#Velocity Info

medusa_msgs/VelocityNED ned_velocity
medusa_msgs/VelocityBody body_velocity
float64 speed #module of the velocity vector
time timestamp
================================================================================
MSG: medusa_msgs/VelocityNED
float64 north_vel
float64 east_vel
float64 down_vel
================================================================================
MSG: medusa_msgs/VelocityBody
float64 vx
float64 vy
float64 vz
")



(provide :medusa_msgs/Velocity "89c3e51eae0c79f238e531a3238e0f88")


