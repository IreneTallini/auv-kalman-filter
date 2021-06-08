; Auto-generated. Do not edit!


(cl:in-package medusa_msgs-msg)


;//! \htmlinclude Velocity.msg.html

(cl:defclass <Velocity> (roslisp-msg-protocol:ros-message)
  ((ned_velocity
    :reader ned_velocity
    :initarg :ned_velocity
    :type medusa_msgs-msg:VelocityNED
    :initform (cl:make-instance 'medusa_msgs-msg:VelocityNED))
   (body_velocity
    :reader body_velocity
    :initarg :body_velocity
    :type medusa_msgs-msg:VelocityBody
    :initform (cl:make-instance 'medusa_msgs-msg:VelocityBody))
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0))
)

(cl:defclass Velocity (<Velocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Velocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Velocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name medusa_msgs-msg:<Velocity> is deprecated: use medusa_msgs-msg:Velocity instead.")))

(cl:ensure-generic-function 'ned_velocity-val :lambda-list '(m))
(cl:defmethod ned_velocity-val ((m <Velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:ned_velocity-val is deprecated.  Use medusa_msgs-msg:ned_velocity instead.")
  (ned_velocity m))

(cl:ensure-generic-function 'body_velocity-val :lambda-list '(m))
(cl:defmethod body_velocity-val ((m <Velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:body_velocity-val is deprecated.  Use medusa_msgs-msg:body_velocity instead.")
  (body_velocity m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:speed-val is deprecated.  Use medusa_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <Velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:timestamp-val is deprecated.  Use medusa_msgs-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Velocity>) ostream)
  "Serializes a message object of type '<Velocity>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ned_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'body_velocity) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Velocity>) istream)
  "Deserializes a message object of type '<Velocity>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ned_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'body_velocity) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Velocity>)))
  "Returns string type for a message object of type '<Velocity>"
  "medusa_msgs/Velocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Velocity)))
  "Returns string type for a message object of type 'Velocity"
  "medusa_msgs/Velocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Velocity>)))
  "Returns md5sum for a message object of type '<Velocity>"
  "89c3e51eae0c79f238e531a3238e0f88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Velocity)))
  "Returns md5sum for a message object of type 'Velocity"
  "89c3e51eae0c79f238e531a3238e0f88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Velocity>)))
  "Returns full string definition for message of type '<Velocity>"
  (cl:format cl:nil "#Velocity Info~%~%medusa_msgs/VelocityNED ned_velocity~%medusa_msgs/VelocityBody body_velocity~%float64 speed #module of the velocity vector~%time timestamp~%================================================================================~%MSG: medusa_msgs/VelocityNED~%float64 north_vel~%float64 east_vel~%float64 down_vel~%================================================================================~%MSG: medusa_msgs/VelocityBody~%float64 vx~%float64 vy~%float64 vz~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Velocity)))
  "Returns full string definition for message of type 'Velocity"
  (cl:format cl:nil "#Velocity Info~%~%medusa_msgs/VelocityNED ned_velocity~%medusa_msgs/VelocityBody body_velocity~%float64 speed #module of the velocity vector~%time timestamp~%================================================================================~%MSG: medusa_msgs/VelocityNED~%float64 north_vel~%float64 east_vel~%float64 down_vel~%================================================================================~%MSG: medusa_msgs/VelocityBody~%float64 vx~%float64 vy~%float64 vz~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Velocity>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ned_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'body_velocity))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Velocity>))
  "Converts a ROS message object to a list"
  (cl:list 'Velocity
    (cl:cons ':ned_velocity (ned_velocity msg))
    (cl:cons ':body_velocity (body_velocity msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':timestamp (timestamp msg))
))
