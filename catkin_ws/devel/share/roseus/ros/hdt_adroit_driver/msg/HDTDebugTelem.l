;; Auto-generated. Do not edit!


(when (boundp 'hdt_adroit_driver::HDTDebugTelem)
  (if (not (find-package "HDT_ADROIT_DRIVER"))
    (make-package "HDT_ADROIT_DRIVER"))
  (shadow 'HDTDebugTelem (find-package "HDT_ADROIT_DRIVER")))
(unless (find-package "HDT_ADROIT_DRIVER::HDTDEBUGTELEM")
  (make-package "HDT_ADROIT_DRIVER::HDTDEBUGTELEM"))

(in-package "ROS")
;;//! \htmlinclude HDTDebugTelem.msg.html


(defclass hdt_adroit_driver::HDTDebugTelem
  :super ros::object
  :slots (_index _hs_samples _ls_var1 _ls_var2 _ls_var3 _hs_var1 _hs_var2 _crc ))

(defmethod hdt_adroit_driver::HDTDebugTelem
  (:init
   (&key
    ((:index __index) 0)
    ((:hs_samples __hs_samples) 0)
    ((:ls_var1 __ls_var1) 0)
    ((:ls_var2 __ls_var2) 0)
    ((:ls_var3 __ls_var3) 0)
    ((:hs_var1 __hs_var1) (make-array 0 :initial-element 0 :element-type :integer))
    ((:hs_var2 __hs_var2) (make-array 0 :initial-element 0 :element-type :integer))
    ((:crc __crc) 0)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _hs_samples (round __hs_samples))
   (setq _ls_var1 (round __ls_var1))
   (setq _ls_var2 (round __ls_var2))
   (setq _ls_var3 (round __ls_var3))
   (setq _hs_var1 __hs_var1)
   (setq _hs_var2 __hs_var2)
   (setq _crc (round __crc))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:hs_samples
   (&optional __hs_samples)
   (if __hs_samples (setq _hs_samples __hs_samples)) _hs_samples)
  (:ls_var1
   (&optional __ls_var1)
   (if __ls_var1 (setq _ls_var1 __ls_var1)) _ls_var1)
  (:ls_var2
   (&optional __ls_var2)
   (if __ls_var2 (setq _ls_var2 __ls_var2)) _ls_var2)
  (:ls_var3
   (&optional __ls_var3)
   (if __ls_var3 (setq _ls_var3 __ls_var3)) _ls_var3)
  (:hs_var1
   (&optional __hs_var1)
   (if __hs_var1 (setq _hs_var1 __hs_var1)) _hs_var1)
  (:hs_var2
   (&optional __hs_var2)
   (if __hs_var2 (setq _hs_var2 __hs_var2)) _hs_var2)
  (:crc
   (&optional __crc)
   (if __crc (setq _crc __crc)) _crc)
  (:serialization-length
   ()
   (+
    ;; uint8 _index
    1
    ;; uint8 _hs_samples
    1
    ;; int16 _ls_var1
    2
    ;; int16 _ls_var2
    2
    ;; int16 _ls_var3
    2
    ;; int16[] _hs_var1
    (* 2    (length _hs_var1)) 4
    ;; int16[] _hs_var2
    (* 2    (length _hs_var2)) 4
    ;; uint32 _crc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _index
       (write-byte _index s)
     ;; uint8 _hs_samples
       (write-byte _hs_samples s)
     ;; int16 _ls_var1
       (write-word _ls_var1 s)
     ;; int16 _ls_var2
       (write-word _ls_var2 s)
     ;; int16 _ls_var3
       (write-word _ls_var3 s)
     ;; int16[] _hs_var1
     (write-long (length _hs_var1) s)
     (dotimes (i (length _hs_var1))
       (write-word (elt _hs_var1 i) s)
       )
     ;; int16[] _hs_var2
     (write-long (length _hs_var2) s)
     (dotimes (i (length _hs_var2))
       (write-word (elt _hs_var2 i) s)
       )
     ;; uint32 _crc
       (write-long _crc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _index
     (setq _index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hs_samples
     (setq _hs_samples (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _ls_var1
     (setq _ls_var1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ls_var2
     (setq _ls_var2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ls_var3
     (setq _ls_var3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16[] _hs_var1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hs_var1 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _hs_var1 i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _hs_var2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hs_var2 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _hs_var2 i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint32 _crc
     (setq _crc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hdt_adroit_driver::HDTDebugTelem :md5sum-) "d366d58a05688ae09934cbaef1937408")
(setf (get hdt_adroit_driver::HDTDebugTelem :datatype-) "hdt_adroit_driver/HDTDebugTelem")
(setf (get hdt_adroit_driver::HDTDebugTelem :definition-)
      "uint8 index
uint8 hs_samples
int16 ls_var1
int16 ls_var2
int16 ls_var3
int16[] hs_var1
int16[] hs_var2
uint32 crc
")



(provide :hdt_adroit_driver/HDTDebugTelem "d366d58a05688ae09934cbaef1937408")


