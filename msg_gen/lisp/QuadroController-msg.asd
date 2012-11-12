
(cl:in-package :asdf)

(defsystem "QuadroController-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "channel_values" :depends-on ("_package_channel_values"))
    (:file "_package_channel_values" :depends-on ("_package"))
  ))