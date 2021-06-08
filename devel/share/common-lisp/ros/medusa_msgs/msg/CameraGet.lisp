; Auto-generated. Do not edit!


(cl:in-package medusa_msgs-msg)


;//! \htmlinclude CameraGet.msg.html

(cl:defclass <CameraGet> (roslisp-msg-protocol:ros-message)
  ((id_camera
    :reader id_camera
    :initarg :id_camera
    :type cl:fixnum
    :initform 0)
   (filename
    :reader filename
    :initarg :filename
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass CameraGet (<CameraGet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraGet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraGet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name medusa_msgs-msg:<CameraGet> is deprecated: use medusa_msgs-msg:CameraGet instead.")))

(cl:ensure-generic-function 'id_camera-val :lambda-list '(m))
(cl:defmethod id_camera-val ((m <CameraGet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:id_camera-val is deprecated.  Use medusa_msgs-msg:id_camera instead.")
  (id_camera m))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <CameraGet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:filename-val is deprecated.  Use medusa_msgs-msg:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraGet>) ostream)
  "Serializes a message object of type '<CameraGet>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id_camera)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filename) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraGet>) istream)
  "Deserializes a message object of type '<CameraGet>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id_camera)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filename) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraGet>)))
  "Returns string type for a message object of type '<CameraGet>"
  "medusa_msgs/CameraGet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraGet)))
  "Returns string type for a message object of type 'CameraGet"
  "medusa_msgs/CameraGet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraGet>)))
  "Returns md5sum for a message object of type '<CameraGet>"
  "2f97773bf93ac3afe9db99951b0af3fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraGet)))
  "Returns md5sum for a message object of type 'CameraGet"
  "2f97773bf93ac3afe9db99951b0af3fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraGet>)))
  "Returns full string definition for message of type '<CameraGet>"
  (cl:format cl:nil "~%uint8 id_camera~%~%std_msgs/String filename~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraGet)))
  "Returns full string definition for message of type 'CameraGet"
  (cl:format cl:nil "~%uint8 id_camera~%~%std_msgs/String filename~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraGet>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraGet>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraGet
    (cl:cons ':id_camera (id_camera msg))
    (cl:cons ':filename (filename msg))
))
