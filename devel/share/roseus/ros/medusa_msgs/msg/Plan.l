;; Auto-generated. Do not edit!


(when (boundp 'medusa_msgs::Plan)
  (if (not (find-package "MEDUSA_MSGS"))
    (make-package "MEDUSA_MSGS"))
  (shadow 'Plan (find-package "MEDUSA_MSGS")))
(unless (find-package "MEDUSA_MSGS::PLAN")
  (make-package "MEDUSA_MSGS::PLAN"))

(in-package "ROS")
;;//! \htmlinclude Plan.msg.html


(defclass medusa_msgs::Plan
  :super ros::object
  :slots (_plan_name _plan_status _num_maneuvers _maneuvers ))

(defmethod medusa_msgs::Plan
  (:init
   (&key
    ((:plan_name __plan_name) "")
    ((:plan_status __plan_status) "")
    ((:num_maneuvers __num_maneuvers) 0)
    ((:maneuvers __maneuvers) (let (r) (dotimes (i 0) (push (instance medusa_msgs::Maneuver :init) r)) r))
    )
   (send-super :init)
   (setq _plan_name (string __plan_name))
   (setq _plan_status (string __plan_status))
   (setq _num_maneuvers (round __num_maneuvers))
   (setq _maneuvers __maneuvers)
   self)
  (:plan_name
   (&optional __plan_name)
   (if __plan_name (setq _plan_name __plan_name)) _plan_name)
  (:plan_status
   (&optional __plan_status)
   (if __plan_status (setq _plan_status __plan_status)) _plan_status)
  (:num_maneuvers
   (&optional __num_maneuvers)
   (if __num_maneuvers (setq _num_maneuvers __num_maneuvers)) _num_maneuvers)
  (:maneuvers
   (&rest __maneuvers)
   (if (keywordp (car __maneuvers))
       (send* _maneuvers __maneuvers)
     (progn
       (if __maneuvers (setq _maneuvers (car __maneuvers)))
       _maneuvers)))
  (:serialization-length
   ()
   (+
    ;; string _plan_name
    4 (length _plan_name)
    ;; string _plan_status
    4 (length _plan_status)
    ;; int32 _num_maneuvers
    4
    ;; medusa_msgs/Maneuver[] _maneuvers
    (apply #'+ (send-all _maneuvers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _plan_name
       (write-long (length _plan_name) s) (princ _plan_name s)
     ;; string _plan_status
       (write-long (length _plan_status) s) (princ _plan_status s)
     ;; int32 _num_maneuvers
       (write-long _num_maneuvers s)
     ;; medusa_msgs/Maneuver[] _maneuvers
     (write-long (length _maneuvers) s)
     (dolist (elem _maneuvers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _plan_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _plan_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _plan_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _plan_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _num_maneuvers
     (setq _num_maneuvers (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; medusa_msgs/Maneuver[] _maneuvers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _maneuvers (let (r) (dotimes (i n) (push (instance medusa_msgs::Maneuver :init) r)) r))
     (dolist (elem- _maneuvers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get medusa_msgs::Plan :md5sum-) "6eba4a4450477e427676a6c597611625")
(setf (get medusa_msgs::Plan :datatype-) "medusa_msgs/Plan")
(setf (get medusa_msgs::Plan :definition-)
      "#Plan

string plan_name 
string plan_status
int32 num_maneuvers
medusa_msgs/Maneuver[] maneuvers  #Maneuvers in the plan



================================================================================
MSG: medusa_msgs/Maneuver
#Single Maneuver Info (Goto [1], StationKeeping [2], Dock [3], Rows_Girona [4])

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



(provide :medusa_msgs/Plan "6eba4a4450477e427676a6c597611625")


