;; Auto-generated. Do not edit!


(when (boundp 'hdt_adroit_driver::HDTJointState)
  (if (not (find-package "HDT_ADROIT_DRIVER"))
    (make-package "HDT_ADROIT_DRIVER"))
  (shadow 'HDTJointState (find-package "HDT_ADROIT_DRIVER")))
(unless (find-package "HDT_ADROIT_DRIVER::HDTJOINTSTATE")
  (make-package "HDT_ADROIT_DRIVER::HDTJOINTSTATE"))

(in-package "ROS")
;;//! \htmlinclude HDTJointState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hdt_adroit_driver::HDTJointState
  :super ros::object
  :slots (_header _name _position _velocity _effort _motor_current _bus_voltage _bus_current _temperature _state ))

(defmethod hdt_adroit_driver::HDTJointState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:effort __effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:motor_current __motor_current) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:bus_voltage __bus_voltage) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:bus_current __bus_current) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:temperature __temperature) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:state __state) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name __name)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _effort __effort)
   (setq _motor_current __motor_current)
   (setq _bus_voltage __bus_voltage)
   (setq _bus_current __bus_current)
   (setq _temperature __temperature)
   (setq _state __state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:motor_current
   (&optional __motor_current)
   (if __motor_current (setq _motor_current __motor_current)) _motor_current)
  (:bus_voltage
   (&optional __bus_voltage)
   (if __bus_voltage (setq _bus_voltage __bus_voltage)) _bus_voltage)
  (:bus_current
   (&optional __bus_current)
   (if __bus_current (setq _bus_current __bus_current)) _bus_current)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float64[] _position
    (* 8    (length _position)) 4
    ;; float64[] _velocity
    (* 8    (length _velocity)) 4
    ;; float64[] _effort
    (* 8    (length _effort)) 4
    ;; float64[] _motor_current
    (* 8    (length _motor_current)) 4
    ;; float64[] _bus_voltage
    (* 8    (length _bus_voltage)) 4
    ;; float64[] _bus_current
    (* 8    (length _bus_current)) 4
    ;; float64[] _temperature
    (* 8    (length _temperature)) 4
    ;; int32[] _state
    (* 4    (length _state)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _effort
     (write-long (length _effort) s)
     (dotimes (i (length _effort))
       (sys::poke (elt _effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _motor_current
     (write-long (length _motor_current) s)
     (dotimes (i (length _motor_current))
       (sys::poke (elt _motor_current i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _bus_voltage
     (write-long (length _bus_voltage) s)
     (dotimes (i (length _bus_voltage))
       (sys::poke (elt _bus_voltage i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _bus_current
     (write-long (length _bus_current) s)
     (dotimes (i (length _bus_current))
       (sys::poke (elt _bus_current i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _temperature
     (write-long (length _temperature) s)
     (dotimes (i (length _temperature))
       (sys::poke (elt _temperature i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32[] _state
     (write-long (length _state) s)
     (dotimes (i (length _state))
       (write-long (elt _state i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _motor_current
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_current (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor_current i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _bus_voltage
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bus_voltage (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _bus_voltage i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _bus_current
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bus_current (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _bus_current i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _temperature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _temperature (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _temperature i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32[] _state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _state i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get hdt_adroit_driver::HDTJointState :md5sum-) "de9840a71e6ac8ef70d0fb933aca51fe")
(setf (get hdt_adroit_driver::HDTJointState :datatype-) "hdt_adroit_driver/HDTJointState")
(setf (get hdt_adroit_driver::HDTJointState :definition-)
      "# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s),
#  * the effort that is applied in the joint (Nm or N),
#  * the motor current of the joint (A),
#  * the bus voltage of the joint (V),
#  * the bus current of the joint (A), and
#  * the temperature of the joint (C).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort
float64[] motor_current
float64[] bus_voltage
float64[] bus_current
float64[] temperature

int32[] state

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :hdt_adroit_driver/HDTJointState "de9840a71e6ac8ef70d0fb933aca51fe")


