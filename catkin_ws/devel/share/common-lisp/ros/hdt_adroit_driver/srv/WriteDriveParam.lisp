; Auto-generated. Do not edit!


(cl:in-package hdt_adroit_driver-srv)


;//! \htmlinclude WriteDriveParam-request.msg.html

(cl:defclass <WriteDriveParam-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass WriteDriveParam-request (<WriteDriveParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteDriveParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteDriveParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-srv:<WriteDriveParam-request> is deprecated: use hdt_adroit_driver-srv:WriteDriveParam-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <WriteDriveParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:name-val is deprecated.  Use hdt_adroit_driver-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <WriteDriveParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:index-val is deprecated.  Use hdt_adroit_driver-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <WriteDriveParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:value-val is deprecated.  Use hdt_adroit_driver-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteDriveParam-request>) ostream)
  "Serializes a message object of type '<WriteDriveParam-request>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteDriveParam-request>) istream)
  "Deserializes a message object of type '<WriteDriveParam-request>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteDriveParam-request>)))
  "Returns string type for a service object of type '<WriteDriveParam-request>"
  "hdt_adroit_driver/WriteDriveParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteDriveParam-request)))
  "Returns string type for a service object of type 'WriteDriveParam-request"
  "hdt_adroit_driver/WriteDriveParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteDriveParam-request>)))
  "Returns md5sum for a message object of type '<WriteDriveParam-request>"
  "9bd87f56854479b390ba5369522b5546")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteDriveParam-request)))
  "Returns md5sum for a message object of type 'WriteDriveParam-request"
  "9bd87f56854479b390ba5369522b5546")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteDriveParam-request>)))
  "Returns full string definition for message of type '<WriteDriveParam-request>"
  (cl:format cl:nil "string name~%uint32 index~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteDriveParam-request)))
  "Returns full string definition for message of type 'WriteDriveParam-request"
  (cl:format cl:nil "string name~%uint32 index~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteDriveParam-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteDriveParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteDriveParam-request
    (cl:cons ':name (name msg))
    (cl:cons ':index (index msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude WriteDriveParam-response.msg.html

(cl:defclass <WriteDriveParam-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:integer
    :initform 0))
)

(cl:defclass WriteDriveParam-response (<WriteDriveParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteDriveParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteDriveParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-srv:<WriteDriveParam-response> is deprecated: use hdt_adroit_driver-srv:WriteDriveParam-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <WriteDriveParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:ret-val is deprecated.  Use hdt_adroit_driver-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteDriveParam-response>) ostream)
  "Serializes a message object of type '<WriteDriveParam-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ret)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ret)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ret)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ret)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteDriveParam-response>) istream)
  "Deserializes a message object of type '<WriteDriveParam-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ret)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ret)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ret)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ret)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteDriveParam-response>)))
  "Returns string type for a service object of type '<WriteDriveParam-response>"
  "hdt_adroit_driver/WriteDriveParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteDriveParam-response)))
  "Returns string type for a service object of type 'WriteDriveParam-response"
  "hdt_adroit_driver/WriteDriveParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteDriveParam-response>)))
  "Returns md5sum for a message object of type '<WriteDriveParam-response>"
  "9bd87f56854479b390ba5369522b5546")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteDriveParam-response)))
  "Returns md5sum for a message object of type 'WriteDriveParam-response"
  "9bd87f56854479b390ba5369522b5546")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteDriveParam-response>)))
  "Returns full string definition for message of type '<WriteDriveParam-response>"
  (cl:format cl:nil "uint32 ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteDriveParam-response)))
  "Returns full string definition for message of type 'WriteDriveParam-response"
  (cl:format cl:nil "uint32 ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteDriveParam-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteDriveParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteDriveParam-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WriteDriveParam)))
  'WriteDriveParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WriteDriveParam)))
  'WriteDriveParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteDriveParam)))
  "Returns string type for a service object of type '<WriteDriveParam>"
  "hdt_adroit_driver/WriteDriveParam")