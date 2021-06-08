;; Auto-generated. Do not edit!


(when (boundp 'medusa_msgs::SensorMeasurement)
  (if (not (find-package "MEDUSA_MSGS"))
    (make-package "MEDUSA_MSGS"))
  (shadow 'SensorMeasurement (find-package "MEDUSA_MSGS")))
(unless (find-package "MEDUSA_MSGS::SENSORMEASUREMENT")
  (make-package "MEDUSA_MSGS::SENSORMEASUREMENT"))

(in-package "ROS")
;;//! \htmlinclude SensorMeasurement.msg.html


(defclass medusa_msgs::SensorMeasurement
  :super ros::object
  :slots (_timestamp _nav_status _measurement_name _sensor_id _sample _frequency _error ))

(defmethod medusa_msgs::SensorMeasurement
  (:init
   (&key
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:nav_status __nav_status) (instance medusa_msgs::NavStatus :init))
    ((:measurement_name __measurement_name) "")
    ((:sensor_id __sensor_id) 0)
    ((:sample __sample) 0.0)
    ((:frequency __frequency) 0.0)
    ((:error __error) 0)
    )
   (send-super :init)
   (setq _timestamp __timestamp)
   (setq _nav_status __nav_status)
   (setq _measurement_name (string __measurement_name))
   (setq _sensor_id (round __sensor_id))
   (setq _sample (float __sample))
   (setq _frequency (float __frequency))
   (setq _error (round __error))
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
  (:measurement_name
   (&optional __measurement_name)
   (if __measurement_name (setq _measurement_name __measurement_name)) _measurement_name)
  (:sensor_id
   (&optional __sensor_id)
   (if __sensor_id (setq _sensor_id __sensor_id)) _sensor_id)
  (:sample
   (&optional __sample)
   (if __sample (setq _sample __sample)) _sample)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; time _timestamp
    8
    ;; medusa_msgs/NavStatus _nav_status
    (send _nav_status :serialization-length)
    ;; string _measurement_name
    4 (length _measurement_name)
    ;; uint8 _sensor_id
    1
    ;; float32 _sample
    4
    ;; float32 _frequency
    4
    ;; int16 _error
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; medusa_msgs/NavStatus _nav_status
       (send _nav_status :serialize s)
     ;; string _measurement_name
       (write-long (length _measurement_name) s) (princ _measurement_name s)
     ;; uint8 _sensor_id
       (write-byte _sensor_id s)
     ;; float32 _sample
       (sys::poke _sample (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _frequency
       (sys::poke _frequency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _error
       (write-word _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; medusa_msgs/NavStatus _nav_status
     (send _nav_status :deserialize buf ptr-) (incf ptr- (send _nav_status :serialization-length))
   ;; string _measurement_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _measurement_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _sensor_id
     (setq _sensor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _sample
     (setq _sample (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _frequency
     (setq _frequency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _error
     (setq _error (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get medusa_msgs::SensorMeasurement :md5sum-) "30226808724a611420a1dfa82ca2c2ea")
(setf (get medusa_msgs::SensorMeasurement :datatype-) "medusa_msgs/SensorMeasurement")
(setf (get medusa_msgs::SensorMeasurement :definition-)
      "#Measurement obtained by a sensor

time timestamp	
medusa_msgs/NavStatus nav_status 
string measurement_name
uint8 sensor_id
float32 sample	#Sensor measurement value
float32 frequency
int16 error

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



(provide :medusa_msgs/SensorMeasurement "30226808724a611420a1dfa82ca2c2ea")


