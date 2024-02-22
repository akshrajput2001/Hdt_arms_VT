; Auto-generated. Do not edit!


(cl:in-package hdt_adroit_driver-msg)


;//! \htmlinclude HDTParameterTelem.msg.html

(cl:defclass <HDTParameterTelem> (roslisp-msg-protocol:ros-message)
  ((head
    :reader head
    :initarg :head
    :type cl:fixnum
    :initform 0)
   (index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (sub_index
    :reader sub_index
    :initarg :sub_index
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass HDTParameterTelem (<HDTParameterTelem>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HDTParameterTelem>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HDTParameterTelem)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-msg:<HDTParameterTelem> is deprecated: use hdt_adroit_driver-msg:HDTParameterTelem instead.")))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <HDTParameterTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:head-val is deprecated.  Use hdt_adroit_driver-msg:head instead.")
  (head m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <HDTParameterTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:index-val is deprecated.  Use hdt_adroit_driver-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'sub_index-val :lambda-list '(m))
(cl:defmethod sub_index-val ((m <HDTParameterTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:sub_index-val is deprecated.  Use hdt_adroit_driver-msg:sub_index instead.")
  (sub_index m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <HDTParameterTelem>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-msg:data-val is deprecated.  Use hdt_adroit_driver-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HDTParameterTelem>) ostream)
  "Serializes a message object of type '<HDTParameterTelem>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'head)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sub_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HDTParameterTelem>) istream)
  "Deserializes a message object of type '<HDTParameterTelem>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'head)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sub_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HDTParameterTelem>)))
  "Returns string type for a message object of type '<HDTParameterTelem>"
  "hdt_adroit_driver/HDTParameterTelem")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDTParameterTelem)))
  "Returns string type for a message object of type 'HDTParameterTelem"
  "hdt_adroit_driver/HDTParameterTelem")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HDTParameterTelem>)))
  "Returns md5sum for a message object of type '<HDTParameterTelem>"
  "9c3ccffb91d861d89d3d9dcfa704f7e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HDTParameterTelem)))
  "Returns md5sum for a message object of type 'HDTParameterTelem"
  "9c3ccffb91d861d89d3d9dcfa704f7e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HDTParameterTelem>)))
  "Returns full string definition for message of type '<HDTParameterTelem>"
  (cl:format cl:nil "uint8 head~%uint16 index~%uint8 sub_index~%uint32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HDTParameterTelem)))
  "Returns full string definition for message of type 'HDTParameterTelem"
  (cl:format cl:nil "uint8 head~%uint16 index~%uint8 sub_index~%uint32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HDTParameterTelem>))
  (cl:+ 0
     1
     2
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HDTParameterTelem>))
  "Converts a ROS message object to a list"
  (cl:list 'HDTParameterTelem
    (cl:cons ':head (head msg))
    (cl:cons ':index (index msg))
    (cl:cons ':sub_index (sub_index msg))
    (cl:cons ':data (data msg))
))
