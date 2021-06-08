; Auto-generated. Do not edit!


(cl:in-package medusa_msgs-msg)


;//! \htmlinclude List.msg.html

(cl:defclass <List> (roslisp-msg-protocol:ros-message)
  ((obj_num
    :reader obj_num
    :initarg :obj_num
    :type cl:integer
    :initform 0)
   (obj_name
    :reader obj_name
    :initarg :obj_name
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String))))
)

(cl:defclass List (<List>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <List>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'List)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name medusa_msgs-msg:<List> is deprecated: use medusa_msgs-msg:List instead.")))

(cl:ensure-generic-function 'obj_num-val :lambda-list '(m))
(cl:defmethod obj_num-val ((m <List>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:obj_num-val is deprecated.  Use medusa_msgs-msg:obj_num instead.")
  (obj_num m))

(cl:ensure-generic-function 'obj_name-val :lambda-list '(m))
(cl:defmethod obj_name-val ((m <List>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:obj_name-val is deprecated.  Use medusa_msgs-msg:obj_name instead.")
  (obj_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <List>) ostream)
  "Serializes a message object of type '<List>"
  (cl:let* ((signed (cl:slot-value msg 'obj_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obj_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obj_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <List>) istream)
  "Deserializes a message object of type '<List>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obj_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obj_name) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obj_name)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<List>)))
  "Returns string type for a message object of type '<List>"
  "medusa_msgs/List")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'List)))
  "Returns string type for a message object of type 'List"
  "medusa_msgs/List")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<List>)))
  "Returns md5sum for a message object of type '<List>"
  "61b929708fa3003d53352792f40a4e8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'List)))
  "Returns md5sum for a message object of type 'List"
  "61b929708fa3003d53352792f40a4e8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<List>)))
  "Returns full string definition for message of type '<List>"
  (cl:format cl:nil "#List~%~%int32 obj_num~%std_msgs/String[] obj_name~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'List)))
  "Returns full string definition for message of type 'List"
  (cl:format cl:nil "#List~%~%int32 obj_num~%std_msgs/String[] obj_name~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <List>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obj_name) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <List>))
  "Converts a ROS message object to a list"
  (cl:list 'List
    (cl:cons ':obj_num (obj_num msg))
    (cl:cons ':obj_name (obj_name msg))
))
