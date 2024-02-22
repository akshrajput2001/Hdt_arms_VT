; Auto-generated. Do not edit!


(cl:in-package hdt_hocu_driver-msg)


;//! \htmlinclude SetPageColumn.msg.html

(cl:defclass <SetPageColumn> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (page
    :reader page
    :initarg :page
    :type cl:fixnum
    :initform 0)
   (column
    :reader column
    :initarg :column
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetPageColumn (<SetPageColumn>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPageColumn>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPageColumn)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_hocu_driver-msg:<SetPageColumn> is deprecated: use hdt_hocu_driver-msg:SetPageColumn instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SetPageColumn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_hocu_driver-msg:header-val is deprecated.  Use hdt_hocu_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'page-val :lambda-list '(m))
(cl:defmethod page-val ((m <SetPageColumn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_hocu_driver-msg:page-val is deprecated.  Use hdt_hocu_driver-msg:page instead.")
  (page m))

(cl:ensure-generic-function 'column-val :lambda-list '(m))
(cl:defmethod column-val ((m <SetPageColumn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_hocu_driver-msg:column-val is deprecated.  Use hdt_hocu_driver-msg:column instead.")
  (column m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPageColumn>) ostream)
  "Serializes a message object of type '<SetPageColumn>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'page)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'page)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'column)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'column)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPageColumn>) istream)
  "Deserializes a message object of type '<SetPageColumn>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'page)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'page)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'column)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'column)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPageColumn>)))
  "Returns string type for a message object of type '<SetPageColumn>"
  "hdt_hocu_driver/SetPageColumn")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPageColumn)))
  "Returns string type for a message object of type 'SetPageColumn"
  "hdt_hocu_driver/SetPageColumn")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPageColumn>)))
  "Returns md5sum for a message object of type '<SetPageColumn>"
  "632d79050806f7218841d7ac24570f7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPageColumn)))
  "Returns md5sum for a message object of type 'SetPageColumn"
  "632d79050806f7218841d7ac24570f7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPageColumn>)))
  "Returns full string definition for message of type '<SetPageColumn>"
  (cl:format cl:nil "# SetPageColumn~%~%std_msgs/Header header~%uint16 page~%uint16 column~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPageColumn)))
  "Returns full string definition for message of type 'SetPageColumn"
  (cl:format cl:nil "# SetPageColumn~%~%std_msgs/Header header~%uint16 page~%uint16 column~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPageColumn>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPageColumn>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPageColumn
    (cl:cons ':header (header msg))
    (cl:cons ':page (page msg))
    (cl:cons ':column (column msg))
))
