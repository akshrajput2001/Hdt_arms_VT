; Auto-generated. Do not edit!


(cl:in-package hdt_hocu_driver-msg)


;//! \htmlinclude UpdateScreen.msg.html

(cl:defclass <UpdateScreen> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass UpdateScreen (<UpdateScreen>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateScreen>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateScreen)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_hocu_driver-msg:<UpdateScreen> is deprecated: use hdt_hocu_driver-msg:UpdateScreen instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UpdateScreen>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_hocu_driver-msg:header-val is deprecated.  Use hdt_hocu_driver-msg:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateScreen>) ostream)
  "Serializes a message object of type '<UpdateScreen>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateScreen>) istream)
  "Deserializes a message object of type '<UpdateScreen>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateScreen>)))
  "Returns string type for a message object of type '<UpdateScreen>"
  "hdt_hocu_driver/UpdateScreen")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateScreen)))
  "Returns string type for a message object of type 'UpdateScreen"
  "hdt_hocu_driver/UpdateScreen")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateScreen>)))
  "Returns md5sum for a message object of type '<UpdateScreen>"
  "d7be0bb39af8fb9129d5a76e6b63a290")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateScreen)))
  "Returns md5sum for a message object of type 'UpdateScreen"
  "d7be0bb39af8fb9129d5a76e6b63a290")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateScreen>)))
  "Returns full string definition for message of type '<UpdateScreen>"
  (cl:format cl:nil "# UpdateScreen~%~%std_msgs/Header header~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateScreen)))
  "Returns full string definition for message of type 'UpdateScreen"
  (cl:format cl:nil "# UpdateScreen~%~%std_msgs/Header header~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateScreen>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateScreen>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateScreen
    (cl:cons ':header (header msg))
))
