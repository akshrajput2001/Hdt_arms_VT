; Auto-generated. Do not edit!


(cl:in-package hdt_saffir_control-msg)


;//! \htmlinclude JointSpacePathActionGoal.msg.html

(cl:defclass <JointSpacePathActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type hdt_saffir_control-msg:JointSpacePathGoal
    :initform (cl:make-instance 'hdt_saffir_control-msg:JointSpacePathGoal)))
)

(cl:defclass JointSpacePathActionGoal (<JointSpacePathActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointSpacePathActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointSpacePathActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_saffir_control-msg:<JointSpacePathActionGoal> is deprecated: use hdt_saffir_control-msg:JointSpacePathActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <JointSpacePathActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_saffir_control-msg:header-val is deprecated.  Use hdt_saffir_control-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <JointSpacePathActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_saffir_control-msg:goal_id-val is deprecated.  Use hdt_saffir_control-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <JointSpacePathActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_saffir_control-msg:goal-val is deprecated.  Use hdt_saffir_control-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointSpacePathActionGoal>) ostream)
  "Serializes a message object of type '<JointSpacePathActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointSpacePathActionGoal>) istream)
  "Deserializes a message object of type '<JointSpacePathActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointSpacePathActionGoal>)))
  "Returns string type for a message object of type '<JointSpacePathActionGoal>"
  "hdt_saffir_control/JointSpacePathActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointSpacePathActionGoal)))
  "Returns string type for a message object of type 'JointSpacePathActionGoal"
  "hdt_saffir_control/JointSpacePathActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointSpacePathActionGoal>)))
  "Returns md5sum for a message object of type '<JointSpacePathActionGoal>"
  "a278732ab3852e9fc1e5a041bbafd1fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointSpacePathActionGoal)))
  "Returns md5sum for a message object of type 'JointSpacePathActionGoal"
  "a278732ab3852e9fc1e5a041bbafd1fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointSpacePathActionGoal>)))
  "Returns full string definition for message of type '<JointSpacePathActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%JointSpacePathGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: hdt_saffir_control/JointSpacePathGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%string pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointSpacePathActionGoal)))
  "Returns full string definition for message of type 'JointSpacePathActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%JointSpacePathGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: hdt_saffir_control/JointSpacePathGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%string pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointSpacePathActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointSpacePathActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'JointSpacePathActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
