;; Auto-generated. Do not edit!


(when (boundp 'hdt_adroit_driver::AppLoad)
  (if (not (find-package "HDT_ADROIT_DRIVER"))
    (make-package "HDT_ADROIT_DRIVER"))
  (shadow 'AppLoad (find-package "HDT_ADROIT_DRIVER")))
(unless (find-package "HDT_ADROIT_DRIVER::APPLOAD")
  (make-package "HDT_ADROIT_DRIVER::APPLOAD"))
(unless (find-package "HDT_ADROIT_DRIVER::APPLOADREQUEST")
  (make-package "HDT_ADROIT_DRIVER::APPLOADREQUEST"))
(unless (find-package "HDT_ADROIT_DRIVER::APPLOADRESPONSE")
  (make-package "HDT_ADROIT_DRIVER::APPLOADRESPONSE"))

(in-package "ROS")





(defclass hdt_adroit_driver::AppLoadRequest
  :super ros::object
  :slots (_name _file ))

(defmethod hdt_adroit_driver::AppLoadRequest
  (:init
   (&key
    ((:name __name) "")
    ((:file __file) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _file (string __file))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:file
   (&optional __file)
   (if __file (setq _file __file)) _file)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _file
    4 (length _file)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _file
       (write-long (length _file) s) (princ _file s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hdt_adroit_driver::AppLoadResponse
  :super ros::object
  :slots (_ret ))

(defmethod hdt_adroit_driver::AppLoadResponse
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

(defclass hdt_adroit_driver::AppLoad
  :super ros::object
  :slots ())

(setf (get hdt_adroit_driver::AppLoad :md5sum-) "94dc7a6b0655f4c0bcfeaeeb9c92850d")
(setf (get hdt_adroit_driver::AppLoad :datatype-) "hdt_adroit_driver/AppLoad")
(setf (get hdt_adroit_driver::AppLoad :request) hdt_adroit_driver::AppLoadRequest)
(setf (get hdt_adroit_driver::AppLoad :response) hdt_adroit_driver::AppLoadResponse)

(defmethod hdt_adroit_driver::AppLoadRequest
  (:response () (instance hdt_adroit_driver::AppLoadResponse :init)))

(setf (get hdt_adroit_driver::AppLoadRequest :md5sum-) "94dc7a6b0655f4c0bcfeaeeb9c92850d")
(setf (get hdt_adroit_driver::AppLoadRequest :datatype-) "hdt_adroit_driver/AppLoadRequest")
(setf (get hdt_adroit_driver::AppLoadRequest :definition-)
      "string name
string file
---
uint32 ret
")

(setf (get hdt_adroit_driver::AppLoadResponse :md5sum-) "94dc7a6b0655f4c0bcfeaeeb9c92850d")
(setf (get hdt_adroit_driver::AppLoadResponse :datatype-) "hdt_adroit_driver/AppLoadResponse")
(setf (get hdt_adroit_driver::AppLoadResponse :definition-)
      "string name
string file
---
uint32 ret
")



(provide :hdt_adroit_driver/AppLoad "94dc7a6b0655f4c0bcfeaeeb9c92850d")


