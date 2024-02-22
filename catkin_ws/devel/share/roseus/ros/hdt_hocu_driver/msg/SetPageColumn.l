;; Auto-generated. Do not edit!


(when (boundp 'hdt_hocu_driver::SetPageColumn)
  (if (not (find-package "HDT_HOCU_DRIVER"))
    (make-package "HDT_HOCU_DRIVER"))
  (shadow 'SetPageColumn (find-package "HDT_HOCU_DRIVER")))
(unless (find-package "HDT_HOCU_DRIVER::SETPAGECOLUMN")
  (make-package "HDT_HOCU_DRIVER::SETPAGECOLUMN"))

(in-package "ROS")
;;//! \htmlinclude SetPageColumn.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hdt_hocu_driver::SetPageColumn
  :super ros::object
  :slots (_header _page _column ))

(defmethod hdt_hocu_driver::SetPageColumn
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:page __page) 0)
    ((:column __column) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _page (round __page))
   (setq _column (round __column))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:page
   (&optional __page)
   (if __page (setq _page __page)) _page)
  (:column
   (&optional __column)
   (if __column (setq _column __column)) _column)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _page
    2
    ;; uint16 _column
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _page
       (write-word _page s)
     ;; uint16 _column
       (write-word _column s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _page
     (setq _page (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _column
     (setq _column (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get hdt_hocu_driver::SetPageColumn :md5sum-) "632d79050806f7218841d7ac24570f7a")
(setf (get hdt_hocu_driver::SetPageColumn :datatype-) "hdt_hocu_driver/SetPageColumn")
(setf (get hdt_hocu_driver::SetPageColumn :definition-)
      "# SetPageColumn

std_msgs/Header header
uint16 page
uint16 column

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



(provide :hdt_hocu_driver/SetPageColumn "632d79050806f7218841d7ac24570f7a")


