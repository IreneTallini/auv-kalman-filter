;; Auto-generated. Do not edit!


(when (boundp 'medusa_msgs::AttitudeEuler)
  (if (not (find-package "MEDUSA_MSGS"))
    (make-package "MEDUSA_MSGS"))
  (shadow 'AttitudeEuler (find-package "MEDUSA_MSGS")))
(unless (find-package "MEDUSA_MSGS::ATTITUDEEULER")
  (make-package "MEDUSA_MSGS::ATTITUDEEULER"))

(in-package "ROS")
;;//! \htmlinclude AttitudeEuler.msg.html


(defclass medusa_msgs::AttitudeEuler
  :super ros::object
  :slots (_roll _pitch _yaw ))

(defmethod medusa_msgs::AttitudeEuler
  (:init
   (&key
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   self)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get medusa_msgs::AttitudeEuler :md5sum-) "eeec8b25a660789a89540dedcb2b06d6")
(setf (get medusa_msgs::AttitudeEuler :datatype-) "medusa_msgs/AttitudeEuler")
(setf (get medusa_msgs::AttitudeEuler :definition-)
      "float64 roll
float64 pitch
float64 yaw
")



(provide :medusa_msgs/AttitudeEuler "eeec8b25a660789a89540dedcb2b06d6")


