;; Auto-generated. Do not edit!


(when (boundp 'medusa_msgs::VelocityBody)
  (if (not (find-package "MEDUSA_MSGS"))
    (make-package "MEDUSA_MSGS"))
  (shadow 'VelocityBody (find-package "MEDUSA_MSGS")))
(unless (find-package "MEDUSA_MSGS::VELOCITYBODY")
  (make-package "MEDUSA_MSGS::VELOCITYBODY"))

(in-package "ROS")
;;//! \htmlinclude VelocityBody.msg.html


(defclass medusa_msgs::VelocityBody
  :super ros::object
  :slots (_vx _vy _vz ))

(defmethod medusa_msgs::VelocityBody
  (:init
   (&key
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    )
   (send-super :init)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   self)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:serialization-length
   ()
   (+
    ;; float64 _vx
    8
    ;; float64 _vy
    8
    ;; float64 _vz
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy
     (setq _vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vz
     (setq _vz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get medusa_msgs::VelocityBody :md5sum-) "ffb367ff390f5e01cb55c0c75927c19a")
(setf (get medusa_msgs::VelocityBody :datatype-) "medusa_msgs/VelocityBody")
(setf (get medusa_msgs::VelocityBody :definition-)
      "float64 vx
float64 vy
float64 vz
")



(provide :medusa_msgs/VelocityBody "ffb367ff390f5e01cb55c0c75927c19a")


