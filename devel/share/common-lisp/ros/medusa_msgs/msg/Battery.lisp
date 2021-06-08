; Auto-generated. Do not edit!


(cl:in-package medusa_msgs-msg)


;//! \htmlinclude Battery.msg.html

(cl:defclass <Battery> (roslisp-msg-protocol:ros-message)
  ((nav_status
    :reader nav_status
    :initarg :nav_status
    :type medusa_msgs-msg:NavStatus
    :initform (cl:make-instance 'medusa_msgs-msg:NavStatus))
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0)
   (percentage
    :reader percentage
    :initarg :percentage
    :type cl:float
    :initform 0.0))
)

(cl:defclass Battery (<Battery>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Battery>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Battery)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name medusa_msgs-msg:<Battery> is deprecated: use medusa_msgs-msg:Battery instead.")))

(cl:ensure-generic-function 'nav_status-val :lambda-list '(m))
(cl:defmethod nav_status-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:nav_status-val is deprecated.  Use medusa_msgs-msg:nav_status instead.")
  (nav_status m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:timestamp-val is deprecated.  Use medusa_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'percentage-val :lambda-list '(m))
(cl:defmethod percentage-val ((m <Battery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:percentage-val is deprecated.  Use medusa_msgs-msg:percentage instead.")
  (percentage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Battery>) ostream)
  "Serializes a message object of type '<Battery>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nav_status) ostream)
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'percentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Battery>) istream)
  "Deserializes a message object of type '<Battery>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nav_status) istream)
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percentage) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Battery>)))
  "Returns string type for a message object of type '<Battery>"
  "medusa_msgs/Battery")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Battery)))
  "Returns string type for a message object of type 'Battery"
  "medusa_msgs/Battery")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Battery>)))
  "Returns md5sum for a message object of type '<Battery>"
  "c9b87d3791e115e77dfb5d873b235e5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Battery)))
  "Returns md5sum for a message object of type 'Battery"
  "c9b87d3791e115e77dfb5d873b235e5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Battery>)))
  "Returns full string definition for message of type '<Battery>"
  (cl:format cl:nil "#Battery Info~%~%medusa_msgs/NavStatus nav_status~%time timestamp~%float32 percentage~%~%================================================================================~%MSG: medusa_msgs/NavStatus~%#NavStatus Info~%~%medusa_msgs/Position position~%medusa_msgs/AttitudeEuler attitude~%medusa_msgs/VelocityNED linear_velocity~%time timestamp~%================================================================================~%MSG: medusa_msgs/Position~%#Position Info~%~%float64 latitude~%float64 longitude~%float64 depth~%float64 altitude~%================================================================================~%MSG: medusa_msgs/AttitudeEuler~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: medusa_msgs/VelocityNED~%float64 north_vel~%float64 east_vel~%float64 down_vel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Battery)))
  "Returns full string definition for message of type 'Battery"
  (cl:format cl:nil "#Battery Info~%~%medusa_msgs/NavStatus nav_status~%time timestamp~%float32 percentage~%~%================================================================================~%MSG: medusa_msgs/NavStatus~%#NavStatus Info~%~%medusa_msgs/Position position~%medusa_msgs/AttitudeEuler attitude~%medusa_msgs/VelocityNED linear_velocity~%time timestamp~%================================================================================~%MSG: medusa_msgs/Position~%#Position Info~%~%float64 latitude~%float64 longitude~%float64 depth~%float64 altitude~%================================================================================~%MSG: medusa_msgs/AttitudeEuler~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: medusa_msgs/VelocityNED~%float64 north_vel~%float64 east_vel~%float64 down_vel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Battery>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nav_status))
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Battery>))
  "Converts a ROS message object to a list"
  (cl:list 'Battery
    (cl:cons ':nav_status (nav_status msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':percentage (percentage msg))
))
