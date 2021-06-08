; Auto-generated. Do not edit!


(cl:in-package medusa_msgs-msg)


;//! \htmlinclude VehicleStatus.msg.html

(cl:defclass <VehicleStatus> (roslisp-msg-protocol:ros-message)
  ((temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0)
   (humidity
    :reader humidity
    :initarg :humidity
    :type cl:float
    :initform 0.0)
   (buoyancy
    :reader buoyancy
    :initarg :buoyancy
    :type cl:float
    :initform 0.0)
   (internal_pressure
    :reader internal_pressure
    :initarg :internal_pressure
    :type cl:float
    :initform 0.0)
   (battery
    :reader battery
    :initarg :battery
    :type medusa_msgs-msg:Battery
    :initform (cl:make-instance 'medusa_msgs-msg:Battery))
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0))
)

(cl:defclass VehicleStatus (<VehicleStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name medusa_msgs-msg:<VehicleStatus> is deprecated: use medusa_msgs-msg:VehicleStatus instead.")))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <VehicleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:temperature-val is deprecated.  Use medusa_msgs-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'humidity-val :lambda-list '(m))
(cl:defmethod humidity-val ((m <VehicleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:humidity-val is deprecated.  Use medusa_msgs-msg:humidity instead.")
  (humidity m))

(cl:ensure-generic-function 'buoyancy-val :lambda-list '(m))
(cl:defmethod buoyancy-val ((m <VehicleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:buoyancy-val is deprecated.  Use medusa_msgs-msg:buoyancy instead.")
  (buoyancy m))

(cl:ensure-generic-function 'internal_pressure-val :lambda-list '(m))
(cl:defmethod internal_pressure-val ((m <VehicleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:internal_pressure-val is deprecated.  Use medusa_msgs-msg:internal_pressure instead.")
  (internal_pressure m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <VehicleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:battery-val is deprecated.  Use medusa_msgs-msg:battery instead.")
  (battery m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <VehicleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:timestamp-val is deprecated.  Use medusa_msgs-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleStatus>) ostream)
  "Serializes a message object of type '<VehicleStatus>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'humidity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'buoyancy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'internal_pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'battery) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleStatus>) istream)
  "Deserializes a message object of type '<VehicleStatus>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'humidity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'buoyancy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'internal_pressure) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'battery) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleStatus>)))
  "Returns string type for a message object of type '<VehicleStatus>"
  "medusa_msgs/VehicleStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleStatus)))
  "Returns string type for a message object of type 'VehicleStatus"
  "medusa_msgs/VehicleStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleStatus>)))
  "Returns md5sum for a message object of type '<VehicleStatus>"
  "a35718b2b68a03159df7289abbd1e7c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleStatus)))
  "Returns md5sum for a message object of type 'VehicleStatus"
  "a35718b2b68a03159df7289abbd1e7c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleStatus>)))
  "Returns full string definition for message of type '<VehicleStatus>"
  (cl:format cl:nil "#VehicleStatus Info~%~%float32 temperature~%float32 humidity~%float32 buoyancy~%float32 internal_pressure~%medusa_msgs/Battery battery~%time timestamp~%================================================================================~%MSG: medusa_msgs/Battery~%#Battery Info~%~%medusa_msgs/NavStatus nav_status~%time timestamp~%float32 percentage~%~%================================================================================~%MSG: medusa_msgs/NavStatus~%#NavStatus Info~%~%medusa_msgs/Position position~%medusa_msgs/AttitudeEuler attitude~%medusa_msgs/VelocityNED linear_velocity~%time timestamp~%================================================================================~%MSG: medusa_msgs/Position~%#Position Info~%~%float64 latitude~%float64 longitude~%float64 depth~%float64 altitude~%================================================================================~%MSG: medusa_msgs/AttitudeEuler~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: medusa_msgs/VelocityNED~%float64 north_vel~%float64 east_vel~%float64 down_vel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleStatus)))
  "Returns full string definition for message of type 'VehicleStatus"
  (cl:format cl:nil "#VehicleStatus Info~%~%float32 temperature~%float32 humidity~%float32 buoyancy~%float32 internal_pressure~%medusa_msgs/Battery battery~%time timestamp~%================================================================================~%MSG: medusa_msgs/Battery~%#Battery Info~%~%medusa_msgs/NavStatus nav_status~%time timestamp~%float32 percentage~%~%================================================================================~%MSG: medusa_msgs/NavStatus~%#NavStatus Info~%~%medusa_msgs/Position position~%medusa_msgs/AttitudeEuler attitude~%medusa_msgs/VelocityNED linear_velocity~%time timestamp~%================================================================================~%MSG: medusa_msgs/Position~%#Position Info~%~%float64 latitude~%float64 longitude~%float64 depth~%float64 altitude~%================================================================================~%MSG: medusa_msgs/AttitudeEuler~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: medusa_msgs/VelocityNED~%float64 north_vel~%float64 east_vel~%float64 down_vel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleStatus>))
  (cl:+ 0
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'battery))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleStatus
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':humidity (humidity msg))
    (cl:cons ':buoyancy (buoyancy msg))
    (cl:cons ':internal_pressure (internal_pressure msg))
    (cl:cons ':battery (battery msg))
    (cl:cons ':timestamp (timestamp msg))
))
