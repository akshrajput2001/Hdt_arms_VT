;; Auto-generated. Do not edit!


(when (boundp 'hdt_adroit_driver::HDTLSTelem)
  (if (not (find-package "HDT_ADROIT_DRIVER"))
    (make-package "HDT_ADROIT_DRIVER"))
  (shadow 'HDTLSTelem (find-package "HDT_ADROIT_DRIVER")))
(unless (find-package "HDT_ADROIT_DRIVER::HDTLSTELEM")
  (make-package "HDT_ADROIT_DRIVER::HDTLSTELEM"))

(in-package "ROS")
;;//! \htmlinclude HDTLSTelem.msg.html


(defclass hdt_adroit_driver::HDTLSTelem
  :super ros::object
  :slots (_bus_voltage _bus_current _temperature ))

(defmethod hdt_adroit_driver::HDTLSTelem
  (:init
   (&key
    ((:bus_voltage __bus_voltage) 0.0)
    ((:bus_current __bus_current) 0.0)
    ((:temperature __temperature) 0.0)
    )
   (send-super :init)
   (setq _bus_voltage (float __bus_voltage))
   (setq _bus_current (float __bus_current))
   (setq _temperature (float __temperature))
   self)
  (:bus_voltage
   (&optional __bus_voltage)
   (if __bus_voltage (setq _bus_voltage __bus_voltage)) _bus_voltage)
  (:bus_current
   (&optional __bus_current)
   (if __bus_current (setq _bus_current __bus_current)) _bus_current)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; float32 _bus_voltage
    4
    ;; float32 _bus_current
    4
    ;; float32 _temperature
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _bus_voltage
       (sys::poke _bus_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bus_current
       (sys::poke _bus_current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _bus_voltage
     (setq _bus_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bus_current
     (setq _bus_current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hdt_adroit_driver::HDTLSTelem :md5sum-) "d6482f2ccdad1eb7d5847af2e454494b")
(setf (get hdt_adroit_driver::HDTLSTelem :datatype-) "hdt_adroit_driver/HDTLSTelem")
(setf (get hdt_adroit_driver::HDTLSTelem :definition-)
      "float32 bus_voltage
float32 bus_current
float32 temperature

")



(provide :hdt_adroit_driver/HDTLSTelem "d6482f2ccdad1eb7d5847af2e454494b")


