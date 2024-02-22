
(cl:in-package :asdf)

(defsystem "three_dof_planar_manipulator-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Floats_array" :depends-on ("_package_Floats_array"))
    (:file "_package_Floats_array" :depends-on ("_package"))
  ))