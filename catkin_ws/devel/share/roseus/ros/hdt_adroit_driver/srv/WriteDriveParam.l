;; Auto-generated. Do not edit!


(when (boundp 'hdt_adroit_driver::WriteDriveParam)
  (if (not (find-package "HDT_ADROIT_DRIVER"))
    (make-package "HDT_ADROIT_DRIVER"))
  (shadow 'WriteDriveParam (find-package "HDT_ADROIT_DRIVER")))
(unless (find-package "HDT_ADROIT_DRIVER::WRITEDRIVEPARAM")
  (make-package "HDT_ADROIT_DRIVER::WRITEDRIVEPARAM"))
(unless (find-package "HDT_ADROIT_DRIVER::WRITEDRIVEPARAMREQUEST")
  (make-package "HDT_ADROIT_DRIVER::WRITEDRIVEPARAMREQUEST"))
(unless (find-package "HDT_ADROIT_DRIVER::WRITEDRIVEPARAMRESPONSE")
  (make-package "HDT_ADROIT_DRIVER::WRITEDRIVEPARAMRESPONSE"))

(in-package "ROS")





(defclass hdt_adroit_driver::WriteDriveParamRequest
  :super ros::object
  :slots (_name _index _value ))

(defmethod hdt_adroit_driver::WriteDriveParamRequest
  (:init
   (&key
    ((:name __name) "")
    ((:index __index) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _index (round __index))
   (setq _value (round __value))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint32 _index
    4
    ;; uint32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint32 _index
       (write-long _index s)
     ;; uint32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hdt_adroit_driver::WriteDriveParamResponse
  :super ros::object
  :slots (_ret ))

(defmethod hdt_adroit_driver::WriteDriveParamResponse
  (:init
   (&key
    ((:ret __ret) 0)
    )
   (send-super :init)
   (setq _ret (round __ret))
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; uint32 _ret
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _ret
       (write-long _ret s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _ret
     (setq _ret (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hdt_adroit_driver::WriteDriveParam
  :super ros::object
  :slots ())

(setf (get hdt_adroit_driver::WriteDriveParam :md5sum-) "9bd87f56854479b390ba5369522b5546")
(setf (get hdt_adroit_driver::WriteDriveParam :datatype-) "hdt_adroit_driver/WriteDriveParam")
(setf (get hdt_adroit_driver::WriteDriveParam :request) hdt_adroit_driver::WriteDriveParamRequest)
(setf (get hdt_adroit_driver::WriteDriveParam :response) hdt_adroit_driver::WriteDriveParamResponse)

(defmethod hdt_adroit_driver::WriteDriveParamRequest
  (:response () (instance hdt_adroit_driver::WriteDriveParamResponse :init)))

(setf (get hdt_adroit_driver::WriteDriveParamRequest :md5sum-) "9bd87f56854479b390ba5369522b5546")
(setf (get hdt_adroit_driver::WriteDriveParamRequest :datatype-) "hdt_adroit_driver/WriteDriveParamRequest")
(setf (get hdt_adroit_driver::WriteDriveParamRequest :definition-)
      "string name
uint32 index
uint32 value
---
uint32 ret
")

(setf (get hdt_adroit_driver::WriteDriveParamResponse :md5sum-) "9bd87f56854479b390ba5369522b5546")
(setf (get hdt_adroit_driver::WriteDriveParamResponse :datatype-) "hdt_adroit_driver/WriteDriveParamResponse")
(setf (get hdt_adroit_driver::WriteDriveParamResponse :definition-)
      "string name
uint32 index
uint32 value
---
uint32 ret
")



(provide :hdt_adroit_driver/WriteDriveParam "9bd87f56854479b390ba5369522b5546")


