; Auto-generated. Do not edit!


(cl:in-package medusa_msgs-msg)


;//! \htmlinclude Plan.msg.html

(cl:defclass <Plan> (roslisp-msg-protocol:ros-message)
  ((plan_name
    :reader plan_name
    :initarg :plan_name
    :type cl:string
    :initform "")
   (plan_status
    :reader plan_status
    :initarg :plan_status
    :type cl:string
    :initform "")
   (num_maneuvers
    :reader num_maneuvers
    :initarg :num_maneuvers
    :type cl:integer
    :initform 0)
   (maneuvers
    :reader maneuvers
    :initarg :maneuvers
    :type (cl:vector medusa_msgs-msg:Maneuver)
   :initform (cl:make-array 0 :element-type 'medusa_msgs-msg:Maneuver :initial-element (cl:make-instance 'medusa_msgs-msg:Maneuver))))
)

(cl:defclass Plan (<Plan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Plan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Plan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name medusa_msgs-msg:<Plan> is deprecated: use medusa_msgs-msg:Plan instead.")))

(cl:ensure-generic-function 'plan_name-val :lambda-list '(m))
(cl:defmethod plan_name-val ((m <Plan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:plan_name-val is deprecated.  Use medusa_msgs-msg:plan_name instead.")
  (plan_name m))

(cl:ensure-generic-function 'plan_status-val :lambda-list '(m))
(cl:defmethod plan_status-val ((m <Plan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:plan_status-val is deprecated.  Use medusa_msgs-msg:plan_status instead.")
  (plan_status m))

(cl:ensure-generic-function 'num_maneuvers-val :lambda-list '(m))
(cl:defmethod num_maneuvers-val ((m <Plan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:num_maneuvers-val is deprecated.  Use medusa_msgs-msg:num_maneuvers instead.")
  (num_maneuvers m))

(cl:ensure-generic-function 'maneuvers-val :lambda-list '(m))
(cl:defmethod maneuvers-val ((m <Plan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:maneuvers-val is deprecated.  Use medusa_msgs-msg:maneuvers instead.")
  (maneuvers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Plan>) ostream)
  "Serializes a message object of type '<Plan>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'plan_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'plan_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'plan_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'plan_status))
  (cl:let* ((signed (cl:slot-value msg 'num_maneuvers)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'maneuvers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'maneuvers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Plan>) istream)
  "Deserializes a message object of type '<Plan>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'plan_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'plan_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'plan_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'plan_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_maneuvers) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'maneuvers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'maneuvers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'medusa_msgs-msg:Maneuver))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Plan>)))
  "Returns string type for a message object of type '<Plan>"
  "medusa_msgs/Plan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Plan)))
  "Returns string type for a message object of type 'Plan"
  "medusa_msgs/Plan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Plan>)))
  "Returns md5sum for a message object of type '<Plan>"
  "6eba4a4450477e427676a6c597611625")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Plan)))
  "Returns md5sum for a message object of type 'Plan"
  "6eba4a4450477e427676a6c597611625")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Plan>)))
  "Returns full string definition for message of type '<Plan>"
  (cl:format cl:nil "#Plan~%~%string plan_name ~%string plan_status~%int32 num_maneuvers~%medusa_msgs/Maneuver[] maneuvers  #Maneuvers in the plan~%~%~%~%================================================================================~%MSG: medusa_msgs/Maneuver~%#Single Maneuver Info (Goto [1], StationKeeping [2], Dock [3], Rows_Girona [4])~%~%uint8 maneuver_name 	#Used in maneuvers [1,2,3,4]~%medusa_msgs/Position position #[1,2,3]~%uint8 z_units	#[1,2,3,4]~%uint8 speed_units	#[1,2,4]~%float64 speed	#[1,2,4]~%~%float64 timeout	#[1]~%~%float64 radius 		#[2]~%float64 duration 	#[2]~%~%uint8 docking_id	#[3]~%uint8 docking_maneuver	#[3]~%~%medusa_msgs/Position waypoint_1 #[4]~%medusa_msgs/Position waypoint_2 #[4]~%medusa_msgs/Position waypoint_3 #[4]~%float64 track_spacing  #[4]~%float64 across_tracks  #[4]~%~%~%#Define related to maneuver_name~%uint8 MANEUVER_NAME_GOTO=1~%uint8 MANEUVER_NAME_ROWS=2~%uint8 MANEUVER_NAME_STATION_KEEPING=3~%uint8 MANEUVER_NAME_DOCK=4~%~%#Define related to z_units~%uint8 Z_UNITS_DEPTH=5~%uint8 Z_UNITS_ALTITUDE=6~%~%#Define related to speed_units~%uint8 SPEED_UNITS_METER_PS=7~%uint8 SPEED_UNITS_RPM=8~%uint8 SPEED_UNITS_PERCENTAGE=9~%~%#Define related to the Docking station~%uint8 VEHICLE_DOCK=1~%uint8 VEHICLE_UNDOCK=0~%~%~%================================================================================~%MSG: medusa_msgs/Position~%#Position Info~%~%float64 latitude~%float64 longitude~%float64 depth~%float64 altitude~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Plan)))
  "Returns full string definition for message of type 'Plan"
  (cl:format cl:nil "#Plan~%~%string plan_name ~%string plan_status~%int32 num_maneuvers~%medusa_msgs/Maneuver[] maneuvers  #Maneuvers in the plan~%~%~%~%================================================================================~%MSG: medusa_msgs/Maneuver~%#Single Maneuver Info (Goto [1], StationKeeping [2], Dock [3], Rows_Girona [4])~%~%uint8 maneuver_name 	#Used in maneuvers [1,2,3,4]~%medusa_msgs/Position position #[1,2,3]~%uint8 z_units	#[1,2,3,4]~%uint8 speed_units	#[1,2,4]~%float64 speed	#[1,2,4]~%~%float64 timeout	#[1]~%~%float64 radius 		#[2]~%float64 duration 	#[2]~%~%uint8 docking_id	#[3]~%uint8 docking_maneuver	#[3]~%~%medusa_msgs/Position waypoint_1 #[4]~%medusa_msgs/Position waypoint_2 #[4]~%medusa_msgs/Position waypoint_3 #[4]~%float64 track_spacing  #[4]~%float64 across_tracks  #[4]~%~%~%#Define related to maneuver_name~%uint8 MANEUVER_NAME_GOTO=1~%uint8 MANEUVER_NAME_ROWS=2~%uint8 MANEUVER_NAME_STATION_KEEPING=3~%uint8 MANEUVER_NAME_DOCK=4~%~%#Define related to z_units~%uint8 Z_UNITS_DEPTH=5~%uint8 Z_UNITS_ALTITUDE=6~%~%#Define related to speed_units~%uint8 SPEED_UNITS_METER_PS=7~%uint8 SPEED_UNITS_RPM=8~%uint8 SPEED_UNITS_PERCENTAGE=9~%~%#Define related to the Docking station~%uint8 VEHICLE_DOCK=1~%uint8 VEHICLE_UNDOCK=0~%~%~%================================================================================~%MSG: medusa_msgs/Position~%#Position Info~%~%float64 latitude~%float64 longitude~%float64 depth~%float64 altitude~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Plan>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'plan_name))
     4 (cl:length (cl:slot-value msg 'plan_status))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'maneuvers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Plan>))
  "Converts a ROS message object to a list"
  (cl:list 'Plan
    (cl:cons ':plan_name (plan_name msg))
    (cl:cons ':plan_status (plan_status msg))
    (cl:cons ':num_maneuvers (num_maneuvers msg))
    (cl:cons ':maneuvers (maneuvers msg))
))
