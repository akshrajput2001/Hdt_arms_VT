; Auto-generated. Do not edit!


(cl:in-package hdt_adroit_driver-msg)


;//! \htmlinclude HDTLSTelem.msg.html

(cl:defclass <HDTLSTelem> (roslisp-msg-protocol:ros-message)
  ((bus_voltage
    :reader bus_voltage
    :initarg :bus_voltage
    :type cl:float
    :initform 0.0)
   (bus_current
    :reader bus_current
    :initarg :bus_current
    :type cl:float
    :initform 0.0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0))
)

(cl:defclass HDTLSTelem (<HDTLSTelem>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HDTLSTelem>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HDTLSTelem)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-msg:<HDTLSTelem> is deprecated: use hdt_adroit_driver-msg:HDTLSTelem instead.")))

(cl:ensure-generic-function 'bus_voltage-val :lambda-list '(m))
(cl:defmethod bus_voltage-val ((m <HDTLSTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:bus_voltage-val is deprecated.  Use hdt_adroit_driver-msg:bus_voltage instead.")
  (bus_voltage m))

(cl:ensure-generic-function 'bus_current-val :lambda-list '(m))
(cl:defmethod bus_current-val ((m <HDTLSTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:bus_current-val is deprecated.  Use hdt_adroit_driver-msg:bus_current instead.")
  (bus_current m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <HDTLSTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:temperature-val is deprecated.  Use hdt_adroit_driver-msg:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HDTLSTelem>) ostream)
  "Serializes a message object of type '<HDTLSTelem>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bus_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bus_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HDTLSTelem>) istream)
  "Deserializes a message object of type '<HDTLSTelem>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bus_voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bus_current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HDTLSTelem>)))
  "Returns string type for a message object of type '<HDTLSTelem>"
  "hdt_adroit_driver/HDTLSTelem")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDTLSTelem)))
  "Returns string type for a message object of type 'HDTLSTelem"
  "hdt_adroit_driver/HDTLSTelem")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HDTLSTelem>)))
  "Returns md5sum for a message object of type '<HDTLSTelem>"
  "d6482f2ccdad1eb7d5847af2e454494b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HDTLSTelem)))
  "Returns md5sum for a message object of type 'HDTLSTelem"
  "d6482f2ccdad1eb7d5847af2e454494b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HDTLSTelem>)))
  "Returns full string definition for message of type '<HDTLSTelem>"
  (cl:format cl:nil "float32 bus_voltage~%float32 bus_current~%float32 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HDTLSTelem)))
  "Returns full string definition for message of type 'HDTLSTelem"
  (cl:format cl:nil "float32 bus_voltage~%float32 bus_current~%float32 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HDTLSTelem>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HDTLSTelem>))
  "Converts a ROS message object to a list"
  (cl:list 'HDTLSTelem
    (cl:cons ':bus_voltage (bus_voltage msg))
    (cl:cons ':bus_current (bus_current msg))
    (cl:cons ':temperature (temperature msg))
))
