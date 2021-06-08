;; Auto-generated. Do not edit!


(when (boundp 'medusa_msgs::Maneuver)
  (if (not (find-package "MEDUSA_MSGS"))
    (make-package "MEDUSA_MSGS"))
  (shadow 'Maneuver (find-package "MEDUSA_MSGS")))
(unless (find-package "MEDUSA_MSGS::MANEUVER")
  (make-package "MEDUSA_MSGS::MANEUVER"))

(in-package "ROS")
;;//! \htmlinclude Maneuver.msg.html


(intern "*MANEUVER_NAME_GOTO*" (find-package "MEDUSA_MSGS::MANEUVER"))
(shadow '*MANEUVER_NAME_GOTO* (find-package "MEDUSA_MSGS::MANEUVER"))
(defconstant medusa_msgs::Maneuver::*MANEUVER_NAME_GOTO* 1)
(intern "*MANEUVER_NAME_ROWS*" (find-package "MEDUSA_MSGS::MANEUVER"))
(shadow '*MANEUVER_NAME_ROWS* (find-package "MEDUSA_MSGS::MANEUVER"))
(defconstant medusa_msgs::Maneuver::*MANEUVER_NAME_ROWS* 2)
(intern "*MANEUVER_NAME_STATION_KEEPING*" (find-package "MEDUSA_MSGS::MANEUVER"))
(shadow '*MANEUVER_NAME_STATION_KEEPING* (find-package "MEDUSA_MSGS::MANEUVER"))
(defconstant medusa_msgs::Maneuver::*MANEUVER_NAME_STATION_KEEPING* 3)
(intern "*MANEUVER_NAME_DOCK*" (find-package "MEDUSA_MSGS::MANEUVER"))
(shadow '*MANEUVER_NAME_DOCK* (find-package "MEDUSA_MSGS::MANEUVER"))
(defconstant medusa_msgs::Maneuver::*MANEUVER_NAME_DOCK* 4)
(intern "*Z_UNITS_DEPTH*" (find-package "MEDUSA_MSGS::MANEUVER"))
(shadow '*Z_UNITS_DEPTH* (find-package "MEDUSA_MSGS::MANEUVER"))
(defconstant medusa_msgs::Maneuver::*Z_UNITS_DEPTH* 5)
(intern "*Z_UNITS_ALTITUDE*" (find-package "MEDUSA_MSGS::MANEUVER"))
(shadow '*Z_UNITS_ALTITUDE* (find-package "MEDUSA_MSGS::MANEUVER"))
(defconstant medusa_msgs::Maneuver::*Z_UNITS_ALTITUDE* 6)
(intern "*SPEED_UNITS_METER_PS*" (find-package "MEDUSA_MSGS::MANEUVER"))
(shadow '*SPEED_UNITS_METER_PS* (find-package "MEDUSA_MSGS::MANEUVER"))
(defconstant medusa_msgs::Maneuver::*SPEED_UNITS_METER_PS* 7)
(intern "*SPEED_UNITS_RPM*" (find-package "MEDUSA_MSGS::MANEUVER"))
(shadow '*SPEED_UNITS_RPM* (find-package "MEDUSA_MSGS::MANEUVER"))
(defconstant medusa_msgs::Maneuver::*SPEED_UNITS_RPM* 8)
(intern "*SPEED_UNITS_PERCENTAGE*" (find-package "MEDUSA_MSGS::MANEUVER"))
(shadow '*SPEED_UNITS_PERCENTAGE* (find-package "MEDUSA_MSGS::MANEUVER"))
(defconstant medusa_msgs::Maneuver::*SPEED_UNITS_PERCENTAGE* 9)
(intern "*VEHICLE_DOCK*" (find-package "MEDUSA_MSGS::MANEUVER"))
(shadow '*VEHICLE_DOCK* (find-package "MEDUSA_MSGS::MANEUVER"))
(defconstant medusa_msgs::Maneuver::*VEHICLE_DOCK* 1)
(intern "*VEHICLE_UNDOCK*" (find-package "MEDUSA_MSGS::MANEUVER"))
(shadow '*VEHICLE_UNDOCK* (find-package "MEDUSA_MSGS::MANEUVER"))
(defconstant medusa_msgs::Maneuver::*VEHICLE_UNDOCK* 0)
(defclass medusa_msgs::Maneuver
  :super ros::object
  :slots (_maneuver_name _position _z_units _speed_units _speed _timeout _radius _duration _docking_id _docking_maneuver _waypoint_1 _waypoint_2 _waypoint_3 _track_spacing _across_tracks ))

(defmethod medusa_msgs::Maneuver
  (:init
   (&key
    ((:maneuver_name __maneuver_name) 0)
    ((:position __position) (instance medusa_msgs::Position :init))
    ((:z_units __z_units) 0)
    ((:speed_units __speed_units) 0)
    ((:speed __speed) 0.0)
    ((:timeout __timeout) 0.0)
    ((:radius __radius) 0.0)
    ((:duration __duration) 0.0)
    ((:docking_id __docking_id) 0)
    ((:docking_maneuver __docking_maneuver) 0)
    ((:waypoint_1 __waypoint_1) (instance medusa_msgs::Position :init))
    ((:waypoint_2 __waypoint_2) (instance medusa_msgs::Position :init))
    ((:waypoint_3 __waypoint_3) (instance medusa_msgs::Position :init))
    ((:track_spacing __track_spacing) 0.0)
    ((:across_tracks __across_tracks) 0.0)
    )
   (send-super :init)
   (setq _maneuver_name (round __maneuver_name))
   (setq _position __position)
   (setq _z_units (round __z_units))
   (setq _speed_units (round __speed_units))
   (setq _speed (float __speed))
   (setq _timeout (float __timeout))
   (setq _radius (float __radius))
   (setq _duration (float __duration))
   (setq _docking_id (round __docking_id))
   (setq _docking_maneuver (round __docking_maneuver))
   (setq _waypoint_1 __waypoint_1)
   (setq _waypoint_2 __waypoint_2)
   (setq _waypoint_3 __waypoint_3)
   (setq _track_spacing (float __track_spacing))
   (setq _across_tracks (float __across_tracks))
   self)
  (:maneuver_name
   (&optional __maneuver_name)
   (if __maneuver_name (setq _maneuver_name __maneuver_name)) _maneuver_name)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:z_units
   (&optional __z_units)
   (if __z_units (setq _z_units __z_units)) _z_units)
  (:speed_units
   (&optional __speed_units)
   (if __speed_units (setq _speed_units __speed_units)) _speed_units)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:docking_id
   (&optional __docking_id)
   (if __docking_id (setq _docking_id __docking_id)) _docking_id)
  (:docking_maneuver
   (&optional __docking_maneuver)
   (if __docking_maneuver (setq _docking_maneuver __docking_maneuver)) _docking_maneuver)
  (:waypoint_1
   (&rest __waypoint_1)
   (if (keywordp (car __waypoint_1))
       (send* _waypoint_1 __waypoint_1)
     (progn
       (if __waypoint_1 (setq _waypoint_1 (car __waypoint_1)))
       _waypoint_1)))
  (:waypoint_2
   (&rest __waypoint_2)
   (if (keywordp (car __waypoint_2))
       (send* _waypoint_2 __waypoint_2)
     (progn
       (if __waypoint_2 (setq _waypoint_2 (car __waypoint_2)))
       _waypoint_2)))
  (:waypoint_3
   (&rest __waypoint_3)
   (if (keywordp (car __waypoint_3))
       (send* _waypoint_3 __waypoint_3)
     (progn
       (if __waypoint_3 (setq _waypoint_3 (car __waypoint_3)))
       _waypoint_3)))
  (:track_spacing
   (&optional __track_spacing)
   (if __track_spacing (setq _track_spacing __track_spacing)) _track_spacing)
  (:across_tracks
   (&optional __across_tracks)
   (if __across_tracks (setq _across_tracks __across_tracks)) _across_tracks)
  (:serialization-length
   ()
   (+
    ;; uint8 _maneuver_name
    1
    ;; medusa_msgs/Position _position
    (send _position :serialization-length)
    ;; uint8 _z_units
    1
    ;; uint8 _speed_units
    1
    ;; float64 _speed
    8
    ;; float64 _timeout
    8
    ;; float64 _radius
    8
    ;; float64 _duration
    8
    ;; uint8 _docking_id
    1
    ;; uint8 _docking_maneuver
    1
    ;; medusa_msgs/Position _waypoint_1
    (send _waypoint_1 :serialization-length)
    ;; medusa_msgs/Position _waypoint_2
    (send _waypoint_2 :serialization-length)
    ;; medusa_msgs/Position _waypoint_3
    (send _waypoint_3 :serialization-length)
    ;; float64 _track_spacing
    8
    ;; float64 _across_tracks
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _maneuver_name
       (write-byte _maneuver_name s)
     ;; medusa_msgs/Position _position
       (send _position :serialize s)
     ;; uint8 _z_units
       (write-byte _z_units s)
     ;; uint8 _speed_units
       (write-byte _speed_units s)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timeout
       (sys::poke _timeout (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _docking_id
       (write-byte _docking_id s)
     ;; uint8 _docking_maneuver
       (write-byte _docking_maneuver s)
     ;; medusa_msgs/Position _waypoint_1
       (send _waypoint_1 :serialize s)
     ;; medusa_msgs/Position _waypoint_2
       (send _waypoint_2 :serialize s)
     ;; medusa_msgs/Position _waypoint_3
       (send _waypoint_3 :serialize s)
     ;; float64 _track_spacing
       (sys::poke _track_spacing (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _across_tracks
       (sys::poke _across_tracks (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _maneuver_name
     (setq _maneuver_name (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; medusa_msgs/Position _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; uint8 _z_units
     (setq _z_units (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _speed_units
     (setq _speed_units (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timeout
     (setq _timeout (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _docking_id
     (setq _docking_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _docking_maneuver
     (setq _docking_maneuver (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; medusa_msgs/Position _waypoint_1
     (send _waypoint_1 :deserialize buf ptr-) (incf ptr- (send _waypoint_1 :serialization-length))
   ;; medusa_msgs/Position _waypoint_2
     (send _waypoint_2 :deserialize buf ptr-) (incf ptr- (send _waypoint_2 :serialization-length))
   ;; medusa_msgs/Position _waypoint_3
     (send _waypoint_3 :deserialize buf ptr-) (incf ptr- (send _waypoint_3 :serialization-length))
   ;; float64 _track_spacing
     (setq _track_spacing (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _across_tracks
     (setq _across_tracks (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get medusa_msgs::Maneuver :md5sum-) "6ee9d1b8dc5a62fdf564b7b7c9695f13")
(setf (get medusa_msgs::Maneuver :datatype-) "medusa_msgs/Maneuver")
(setf (get medusa_msgs::Maneuver :definition-)
      "#Single Maneuver Info (Goto [1], StationKeeping [2], Dock [3], Rows_Girona [4])

uint8 maneuver_name 	#Used in maneuvers [1,2,3,4]
medusa_msgs/Position position #[1,2,3]
uint8 z_units	#[1,2,3,4]
uint8 speed_units	#[1,2,4]
float64 speed	#[1,2,4]

float64 timeout	#[1]

float64 radius 		#[2]
float64 duration 	#[2]

uint8 docking_id	#[3]
uint8 docking_maneuver	#[3]

medusa_msgs/Position waypoint_1 #[4]
medusa_msgs/Position waypoint_2 #[4]
medusa_msgs/Position waypoint_3 #[4]
float64 track_spacing  #[4]
float64 across_tracks  #[4]


#Define related to maneuver_name
uint8 MANEUVER_NAME_GOTO=1
uint8 MANEUVER_NAME_ROWS=2
uint8 MANEUVER_NAME_STATION_KEEPING=3
uint8 MANEUVER_NAME_DOCK=4

#Define related to z_units
uint8 Z_UNITS_DEPTH=5
uint8 Z_UNITS_ALTITUDE=6

#Define related to speed_units
uint8 SPEED_UNITS_METER_PS=7
uint8 SPEED_UNITS_RPM=8
uint8 SPEED_UNITS_PERCENTAGE=9

#Define related to the Docking station
uint8 VEHICLE_DOCK=1
uint8 VEHICLE_UNDOCK=0


================================================================================
MSG: medusa_msgs/Position
#Position Info

float64 latitude
float64 longitude
float64 depth
float64 altitude
")



(provide :medusa_msgs/Maneuver "6ee9d1b8dc5a62fdf564b7b7c9695f13")


