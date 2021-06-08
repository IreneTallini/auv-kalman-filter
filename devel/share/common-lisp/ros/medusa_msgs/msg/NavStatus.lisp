; Auto-generated. Do not edit!


(cl:in-package medusa_msgs-msg)


;//! \htmlinclude NavStatus.msg.html

(cl:defclass <NavStatus> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type medusa_msgs-msg:Position
    :initform (cl:make-instance 'medusa_msgs-msg:Position))
   (attitude
    :reader attitude
    :initarg :attitude
    :type medusa_msgs-msg:AttitudeEuler
    :initform (cl:make-instance 'medusa_msgs-msg:AttitudeEuler))
   (linear_velocity
    :reader linear_velocity
    :initarg :linear_velocity
    :type medusa_msgs-msg:VelocityNED
    :initform (cl:make-instance 'medusa_msgs-msg:VelocityNED))
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0))
)

(cl:defclass NavStatus (<NavStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name medusa_msgs-msg:<NavStatus> is deprecated: use medusa_msgs-msg:NavStatus instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:position-val is deprecated.  Use medusa_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'attitude-val :lambda-list '(m))
(cl:defmethod attitude-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:attitude-val is deprecated.  Use medusa_msgs-msg:attitude instead.")
  (attitude m))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:linear_velocity-val is deprecated.  Use medusa_msgs-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:timestamp-val is deprecated.  Use medusa_msgs-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavStatus>) ostream)
  "Serializes a message object of type '<NavStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'attitude) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_velocity) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavStatus>) istream)
  "Deserializes a message object of type '<NavStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'attitude) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_velocity) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavStatus>)))
  "Returns string type for a message object of type '<NavStatus>"
  "medusa_msgs/NavStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavStatus)))
  "Returns string type for a message object of type 'NavStatus"
  "medusa_msgs/NavStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavStatus>)))
  "Returns md5sum for a message object of type '<NavStatus>"
  "efaabb5a01aa1186aa62d98b6b280789")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavStatus)))
  "Returns md5sum for a message object of type 'NavStatus"
  "efaabb5a01aa1186aa62d98b6b280789")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavStatus>)))
  "Returns full string definition for message of type '<NavStatus>"
  (cl:format cl:nil "#NavStatus Info~%~%medusa_msgs/Position position~%medusa_msgs/AttitudeEuler attitude~%medusa_msgs/VelocityNED linear_velocity~%time timestamp~%================================================================================~%MSG: medusa_msgs/Position~%#Position Info~%~%float64 latitude~%float64 longitude~%float64 depth~%float64 altitude~%================================================================================~%MSG: medusa_msgs/AttitudeEuler~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: medusa_msgs/VelocityNED~%float64 north_vel~%float64 east_vel~%float64 down_vel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavStatus)))
  "Returns full string definition for message of type 'NavStatus"
  (cl:format cl:nil "#NavStatus Info~%~%medusa_msgs/Position position~%medusa_msgs/AttitudeEuler attitude~%medusa_msgs/VelocityNED linear_velocity~%time timestamp~%================================================================================~%MSG: medusa_msgs/Position~%#Position Info~%~%float64 latitude~%float64 longitude~%float64 depth~%float64 altitude~%================================================================================~%MSG: medusa_msgs/AttitudeEuler~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: medusa_msgs/VelocityNED~%float64 north_vel~%float64 east_vel~%float64 down_vel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'attitude))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_velocity))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NavStatus
    (cl:cons ':position (position msg))
    (cl:cons ':attitude (attitude msg))
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':timestamp (timestamp msg))
))
