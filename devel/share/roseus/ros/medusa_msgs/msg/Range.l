;; Auto-generated. Do not edit!


(when (boundp 'medusa_msgs::Range)
  (if (not (find-package "MEDUSA_MSGS"))
    (make-package "MEDUSA_MSGS"))
  (shadow 'Range (find-package "MEDUSA_MSGS")))
(unless (find-package "MEDUSA_MSGS::RANGE")
  (make-package "MEDUSA_MSGS::RANGE"))

(in-package "ROS")
;;//! \htmlinclude Range.msg.html


(defclass medusa_msgs::Range
  :super ros::object
  :slots (_num_nodes _node_ids _freq _node _time _bearing _distance _lat_node _lon_node _depth_node ))

(defmethod medusa_msgs::Range
  (:init
   (&key
    ((:num_nodes __num_nodes) 0)
    ((:node_ids __node_ids) (make-array 0 :initial-element 0 :element-type :char))
    ((:freq __freq) 0.0)
    ((:node __node) 0)
    ((:time __time) 0.0)
    ((:bearing __bearing) 0.0)
    ((:distance __distance) 0.0)
    ((:lat_node __lat_node) 0.0)
    ((:lon_node __lon_node) 0.0)
    ((:depth_node __depth_node) 0.0)
    )
   (send-super :init)
   (setq _num_nodes (round __num_nodes))
   (setq _node_ids __node_ids)
   (setq _freq (float __freq))
   (setq _node (round __node))
   (setq _time (float __time))
   (setq _bearing (float __bearing))
   (setq _distance (float __distance))
   (setq _lat_node (float __lat_node))
   (setq _lon_node (float __lon_node))
   (setq _depth_node (float __depth_node))
   self)
  (:num_nodes
   (&optional __num_nodes)
   (if __num_nodes (setq _num_nodes __num_nodes)) _num_nodes)
  (:node_ids
   (&optional __node_ids)
   (if __node_ids (setq _node_ids __node_ids)) _node_ids)
  (:freq
   (&optional __freq)
   (if __freq (setq _freq __freq)) _freq)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:bearing
   (&optional __bearing)
   (if __bearing (setq _bearing __bearing)) _bearing)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:lat_node
   (&optional __lat_node)
   (if __lat_node (setq _lat_node __lat_node)) _lat_node)
  (:lon_node
   (&optional __lon_node)
   (if __lon_node (setq _lon_node __lon_node)) _lon_node)
  (:depth_node
   (&optional __depth_node)
   (if __depth_node (setq _depth_node __depth_node)) _depth_node)
  (:serialization-length
   ()
   (+
    ;; uint8 _num_nodes
    1
    ;; uint8[] _node_ids
    (* 1    (length _node_ids)) 4
    ;; float64 _freq
    8
    ;; uint8 _node
    1
    ;; float64 _time
    8
    ;; float64 _bearing
    8
    ;; float64 _distance
    8
    ;; float64 _lat_node
    8
    ;; float64 _lon_node
    8
    ;; float64 _depth_node
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _num_nodes
       (write-byte _num_nodes s)
     ;; uint8[] _node_ids
     (write-long (length _node_ids) s)
     (princ _node_ids s)
     ;; float64 _freq
       (sys::poke _freq (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _node
       (write-byte _node s)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bearing
       (sys::poke _bearing (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat_node
       (sys::poke _lat_node (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon_node
       (sys::poke _lon_node (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _depth_node
       (sys::poke _depth_node (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _num_nodes
     (setq _num_nodes (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _node_ids
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _node_ids (make-array n :element-type :char))
     (replace _node_ids buf :start2 ptr-) (incf ptr- n))
   ;; float64 _freq
     (setq _freq (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _node
     (setq _node (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bearing
     (setq _bearing (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat_node
     (setq _lat_node (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon_node
     (setq _lon_node (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _depth_node
     (setq _depth_node (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get medusa_msgs::Range :md5sum-) "7994b469669796bf792ad7e6f0cece00")
(setf (get medusa_msgs::Range :datatype-) "medusa_msgs/Range")
(setf (get medusa_msgs::Range :definition-)
      "#Range between nodes

#RangeGet
uint8 num_nodes #Number of node(s) to which estimate the range
uint8[] node_ids #Id(s) of the target node(s)
float64 freq #Update frequency in Hertz

#Range
uint8 node #Id of the target node
float64 time  	#Estimated travel time to the target node in seconds
float64 bearing #Estimated bearing angle to the target node in degrees
float64 distance
float64 lat_node
float64 lon_node
float64 depth_node
")



(provide :medusa_msgs/Range "7994b469669796bf792ad7e6f0cece00")


