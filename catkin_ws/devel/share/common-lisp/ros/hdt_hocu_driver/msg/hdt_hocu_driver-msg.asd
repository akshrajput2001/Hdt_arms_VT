
(cl:in-package :asdf)

(defsystem "hdt_hocu_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ClearScreen" :depends-on ("_package_ClearScreen"))
    (:file "_package_ClearScreen" :depends-on ("_package"))
    (:file "SetFont" :depends-on ("_package_SetFont"))
    (:file "_package_SetFont" :depends-on ("_package"))
    (:file "SetPageColumn" :depends-on ("_package_SetPageColumn"))
    (:file "_package_SetPageColumn" :depends-on ("_package"))
    (:file "UpdateScreen" :depends-on ("_package_UpdateScreen"))
    (:file "_package_UpdateScreen" :depends-on ("_package"))
    (:file "WriteString" :depends-on ("_package_WriteString"))
    (:file "_package_WriteString" :depends-on ("_package"))
  ))