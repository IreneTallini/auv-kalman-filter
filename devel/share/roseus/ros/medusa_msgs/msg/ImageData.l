;; Auto-generated. Do not edit!


(when (boundp 'medusa_msgs::ImageData)
  (if (not (find-package "MEDUSA_MSGS"))
    (make-package "MEDUSA_MSGS"))
  (shadow 'ImageData (find-package "MEDUSA_MSGS")))
(unless (find-package "MEDUSA_MSGS::IMAGEDATA")
  (make-package "MEDUSA_MSGS::IMAGEDATA"))

(in-package "ROS")
;;//! \htmlinclude ImageData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass medusa_msgs::ImageData
  :super ros::object
  :slots (_timestamp _nav_status _sensor_id _file_dimension _file_name ))

(defmethod medusa_msgs::ImageData
  (:init
   (&key
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:nav_status __nav_status) (instance medusa_msgs::NavStatus :init))
    ((:sensor_id __sensor_id) 0)
    ((:file_dimension __file_dimension) 0)
    ((:file_name __file_name) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _timestamp __timestamp)
   (setq _nav_status __nav_status)
   (setq _sensor_id (round __sensor_id))
   (setq _file_dimension (round __file_dimension))
   (setq _file_name __file_name)
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:nav_status
   (&rest __nav_status)
   (if (keywordp (car __nav_status))
       (send* _nav_status __nav_status)
     (progn
       (if __nav_status (setq _nav_status (car __nav_status)))
       _nav_status)))
  (:sensor_id
   (&optional __sensor_id)
   (if __sensor_id (setq _sensor_id __sensor_id)) _sensor_id)
  (:file_dimension
   (&optional __file_dimension)
   (if __file_dimension (setq _file_dimension __file_dimension)) _file_dimension)
  (:file_name
   (&rest __file_name)
   (if (keywordp (car __file_name))
       (send* _file_name __file_name)
     (progn
       (if __file_name (setq _file_name (car __file_name)))
       _file_name)))
  (:serialization-length
   ()
   (+
    ;; time _timestamp
    8
    ;; medusa_msgs/NavStatus _nav_status
    (send _nav_status :serialization-length)
    ;; uint8 _sensor_id
    1
    ;; int32 _file_dimension
    4
    ;; std_msgs/String _file_name
    (send _file_name :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; medusa_msgs/NavStatus _nav_status
       (send _nav_status :serialize s)
     ;; uint8 _sensor_id
       (write-byte _sensor_id s)
     ;; int32 _file_dimension
       (write-long _file_dimension s)
     ;; std_msgs/String _file_name
       (send _file_name :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; medusa_msgs/NavStatus _nav_status
     (send _nav_status :deserialize buf ptr-) (incf ptr- (send _nav_status :serialization-length))
   ;; uint8 _sensor_id
     (setq _sensor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _file_dimension
     (setq _file_dimension (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; std_msgs/String _file_name
     (send _file_name :deserialize buf ptr-) (incf ptr- (send _file_name :serialization-length))
   ;;
   self)
  )

(setf (get medusa_msgs::ImageData :md5sum-) "bdeb665e166b3b92a73c5133fe56b8ec")
(setf (get medusa_msgs::ImageData :datatype-) "medusa_msgs/ImageData")
(setf (get medusa_msgs::ImageData :definition-)
      "time timestamp	
medusa_msgs/NavStatus nav_status 
uint8 sensor_id
int32 file_dimension
std_msgs/String file_name

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
================================================================================
MSG: std_msgs/String
string data

")



(provide :medusa_msgs/ImageData "bdeb665e166b3b92a73c5133fe56b8ec")


