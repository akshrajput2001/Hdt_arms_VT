;; Auto-generated. Do not edit!


(when (boundp 'hdt_adroit_driver::HDTErrorTelem)
  (if (not (find-package "HDT_ADROIT_DRIVER"))
    (make-package "HDT_ADROIT_DRIVER"))
  (shadow 'HDTErrorTelem (find-package "HDT_ADROIT_DRIVER")))
(unless (find-package "HDT_ADROIT_DRIVER::HDTERRORTELEM")
  (make-package "HDT_ADROIT_DRIVER::HDTERRORTELEM"))

(in-package "ROS")
;;//! \htmlinclude HDTErrorTelem.msg.html


(defclass hdt_adroit_driver::HDTErrorTelem
  :super ros::object
  :slots (_error_code _error_severity _error_value ))

(defmethod hdt_adroit_driver::HDTErrorTelem
  (:init
   (&key
    ((:error_code __error_code) 0)
    ((:error_severity __error_severity) 0)
    ((:error_value __error_value) 0)
    )
   (send-super :init)
   (setq _error_code (round __error_code))
   (setq _error_severity (round __error_severity))
   (setq _error_value (round __error_value))
   self)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:error_severity
   (&optional __error_severity)
   (if __error_severity (setq _error_severity __error_severity)) _error_severity)
  (:error_value
   (&optional __error_value)
   (if __error_value (setq _error_value __error_value)) _error_value)
  (:serialization-length
   ()
   (+
    ;; uint8 _error_code
    1
    ;; uint8 _error_severity
    1
    ;; uint32 _error_value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;; uint8 _error_severity
       (write-byte _error_severity s)
     ;; uint32 _error_value
       (write-long _error_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _error_severity
     (setq _error_severity (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _error_value
     (setq _error_value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hdt_adroit_driver::HDTErrorTelem :md5sum-) "92f6f8b505781f873bd2236cd504301c")
(setf (get hdt_adroit_driver::HDTErrorTelem :datatype-) "hdt_adroit_driver/HDTErrorTelem")
(setf (get hdt_adroit_driver::HDTErrorTelem :definition-)
      "uint8 error_code
uint8 error_severity
uint32 error_value
")



(provide :hdt_adroit_driver/HDTErrorTelem "92f6f8b505781f873bd2236cd504301c")


