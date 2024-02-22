; Auto-generated. Do not edit!


(cl:in-package hdt_adroit_driver-srv)


;//! \htmlinclude ComsReady-request.msg.html

(cl:defclass <ComsReady-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ComsReady-request (<ComsReady-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComsReady-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComsReady-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-srv:<ComsReady-request> is deprecated: use hdt_adroit_driver-srv:ComsReady-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComsReady-request>) ostream)
  "Serializes a message object of type '<ComsReady-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComsReady-request>) istream)
  "Deserializes a message object of type '<ComsReady-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComsReady-request>)))
  "Returns string type for a service object of type '<ComsReady-request>"
  "hdt_adroit_driver/ComsReadyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComsReady-request)))
  "Returns string type for a service object of type 'ComsReady-request"
  "hdt_adroit_driver/ComsReadyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComsReady-request>)))
  "Returns md5sum for a message object of type '<ComsReady-request>"
  "cccee9ec3b01334c5ae62ca025ff5526")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComsReady-request)))
  "Returns md5sum for a message object of type 'ComsReady-request"
  "cccee9ec3b01334c5ae62ca025ff5526")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComsReady-request>)))
  "Returns full string definition for message of type '<ComsReady-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComsReady-request)))
  "Returns full string definition for message of type 'ComsReady-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComsReady-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComsReady-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ComsReady-request
))
;//! \htmlinclude ComsReady-response.msg.html

(cl:defclass <ComsReady-response> (roslisp-msg-protocol:ros-message)
  ((telem
    :reader telem
    :initarg :telem
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState)))
)

(cl:defclass ComsReady-response (<ComsReady-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComsReady-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComsReady-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-srv:<ComsReady-response> is deprecated: use hdt_adroit_driver-srv:ComsReady-response instead.")))

(cl:ensure-generic-function 'telem-val :lambda-list '(m))
(cl:defmethod telem-val ((m <ComsReady-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:telem-val is deprecated.  Use hdt_adroit_driver-srv:telem instead.")
  (telem m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComsReady-response>) ostream)
  "Serializes a message object of type '<ComsReady-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'telem) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComsReady-response>) istream)
  "Deserializes a message object of type '<ComsReady-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'telem) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComsReady-response>)))
  "Returns string type for a service object of type '<ComsReady-response>"
  "hdt_adroit_driver/ComsReadyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComsReady-response)))
  "Returns string type for a service object of type 'ComsReady-response"
  "hdt_adroit_driver/ComsReadyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComsReady-response>)))
  "Returns md5sum for a message object of type '<ComsReady-response>"
  "cccee9ec3b01334c5ae62ca025ff5526")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComsReady-response)))
  "Returns md5sum for a message object of type 'ComsReady-response"
  "cccee9ec3b01334c5ae62ca025ff5526")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComsReady-response>)))
  "Returns full string definition for message of type '<ComsReady-response>"
  (cl:format cl:nil "sensor_msgs/JointState telem~%~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComsReady-response)))
  "Returns full string definition for message of type 'ComsReady-response"
  (cl:format cl:nil "sensor_msgs/JointState telem~%~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComsReady-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'telem))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComsReady-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ComsReady-response
    (cl:cons ':telem (telem msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ComsReady)))
  'ComsReady-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ComsReady)))
  'ComsReady-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComsReady)))
  "Returns string type for a service object of type '<ComsReady>"
  "hdt_adroit_driver/ComsReady")