;; Auto-generated. Do not edit!


(when (boundp 'hdt_adroit_driver::Commit)
  (if (not (find-package "HDT_ADROIT_DRIVER"))
    (make-package "HDT_ADROIT_DRIVER"))
  (shadow 'Commit (find-package "HDT_ADROIT_DRIVER")))
(unless (find-package "HDT_ADROIT_DRIVER::COMMIT")
  (make-package "HDT_ADROIT_DRIVER::COMMIT"))
(unless (find-package "HDT_ADROIT_DRIVER::COMMITREQUEST")
  (make-package "HDT_ADROIT_DRIVER::COMMITREQUEST"))
(unless (find-package "HDT_ADROIT_DRIVER::COMMITRESPONSE")
  (make-package "HDT_ADROIT_DRIVER::COMMITRESPONSE"))

(in-package "ROS")





(defclass hdt_adroit_driver::CommitRequest
  :super ros::object
  :slots (_name ))

(defmethod hdt_adroit_driver::CommitRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hdt_adroit_driver::CommitResponse
  :super ros::object
  :slots (_ret ))

(defmethod hdt_adroit_driver::CommitResponse
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

(defclass hdt_adroit_driver::Commit
  :super ros::object
  :slots ())

(setf (get hdt_adroit_driver::Commit :md5sum-) "13ff23040aab9b4302a107a8c3ff196a")
(setf (get hdt_adroit_driver::Commit :datatype-) "hdt_adroit_driver/Commit")
(setf (get hdt_adroit_driver::Commit :request) hdt_adroit_driver::CommitRequest)
(setf (get hdt_adroit_driver::Commit :response) hdt_adroit_driver::CommitResponse)

(defmethod hdt_adroit_driver::CommitRequest
  (:response () (instance hdt_adroit_driver::CommitResponse :init)))

(setf (get hdt_adroit_driver::CommitRequest :md5sum-) "13ff23040aab9b4302a107a8c3ff196a")
(setf (get hdt_adroit_driver::CommitRequest :datatype-) "hdt_adroit_driver/CommitRequest")
(setf (get hdt_adroit_driver::CommitRequest :definition-)
      "string name
---
uint32 ret
")

(setf (get hdt_adroit_driver::CommitResponse :md5sum-) "13ff23040aab9b4302a107a8c3ff196a")
(setf (get hdt_adroit_driver::CommitResponse :datatype-) "hdt_adroit_driver/CommitResponse")
(setf (get hdt_adroit_driver::CommitResponse :definition-)
      "string name
---
uint32 ret
")



(provide :hdt_adroit_driver/Commit "13ff23040aab9b4302a107a8c3ff196a")


