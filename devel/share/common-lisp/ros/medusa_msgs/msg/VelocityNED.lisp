; Auto-generated. Do not edit!


(cl:in-package medusa_msgs-msg)


;//! \htmlinclude VelocityNED.msg.html

(cl:defclass <VelocityNED> (roslisp-msg-protocol:ros-message)
  ((north_vel
    :reader north_vel
    :initarg :north_vel
    :type cl:float
    :initform 0.0)
   (east_vel
    :reader east_vel
    :initarg :east_vel
    :type cl:float
    :initform 0.0)
   (down_vel
    :reader down_vel
    :initarg :down_vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass VelocityNED (<VelocityNED>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityNED>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityNED)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name medusa_msgs-msg:<VelocityNED> is deprecated: use medusa_msgs-msg:VelocityNED instead.")))

(cl:ensure-generic-function 'north_vel-val :lambda-list '(m))
(cl:defmethod north_vel-val ((m <VelocityNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:north_vel-val is deprecated.  Use medusa_msgs-msg:north_vel instead.")
  (north_vel m))

(cl:ensure-generic-function 'east_vel-val :lambda-list '(m))
(cl:defmethod east_vel-val ((m <VelocityNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:east_vel-val is deprecated.  Use medusa_msgs-msg:east_vel instead.")
  (east_vel m))

(cl:ensure-generic-function 'down_vel-val :lambda-list '(m))
(cl:defmethod down_vel-val ((m <VelocityNED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:down_vel-val is deprecated.  Use medusa_msgs-msg:down_vel instead.")
  (down_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityNED>) ostream)
  "Serializes a message object of type '<VelocityNED>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'north_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'east_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'down_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityNED>) istream)
  "Deserializes a message object of type '<VelocityNED>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'north_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'east_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'down_vel) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityNED>)))
  "Returns string type for a message object of type '<VelocityNED>"
  "medusa_msgs/VelocityNED")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityNED)))
  "Returns string type for a message object of type 'VelocityNED"
  "medusa_msgs/VelocityNED")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityNED>)))
  "Returns md5sum for a message object of type '<VelocityNED>"
  "b2b8e51aaded904c3e05f16a0c910d29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityNED)))
  "Returns md5sum for a message object of type 'VelocityNED"
  "b2b8e51aaded904c3e05f16a0c910d29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityNED>)))
  "Returns full string definition for message of type '<VelocityNED>"
  (cl:format cl:nil "float64 north_vel~%float64 east_vel~%float64 down_vel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityNED)))
  "Returns full string definition for message of type 'VelocityNED"
  (cl:format cl:nil "float64 north_vel~%float64 east_vel~%float64 down_vel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityNED>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityNED>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityNED
    (cl:cons ':north_vel (north_vel msg))
    (cl:cons ':east_vel (east_vel msg))
    (cl:cons ':down_vel (down_vel msg))
))
