; Auto-generated. Do not edit!


(cl:in-package hdt_saffir_control-msg)


;//! \htmlinclude TaskSpacePathFeedback.msg.html

(cl:defclass <TaskSpacePathFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TaskSpacePathFeedback (<TaskSpacePathFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskSpacePathFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskSpacePathFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_saffir_control-msg:<TaskSpacePathFeedback> is deprecated: use hdt_saffir_control-msg:TaskSpacePathFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskSpacePathFeedback>) ostream)
  "Serializes a message object of type '<TaskSpacePathFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskSpacePathFeedback>) istream)
  "Deserializes a message object of type '<TaskSpacePathFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskSpacePathFeedback>)))
  "Returns string type for a message object of type '<TaskSpacePathFeedback>"
  "hdt_saffir_control/TaskSpacePathFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskSpacePathFeedback)))
  "Returns string type for a message object of type 'TaskSpacePathFeedback"
  "hdt_saffir_control/TaskSpacePathFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskSpacePathFeedback>)))
  "Returns md5sum for a message object of type '<TaskSpacePathFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskSpacePathFeedback)))
  "Returns md5sum for a message object of type 'TaskSpacePathFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskSpacePathFeedback>)))
  "Returns full string definition for message of type '<TaskSpacePathFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskSpacePathFeedback)))
  "Returns full string definition for message of type 'TaskSpacePathFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskSpacePathFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskSpacePathFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskSpacePathFeedback
))
