; Auto-generated. Do not edit!


(cl:in-package hdt_adroit_driver-msg)


;//! \htmlinclude HDTMSTelem.msg.html

(cl:defclass <HDTMSTelem> (roslisp-msg-protocol:ros-message)
  ((var1
    :reader var1
    :initarg :var1
    :type cl:fixnum
    :initform 0)
   (var2
    :reader var2
    :initarg :var2
    :type cl:fixnum
    :initform 0)
   (var3
    :reader var3
    :initarg :var3
    :type cl:fixnum
    :initform 0)
   (var4
    :reader var4
    :initarg :var4
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HDTMSTelem (<HDTMSTelem>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HDTMSTelem>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HDTMSTelem)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-msg:<HDTMSTelem> is deprecated: use hdt_adroit_driver-msg:HDTMSTelem instead.")))

(cl:ensure-generic-function 'var1-val :lambda-list '(m))
(cl:defmethod var1-val ((m <HDTMSTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:var1-val is deprecated.  Use hdt_adroit_driver-msg:var1 instead.")
  (var1 m))

(cl:ensure-generic-function 'var2-val :lambda-list '(m))
(cl:defmethod var2-val ((m <HDTMSTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:var2-val is deprecated.  Use hdt_adroit_driver-msg:var2 instead.")
  (var2 m))

(cl:ensure-generic-function 'var3-val :lambda-list '(m))
(cl:defmethod var3-val ((m <HDTMSTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:var3-val is deprecated.  Use hdt_adroit_driver-msg:var3 instead.")
  (var3 m))

(cl:ensure-generic-function 'var4-val :lambda-list '(m))
(cl:defmethod var4-val ((m <HDTMSTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:var4-val is deprecated.  Use hdt_adroit_driver-msg:var4 instead.")
  (var4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HDTMSTelem>) ostream)
  "Serializes a message object of type '<HDTMSTelem>"
  (cl:let* ((signed (cl:slot-value msg 'var1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'var2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'var3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'var4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HDTMSTelem>) istream)
  "Deserializes a message object of type '<HDTMSTelem>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'var1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'var2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'var3) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'var4) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HDTMSTelem>)))
  "Returns string type for a message object of type '<HDTMSTelem>"
  "hdt_adroit_driver/HDTMSTelem")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDTMSTelem)))
  "Returns string type for a message object of type 'HDTMSTelem"
  "hdt_adroit_driver/HDTMSTelem")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HDTMSTelem>)))
  "Returns md5sum for a message object of type '<HDTMSTelem>"
  "6dc00f8899a8207abb48266da6b58569")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HDTMSTelem)))
  "Returns md5sum for a message object of type 'HDTMSTelem"
  "6dc00f8899a8207abb48266da6b58569")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HDTMSTelem>)))
  "Returns full string definition for message of type '<HDTMSTelem>"
  (cl:format cl:nil "int16 var1~%int16 var2~%int16 var3~%int16 var4~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HDTMSTelem)))
  "Returns full string definition for message of type 'HDTMSTelem"
  (cl:format cl:nil "int16 var1~%int16 var2~%int16 var3~%int16 var4~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HDTMSTelem>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HDTMSTelem>))
  "Converts a ROS message object to a list"
  (cl:list 'HDTMSTelem
    (cl:cons ':var1 (var1 msg))
    (cl:cons ':var2 (var2 msg))
    (cl:cons ':var3 (var3 msg))
    (cl:cons ':var4 (var4 msg))
))
