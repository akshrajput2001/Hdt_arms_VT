;; Auto-generated. Do not edit!


(when (boundp 'hdt_adroit_driver::HDTMSTelem)
  (if (not (find-package "HDT_ADROIT_DRIVER"))
    (make-package "HDT_ADROIT_DRIVER"))
  (shadow 'HDTMSTelem (find-package "HDT_ADROIT_DRIVER")))
(unless (find-package "HDT_ADROIT_DRIVER::HDTMSTELEM")
  (make-package "HDT_ADROIT_DRIVER::HDTMSTELEM"))

(in-package "ROS")
;;//! \htmlinclude HDTMSTelem.msg.html


(defclass hdt_adroit_driver::HDTMSTelem
  :super ros::object
  :slots (_var1 _var2 _var3 _var4 ))

(defmethod hdt_adroit_driver::HDTMSTelem
  (:init
   (&key
    ((:var1 __var1) 0)
    ((:var2 __var2) 0)
    ((:var3 __var3) 0)
    ((:var4 __var4) 0)
    )
   (send-super :init)
   (setq _var1 (round __var1))
   (setq _var2 (round __var2))
   (setq _var3 (round __var3))
   (setq _var4 (round __var4))
   self)
  (:var1
   (&optional __var1)
   (if __var1 (setq _var1 __var1)) _var1)
  (:var2
   (&optional __var2)
   (if __var2 (setq _var2 __var2)) _var2)
  (:var3
   (&optional __var3)
   (if __var3 (setq _var3 __var3)) _var3)
  (:var4
   (&optional __var4)
   (if __var4 (setq _var4 __var4)) _var4)
  (:serialization-length
   ()
   (+
    ;; int16 _var1
    2
    ;; int16 _var2
    2
    ;; int16 _var3
    2
    ;; int16 _var4
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _var1
       (write-word _var1 s)
     ;; int16 _var2
       (write-word _var2 s)
     ;; int16 _var3
       (write-word _var3 s)
     ;; int16 _var4
       (write-word _var4 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _var1
     (setq _var1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _var2
     (setq _var2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _var3
     (setq _var3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _var4
     (setq _var4 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get hdt_adroit_driver::HDTMSTelem :md5sum-) "6dc00f8899a8207abb48266da6b58569")
(setf (get hdt_adroit_driver::HDTMSTelem :datatype-) "hdt_adroit_driver/HDTMSTelem")
(setf (get hdt_adroit_driver::HDTMSTelem :definition-)
      "int16 var1
int16 var2
int16 var3
int16 var4
")



(provide :hdt_adroit_driver/HDTMSTelem "6dc00f8899a8207abb48266da6b58569")


