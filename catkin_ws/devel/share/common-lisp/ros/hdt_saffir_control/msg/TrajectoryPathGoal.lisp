; Auto-generated. Do not edit!


(cl:in-package hdt_saffir_control-msg)


;//! \htmlinclude TrajectoryPathGoal.msg.html

(cl:defclass <TrajectoryPathGoal> (roslisp-msg-protocol:ros-message)
  ((marker
    :reader marker
    :initarg :marker
    :type cl:string
    :initform "")
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass TrajectoryPathGoal (<TrajectoryPathGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryPathGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryPathGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_saffir_control-msg:<TrajectoryPathGoal> is deprecated: use hdt_saffir_control-msg:TrajectoryPathGoal instead.")))

(cl:ensure-generic-function 'marker-val :lambda-list '(m))
(cl:defmethod marker-val ((m <TrajectoryPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_saffir_control-msg:marker-val is deprecated.  Use hdt_saffir_control-msg:marker instead.")
  (marker m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <TrajectoryPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_saffir_control-msg:waypoints-val is deprecated.  Use hdt_saffir_control-msg:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryPathGoal>) ostream)
  "Serializes a message object of type '<TrajectoryPathGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'marker))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'marker))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryPathGoal>) istream)
  "Deserializes a message object of type '<TrajectoryPathGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'marker) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'marker) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryPathGoal>)))
  "Returns string type for a message object of type '<TrajectoryPathGoal>"
  "hdt_saffir_control/TrajectoryPathGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryPathGoal)))
  "Returns string type for a message object of type 'TrajectoryPathGoal"
  "hdt_saffir_control/TrajectoryPathGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryPathGoal>)))
  "Returns md5sum for a message object of type '<TrajectoryPathGoal>"
  "150722a3d3efe8f229839e58da659c09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryPathGoal)))
  "Returns md5sum for a message object of type 'TrajectoryPathGoal"
  "150722a3d3efe8f229839e58da659c09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryPathGoal>)))
  "Returns full string definition for message of type '<TrajectoryPathGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%string marker~%geometry_msgs/Pose[] waypoints~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryPathGoal)))
  "Returns full string definition for message of type 'TrajectoryPathGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%string marker~%geometry_msgs/Pose[] waypoints~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryPathGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'marker))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryPathGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryPathGoal
    (cl:cons ':marker (marker msg))
    (cl:cons ':waypoints (waypoints msg))
))