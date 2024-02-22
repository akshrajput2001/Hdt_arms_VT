; Auto-generated. Do not edit!


(cl:in-package hdt_adroit_driver-msg)


;//! \htmlinclude HDTDebugTelem.msg.html

(cl:defclass <HDTDebugTelem> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (hs_samples
    :reader hs_samples
    :initarg :hs_samples
    :type cl:fixnum
    :initform 0)
   (ls_var1
    :reader ls_var1
    :initarg :ls_var1
    :type cl:fixnum
    :initform 0)
   (ls_var2
    :reader ls_var2
    :initarg :ls_var2
    :type cl:fixnum
    :initform 0)
   (ls_var3
    :reader ls_var3
    :initarg :ls_var3
    :type cl:fixnum
    :initform 0)
   (hs_var1
    :reader hs_var1
    :initarg :hs_var1
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (hs_var2
    :reader hs_var2
    :initarg :hs_var2
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (crc
    :reader crc
    :initarg :crc
    :type cl:integer
    :initform 0))
)

(cl:defclass HDTDebugTelem (<HDTDebugTelem>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HDTDebugTelem>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HDTDebugTelem)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-msg:<HDTDebugTelem> is deprecated: use hdt_adroit_driver-msg:HDTDebugTelem instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <HDTDebugTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:index-val is deprecated.  Use hdt_adroit_driver-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'hs_samples-val :lambda-list '(m))
(cl:defmethod hs_samples-val ((m <HDTDebugTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:hs_samples-val is deprecated.  Use hdt_adroit_driver-msg:hs_samples instead.")
  (hs_samples m))

(cl:ensure-generic-function 'ls_var1-val :lambda-list '(m))
(cl:defmethod ls_var1-val ((m <HDTDebugTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:ls_var1-val is deprecated.  Use hdt_adroit_driver-msg:ls_var1 instead.")
  (ls_var1 m))

(cl:ensure-generic-function 'ls_var2-val :lambda-list '(m))
(cl:defmethod ls_var2-val ((m <HDTDebugTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:ls_var2-val is deprecated.  Use hdt_adroit_driver-msg:ls_var2 instead.")
  (ls_var2 m))

(cl:ensure-generic-function 'ls_var3-val :lambda-list '(m))
(cl:defmethod ls_var3-val ((m <HDTDebugTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:ls_var3-val is deprecated.  Use hdt_adroit_driver-msg:ls_var3 instead.")
  (ls_var3 m))

(cl:ensure-generic-function 'hs_var1-val :lambda-list '(m))
(cl:defmethod hs_var1-val ((m <HDTDebugTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:hs_var1-val is deprecated.  Use hdt_adroit_driver-msg:hs_var1 instead.")
  (hs_var1 m))

(cl:ensure-generic-function 'hs_var2-val :lambda-list '(m))
(cl:defmethod hs_var2-val ((m <HDTDebugTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:hs_var2-val is deprecated.  Use hdt_adroit_driver-msg:hs_var2 instead.")
  (hs_var2 m))

(cl:ensure-generic-function 'crc-val :lambda-list '(m))
(cl:defmethod crc-val ((m <HDTDebugTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:crc-val is deprecated.  Use hdt_adroit_driver-msg:crc instead.")
  (crc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HDTDebugTelem>) ostream)
  "Serializes a message object of type '<HDTDebugTelem>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hs_samples)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ls_var1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ls_var2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ls_var3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'hs_var1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'hs_var1))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'hs_var2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'hs_var2))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'crc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'crc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'crc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'crc)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HDTDebugTelem>) istream)
  "Deserializes a message object of type '<HDTDebugTelem>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hs_samples)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ls_var1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ls_var2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ls_var3) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'hs_var1) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'hs_var1)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'hs_var2) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'hs_var2)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'crc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'crc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'crc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'crc)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HDTDebugTelem>)))
  "Returns string type for a message object of type '<HDTDebugTelem>"
  "hdt_adroit_driver/HDTDebugTelem")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDTDebugTelem)))
  "Returns string type for a message object of type 'HDTDebugTelem"
  "hdt_adroit_driver/HDTDebugTelem")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HDTDebugTelem>)))
  "Returns md5sum for a message object of type '<HDTDebugTelem>"
  "d366d58a05688ae09934cbaef1937408")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HDTDebugTelem)))
  "Returns md5sum for a message object of type 'HDTDebugTelem"
  "d366d58a05688ae09934cbaef1937408")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HDTDebugTelem>)))
  "Returns full string definition for message of type '<HDTDebugTelem>"
  (cl:format cl:nil "uint8 index~%uint8 hs_samples~%int16 ls_var1~%int16 ls_var2~%int16 ls_var3~%int16[] hs_var1~%int16[] hs_var2~%uint32 crc~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HDTDebugTelem)))
  "Returns full string definition for message of type 'HDTDebugTelem"
  (cl:format cl:nil "uint8 index~%uint8 hs_samples~%int16 ls_var1~%int16 ls_var2~%int16 ls_var3~%int16[] hs_var1~%int16[] hs_var2~%uint32 crc~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HDTDebugTelem>))
  (cl:+ 0
     1
     1
     2
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hs_var1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hs_var2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HDTDebugTelem>))
  "Converts a ROS message object to a list"
  (cl:list 'HDTDebugTelem
    (cl:cons ':index (index msg))
    (cl:cons ':hs_samples (hs_samples msg))
    (cl:cons ':ls_var1 (ls_var1 msg))
    (cl:cons ':ls_var2 (ls_var2 msg))
    (cl:cons ':ls_var3 (ls_var3 msg))
    (cl:cons ':hs_var1 (hs_var1 msg))
    (cl:cons ':hs_var2 (hs_var2 msg))
    (cl:cons ':crc (crc msg))
))
