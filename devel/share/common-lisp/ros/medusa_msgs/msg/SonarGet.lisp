; Auto-generated. Do not edit!


(cl:in-package medusa_msgs-msg)


;//! \htmlinclude SonarGet.msg.html

(cl:defclass <SonarGet> (roslisp-msg-protocol:ros-message)
  ((sonar_id
    :reader sonar_id
    :initarg :sonar_id
    :type cl:fixnum
    :initform 0)
   (lines
    :reader lines
    :initarg :lines
    :type cl:integer
    :initform 0)
   (sequence
    :reader sequence
    :initarg :sequence
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SonarGet (<SonarGet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SonarGet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SonarGet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name medusa_msgs-msg:<SonarGet> is deprecated: use medusa_msgs-msg:SonarGet instead.")))

(cl:ensure-generic-function 'sonar_id-val :lambda-list '(m))
(cl:defmethod sonar_id-val ((m <SonarGet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:sonar_id-val is deprecated.  Use medusa_msgs-msg:sonar_id instead.")
  (sonar_id m))

(cl:ensure-generic-function 'lines-val :lambda-list '(m))
(cl:defmethod lines-val ((m <SonarGet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:lines-val is deprecated.  Use medusa_msgs-msg:lines instead.")
  (lines m))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <SonarGet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:sequence-val is deprecated.  Use medusa_msgs-msg:sequence instead.")
  (sequence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SonarGet>) ostream)
  "Serializes a message object of type '<SonarGet>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sonar_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'lines)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sequence) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SonarGet>) istream)
  "Deserializes a message object of type '<SonarGet>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sonar_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lines) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'sequence) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SonarGet>)))
  "Returns string type for a message object of type '<SonarGet>"
  "medusa_msgs/SonarGet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarGet)))
  "Returns string type for a message object of type 'SonarGet"
  "medusa_msgs/SonarGet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SonarGet>)))
  "Returns md5sum for a message object of type '<SonarGet>"
  "e28181e538bd1a400f55688c83baa26e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SonarGet)))
  "Returns md5sum for a message object of type 'SonarGet"
  "e28181e538bd1a400f55688c83baa26e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SonarGet>)))
  "Returns full string definition for message of type '<SonarGet>"
  (cl:format cl:nil "uint8 sonar_id~%~%int32 lines~%~%bool sequence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SonarGet)))
  "Returns full string definition for message of type 'SonarGet"
  (cl:format cl:nil "uint8 sonar_id~%~%int32 lines~%~%bool sequence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SonarGet>))
  (cl:+ 0
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SonarGet>))
  "Converts a ROS message object to a list"
  (cl:list 'SonarGet
    (cl:cons ':sonar_id (sonar_id msg))
    (cl:cons ':lines (lines msg))
    (cl:cons ':sequence (sequence msg))
))
