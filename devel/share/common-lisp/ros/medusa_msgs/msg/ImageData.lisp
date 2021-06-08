; Auto-generated. Do not edit!


(cl:in-package medusa_msgs-msg)


;//! \htmlinclude ImageData.msg.html

(cl:defclass <ImageData> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0)
   (nav_status
    :reader nav_status
    :initarg :nav_status
    :type medusa_msgs-msg:NavStatus
    :initform (cl:make-instance 'medusa_msgs-msg:NavStatus))
   (sensor_id
    :reader sensor_id
    :initarg :sensor_id
    :type cl:fixnum
    :initform 0)
   (file_dimension
    :reader file_dimension
    :initarg :file_dimension
    :type cl:integer
    :initform 0)
   (file_name
    :reader file_name
    :initarg :file_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass ImageData (<ImageData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name medusa_msgs-msg:<ImageData> is deprecated: use medusa_msgs-msg:ImageData instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <ImageData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:timestamp-val is deprecated.  Use medusa_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'nav_status-val :lambda-list '(m))
(cl:defmethod nav_status-val ((m <ImageData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:nav_status-val is deprecated.  Use medusa_msgs-msg:nav_status instead.")
  (nav_status m))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <ImageData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:sensor_id-val is deprecated.  Use medusa_msgs-msg:sensor_id instead.")
  (sensor_id m))

(cl:ensure-generic-function 'file_dimension-val :lambda-list '(m))
(cl:defmethod file_dimension-val ((m <ImageData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:file_dimension-val is deprecated.  Use medusa_msgs-msg:file_dimension instead.")
  (file_dimension m))

(cl:ensure-generic-function 'file_name-val :lambda-list '(m))
(cl:defmethod file_name-val ((m <ImageData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:file_name-val is deprecated.  Use medusa_msgs-msg:file_name instead.")
  (file_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageData>) ostream)
  "Serializes a message object of type '<ImageData>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nav_status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'file_dimension)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'file_name) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageData>) istream)
  "Deserializes a message object of type '<ImageData>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nav_status) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_dimension) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'file_name) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageData>)))
  "Returns string type for a message object of type '<ImageData>"
  "medusa_msgs/ImageData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageData)))
  "Returns string type for a message object of type 'ImageData"
  "medusa_msgs/ImageData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageData>)))
  "Returns md5sum for a message object of type '<ImageData>"
  "bdeb665e166b3b92a73c5133fe56b8ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageData)))
  "Returns md5sum for a message object of type 'ImageData"
  "bdeb665e166b3b92a73c5133fe56b8ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageData>)))
  "Returns full string definition for message of type '<ImageData>"
  (cl:format cl:nil "time timestamp	~%medusa_msgs/NavStatus nav_status ~%uint8 sensor_id~%int32 file_dimension~%std_msgs/String file_name~%~%================================================================================~%MSG: medusa_msgs/NavStatus~%#NavStatus Info~%~%medusa_msgs/Position position~%medusa_msgs/AttitudeEuler attitude~%medusa_msgs/VelocityNED linear_velocity~%time timestamp~%================================================================================~%MSG: medusa_msgs/Position~%#Position Info~%~%float64 latitude~%float64 longitude~%float64 depth~%float64 altitude~%================================================================================~%MSG: medusa_msgs/AttitudeEuler~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: medusa_msgs/VelocityNED~%float64 north_vel~%float64 east_vel~%float64 down_vel~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageData)))
  "Returns full string definition for message of type 'ImageData"
  (cl:format cl:nil "time timestamp	~%medusa_msgs/NavStatus nav_status ~%uint8 sensor_id~%int32 file_dimension~%std_msgs/String file_name~%~%================================================================================~%MSG: medusa_msgs/NavStatus~%#NavStatus Info~%~%medusa_msgs/Position position~%medusa_msgs/AttitudeEuler attitude~%medusa_msgs/VelocityNED linear_velocity~%time timestamp~%================================================================================~%MSG: medusa_msgs/Position~%#Position Info~%~%float64 latitude~%float64 longitude~%float64 depth~%float64 altitude~%================================================================================~%MSG: medusa_msgs/AttitudeEuler~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: medusa_msgs/VelocityNED~%float64 north_vel~%float64 east_vel~%float64 down_vel~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nav_status))
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'file_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageData>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageData
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':nav_status (nav_status msg))
    (cl:cons ':sensor_id (sensor_id msg))
    (cl:cons ':file_dimension (file_dimension msg))
    (cl:cons ':file_name (file_name msg))
))
