; Auto-generated. Do not edit!


(cl:in-package hdt_saffir_control-msg)


;//! \htmlinclude JointSpacePathFeedback.msg.html

(cl:defclass <JointSpacePathFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass JointSpacePathFeedback (<JointSpacePathFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointSpacePathFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointSpacePathFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_saffir_control-msg:<JointSpacePathFeedback> is deprecated: use hdt_saffir_control-msg:JointSpacePathFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointSpacePathFeedback>) ostream)
  "Serializes a message object of type '<JointSpacePathFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointSpacePathFeedback>) istream)
  "Deserializes a message object of type '<JointSpacePathFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointSpacePathFeedback>)))
  "Returns string type for a message object of type '<JointSpacePathFeedback>"
  "hdt_saffir_control/JointSpacePathFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointSpacePathFeedback)))
  "Returns string type for a message object of type 'JointSpacePathFeedback"
  "hdt_saffir_control/JointSpacePathFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointSpacePathFeedback>)))
  "Returns md5sum for a message object of type '<JointSpacePathFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointSpacePathFeedback)))
  "Returns md5sum for a message object of type 'JointSpacePathFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointSpacePathFeedback>)))
  "Returns full string definition for message of type '<JointSpacePathFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointSpacePathFeedback)))
  "Returns full string definition for message of type 'JointSpacePathFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointSpacePathFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointSpacePathFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'JointSpacePathFeedback
))
