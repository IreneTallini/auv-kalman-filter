;; Auto-generated. Do not edit!


(when (boundp 'medusa_msgs::VehicleStatus)
  (if (not (find-package "MEDUSA_MSGS"))
    (make-package "MEDUSA_MSGS"))
  (shadow 'VehicleStatus (find-package "MEDUSA_MSGS")))
(unless (find-package "MEDUSA_MSGS::VEHICLESTATUS")
  (make-package "MEDUSA_MSGS::VEHICLESTATUS"))

(in-package "ROS")
;;//! \htmlinclude VehicleStatus.msg.html


(defclass medusa_msgs::VehicleStatus
  :super ros::object
  :slots (_temperature _humidity _buoyancy _internal_pressure _battery _timestamp ))

(defmethod medusa_msgs::VehicleStatus
  (:init
   (&key
    ((:temperature __temperature) 0.0)
    ((:humidity __humidity) 0.0)
    ((:buoyancy __buoyancy) 0.0)
    ((:internal_pressure __internal_pressure) 0.0)
    ((:battery __battery) (instance medusa_msgs::Battery :init))
    ((:timestamp __timestamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _temperature (float __temperature))
   (setq _humidity (float __humidity))
   (setq _buoyancy (float __buoyancy))
   (setq _internal_pressure (float __internal_pressure))
   (setq _battery __battery)
   (setq _timestamp __timestamp)
   self)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:humidity
   (&optional __humidity)
   (if __humidity (setq _humidity __humidity)) _humidity)
  (:buoyancy
   (&optional __buoyancy)
   (if __buoyancy (setq _buoyancy __buoyancy)) _buoyancy)
  (:internal_pressure
   (&optional __internal_pressure)
   (if __internal_pressure (setq _internal_pressure __internal_pressure)) _internal_pressure)
  (:battery
   (&rest __battery)
   (if (keywordp (car __battery))
       (send* _battery __battery)
     (progn
       (if __battery (setq _battery (car __battery)))
       _battery)))
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; float32 _temperature
    4
    ;; float32 _humidity
    4
    ;; float32 _buoyancy
    4
    ;; float32 _internal_pressure
    4
    ;; medusa_msgs/Battery _battery
    (send _battery :serialization-length)
    ;; time _timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _humidity
       (sys::poke _humidity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _buoyancy
       (sys::poke _buoyancy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _internal_pressure
       (sys::poke _internal_pressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; medusa_msgs/Battery _battery
       (send _battery :serialize s)
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _humidity
     (setq _humidity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _buoyancy
     (setq _buoyancy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _internal_pressure
     (setq _internal_pressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; medusa_msgs/Battery _battery
     (send _battery :deserialize buf ptr-) (incf ptr- (send _battery :serialization-length))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get medusa_msgs::VehicleStatus :md5sum-) "a35718b2b68a03159df7289abbd1e7c2")
(setf (get medusa_msgs::VehicleStatus :datatype-) "medusa_msgs/VehicleStatus")
(setf (get medusa_msgs::VehicleStatus :definition-)
      "#VehicleStatus Info

float32 temperature
float32 humidity
float32 buoyancy
float32 internal_pressure
medusa_msgs/Battery battery
time timestamp
================================================================================
MSG: medusa_msgs/Battery
#Battery Info

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



(provide :medusa_msgs/VehicleStatus "a35718b2b68a03159df7289abbd1e7c2")


