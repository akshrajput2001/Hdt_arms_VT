; Auto-generated. Do not edit!


(cl:in-package hdt_adroit_driver-srv)


;//! \htmlinclude GetStatus-request.msg.html

(cl:defclass <GetStatus-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetStatus-request (<GetStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-srv:<GetStatus-request> is deprecated: use hdt_adroit_driver-srv:GetStatus-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStatus-request>) ostream)
  "Serializes a message object of type '<GetStatus-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStatus-request>) istream)
  "Deserializes a message object of type '<GetStatus-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStatus-request>)))
  "Returns string type for a service object of type '<GetStatus-request>"
  "hdt_adroit_driver/GetStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStatus-request)))
  "Returns string type for a service object of type 'GetStatus-request"
  "hdt_adroit_driver/GetStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStatus-request>)))
  "Returns md5sum for a message object of type '<GetStatus-request>"
  "030d6b61cd649925cba2336b4a1efa95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStatus-request)))
  "Returns md5sum for a message object of type 'GetStatus-request"
  "030d6b61cd649925cba2336b4a1efa95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStatus-request>)))
  "Returns full string definition for message of type '<GetStatus-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStatus-request)))
  "Returns full string definition for message of type 'GetStatus-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStatus-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStatus-request
))
;//! \htmlinclude GetStatus-response.msg.html

(cl:defclass <GetStatus-response> (roslisp-msg-protocol:ros-message)
  ((addr
    :reader addr
    :initarg :addr
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (state
    :reader state
    :initarg :state
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass GetStatus-response (<GetStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_adroit_driver-srv:<GetStatus-response> is deprecated: use hdt_adroit_driver-srv:GetStatus-response instead.")))

(cl:ensure-generic-function 'addr-val :lambda-list '(m))
(cl:defmethod addr-val ((m <GetStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:addr-val is deprecated.  Use hdt_adroit_driver-srv:addr instead.")
  (addr m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_adroit_driver-srv:state-val is deprecated.  Use hdt_adroit_driver-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStatus-response>) ostream)
  "Serializes a message object of type '<GetStatus-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'addr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'addr))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStatus-response>) istream)
  "Deserializes a message object of type '<GetStatus-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'addr) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'addr)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStatus-response>)))
  "Returns string type for a service object of type '<GetStatus-response>"
  "hdt_adroit_driver/GetStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStatus-response)))
  "Returns string type for a service object of type 'GetStatus-response"
  "hdt_adroit_driver/GetStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStatus-response>)))
  "Returns md5sum for a message object of type '<GetStatus-response>"
  "030d6b61cd649925cba2336b4a1efa95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStatus-response)))
  "Returns md5sum for a message object of type 'GetStatus-response"
  "030d6b61cd649925cba2336b4a1efa95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStatus-response>)))
  "Returns full string definition for message of type '<GetStatus-response>"
  (cl:format cl:nil "uint32[] addr~%uint32[] state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStatus-response)))
  "Returns full string definition for message of type 'GetStatus-response"
  (cl:format cl:nil "uint32[] addr~%uint32[] state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStatus-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'addr) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStatus-response
    (cl:cons ':addr (addr msg))
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetStatus)))
  'GetStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetStatus)))
  'GetStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStatus)))
  "Returns string type for a service object of type '<GetStatus>"
  "hdt_adroit_driver/GetStatus")