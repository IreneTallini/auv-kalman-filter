;; Auto-generated. Do not edit!


(when (boundp 'medusa_msgs::VelocityNED)
  (if (not (find-package "MEDUSA_MSGS"))
    (make-package "MEDUSA_MSGS"))
  (shadow 'VelocityNED (find-package "MEDUSA_MSGS")))
(unless (find-package "MEDUSA_MSGS::VELOCITYNED")
  (make-package "MEDUSA_MSGS::VELOCITYNED"))

(in-package "ROS")
;;//! \htmlinclude VelocityNED.msg.html


(defclass medusa_msgs::VelocityNED
  :super ros::object
  :slots (_north_vel _east_vel _down_vel ))

(defmethod medusa_msgs::VelocityNED
  (:init
   (&key
    ((:north_vel __north_vel) 0.0)
    ((:east_vel __east_vel) 0.0)
    ((:down_vel __down_vel) 0.0)
    )
   (send-super :init)
   (setq _north_vel (float __north_vel))
   (setq _east_vel (float __east_vel))
   (setq _down_vel (float __down_vel))
   self)
  (:north_vel
   (&optional __north_vel)
   (if __north_vel (setq _north_vel __north_vel)) _north_vel)
  (:east_vel
   (&optional __east_vel)
   (if __east_vel (setq _east_vel __east_vel)) _east_vel)
  (:down_vel
   (&optional __down_vel)
   (if __down_vel (setq _down_vel __down_vel)) _down_vel)
  (:serialization-length
   ()
   (+
    ;; float64 _north_vel
    8
    ;; float64 _east_vel
    8
    ;; float64 _down_vel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _north_vel
       (sys::poke _north_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _east_vel
       (sys::poke _east_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _down_vel
       (sys::poke _down_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _north_vel
     (setq _north_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _east_vel
     (setq _east_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _down_vel
     (setq _down_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get medusa_msgs::VelocityNED :md5sum-) "b2b8e51aaded904c3e05f16a0c910d29")
(setf (get medusa_msgs::VelocityNED :datatype-) "medusa_msgs/VelocityNED")
(setf (get medusa_msgs::VelocityNED :definition-)
      "float64 north_vel
float64 east_vel
float64 down_vel
")



(provide :medusa_msgs/VelocityNED "b2b8e51aaded904c3e05f16a0c910d29")


