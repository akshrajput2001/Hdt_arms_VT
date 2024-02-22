; Auto-generated. Do not edit!


(cl:in-package hdt_hocu_driver-msg)


;//! \htmlinclude WriteString.msg.html

(cl:defclass <WriteString> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass WriteString (<WriteString>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteString>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteString)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_hocu_driver-msg:<WriteString> is deprecated: use hdt_hocu_driver-msg:WriteString instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WriteString>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_hocu_driver-msg:header-val is deprecated.  Use hdt_hocu_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <WriteString>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_hocu_driver-msg:text-val is deprecated.  Use hdt_hocu_driver-msg:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteString>) ostream)
  "Serializes a message object of type '<WriteString>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteString>) istream)
  "Deserializes a message object of type '<WriteString>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteString>)))
  "Returns string type for a message object of type '<WriteString>"
  "hdt_hocu_driver/WriteString")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteString)))
  "Returns string type for a message object of type 'WriteString"
  "hdt_hocu_driver/WriteString")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteString>)))
  "Returns md5sum for a message object of type '<WriteString>"
  "b925c3f72cbc309dc37196f73e57487f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteString)))
  "Returns md5sum for a message object of type 'WriteString"
  "b925c3f72cbc309dc37196f73e57487f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteString>)))
  "Returns full string definition for message of type '<WriteString>"
  (cl:format cl:nil "# WriteString~%~%std_msgs/Header header~%string text~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteString)))
  "Returns full string definition for message of type 'WriteString"
  (cl:format cl:nil "# WriteString~%~%std_msgs/Header header~%string text~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteString>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteString>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteString
    (cl:cons ':header (header msg))
    (cl:cons ':text (text msg))
))
