; Auto-generated. Do not edit!


(cl:in-package hdt_saffir_control-msg)


;//! \htmlinclude TrajectoryPathFeedback.msg.html

(cl:defclass <TrajectoryPathFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TrajectoryPathFeedback (<TrajectoryPathFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryPathFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryPathFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_saffir_control-msg:<TrajectoryPathFeedback> is deprecated: use hdt_saffir_control-msg:TrajectoryPathFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryPathFeedback>) ostream)
  "Serializes a message object of type '<TrajectoryPathFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryPathFeedback>) istream)
  "Deserializes a message object of type '<TrajectoryPathFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryPathFeedback>)))
  "Returns string type for a message object of type '<TrajectoryPathFeedback>"
  "hdt_saffir_control/TrajectoryPathFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryPathFeedback)))
  "Returns string type for a message object of type 'TrajectoryPathFeedback"
  "hdt_saffir_control/TrajectoryPathFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryPathFeedback>)))
  "Returns md5sum for a message object of type '<TrajectoryPathFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryPathFeedback)))
  "Returns md5sum for a message object of type 'TrajectoryPathFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryPathFeedback>)))
  "Returns full string definition for message of type '<TrajectoryPathFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryPathFeedback)))
  "Returns full string definition for message of type 'TrajectoryPathFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryPathFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryPathFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryPathFeedback
))
