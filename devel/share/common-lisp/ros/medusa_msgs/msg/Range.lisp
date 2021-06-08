; Auto-generated. Do not edit!


(cl:in-package medusa_msgs-msg)


;//! \htmlinclude Range.msg.html

(cl:defclass <Range> (roslisp-msg-protocol:ros-message)
  ((num_nodes
    :reader num_nodes
    :initarg :num_nodes
    :type cl:fixnum
    :initform 0)
   (node_ids
    :reader node_ids
    :initarg :node_ids
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (freq
    :reader freq
    :initarg :freq
    :type cl:float
    :initform 0.0)
   (node
    :reader node
    :initarg :node
    :type cl:fixnum
    :initform 0)
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (bearing
    :reader bearing
    :initarg :bearing
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (lat_node
    :reader lat_node
    :initarg :lat_node
    :type cl:float
    :initform 0.0)
   (lon_node
    :reader lon_node
    :initarg :lon_node
    :type cl:float
    :initform 0.0)
   (depth_node
    :reader depth_node
    :initarg :depth_node
    :type cl:float
    :initform 0.0))
)

(cl:defclass Range (<Range>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Range>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Range)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name medusa_msgs-msg:<Range> is deprecated: use medusa_msgs-msg:Range instead.")))

(cl:ensure-generic-function 'num_nodes-val :lambda-list '(m))
(cl:defmethod num_nodes-val ((m <Range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:num_nodes-val is deprecated.  Use medusa_msgs-msg:num_nodes instead.")
  (num_nodes m))

(cl:ensure-generic-function 'node_ids-val :lambda-list '(m))
(cl:defmethod node_ids-val ((m <Range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:node_ids-val is deprecated.  Use medusa_msgs-msg:node_ids instead.")
  (node_ids m))

(cl:ensure-generic-function 'freq-val :lambda-list '(m))
(cl:defmethod freq-val ((m <Range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:freq-val is deprecated.  Use medusa_msgs-msg:freq instead.")
  (freq m))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <Range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:node-val is deprecated.  Use medusa_msgs-msg:node instead.")
  (node m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <Range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:time-val is deprecated.  Use medusa_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'bearing-val :lambda-list '(m))
(cl:defmethod bearing-val ((m <Range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:bearing-val is deprecated.  Use medusa_msgs-msg:bearing instead.")
  (bearing m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <Range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:distance-val is deprecated.  Use medusa_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'lat_node-val :lambda-list '(m))
(cl:defmethod lat_node-val ((m <Range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:lat_node-val is deprecated.  Use medusa_msgs-msg:lat_node instead.")
  (lat_node m))

(cl:ensure-generic-function 'lon_node-val :lambda-list '(m))
(cl:defmethod lon_node-val ((m <Range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:lon_node-val is deprecated.  Use medusa_msgs-msg:lon_node instead.")
  (lon_node m))

(cl:ensure-generic-function 'depth_node-val :lambda-list '(m))
(cl:defmethod depth_node-val ((m <Range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader medusa_msgs-msg:depth_node-val is deprecated.  Use medusa_msgs-msg:depth_node instead.")
  (depth_node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Range>) ostream)
  "Serializes a message object of type '<Range>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_nodes)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'node_ids))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'freq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bearing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lat_node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lon_node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'depth_node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Range>) istream)
  "Deserializes a message object of type '<Range>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_nodes)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'node_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'freq) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bearing) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_node) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lon_node) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'depth_node) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Range>)))
  "Returns string type for a message object of type '<Range>"
  "medusa_msgs/Range")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Range)))
  "Returns string type for a message object of type 'Range"
  "medusa_msgs/Range")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Range>)))
  "Returns md5sum for a message object of type '<Range>"
  "7994b469669796bf792ad7e6f0cece00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Range)))
  "Returns md5sum for a message object of type 'Range"
  "7994b469669796bf792ad7e6f0cece00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Range>)))
  "Returns full string definition for message of type '<Range>"
  (cl:format cl:nil "#Range between nodes~%~%#RangeGet~%uint8 num_nodes #Number of node(s) to which estimate the range~%uint8[] node_ids #Id(s) of the target node(s)~%float64 freq #Update frequency in Hertz~%~%#Range~%uint8 node #Id of the target node~%float64 time  	#Estimated travel time to the target node in seconds~%float64 bearing #Estimated bearing angle to the target node in degrees~%float64 distance~%float64 lat_node~%float64 lon_node~%float64 depth_node~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Range)))
  "Returns full string definition for message of type 'Range"
  (cl:format cl:nil "#Range between nodes~%~%#RangeGet~%uint8 num_nodes #Number of node(s) to which estimate the range~%uint8[] node_ids #Id(s) of the target node(s)~%float64 freq #Update frequency in Hertz~%~%#Range~%uint8 node #Id of the target node~%float64 time  	#Estimated travel time to the target node in seconds~%float64 bearing #Estimated bearing angle to the target node in degrees~%float64 distance~%float64 lat_node~%float64 lon_node~%float64 depth_node~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Range>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     8
     1
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Range>))
  "Converts a ROS message object to a list"
  (cl:list 'Range
    (cl:cons ':num_nodes (num_nodes msg))
    (cl:cons ':node_ids (node_ids msg))
    (cl:cons ':freq (freq msg))
    (cl:cons ':node (node msg))
    (cl:cons ':time (time msg))
    (cl:cons ':bearing (bearing msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':lat_node (lat_node msg))
    (cl:cons ':lon_node (lon_node msg))
    (cl:cons ':depth_node (depth_node msg))
))
