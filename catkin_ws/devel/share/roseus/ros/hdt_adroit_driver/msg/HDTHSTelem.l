;; Auto-generated. Do not edit!


(when (boundp 'hdt_adroit_driver::HDTHSTelem)
  (if (not (find-package "HDT_ADROIT_DRIVER"))
    (make-package "HDT_ADROIT_DRIVER"))
  (shadow 'HDTHSTelem (find-package "HDT_ADROIT_DRIVER")))
(unless (find-package "HDT_ADROIT_DRIVER::HDTHSTELEM")
  (make-package "HDT_ADROIT_DRIVER::HDTHSTELEM"))

(in-package "ROS")
;;//! \htmlinclude HDTHSTelem.msg.html


(defclass hdt_adroit_driver::HDTHSTelem
  :super ros::object
  :slots (_position _velocity _effort _motor_current ))

(defmethod hdt_adroit_driver::HDTHSTelem
  (:init
   (&key
    ((:position __position) 0.0)
    ((:velocity __velocity) 0.0)
    ((:effort __effort) 0.0)
    ((:motor_current __motor_current) 0.0)
    )
   (send-super :init)
   (setq _position (float __position))
   (setq _velocity (float __velocity))
   (setq _effort (float __effort))
   (setq _motor_current (float __motor_current))
   self)
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
  (:serialization-length
   ()
   (+
    ;; float32 _position
    4
    ;; float32 _velocity
    4
    ;; float32 _effort
    4
    ;; float32 _motor_current
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _effort
       (sys::poke _effort (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _motor_current
       (sys::poke _motor_current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _effort
     (setq _effort (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _motor_current
     (setq _motor_current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hdt_adroit_driver::HDTHSTelem :md5sum-) "1366e8e4333938cc6ba1851fe990fb6a")
(setf (get hdt_adroit_driver::HDTHSTelem :datatype-) "hdt_adroit_driver/HDTHSTelem")
(setf (get hdt_adroit_driver::HDTHSTelem :definition-)
      "float32 position
float32 velocity
float32 effort
float32 motor_current
")



(provide :hdt_adroit_driver/HDTHSTelem "1366e8e4333938cc6ba1851fe990fb6a")


