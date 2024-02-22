;; Auto-generated. Do not edit!


(when (boundp 'hdt_adroit_driver::StateSelect)
  (if (not (find-package "HDT_ADROIT_DRIVER"))
    (make-package "HDT_ADROIT_DRIVER"))
  (shadow 'StateSelect (find-package "HDT_ADROIT_DRIVER")))
(unless (find-package "HDT_ADROIT_DRIVER::STATESELECT")
  (make-package "HDT_ADROIT_DRIVER::STATESELECT"))
(unless (find-package "HDT_ADROIT_DRIVER::STATESELECTREQUEST")
  (make-package "HDT_ADROIT_DRIVER::STATESELECTREQUEST"))
(unless (find-package "HDT_ADROIT_DRIVER::STATESELECTRESPONSE")
  (make-package "HDT_ADROIT_DRIVER::STATESELECTRESPONSE"))

(in-package "ROS")





(defclass hdt_adroit_driver::StateSelectRequest
  :super ros::object
  :slots (_name _state ))

(defmethod hdt_adroit_driver::StateSelectRequest
  (:init
   (&key
    ((:name __name) "")
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _state (round __state))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hdt_adroit_driver::StateSelectResponse
  :super ros::object
  :slots (_ret ))

(defmethod hdt_adroit_driver::StateSelectResponse
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

(defclass hdt_adroit_driver::StateSelect
  :super ros::object
  :slots ())

(setf (get hdt_adroit_driver::StateSelect :md5sum-) "2b565a0ba0eb7ebe669d3d72cdc5dc5f")
(setf (get hdt_adroit_driver::StateSelect :datatype-) "hdt_adroit_driver/StateSelect")
(setf (get hdt_adroit_driver::StateSelect :request) hdt_adroit_driver::StateSelectRequest)
(setf (get hdt_adroit_driver::StateSelect :response) hdt_adroit_driver::StateSelectResponse)

(defmethod hdt_adroit_driver::StateSelectRequest
  (:response () (instance hdt_adroit_driver::StateSelectResponse :init)))

(setf (get hdt_adroit_driver::StateSelectRequest :md5sum-) "2b565a0ba0eb7ebe669d3d72cdc5dc5f")
(setf (get hdt_adroit_driver::StateSelectRequest :datatype-) "hdt_adroit_driver/StateSelectRequest")
(setf (get hdt_adroit_driver::StateSelectRequest :definition-)
      "string name
int32 state
---
uint32 ret
")

(setf (get hdt_adroit_driver::StateSelectResponse :md5sum-) "2b565a0ba0eb7ebe669d3d72cdc5dc5f")
(setf (get hdt_adroit_driver::StateSelectResponse :datatype-) "hdt_adroit_driver/StateSelectResponse")
(setf (get hdt_adroit_driver::StateSelectResponse :definition-)
      "string name
int32 state
---
uint32 ret
")



(provide :hdt_adroit_driver/StateSelect "2b565a0ba0eb7ebe669d3d72cdc5dc5f")


