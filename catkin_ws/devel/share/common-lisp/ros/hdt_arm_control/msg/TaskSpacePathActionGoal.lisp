; Auto-generated. Do not edit!


(cl:in-package hdt_arm_control-msg)


;//! \htmlinclude TaskSpacePathActionGoal.msg.html

(cl:defclass <TaskSpacePathActionGoal> (roslisp-msg-protocol:ros-message)
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
    :type hdt_arm_control-msg:TaskSpacePathGoal
    :initform (cl:make-instance 'hdt_arm_control-msg:TaskSpacePathGoal)))
)

(cl:defclass TaskSpacePathActionGoal (<TaskSpacePathActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskSpacePathActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskSpacePathActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdt_arm_control-msg:<TaskSpacePathActionGoal> is deprecated: use hdt_arm_control-msg:TaskSpacePathActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TaskSpacePathActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_arm_control-msg:header-val is deprecated.  Use hdt_arm_control-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <TaskSpacePathActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_arm_control-msg:goal_id-val is deprecated.  Use hdt_arm_control-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <TaskSpacePathActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdt_arm_control-msg:goal-val is deprecated.  Use hdt_arm_control-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskSpacePathActionGoal>) ostream)
  "Serializes a message object of type '<TaskSpacePathActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskSpacePathActionGoal>) istream)
  "Deserializes a message object of type '<TaskSpacePathActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskSpacePathActionGoal>)))
  "Returns string type for a message object of type '<TaskSpacePathActionGoal>"
  "hdt_arm_control/TaskSpacePathActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskSpacePathActionGoal)))
  "Returns string type for a message object of type 'TaskSpacePathActionGoal"
  "hdt_arm_control/TaskSpacePathActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskSpacePathActionGoal>)))
  "Returns md5sum for a message object of type '<TaskSpacePathActionGoal>"
  "632465acfa71546721620b711f3ce36c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskSpacePathActionGoal)))
  "Returns md5sum for a message object of type 'TaskSpacePathActionGoal"
  "632465acfa71546721620b711f3ce36c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskSpacePathActionGoal>)))
  "Returns full string definition for message of type '<TaskSpacePathActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%TaskSpacePathGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: hdt_arm_control/TaskSpacePathGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%string marker~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskSpacePathActionGoal)))
  "Returns full string definition for message of type 'TaskSpacePathActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%TaskSpacePathGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: hdt_arm_control/TaskSpacePathGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%string marker~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskSpacePathActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskSpacePathActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskSpacePathActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
