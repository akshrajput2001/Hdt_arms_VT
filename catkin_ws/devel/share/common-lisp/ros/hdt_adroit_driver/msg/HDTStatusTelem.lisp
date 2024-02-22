; Auto-generated. Do not edit!


(cl:in-package hdt_adroit_driver-msg)


;//! \htmlinclude HDTStatusTelem.msg.html

(cl:defclass <HDTStatusTelem> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HDTStatusTelem (<HDTStatusTelem>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HDTStatusTelem>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HDTStatusTelem)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-msg:<HDTStatusTelem> is deprecated: use hdt_adroit_driver-msg:HDTStatusTelem instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <HDTStatusTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:state-val is deprecated.  Use hdt_adroit_driver-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HDTStatusTelem>) ostream)
  "Serializes a message object of type '<HDTStatusTelem>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HDTStatusTelem>) istream)
  "Deserializes a message object of type '<HDTStatusTelem>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HDTStatusTelem>)))
  "Returns string type for a message object of type '<HDTStatusTelem>"
  "hdt_adroit_driver/HDTStatusTelem")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDTStatusTelem)))
  "Returns string type for a message object of type 'HDTStatusTelem"
  "hdt_adroit_driver/HDTStatusTelem")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HDTStatusTelem>)))
  "Returns md5sum for a message object of type '<HDTStatusTelem>"
  "72e7b8edf4a76696b7b067f40b28a9b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HDTStatusTelem)))
  "Returns md5sum for a message object of type 'HDTStatusTelem"
  "72e7b8edf4a76696b7b067f40b28a9b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HDTStatusTelem>)))
  "Returns full string definition for message of type '<HDTStatusTelem>"
  (cl:format cl:nil "int16 state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HDTStatusTelem)))
  "Returns full string definition for message of type 'HDTStatusTelem"
  (cl:format cl:nil "int16 state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HDTStatusTelem>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HDTStatusTelem>))
  "Converts a ROS message object to a list"
  (cl:list 'HDTStatusTelem
    (cl:cons ':state (state msg))
))
