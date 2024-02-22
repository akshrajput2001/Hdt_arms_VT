; Auto-generated. Do not edit!


(cl:in-package hdt_adroit_driver-msg)


;//! \htmlinclude HDTControlCmdTelem.msg.html

(cl:defclass <HDTControlCmdTelem> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (effort
    :reader effort
    :initarg :effort
    :type cl:float
    :initform 0.0)
   (motor_current
    :reader motor_current
    :initarg :motor_current
    :type cl:float
    :initform 0.0))
)

(cl:defclass HDTControlCmdTelem (<HDTControlCmdTelem>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HDTControlCmdTelem>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HDTControlCmdTelem)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-msg:<HDTControlCmdTelem> is deprecated: use hdt_adroit_driver-msg:HDTControlCmdTelem instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <HDTControlCmdTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:position-val is deprecated.  Use hdt_adroit_driver-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <HDTControlCmdTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:velocity-val is deprecated.  Use hdt_adroit_driver-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'effort-val :lambda-list '(m))
(cl:defmethod effort-val ((m <HDTControlCmdTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:effort-val is deprecated.  Use hdt_adroit_driver-msg:effort instead.")
  (effort m))

(cl:ensure-generic-function 'motor_current-val :lambda-list '(m))
(cl:defmethod motor_current-val ((m <HDTControlCmdTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:motor_current-val is deprecated.  Use hdt_adroit_driver-msg:motor_current instead.")
  (motor_current m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HDTControlCmdTelem>) ostream)
  "Serializes a message object of type '<HDTControlCmdTelem>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'effort))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motor_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HDTControlCmdTelem>) istream)
  "Deserializes a message object of type '<HDTControlCmdTelem>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'effort) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_current) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HDTControlCmdTelem>)))
  "Returns string type for a message object of type '<HDTControlCmdTelem>"
  "hdt_adroit_driver/HDTControlCmdTelem")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDTControlCmdTelem)))
  "Returns string type for a message object of type 'HDTControlCmdTelem"
  "hdt_adroit_driver/HDTControlCmdTelem")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HDTControlCmdTelem>)))
  "Returns md5sum for a message object of type '<HDTControlCmdTelem>"
  "1366e8e4333938cc6ba1851fe990fb6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HDTControlCmdTelem)))
  "Returns md5sum for a message object of type 'HDTControlCmdTelem"
  "1366e8e4333938cc6ba1851fe990fb6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HDTControlCmdTelem>)))
  "Returns full string definition for message of type '<HDTControlCmdTelem>"
  (cl:format cl:nil "float32 position~%float32 velocity~%float32 effort~%float32 motor_current~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HDTControlCmdTelem)))
  "Returns full string definition for message of type 'HDTControlCmdTelem"
  (cl:format cl:nil "float32 position~%float32 velocity~%float32 effort~%float32 motor_current~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HDTControlCmdTelem>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HDTControlCmdTelem>))
  "Converts a ROS message object to a list"
  (cl:list 'HDTControlCmdTelem
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':effort (effort msg))
    (cl:cons ':motor_current (motor_current msg))
))
