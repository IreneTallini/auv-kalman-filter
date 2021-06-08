;; Auto-generated. Do not edit!


(when (boundp 'medusa_msgs::SonarGet)
  (if (not (find-package "MEDUSA_MSGS"))
    (make-package "MEDUSA_MSGS"))
  (shadow 'SonarGet (find-package "MEDUSA_MSGS")))
(unless (find-package "MEDUSA_MSGS::SONARGET")
  (make-package "MEDUSA_MSGS::SONARGET"))

(in-package "ROS")
;;//! \htmlinclude SonarGet.msg.html


(defclass medusa_msgs::SonarGet
  :super ros::object
  :slots (_sonar_id _lines _sequence ))

(defmethod medusa_msgs::SonarGet
  (:init
   (&key
    ((:sonar_id __sonar_id) 0)
    ((:lines __lines) 0)
    ((:sequence __sequence) nil)
    )
   (send-super :init)
   (setq _sonar_id (round __sonar_id))
   (setq _lines (round __lines))
   (setq _sequence __sequence)
   self)
  (:sonar_id
   (&optional __sonar_id)
   (if __sonar_id (setq _sonar_id __sonar_id)) _sonar_id)
  (:lines
   (&optional __lines)
   (if __lines (setq _lines __lines)) _lines)
  (:sequence
   (&optional __sequence)
   (if __sequence (setq _sequence __sequence)) _sequence)
  (:serialization-length
   ()
   (+
    ;; uint8 _sonar_id
    1
    ;; int32 _lines
    4
    ;; bool _sequence
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _sonar_id
       (write-byte _sonar_id s)
     ;; int32 _lines
       (write-long _lines s)
     ;; bool _sequence
       (if _sequence (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _sonar_id
     (setq _sonar_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _lines
     (setq _lines (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _sequence
     (setq _sequence (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get medusa_msgs::SonarGet :md5sum-) "e28181e538bd1a400f55688c83baa26e")
(setf (get medusa_msgs::SonarGet :datatype-) "medusa_msgs/SonarGet")
(setf (get medusa_msgs::SonarGet :definition-)
      "uint8 sonar_id

int32 lines

bool sequence

")



(provide :medusa_msgs/SonarGet "e28181e538bd1a400f55688c83baa26e")


