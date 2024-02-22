; Auto-generated. Do not edit!


(cl:in-package hdt_adroit_driver-srv)


;//! \htmlinclude ReadDriveParam-request.msg.html

(cl:defclass <ReadDriveParam-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass ReadDriveParam-request (<ReadDriveParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadDriveParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadDriveParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-srv:<ReadDriveParam-request> is deprecated: use hdt_adroit_driver-srv:ReadDriveParam-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ReadDriveParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:name-val is deprecated.  Use hdt_adroit_driver-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <ReadDriveParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:index-val is deprecated.  Use hdt_adroit_driver-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadDriveParam-request>) ostream)
  "Serializes a message object of type '<ReadDriveParam-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadDriveParam-request>) istream)
  "Deserializes a message object of type '<ReadDriveParam-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'index)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadDriveParam-request>)))
  "Returns string type for a service object of type '<ReadDriveParam-request>"
  "hdt_adroit_driver/ReadDriveParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadDriveParam-request)))
  "Returns string type for a service object of type 'ReadDriveParam-request"
  "hdt_adroit_driver/ReadDriveParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadDriveParam-request>)))
  "Returns md5sum for a message object of type '<ReadDriveParam-request>"
  "bb5aec711104386e2aeb8b52f04e2a7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadDriveParam-request)))
  "Returns md5sum for a message object of type 'ReadDriveParam-request"
  "bb5aec711104386e2aeb8b52f04e2a7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadDriveParam-request>)))
  "Returns full string definition for message of type '<ReadDriveParam-request>"
  (cl:format cl:nil "string name~%uint32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadDriveParam-request)))
  "Returns full string definition for message of type 'ReadDriveParam-request"
  (cl:format cl:nil "string name~%uint32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadDriveParam-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadDriveParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadDriveParam-request
    (cl:cons ':name (name msg))
    (cl:cons ':index (index msg))
))
;//! \htmlinclude ReadDriveParam-response.msg.html

(cl:defclass <ReadDriveParam-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:integer
    :initform 0))
)

(cl:defclass ReadDriveParam-response (<ReadDriveParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadDriveParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadDriveParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-srv:<ReadDriveParam-response> is deprecated: use hdt_adroit_driver-srv:ReadDriveParam-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <ReadDriveParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:ret-val is deprecated.  Use hdt_adroit_driver-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadDriveParam-response>) ostream)
  "Serializes a message object of type '<ReadDriveParam-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ret)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ret)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ret)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ret)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadDriveParam-response>) istream)
  "Deserializes a message object of type '<ReadDriveParam-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ret)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ret)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ret)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ret)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadDriveParam-response>)))
  "Returns string type for a service object of type '<ReadDriveParam-response>"
  "hdt_adroit_driver/ReadDriveParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadDriveParam-response)))
  "Returns string type for a service object of type 'ReadDriveParam-response"
  "hdt_adroit_driver/ReadDriveParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadDriveParam-response>)))
  "Returns md5sum for a message object of type '<ReadDriveParam-response>"
  "bb5aec711104386e2aeb8b52f04e2a7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadDriveParam-response)))
  "Returns md5sum for a message object of type 'ReadDriveParam-response"
  "bb5aec711104386e2aeb8b52f04e2a7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadDriveParam-response>)))
  "Returns full string definition for message of type '<ReadDriveParam-response>"
  (cl:format cl:nil "uint32 ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadDriveParam-response)))
  "Returns full string definition for message of type 'ReadDriveParam-response"
  (cl:format cl:nil "uint32 ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadDriveParam-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadDriveParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadDriveParam-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReadDriveParam)))
  'ReadDriveParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReadDriveParam)))
  'ReadDriveParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadDriveParam)))
  "Returns string type for a service object of type '<ReadDriveParam>"
  "hdt_adroit_driver/ReadDriveParam")