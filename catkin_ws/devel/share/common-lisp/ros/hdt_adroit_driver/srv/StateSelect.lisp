; Auto-generated. Do not edit!


(cl:in-package hdt_adroit_driver-srv)


;//! \htmlinclude StateSelect-request.msg.html

(cl:defclass <StateSelect-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass StateSelect-request (<StateSelect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StateSelect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StateSelect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-srv:<StateSelect-request> is deprecated: use hdt_adroit_driver-srv:StateSelect-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <StateSelect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:name-val is deprecated.  Use hdt_adroit_driver-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <StateSelect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:state-val is deprecated.  Use hdt_adroit_driver-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StateSelect-request>) ostream)
  "Serializes a message object of type '<StateSelect-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StateSelect-request>) istream)
  "Deserializes a message object of type '<StateSelect-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StateSelect-request>)))
  "Returns string type for a service object of type '<StateSelect-request>"
  "hdt_adroit_driver/StateSelectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StateSelect-request)))
  "Returns string type for a service object of type 'StateSelect-request"
  "hdt_adroit_driver/StateSelectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StateSelect-request>)))
  "Returns md5sum for a message object of type '<StateSelect-request>"
  "2b565a0ba0eb7ebe669d3d72cdc5dc5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StateSelect-request)))
  "Returns md5sum for a message object of type 'StateSelect-request"
  "2b565a0ba0eb7ebe669d3d72cdc5dc5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StateSelect-request>)))
  "Returns full string definition for message of type '<StateSelect-request>"
  (cl:format cl:nil "string name~%int32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StateSelect-request)))
  "Returns full string definition for message of type 'StateSelect-request"
  (cl:format cl:nil "string name~%int32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StateSelect-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StateSelect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StateSelect-request
    (cl:cons ':name (name msg))
    (cl:cons ':state (state msg))
))
;//! \htmlinclude StateSelect-response.msg.html

(cl:defclass <StateSelect-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:integer
    :initform 0))
)

(cl:defclass StateSelect-response (<StateSelect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StateSelect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StateSelect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-srv:<StateSelect-response> is deprecated: use hdt_adroit_driver-srv:StateSelect-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <StateSelect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:ret-val is deprecated.  Use hdt_adroit_driver-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StateSelect-response>) ostream)
  "Serializes a message object of type '<StateSelect-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ret)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ret)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ret)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ret)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StateSelect-response>) istream)
  "Deserializes a message object of type '<StateSelect-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ret)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ret)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ret)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ret)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StateSelect-response>)))
  "Returns string type for a service object of type '<StateSelect-response>"
  "hdt_adroit_driver/StateSelectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StateSelect-response)))
  "Returns string type for a service object of type 'StateSelect-response"
  "hdt_adroit_driver/StateSelectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StateSelect-response>)))
  "Returns md5sum for a message object of type '<StateSelect-response>"
  "2b565a0ba0eb7ebe669d3d72cdc5dc5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StateSelect-response)))
  "Returns md5sum for a message object of type 'StateSelect-response"
  "2b565a0ba0eb7ebe669d3d72cdc5dc5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StateSelect-response>)))
  "Returns full string definition for message of type '<StateSelect-response>"
  (cl:format cl:nil "uint32 ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StateSelect-response)))
  "Returns full string definition for message of type 'StateSelect-response"
  (cl:format cl:nil "uint32 ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StateSelect-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StateSelect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StateSelect-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StateSelect)))
  'StateSelect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StateSelect)))
  'StateSelect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StateSelect)))
  "Returns string type for a service object of type '<StateSelect>"
  "hdt_adroit_driver/StateSelect")