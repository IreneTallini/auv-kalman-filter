; Auto-generated. Do not edit!


(cl:in-package medusa_msgs-msg)


;//! \htmlinclude SensorMeasurement.msg.html

(cl:defclass <SensorMeasurement> (roslisp-msg-protocol:ros-message)
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
   (measurement_name
    :reader measurement_name
    :initarg :measurement_name
    :type cl:string
    :initform "")
   (sensor_id
    :reader sensor_id
    :initarg :sensor_id
    :type cl:fixnum
    :initform 0)
   (sample
    :reader sample
    :initarg :sample
    :type cl:float
    :initform 0.0)
   (frequency
    :reader frequency
    :initarg :frequency
    :type cl:float
    :initform 0.0)
   (error
    :reader error
    :initarg :error
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SensorMeasurement (<SensorMeasurement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorMeasurement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorMeasurement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name medusa_msgs-msg:<SensorMeasurement> is deprecated: use medusa_msgs-msg:SensorMeasurement instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <SensorMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:timestamp-val is deprecated.  Use medusa_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'nav_status-val :lambda-list '(m))
(cl:defmethod nav_status-val ((m <SensorMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:nav_status-val is deprecated.  Use medusa_msgs-msg:nav_status instead.")
  (nav_status m))

(cl:ensure-generic-function 'measurement_name-val :lambda-list '(m))
(cl:defmethod measurement_name-val ((m <SensorMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:measurement_name-val is deprecated.  Use medusa_msgs-msg:measurement_name instead.")
  (measurement_name m))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <SensorMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:sensor_id-val is deprecated.  Use medusa_msgs-msg:sensor_id instead.")
  (sensor_id m))

(cl:ensure-generic-function 'sample-val :lambda-list '(m))
(cl:defmethod sample-val ((m <SensorMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:sample-val is deprecated.  Use medusa_msgs-msg:sample instead.")
  (sample m))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <SensorMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:frequency-val is deprecated.  Use medusa_msgs-msg:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <SensorMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:error-val is deprecated.  Use medusa_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorMeasurement>) ostream)
  "Serializes a message object of type '<SensorMeasurement>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'measurement_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'measurement_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sample))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'error)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorMeasurement>) istream)
  "Deserializes a message object of type '<SensorMeasurement>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'measurement_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'measurement_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sample) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frequency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorMeasurement>)))
  "Returns string type for a message object of type '<SensorMeasurement>"
  "medusa_msgs/SensorMeasurement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorMeasurement)))
  "Returns string type for a message object of type 'SensorMeasurement"
  "medusa_msgs/SensorMeasurement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorMeasurement>)))
  "Returns md5sum for a message object of type '<SensorMeasurement>"
  "30226808724a611420a1dfa82ca2c2ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorMeasurement)))
  "Returns md5sum for a message object of type 'SensorMeasurement"
  "30226808724a611420a1dfa82ca2c2ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorMeasurement>)))
  "Returns full string definition for message of type '<SensorMeasurement>"
  (cl:format cl:nil "#Measurement obtained by a sensor~%~%time timestamp	~%medusa_msgs/NavStatus nav_status ~%string measurement_name~%uint8 sensor_id~%float32 sample	#Sensor measurement value~%float32 frequency~%int16 error~%~%================================================================================~%MSG: medusa_msgs/NavStatus~%#NavStatus Info~%~%medusa_msgs/Position position~%medusa_msgs/AttitudeEuler attitude~%medusa_msgs/VelocityNED linear_velocity~%time timestamp~%================================================================================~%MSG: medusa_msgs/Position~%#Position Info~%~%float64 latitude~%float64 longitude~%float64 depth~%float64 altitude~%================================================================================~%MSG: medusa_msgs/AttitudeEuler~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: medusa_msgs/VelocityNED~%float64 north_vel~%float64 east_vel~%float64 down_vel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorMeasurement)))
  "Returns full string definition for message of type 'SensorMeasurement"
  (cl:format cl:nil "#Measurement obtained by a sensor~%~%time timestamp	~%medusa_msgs/NavStatus nav_status ~%string measurement_name~%uint8 sensor_id~%float32 sample	#Sensor measurement value~%float32 frequency~%int16 error~%~%================================================================================~%MSG: medusa_msgs/NavStatus~%#NavStatus Info~%~%medusa_msgs/Position position~%medusa_msgs/AttitudeEuler attitude~%medusa_msgs/VelocityNED linear_velocity~%time timestamp~%================================================================================~%MSG: medusa_msgs/Position~%#Position Info~%~%float64 latitude~%float64 longitude~%float64 depth~%float64 altitude~%================================================================================~%MSG: medusa_msgs/AttitudeEuler~%float64 roll~%float64 pitch~%float64 yaw~%================================================================================~%MSG: medusa_msgs/VelocityNED~%float64 north_vel~%float64 east_vel~%float64 down_vel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorMeasurement>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nav_status))
     4 (cl:length (cl:slot-value msg 'measurement_name))
     1
     4
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorMeasurement>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorMeasurement
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':nav_status (nav_status msg))
    (cl:cons ':measurement_name (measurement_name msg))
    (cl:cons ':sensor_id (sensor_id msg))
    (cl:cons ':sample (sample msg))
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':error (error msg))
))
