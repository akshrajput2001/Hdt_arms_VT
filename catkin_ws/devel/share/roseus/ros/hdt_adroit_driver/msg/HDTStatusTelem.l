;; Auto-generated. Do not edit!


(when (boundp 'hdt_adroit_driver::HDTStatusTelem)
  (if (not (find-package "HDT_ADROIT_DRIVER"))
    (make-package "HDT_ADROIT_DRIVER"))
  (shadow 'HDTStatusTelem (find-package "HDT_ADROIT_DRIVER")))
(unless (find-package "HDT_ADROIT_DRIVER::HDTSTATUSTELEM")
  (make-package "HDT_ADROIT_DRIVER::HDTSTATUSTELEM"))

(in-package "ROS")
;;//! \htmlinclude HDTStatusTelem.msg.html


(defclass hdt_adroit_driver::HDTStatusTelem
  :super ros::object
  :slots (_state ))

(defmethod hdt_adroit_driver::HDTStatusTelem
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int16 _state
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _state
       (write-word _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _state
     (setq _state (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get hdt_adroit_driver::HDTStatusTelem :md5sum-) "72e7b8edf4a76696b7b067f40b28a9b7")
(setf (get hdt_adroit_driver::HDTStatusTelem :datatype-) "hdt_adroit_driver/HDTStatusTelem")
(setf (get hdt_adroit_driver::HDTStatusTelem :definition-)
      "int16 state
")



(provide :hdt_adroit_driver/HDTStatusTelem "72e7b8edf4a76696b7b067f40b28a9b7")


