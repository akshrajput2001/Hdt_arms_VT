; Auto-generated. Do not edit!


(cl:in-package hdt_saffir_control-msg)


;//! \htmlinclude TaskSpacePathResult.msg.html

(cl:defclass <TaskSpacePathResult> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TaskSpacePathResult (<TaskSpacePathResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskSpacePathResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskSpacePathResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_saffir_control-msg:<TaskSpacePathResult> is deprecated: use hdt_saffir_control-msg:TaskSpacePathResult instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskSpacePathResult>) ostream)
  "Serializes a message object of type '<TaskSpacePathResult>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskSpacePathResult>) istream)
  "Deserializes a message object of type '<TaskSpacePathResult>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskSpacePathResult>)))
  "Returns string type for a message object of type '<TaskSpacePathResult>"
  "hdt_saffir_control/TaskSpacePathResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskSpacePathResult)))
  "Returns string type for a message object of type 'TaskSpacePathResult"
  "hdt_saffir_control/TaskSpacePathResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskSpacePathResult>)))
  "Returns md5sum for a message object of type '<TaskSpacePathResult>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskSpacePathResult)))
  "Returns md5sum for a message object of type 'TaskSpacePathResult"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskSpacePathResult>)))
  "Returns full string definition for message of type '<TaskSpacePathResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskSpacePathResult)))
  "Returns full string definition for message of type 'TaskSpacePathResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskSpacePathResult>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskSpacePathResult>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskSpacePathResult
))
