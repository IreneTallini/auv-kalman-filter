; Auto-generated. Do not edit!


(cl:in-package medusa_msgs-msg)


;//! \htmlinclude Maneuver.msg.html

(cl:defclass <Maneuver> (roslisp-msg-protocol:ros-message)
  ((maneuver_name
    :reader maneuver_name
    :initarg :maneuver_name
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type medusa_msgs-msg:Position
    :initform (cl:make-instance 'medusa_msgs-msg:Position))
   (z_units
    :reader z_units
    :initarg :z_units
    :type cl:fixnum
    :initform 0)
   (speed_units
    :reader speed_units
    :initarg :speed_units
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:float
    :initform 0.0)
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0)
   (docking_id
    :reader docking_id
    :initarg :docking_id
    :type cl:fixnum
    :initform 0)
   (docking_maneuver
    :reader docking_maneuver
    :initarg :docking_maneuver
    :type cl:fixnum
    :initform 0)
   (waypoint_1
    :reader waypoint_1
    :initarg :waypoint_1
    :type medusa_msgs-msg:Position
    :initform (cl:make-instance 'medusa_msgs-msg:Position))
   (waypoint_2
    :reader waypoint_2
    :initarg :waypoint_2
    :type medusa_msgs-msg:Position
    :initform (cl:make-instance 'medusa_msgs-msg:Position))
   (waypoint_3
    :reader waypoint_3
    :initarg :waypoint_3
    :type medusa_msgs-msg:Position
    :initform (cl:make-instance 'medusa_msgs-msg:Position))
   (track_spacing
    :reader track_spacing
    :initarg :track_spacing
    :type cl:float
    :initform 0.0)
   (across_tracks
    :reader across_tracks
    :initarg :across_tracks
    :type cl:float
    :initform 0.0))
)

(cl:defclass Maneuver (<Maneuver>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Maneuver>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Maneuver)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name medusa_msgs-msg:<Maneuver> is deprecated: use medusa_msgs-msg:Maneuver instead.")))

(cl:ensure-generic-function 'maneuver_name-val :lambda-list '(m))
(cl:defmethod maneuver_name-val ((m <Maneuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:maneuver_name-val is deprecated.  Use medusa_msgs-msg:maneuver_name instead.")
  (maneuver_name m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Maneuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:position-val is deprecated.  Use medusa_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'z_units-val :lambda-list '(m))
(cl:defmethod z_units-val ((m <Maneuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:z_units-val is deprecated.  Use medusa_msgs-msg:z_units instead.")
  (z_units m))

(cl:ensure-generic-function 'speed_units-val :lambda-list '(m))
(cl:defmethod speed_units-val ((m <Maneuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:speed_units-val is deprecated.  Use medusa_msgs-msg:speed_units instead.")
  (speed_units m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Maneuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:speed-val is deprecated.  Use medusa_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <Maneuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:timeout-val is deprecated.  Use medusa_msgs-msg:timeout instead.")
  (timeout m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <Maneuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:radius-val is deprecated.  Use medusa_msgs-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <Maneuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:duration-val is deprecated.  Use medusa_msgs-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'docking_id-val :lambda-list '(m))
(cl:defmethod docking_id-val ((m <Maneuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:docking_id-val is deprecated.  Use medusa_msgs-msg:docking_id instead.")
  (docking_id m))

(cl:ensure-generic-function 'docking_maneuver-val :lambda-list '(m))
(cl:defmethod docking_maneuver-val ((m <Maneuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:docking_maneuver-val is deprecated.  Use medusa_msgs-msg:docking_maneuver instead.")
  (docking_maneuver m))

(cl:ensure-generic-function 'waypoint_1-val :lambda-list '(m))
(cl:defmethod waypoint_1-val ((m <Maneuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:waypoint_1-val is deprecated.  Use medusa_msgs-msg:waypoint_1 instead.")
  (waypoint_1 m))

(cl:ensure-generic-function 'waypoint_2-val :lambda-list '(m))
(cl:defmethod waypoint_2-val ((m <Maneuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:waypoint_2-val is deprecated.  Use medusa_msgs-msg:waypoint_2 instead.")
  (waypoint_2 m))

(cl:ensure-generic-function 'waypoint_3-val :lambda-list '(m))
(cl:defmethod waypoint_3-val ((m <Maneuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:waypoint_3-val is deprecated.  Use medusa_msgs-msg:waypoint_3 instead.")
  (waypoint_3 m))

(cl:ensure-generic-function 'track_spacing-val :lambda-list '(m))
(cl:defmethod track_spacing-val ((m <Maneuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:track_spacing-val is deprecated.  Use medusa_msgs-msg:track_spacing instead.")
  (track_spacing m))

(cl:ensure-generic-function 'across_tracks-val :lambda-list '(m))
(cl:defmethod across_tracks-val ((m <Maneuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:across_tracks-val is deprecated.  Use medusa_msgs-msg:across_tracks instead.")
  (across_tracks m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Maneuver>)))
    "Constants for message type '<Maneuver>"
  '((:MANEUVER_NAME_GOTO . 1)
    (:MANEUVER_NAME_ROWS . 2)
    (:MANEUVER_NAME_STATION_KEEPING . 3)
    (:MANEUVER_NAME_DOCK . 4)
    (:Z_UNITS_DEPTH . 5)
    (:Z_UNITS_ALTITUDE . 6)
    (:SPEED_UNITS_METER_PS . 7)
    (:SPEED_UNITS_RPM . 8)
    (:SPEED_UNITS_PERCENTAGE . 9)
    (:VEHICLE_DOCK . 1)
    (:VEHICLE_UNDOCK . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Maneuver)))
    "Constants for message type 'Maneuver"
  '((:MANEUVER_NAME_GOTO . 1)
    (:MANEUVER_NAME_ROWS . 2)
    (:MANEUVER_NAME_STATION_KEEPING . 3)
    (:MANEUVER_NAME_DOCK . 4)
    (:Z_UNITS_DEPTH . 5)
    (:Z_UNITS_ALTITUDE . 6)
    (:SPEED_UNITS_METER_PS . 7)
    (:SPEED_UNITS_RPM . 8)
    (:SPEED_UNITS_PERCENTAGE . 9)
    (:VEHICLE_DOCK . 1)
    (:VEHICLE_UNDOCK . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Maneuver>) ostream)
  "Serializes a message object of type '<Maneuver>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maneuver_name)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'z_units)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_units)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timeout))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'docking_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'docking_maneuver)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoint_1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoint_2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoint_3) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'track_spacing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'across_tracks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Maneuver>) istream)
  "Deserializes a message object of type '<Maneuver>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maneuver_name)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'z_units)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_units)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeout) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'docking_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'docking_maneuver)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoint_1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoint_2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoint_3) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'track_spacing) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'across_tracks) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Maneuver>)))
  "Returns string type for a message object of type '<Maneuver>"
  "medusa_msgs/Maneuver")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Maneuver)))
  "Returns string type for a message object of type 'Maneuver"
  "medusa_msgs/Maneuver")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Maneuver>)))
  "Returns md5sum for a message object of type '<Maneuver>"
  "6ee9d1b8dc5a62fdf564b7b7c9695f13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Maneuver)))
  "Returns md5sum for a message object of type 'Maneuver"
  "6ee9d1b8dc5a62fdf564b7b7c9695f13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Maneuver>)))
  "Returns full string definition for message of type '<Maneuver>"
  (cl:format cl:nil "#Single Maneuver Info (Goto [1], StationKeeping [2], Dock [3], Rows_Girona [4])~%~%uint8 maneuver_name 	#Used in maneuvers [1,2,3,4]~%medusa_msgs/Position position #[1,2,3]~%uint8 z_units	#[1,2,3,4]~%uint8 speed_units	#[1,2,4]~%float64 speed	#[1,2,4]~%~%float64 timeout	#[1]~%~%float64 radius 		#[2]~%float64 duration 	#[2]~%~%uint8 docking_id	#[3]~%uint8 docking_maneuver	#[3]~%~%medusa_msgs/Position waypoint_1 #[4]~%medusa_msgs/Position waypoint_2 #[4]~%medusa_msgs/Position waypoint_3 #[4]~%float64 track_spacing  #[4]~%float64 across_tracks  #[4]~%~%~%#Define related to maneuver_name~%uint8 MANEUVER_NAME_GOTO=1~%uint8 MANEUVER_NAME_ROWS=2~%uint8 MANEUVER_NAME_STATION_KEEPING=3~%uint8 MANEUVER_NAME_DOCK=4~%~%#Define related to z_units~%uint8 Z_UNITS_DEPTH=5~%uint8 Z_UNITS_ALTITUDE=6~%~%#Define related to speed_units~%uint8 SPEED_UNITS_METER_PS=7~%uint8 SPEED_UNITS_RPM=8~%uint8 SPEED_UNITS_PERCENTAGE=9~%~%#Define related to the Docking station~%uint8 VEHICLE_DOCK=1~%uint8 VEHICLE_UNDOCK=0~%~%~%================================================================================~%MSG: medusa_msgs/Position~%#Position Info~%~%float64 latitude~%float64 longitude~%float64 depth~%float64 altitude~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Maneuver)))
  "Returns full string definition for message of type 'Maneuver"
  (cl:format cl:nil "#Single Maneuver Info (Goto [1], StationKeeping [2], Dock [3], Rows_Girona [4])~%~%uint8 maneuver_name 	#Used in maneuvers [1,2,3,4]~%medusa_msgs/Position position #[1,2,3]~%uint8 z_units	#[1,2,3,4]~%uint8 speed_units	#[1,2,4]~%float64 speed	#[1,2,4]~%~%float64 timeout	#[1]~%~%float64 radius 		#[2]~%float64 duration 	#[2]~%~%uint8 docking_id	#[3]~%uint8 docking_maneuver	#[3]~%~%medusa_msgs/Position waypoint_1 #[4]~%medusa_msgs/Position waypoint_2 #[4]~%medusa_msgs/Position waypoint_3 #[4]~%float64 track_spacing  #[4]~%float64 across_tracks  #[4]~%~%~%#Define related to maneuver_name~%uint8 MANEUVER_NAME_GOTO=1~%uint8 MANEUVER_NAME_ROWS=2~%uint8 MANEUVER_NAME_STATION_KEEPING=3~%uint8 MANEUVER_NAME_DOCK=4~%~%#Define related to z_units~%uint8 Z_UNITS_DEPTH=5~%uint8 Z_UNITS_ALTITUDE=6~%~%#Define related to speed_units~%uint8 SPEED_UNITS_METER_PS=7~%uint8 SPEED_UNITS_RPM=8~%uint8 SPEED_UNITS_PERCENTAGE=9~%~%#Define related to the Docking station~%uint8 VEHICLE_DOCK=1~%uint8 VEHICLE_UNDOCK=0~%~%~%================================================================================~%MSG: medusa_msgs/Position~%#Position Info~%~%float64 latitude~%float64 longitude~%float64 depth~%float64 altitude~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Maneuver>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     1
     1
     8
     8
     8
     8
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoint_1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoint_2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoint_3))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Maneuver>))
  "Converts a ROS message object to a list"
  (cl:list 'Maneuver
    (cl:cons ':maneuver_name (maneuver_name msg))
    (cl:cons ':position (position msg))
    (cl:cons ':z_units (z_units msg))
    (cl:cons ':speed_units (speed_units msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':timeout (timeout msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':docking_id (docking_id msg))
    (cl:cons ':docking_maneuver (docking_maneuver msg))
    (cl:cons ':waypoint_1 (waypoint_1 msg))
    (cl:cons ':waypoint_2 (waypoint_2 msg))
    (cl:cons ':waypoint_3 (waypoint_3 msg))
    (cl:cons ':track_spacing (track_spacing msg))
    (cl:cons ':across_tracks (across_tracks msg))
))
