;; Auto-generated. Do not edit!


(when (boundp 'hdt_adroit_driver::HDTParameterTelem)
  (if (not (find-package "HDT_ADROIT_DRIVER"))
    (make-package "HDT_ADROIT_DRIVER"))
  (shadow 'HDTParameterTelem (find-package "HDT_ADROIT_DRIVER")))
(unless (find-package "HDT_ADROIT_DRIVER::HDTPARAMETERTELEM")
  (make-package "HDT_ADROIT_DRIVER::HDTPARAMETERTELEM"))

(in-package "ROS")
;;//! \htmlinclude HDTParameterTelem.msg.html


(defclass hdt_adroit_driver::HDTParameterTelem
  :super ros::object
  :slots (_head _index _sub_index _data ))

(defmethod hdt_adroit_driver::HDTParameterTelem
  (:init
   (&key
    ((:head __head) 0)
    ((:index __index) 0)
    ((:sub_index __sub_index) 0)
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _head (round __head))
   (setq _index (round __index))
   (setq _sub_index (round __sub_index))
   (setq _data (round __data))
   self)
  (:head
   (&optional __head)
   (if __head (setq _head __head)) _head)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:sub_index
   (&optional __sub_index)
   (if __sub_index (setq _sub_index __sub_index)) _sub_index)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint8 _head
    1
    ;; uint16 _index
    2
    ;; uint8 _sub_index
    1
    ;; uint32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _head
       (write-byte _head s)
     ;; uint16 _index
       (write-word _index s)
     ;; uint8 _sub_index
       (write-byte _sub_index s)
     ;; uint32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _head
     (setq _head (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _index
     (setq _index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _sub_index
     (setq _sub_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hdt_adroit_driver::HDTParameterTelem :md5sum-) "9c3ccffb91d861d89d3d9dcfa704f7e8")
(setf (get hdt_adroit_driver::HDTParameterTelem :datatype-) "hdt_adroit_driver/HDTParameterTelem")
(setf (get hdt_adroit_driver::HDTParameterTelem :definition-)
      "uint8 head
uint16 index
uint8 sub_index
uint32 data
")



(provide :hdt_adroit_driver/HDTParameterTelem "9c3ccffb91d861d89d3d9dcfa704f7e8")


