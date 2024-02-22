; Auto-generated. Do not edit!


(cl:in-package hdt_adroit_driver-srv)


;//! \htmlinclude Commit-request.msg.html

(cl:defclass <Commit-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass Commit-request (<Commit-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Commit-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Commit-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-srv:<Commit-request> is deprecated: use hdt_adroit_driver-srv:Commit-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Commit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:name-val is deprecated.  Use hdt_adroit_driver-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Commit-request>) ostream)
  "Serializes a message object of type '<Commit-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Commit-request>) istream)
  "Deserializes a message object of type '<Commit-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Commit-request>)))
  "Returns string type for a service object of type '<Commit-request>"
  "hdt_adroit_driver/CommitRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Commit-request)))
  "Returns string type for a service object of type 'Commit-request"
  "hdt_adroit_driver/CommitRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Commit-request>)))
  "Returns md5sum for a message object of type '<Commit-request>"
  "13ff23040aab9b4302a107a8c3ff196a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Commit-request)))
  "Returns md5sum for a message object of type 'Commit-request"
  "13ff23040aab9b4302a107a8c3ff196a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Commit-request>)))
  "Returns full string definition for message of type '<Commit-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Commit-request)))
  "Returns full string definition for message of type 'Commit-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Commit-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Commit-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Commit-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude Commit-response.msg.html

(cl:defclass <Commit-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:integer
    :initform 0))
)

(cl:defclass Commit-response (<Commit-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Commit-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Commit-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-srv:<Commit-response> is deprecated: use hdt_adroit_driver-srv:Commit-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <Commit-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:ret-val is deprecated.  Use hdt_adroit_driver-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Commit-response>) ostream)
  "Serializes a message object of type '<Commit-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ret)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ret)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ret)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ret)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Commit-response>) istream)
  "Deserializes a message object of type '<Commit-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ret)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ret)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ret)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ret)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Commit-response>)))
  "Returns string type for a service object of type '<Commit-response>"
  "hdt_adroit_driver/CommitResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Commit-response)))
  "Returns string type for a service object of type 'Commit-response"
  "hdt_adroit_driver/CommitResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Commit-response>)))
  "Returns md5sum for a message object of type '<Commit-response>"
  "13ff23040aab9b4302a107a8c3ff196a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Commit-response)))
  "Returns md5sum for a message object of type 'Commit-response"
  "13ff23040aab9b4302a107a8c3ff196a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Commit-response>)))
  "Returns full string definition for message of type '<Commit-response>"
  (cl:format cl:nil "uint32 ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Commit-response)))
  "Returns full string definition for message of type 'Commit-response"
  (cl:format cl:nil "uint32 ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Commit-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Commit-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Commit-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Commit)))
  'Commit-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Commit)))
  'Commit-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Commit)))
  "Returns string type for a service object of type '<Commit>"
  "hdt_adroit_driver/Commit")