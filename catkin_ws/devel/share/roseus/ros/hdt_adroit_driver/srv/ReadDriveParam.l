;; Auto-generated. Do not edit!


(when (boundp 'hdt_adroit_driver::ReadDriveParam)
  (if (not (find-package "HDT_ADROIT_DRIVER"))
    (make-package "HDT_ADROIT_DRIVER"))
  (shadow 'ReadDriveParam (find-package "HDT_ADROIT_DRIVER")))
(unless (find-package "HDT_ADROIT_DRIVER::READDRIVEPARAM")
  (make-package "HDT_ADROIT_DRIVER::READDRIVEPARAM"))
(unless (find-package "HDT_ADROIT_DRIVER::READDRIVEPARAMREQUEST")
  (make-package "HDT_ADROIT_DRIVER::READDRIVEPARAMREQUEST"))
(unless (find-package "HDT_ADROIT_DRIVER::READDRIVEPARAMRESPONSE")
  (make-package "HDT_ADROIT_DRIVER::READDRIVEPARAMRESPONSE"))

(in-package "ROS")





(defclass hdt_adroit_driver::ReadDriveParamRequest
  :super ros::object
  :slots (_name _index ))

(defmethod hdt_adroit_driver::ReadDriveParamRequest
  (:init
   (&key
    ((:name __name) "")
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _index (round __index))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint32 _index
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hdt_adroit_driver::ReadDriveParamResponse
  :super ros::object
  :slots (_ret ))

(defmethod hdt_adroit_driver::ReadDriveParamResponse
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

(defclass hdt_adroit_driver::ReadDriveParam
  :super ros::object
  :slots ())

(setf (get hdt_adroit_driver::ReadDriveParam :md5sum-) "bb5aec711104386e2aeb8b52f04e2a7a")
(setf (get hdt_adroit_driver::ReadDriveParam :datatype-) "hdt_adroit_driver/ReadDriveParam")
(setf (get hdt_adroit_driver::ReadDriveParam :request) hdt_adroit_driver::ReadDriveParamRequest)
(setf (get hdt_adroit_driver::ReadDriveParam :response) hdt_adroit_driver::ReadDriveParamResponse)

(defmethod hdt_adroit_driver::ReadDriveParamRequest
  (:response () (instance hdt_adroit_driver::ReadDriveParamResponse :init)))

(setf (get hdt_adroit_driver::ReadDriveParamRequest :md5sum-) "bb5aec711104386e2aeb8b52f04e2a7a")
(setf (get hdt_adroit_driver::ReadDriveParamRequest :datatype-) "hdt_adroit_driver/ReadDriveParamRequest")
(setf (get hdt_adroit_driver::ReadDriveParamRequest :definition-)
      "string name
uint32 index
---
uint32 ret
")

(setf (get hdt_adroit_driver::ReadDriveParamResponse :md5sum-) "bb5aec711104386e2aeb8b52f04e2a7a")
(setf (get hdt_adroit_driver::ReadDriveParamResponse :datatype-) "hdt_adroit_driver/ReadDriveParamResponse")
(setf (get hdt_adroit_driver::ReadDriveParamResponse :definition-)
      "string name
uint32 index
---
uint32 ret
")



(provide :hdt_adroit_driver/ReadDriveParam "bb5aec711104386e2aeb8b52f04e2a7a")


