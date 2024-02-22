;; Auto-generated. Do not edit!


(when (boundp 'hdt_hocu_driver::WriteString)
  (if (not (find-package "HDT_HOCU_DRIVER"))
    (make-package "HDT_HOCU_DRIVER"))
  (shadow 'WriteString (find-package "HDT_HOCU_DRIVER")))
(unless (find-package "HDT_HOCU_DRIVER::WRITESTRING")
  (make-package "HDT_HOCU_DRIVER::WRITESTRING"))

(in-package "ROS")
;;//! \htmlinclude WriteString.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hdt_hocu_driver::WriteString
  :super ros::object
  :slots (_header _text ))

(defmethod hdt_hocu_driver::WriteString
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:text __text) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _text (string __text))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get hdt_hocu_driver::WriteString :md5sum-) "b925c3f72cbc309dc37196f73e57487f")
(setf (get hdt_hocu_driver::WriteString :datatype-) "hdt_hocu_driver/WriteString")
(setf (get hdt_hocu_driver::WriteString :definition-)
      "# WriteString

std_msgs/Header header
string text

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



(provide :hdt_hocu_driver/WriteString "b925c3f72cbc309dc37196f73e57487f")


