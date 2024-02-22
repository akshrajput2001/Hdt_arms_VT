; Auto-generated. Do not edit!


(cl:in-package hdt_adroit_driver-srv)


;//! \htmlinclude AppLoad-request.msg.html

(cl:defclass <AppLoad-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (file
    :reader file
    :initarg :file
    :type cl:string
    :initform ""))
)

(cl:defclass AppLoad-request (<AppLoad-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AppLoad-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AppLoad-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-srv:<AppLoad-request> is deprecated: use hdt_adroit_driver-srv:AppLoad-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <AppLoad-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:name-val is deprecated.  Use hdt_adroit_driver-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'file-val :lambda-list '(m))
(cl:defmethod file-val ((m <AppLoad-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:file-val is deprecated.  Use hdt_adroit_driver-srv:file instead.")
  (file m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AppLoad-request>) ostream)
  "Serializes a message object of type '<AppLoad-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AppLoad-request>) istream)
  "Deserializes a message object of type '<AppLoad-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AppLoad-request>)))
  "Returns string type for a service object of type '<AppLoad-request>"
  "hdt_adroit_driver/AppLoadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AppLoad-request)))
  "Returns string type for a service object of type 'AppLoad-request"
  "hdt_adroit_driver/AppLoadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AppLoad-request>)))
  "Returns md5sum for a message object of type '<AppLoad-request>"
  "94dc7a6b0655f4c0bcfeaeeb9c92850d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AppLoad-request)))
  "Returns md5sum for a message object of type 'AppLoad-request"
  "94dc7a6b0655f4c0bcfeaeeb9c92850d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AppLoad-request>)))
  "Returns full string definition for message of type '<AppLoad-request>"
  (cl:format cl:nil "string name~%string file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AppLoad-request)))
  "Returns full string definition for message of type 'AppLoad-request"
  (cl:format cl:nil "string name~%string file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AppLoad-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'file))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AppLoad-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AppLoad-request
    (cl:cons ':name (name msg))
    (cl:cons ':file (file msg))
))
;//! \htmlinclude AppLoad-response.msg.html

(cl:defclass <AppLoad-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:integer
    :initform 0))
)

(cl:defclass AppLoad-response (<AppLoad-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AppLoad-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AppLoad-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-srv:<AppLoad-response> is deprecated: use hdt_adroit_driver-srv:AppLoad-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <AppLoad-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:ret-val is deprecated.  Use hdt_adroit_driver-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AppLoad-response>) ostream)
  "Serializes a message object of type '<AppLoad-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ret)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ret)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ret)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ret)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AppLoad-response>) istream)
  "Deserializes a message object of type '<AppLoad-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ret)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ret)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ret)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ret)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AppLoad-response>)))
  "Returns string type for a service object of type '<AppLoad-response>"
  "hdt_adroit_driver/AppLoadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AppLoad-response)))
  "Returns string type for a service object of type 'AppLoad-response"
  "hdt_adroit_driver/AppLoadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AppLoad-response>)))
  "Returns md5sum for a message object of type '<AppLoad-response>"
  "94dc7a6b0655f4c0bcfeaeeb9c92850d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AppLoad-response)))
  "Returns md5sum for a message object of type 'AppLoad-response"
  "94dc7a6b0655f4c0bcfeaeeb9c92850d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AppLoad-response>)))
  "Returns full string definition for message of type '<AppLoad-response>"
  (cl:format cl:nil "uint32 ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AppLoad-response)))
  "Returns full string definition for message of type 'AppLoad-response"
  (cl:format cl:nil "uint32 ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AppLoad-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AppLoad-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AppLoad-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AppLoad)))
  'AppLoad-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AppLoad)))
  'AppLoad-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AppLoad)))
  "Returns string type for a service object of type '<AppLoad>"
  "hdt_adroit_driver/AppLoad")