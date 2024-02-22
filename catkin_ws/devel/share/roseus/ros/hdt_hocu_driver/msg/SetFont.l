;; Auto-generated. Do not edit!


(when (boundp 'hdt_hocu_driver::SetFont)
  (if (not (find-package "HDT_HOCU_DRIVER"))
    (make-package "HDT_HOCU_DRIVER"))
  (shadow 'SetFont (find-package "HDT_HOCU_DRIVER")))
(unless (find-package "HDT_HOCU_DRIVER::SETFONT")
  (make-package "HDT_HOCU_DRIVER::SETFONT"))

(in-package "ROS")
;;//! \htmlinclude SetFont.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hdt_hocu_driver::SetFont
  :super ros::object
  :slots (_header _size _options ))

(defmethod hdt_hocu_driver::SetFont
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:size __size) 0)
    ((:options __options) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _size (round __size))
   (setq _options (round __options))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:options
   (&optional __options)
   (if __options (setq _options __options)) _options)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _size
    2
    ;; uint16 _options
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _size
       (write-word _size s)
     ;; uint16 _options
       (write-word _options s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _size
     (setq _size (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _options
     (setq _options (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get hdt_hocu_driver::SetFont :md5sum-) "22b2599520cfd6c6a6050253935b4b58")
(setf (get hdt_hocu_driver::SetFont :datatype-) "hdt_hocu_driver/SetFont")
(setf (get hdt_hocu_driver::SetFont :definition-)
      "# SetFont

std_msgs/Header header
uint16 size
uint16 options

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



(provide :hdt_hocu_driver/SetFont "22b2599520cfd6c6a6050253935b4b58")


