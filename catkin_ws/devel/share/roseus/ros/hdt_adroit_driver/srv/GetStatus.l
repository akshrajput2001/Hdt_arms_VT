;; Auto-generated. Do not edit!


(when (boundp 'hdt_adroit_driver::GetStatus)
  (if (not (find-package "HDT_ADROIT_DRIVER"))
    (make-package "HDT_ADROIT_DRIVER"))
  (shadow 'GetStatus (find-package "HDT_ADROIT_DRIVER")))
(unless (find-package "HDT_ADROIT_DRIVER::GETSTATUS")
  (make-package "HDT_ADROIT_DRIVER::GETSTATUS"))
(unless (find-package "HDT_ADROIT_DRIVER::GETSTATUSREQUEST")
  (make-package "HDT_ADROIT_DRIVER::GETSTATUSREQUEST"))
(unless (find-package "HDT_ADROIT_DRIVER::GETSTATUSRESPONSE")
  (make-package "HDT_ADROIT_DRIVER::GETSTATUSRESPONSE"))

(in-package "ROS")





(defclass hdt_adroit_driver::GetStatusRequest
  :super ros::object
  :slots ())

(defmethod hdt_adroit_driver::GetStatusRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass hdt_adroit_driver::GetStatusResponse
  :super ros::object
  :slots (_addr _state ))

(defmethod hdt_adroit_driver::GetStatusResponse
  (:init
   (&key
    ((:addr __addr) (make-array 0 :initial-element 0 :element-type :integer))
    ((:state __state) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _addr __addr)
   (setq _state __state)
   self)
  (:addr
   (&optional __addr)
   (if __addr (setq _addr __addr)) _addr)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint32[] _addr
    (* 4    (length _addr)) 4
    ;; uint32[] _state
    (* 4    (length _state)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _addr
     (write-long (length _addr) s)
     (dotimes (i (length _addr))
       (write-long (elt _addr i) s)
       )
     ;; uint32[] _state
     (write-long (length _state) s)
     (dotimes (i (length _state))
       (write-long (elt _state i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _addr
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _addr (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _addr i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _state i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass hdt_adroit_driver::GetStatus
  :super ros::object
  :slots ())

(setf (get hdt_adroit_driver::GetStatus :md5sum-) "030d6b61cd649925cba2336b4a1efa95")
(setf (get hdt_adroit_driver::GetStatus :datatype-) "hdt_adroit_driver/GetStatus")
(setf (get hdt_adroit_driver::GetStatus :request) hdt_adroit_driver::GetStatusRequest)
(setf (get hdt_adroit_driver::GetStatus :response) hdt_adroit_driver::GetStatusResponse)

(defmethod hdt_adroit_driver::GetStatusRequest
  (:response () (instance hdt_adroit_driver::GetStatusResponse :init)))

(setf (get hdt_adroit_driver::GetStatusRequest :md5sum-) "030d6b61cd649925cba2336b4a1efa95")
(setf (get hdt_adroit_driver::GetStatusRequest :datatype-) "hdt_adroit_driver/GetStatusRequest")
(setf (get hdt_adroit_driver::GetStatusRequest :definition-)
      "
---
uint32[] addr
uint32[] state

")

(setf (get hdt_adroit_driver::GetStatusResponse :md5sum-) "030d6b61cd649925cba2336b4a1efa95")
(setf (get hdt_adroit_driver::GetStatusResponse :datatype-) "hdt_adroit_driver/GetStatusResponse")
(setf (get hdt_adroit_driver::GetStatusResponse :definition-)
      "
---
uint32[] addr
uint32[] state

")



(provide :hdt_adroit_driver/GetStatus "030d6b61cd649925cba2336b4a1efa95")


