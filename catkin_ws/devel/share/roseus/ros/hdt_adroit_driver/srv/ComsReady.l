;; Auto-generated. Do not edit!


(when (boundp 'hdt_adroit_driver::ComsReady)
  (if (not (find-package "HDT_ADROIT_DRIVER"))
    (make-package "HDT_ADROIT_DRIVER"))
  (shadow 'ComsReady (find-package "HDT_ADROIT_DRIVER")))
(unless (find-package "HDT_ADROIT_DRIVER::COMSREADY")
  (make-package "HDT_ADROIT_DRIVER::COMSREADY"))
(unless (find-package "HDT_ADROIT_DRIVER::COMSREADYREQUEST")
  (make-package "HDT_ADROIT_DRIVER::COMSREADYREQUEST"))
(unless (find-package "HDT_ADROIT_DRIVER::COMSREADYRESPONSE")
  (make-package "HDT_ADROIT_DRIVER::COMSREADYRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass hdt_adroit_driver::ComsReadyRequest
  :super ros::object
  :slots ())

(defmethod hdt_adroit_driver::ComsReadyRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass hdt_adroit_driver::ComsReadyResponse
  :super ros::object
  :slots (_telem ))

(defmethod hdt_adroit_driver::ComsReadyResponse
  (:init
   (&key
    ((:telem __telem) (instance sensor_msgs::JointState :init))
    )
   (send-super :init)
   (setq _telem __telem)
   self)
  (:telem
   (&rest __telem)
   (if (keywordp (car __telem))
       (send* _telem __telem)
     (progn
       (if __telem (setq _telem (car __telem)))
       _telem)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/JointState _telem
    (send _telem :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/JointState _telem
       (send _telem :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/JointState _telem
     (send _telem :deserialize buf ptr-) (incf ptr- (send _telem :serialization-length))
   ;;
   self)
  )

(defclass hdt_adroit_driver::ComsReady
  :super ros::object
  :slots ())

(setf (get hdt_adroit_driver::ComsReady :md5sum-) "cccee9ec3b01334c5ae62ca025ff5526")
(setf (get hdt_adroit_driver::ComsReady :datatype-) "hdt_adroit_driver/ComsReady")
(setf (get hdt_adroit_driver::ComsReady :request) hdt_adroit_driver::ComsReadyRequest)
(setf (get hdt_adroit_driver::ComsReady :response) hdt_adroit_driver::ComsReadyResponse)

(defmethod hdt_adroit_driver::ComsReadyRequest
  (:response () (instance hdt_adroit_driver::ComsReadyResponse :init)))

(setf (get hdt_adroit_driver::ComsReadyRequest :md5sum-) "cccee9ec3b01334c5ae62ca025ff5526")
(setf (get hdt_adroit_driver::ComsReadyRequest :datatype-) "hdt_adroit_driver/ComsReadyRequest")
(setf (get hdt_adroit_driver::ComsReadyRequest :definition-)
      "---
sensor_msgs/JointState telem


================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
")

(setf (get hdt_adroit_driver::ComsReadyResponse :md5sum-) "cccee9ec3b01334c5ae62ca025ff5526")
(setf (get hdt_adroit_driver::ComsReadyResponse :datatype-) "hdt_adroit_driver/ComsReadyResponse")
(setf (get hdt_adroit_driver::ComsReadyResponse :definition-)
      "---
sensor_msgs/JointState telem


================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
")



(provide :hdt_adroit_driver/ComsReady "cccee9ec3b01334c5ae62ca025ff5526")


