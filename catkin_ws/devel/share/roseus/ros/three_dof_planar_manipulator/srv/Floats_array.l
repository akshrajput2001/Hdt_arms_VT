;; Auto-generated. Do not edit!


(when (boundp 'three_dof_planar_manipulator::Floats_array)
  (if (not (find-package "THREE_DOF_PLANAR_MANIPULATOR"))
    (make-package "THREE_DOF_PLANAR_MANIPULATOR"))
  (shadow 'Floats_array (find-package "THREE_DOF_PLANAR_MANIPULATOR")))
(unless (find-package "THREE_DOF_PLANAR_MANIPULATOR::FLOATS_ARRAY")
  (make-package "THREE_DOF_PLANAR_MANIPULATOR::FLOATS_ARRAY"))
(unless (find-package "THREE_DOF_PLANAR_MANIPULATOR::FLOATS_ARRAYREQUEST")
  (make-package "THREE_DOF_PLANAR_MANIPULATOR::FLOATS_ARRAYREQUEST"))
(unless (find-package "THREE_DOF_PLANAR_MANIPULATOR::FLOATS_ARRAYRESPONSE")
  (make-package "THREE_DOF_PLANAR_MANIPULATOR::FLOATS_ARRAYRESPONSE"))

(in-package "ROS")





(defclass three_dof_planar_manipulator::Floats_arrayRequest
  :super ros::object
  :slots (_req ))

(defmethod three_dof_planar_manipulator::Floats_arrayRequest
  (:init
   (&key
    ((:req __req) 0.0)
    )
   (send-super :init)
   (setq _req (float __req))
   self)
  (:req
   (&optional __req)
   (if __req (setq _req __req)) _req)
  (:serialization-length
   ()
   (+
    ;; float32 _req
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _req
       (sys::poke _req (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _req
     (setq _req (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass three_dof_planar_manipulator::Floats_arrayResponse
  :super ros::object
  :slots (_res ))

(defmethod three_dof_planar_manipulator::Floats_arrayResponse
  (:init
   (&key
    ((:res __res) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _res __res)
   self)
  (:res
   (&optional __res)
   (if __res (setq _res __res)) _res)
  (:serialization-length
   ()
   (+
    ;; float32[] _res
    (* 4    (length _res)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _res
     (write-long (length _res) s)
     (dotimes (i (length _res))
       (sys::poke (elt _res i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _res
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _res (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _res i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass three_dof_planar_manipulator::Floats_array
  :super ros::object
  :slots ())

(setf (get three_dof_planar_manipulator::Floats_array :md5sum-) "086e0a6631d243c06d9ccfa024bfe376")
(setf (get three_dof_planar_manipulator::Floats_array :datatype-) "three_dof_planar_manipulator/Floats_array")
(setf (get three_dof_planar_manipulator::Floats_array :request) three_dof_planar_manipulator::Floats_arrayRequest)
(setf (get three_dof_planar_manipulator::Floats_array :response) three_dof_planar_manipulator::Floats_arrayResponse)

(defmethod three_dof_planar_manipulator::Floats_arrayRequest
  (:response () (instance three_dof_planar_manipulator::Floats_arrayResponse :init)))

(setf (get three_dof_planar_manipulator::Floats_arrayRequest :md5sum-) "086e0a6631d243c06d9ccfa024bfe376")
(setf (get three_dof_planar_manipulator::Floats_arrayRequest :datatype-) "three_dof_planar_manipulator/Floats_arrayRequest")
(setf (get three_dof_planar_manipulator::Floats_arrayRequest :definition-)
      "float32 req
---
float32[] res

")

(setf (get three_dof_planar_manipulator::Floats_arrayResponse :md5sum-) "086e0a6631d243c06d9ccfa024bfe376")
(setf (get three_dof_planar_manipulator::Floats_arrayResponse :datatype-) "three_dof_planar_manipulator/Floats_arrayResponse")
(setf (get three_dof_planar_manipulator::Floats_arrayResponse :definition-)
      "float32 req
---
float32[] res

")



(provide :three_dof_planar_manipulator/Floats_array "086e0a6631d243c06d9ccfa024bfe376")


