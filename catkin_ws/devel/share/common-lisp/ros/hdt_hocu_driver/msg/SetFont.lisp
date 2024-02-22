; Auto-generated. Do not edit!


(cl:in-package hdt_hocu_driver-msg)


;//! \htmlinclude SetFont.msg.html

(cl:defclass <SetFont> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (size
    :reader size
    :initarg :size
    :type cl:fixnum
    :initform 0)
   (options
    :reader options
    :initarg :options
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetFont (<SetFont>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFont>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFont)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_hocu_driver-msg:<SetFont> is deprecated: use hdt_hocu_driver-msg:SetFont instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SetFont>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_hocu_driver-msg:header-val is deprecated.  Use hdt_hocu_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <SetFont>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_hocu_driver-msg:size-val is deprecated.  Use hdt_hocu_driver-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'options-val :lambda-list '(m))
(cl:defmethod options-val ((m <SetFont>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_hocu_driver-msg:options-val is deprecated.  Use hdt_hocu_driver-msg:options instead.")
  (options m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFont>) ostream)
  "Serializes a message object of type '<SetFont>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'options)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'options)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFont>) istream)
  "Deserializes a message object of type '<SetFont>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'options)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'options)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFont>)))
  "Returns string type for a message object of type '<SetFont>"
  "hdt_hocu_driver/SetFont")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFont)))
  "Returns string type for a message object of type 'SetFont"
  "hdt_hocu_driver/SetFont")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFont>)))
  "Returns md5sum for a message object of type '<SetFont>"
  "22b2599520cfd6c6a6050253935b4b58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFont)))
  "Returns md5sum for a message object of type 'SetFont"
  "22b2599520cfd6c6a6050253935b4b58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFont>)))
  "Returns full string definition for message of type '<SetFont>"
  (cl:format cl:nil "# SetFont~%~%std_msgs/Header header~%uint16 size~%uint16 options~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFont)))
  "Returns full string definition for message of type 'SetFont"
  (cl:format cl:nil "# SetFont~%~%std_msgs/Header header~%uint16 size~%uint16 options~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFont>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFont>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFont
    (cl:cons ':header (header msg))
    (cl:cons ':size (size msg))
    (cl:cons ':options (options msg))
))
