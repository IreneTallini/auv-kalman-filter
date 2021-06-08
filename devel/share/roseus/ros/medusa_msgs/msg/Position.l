;; Auto-generated. Do not edit!


(when (boundp 'medusa_msgs::Position)
  (if (not (find-package "MEDUSA_MSGS"))
    (make-package "MEDUSA_MSGS"))
  (shadow 'Position (find-package "MEDUSA_MSGS")))
(unless (find-package "MEDUSA_MSGS::POSITION")
  (make-package "MEDUSA_MSGS::POSITION"))

(in-package "ROS")
;;//! \htmlinclude Position.msg.html


(defclass medusa_msgs::Position
  :super ros::object
  :slots (_latitude _longitude _depth _altitude ))

(defmethod medusa_msgs::Position
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:depth __depth) 0.0)
    ((:altitude __altitude) 0.0)
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _depth (float __depth))
   (setq _altitude (float __altitude))
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:serialization-length
   ()
   (+
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _depth
    8
    ;; float64 _altitude
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _depth
       (sys::poke _depth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _depth
     (setq _depth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get medusa_msgs::Position :md5sum-) "755088430ff20c005d93673101a6169a")
(setf (get medusa_msgs::Position :datatype-) "medusa_msgs/Position")
(setf (get medusa_msgs::Position :definition-)
      "#Position Info

float64 latitude
float64 longitude
float64 depth
float64 altitude
")



(provide :medusa_msgs/Position "755088430ff20c005d93673101a6169a")


