;; Auto-generated. Do not edit!


(when (boundp 'medusa_msgs::CameraGet)
  (if (not (find-package "MEDUSA_MSGS"))
    (make-package "MEDUSA_MSGS"))
  (shadow 'CameraGet (find-package "MEDUSA_MSGS")))
(unless (find-package "MEDUSA_MSGS::CAMERAGET")
  (make-package "MEDUSA_MSGS::CAMERAGET"))

(in-package "ROS")
;;//! \htmlinclude CameraGet.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass medusa_msgs::CameraGet
  :super ros::object
  :slots (_id_camera _filename ))

(defmethod medusa_msgs::CameraGet
  (:init
   (&key
    ((:id_camera __id_camera) 0)
    ((:filename __filename) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _id_camera (round __id_camera))
   (setq _filename __filename)
   self)
  (:id_camera
   (&optional __id_camera)
   (if __id_camera (setq _id_camera __id_camera)) _id_camera)
  (:filename
   (&rest __filename)
   (if (keywordp (car __filename))
       (send* _filename __filename)
     (progn
       (if __filename (setq _filename (car __filename)))
       _filename)))
  (:serialization-length
   ()
   (+
    ;; uint8 _id_camera
    1
    ;; std_msgs/String _filename
    (send _filename :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id_camera
       (write-byte _id_camera s)
     ;; std_msgs/String _filename
       (send _filename :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id_camera
     (setq _id_camera (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; std_msgs/String _filename
     (send _filename :deserialize buf ptr-) (incf ptr- (send _filename :serialization-length))
   ;;
   self)
  )

(setf (get medusa_msgs::CameraGet :md5sum-) "2f97773bf93ac3afe9db99951b0af3fe")
(setf (get medusa_msgs::CameraGet :datatype-) "medusa_msgs/CameraGet")
(setf (get medusa_msgs::CameraGet :definition-)
      "
uint8 id_camera

std_msgs/String filename

================================================================================
MSG: std_msgs/String
string data

")



(provide :medusa_msgs/CameraGet "2f97773bf93ac3afe9db99951b0af3fe")


