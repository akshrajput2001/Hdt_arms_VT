; Auto-generated. Do not edit!


(cl:in-package hdt_adroit_driver-msg)


;//! \htmlinclude HDTErrorTelem.msg.html

(cl:defclass <HDTErrorTelem> (roslisp-msg-protocol:ros-message)
  ((error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (error_severity
    :reader error_severity
    :initarg :error_severity
    :type cl:fixnum
    :initform 0)
   (error_value
    :reader error_value
    :initarg :error_value
    :type cl:integer
    :initform 0))
)

(cl:defclass HDTErrorTelem (<HDTErrorTelem>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HDTErrorTelem>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HDTErrorTelem)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-msg:<HDTErrorTelem> is deprecated: use hdt_adroit_driver-msg:HDTErrorTelem instead.")))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <HDTErrorTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:error_code-val is deprecated.  Use hdt_adroit_driver-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'error_severity-val :lambda-list '(m))
(cl:defmethod error_severity-val ((m <HDTErrorTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:error_severity-val is deprecated.  Use hdt_adroit_driver-msg:error_severity instead.")
  (error_severity m))

(cl:ensure-generic-function 'error_value-val :lambda-list '(m))
(cl:defmethod error_value-val ((m <HDTErrorTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:error_value-val is deprecated.  Use hdt_adroit_driver-msg:error_value instead.")
  (error_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HDTErrorTelem>) ostream)
  "Serializes a message object of type '<HDTErrorTelem>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_severity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HDTErrorTelem>) istream)
  "Deserializes a message object of type '<HDTErrorTelem>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_severity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HDTErrorTelem>)))
  "Returns string type for a message object of type '<HDTErrorTelem>"
  "hdt_adroit_driver/HDTErrorTelem")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDTErrorTelem)))
  "Returns string type for a message object of type 'HDTErrorTelem"
  "hdt_adroit_driver/HDTErrorTelem")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HDTErrorTelem>)))
  "Returns md5sum for a message object of type '<HDTErrorTelem>"
  "92f6f8b505781f873bd2236cd504301c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HDTErrorTelem)))
  "Returns md5sum for a message object of type 'HDTErrorTelem"
  "92f6f8b505781f873bd2236cd504301c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HDTErrorTelem>)))
  "Returns full string definition for message of type '<HDTErrorTelem>"
  (cl:format cl:nil "uint8 error_code~%uint8 error_severity~%uint32 error_value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HDTErrorTelem)))
  "Returns full string definition for message of type 'HDTErrorTelem"
  (cl:format cl:nil "uint8 error_code~%uint8 error_severity~%uint32 error_value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HDTErrorTelem>))
  (cl:+ 0
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HDTErrorTelem>))
  "Converts a ROS message object to a list"
  (cl:list 'HDTErrorTelem
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':error_severity (error_severity msg))
    (cl:cons ':error_value (error_value msg))
))
