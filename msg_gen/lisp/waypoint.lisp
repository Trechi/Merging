; Auto-generated. Do not edit!


(cl:in-package RCcontroller-msg)


;//! \htmlinclude waypoint.msg.html

(cl:defclass <waypoint> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass waypoint (<waypoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <waypoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'waypoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RCcontroller-msg:<waypoint> is deprecated: use RCcontroller-msg:waypoint instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <waypoint>) ostream)
  "Serializes a message object of type '<waypoint>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <waypoint>) istream)
  "Deserializes a message object of type '<waypoint>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<waypoint>)))
  "Returns string type for a message object of type '<waypoint>"
  "RCcontroller/waypoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'waypoint)))
  "Returns string type for a message object of type 'waypoint"
  "RCcontroller/waypoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<waypoint>)))
  "Returns md5sum for a message object of type '<waypoint>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'waypoint)))
  "Returns md5sum for a message object of type 'waypoint"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<waypoint>)))
  "Returns full string definition for message of type '<waypoint>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'waypoint)))
  "Returns full string definition for message of type 'waypoint"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <waypoint>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <waypoint>))
  "Converts a ROS message object to a list"
  (cl:list 'waypoint
))
