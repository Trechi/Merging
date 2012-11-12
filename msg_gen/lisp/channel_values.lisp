; Auto-generated. Do not edit!


(cl:in-package RCcontroller-msg)


;//! \htmlinclude channel_values.msg.html

(cl:defclass <channel_values> (roslisp-msg-protocol:ros-message)
  ((channel_1
    :reader channel_1
    :initarg :channel_1
    :type cl:integer
    :initform 0)
   (channel_2
    :reader channel_2
    :initarg :channel_2
    :type cl:integer
    :initform 0)
   (channel_3
    :reader channel_3
    :initarg :channel_3
    :type cl:integer
    :initform 0)
   (channel_4
    :reader channel_4
    :initarg :channel_4
    :type cl:integer
    :initform 0)
   (channel_5
    :reader channel_5
    :initarg :channel_5
    :type cl:integer
    :initform 0)
   (channel_6
    :reader channel_6
    :initarg :channel_6
    :type cl:integer
    :initform 0)
   (channel_7
    :reader channel_7
    :initarg :channel_7
    :type cl:integer
    :initform 0))
)

(cl:defclass channel_values (<channel_values>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <channel_values>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'channel_values)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RCcontroller-msg:<channel_values> is deprecated: use RCcontroller-msg:channel_values instead.")))

(cl:ensure-generic-function 'channel_1-val :lambda-list '(m))
(cl:defmethod channel_1-val ((m <channel_values>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RCcontroller-msg:channel_1-val is deprecated.  Use RCcontroller-msg:channel_1 instead.")
  (channel_1 m))

(cl:ensure-generic-function 'channel_2-val :lambda-list '(m))
(cl:defmethod channel_2-val ((m <channel_values>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RCcontroller-msg:channel_2-val is deprecated.  Use RCcontroller-msg:channel_2 instead.")
  (channel_2 m))

(cl:ensure-generic-function 'channel_3-val :lambda-list '(m))
(cl:defmethod channel_3-val ((m <channel_values>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RCcontroller-msg:channel_3-val is deprecated.  Use RCcontroller-msg:channel_3 instead.")
  (channel_3 m))

(cl:ensure-generic-function 'channel_4-val :lambda-list '(m))
(cl:defmethod channel_4-val ((m <channel_values>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RCcontroller-msg:channel_4-val is deprecated.  Use RCcontroller-msg:channel_4 instead.")
  (channel_4 m))

(cl:ensure-generic-function 'channel_5-val :lambda-list '(m))
(cl:defmethod channel_5-val ((m <channel_values>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RCcontroller-msg:channel_5-val is deprecated.  Use RCcontroller-msg:channel_5 instead.")
  (channel_5 m))

(cl:ensure-generic-function 'channel_6-val :lambda-list '(m))
(cl:defmethod channel_6-val ((m <channel_values>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RCcontroller-msg:channel_6-val is deprecated.  Use RCcontroller-msg:channel_6 instead.")
  (channel_6 m))

(cl:ensure-generic-function 'channel_7-val :lambda-list '(m))
(cl:defmethod channel_7-val ((m <channel_values>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RCcontroller-msg:channel_7-val is deprecated.  Use RCcontroller-msg:channel_7 instead.")
  (channel_7 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <channel_values>) ostream)
  "Serializes a message object of type '<channel_values>"
  (cl:let* ((signed (cl:slot-value msg 'channel_1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'channel_2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'channel_3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'channel_4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'channel_5)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'channel_6)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'channel_7)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <channel_values>) istream)
  "Deserializes a message object of type '<channel_values>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'channel_1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'channel_2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'channel_3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'channel_4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'channel_5) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'channel_6) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'channel_7) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<channel_values>)))
  "Returns string type for a message object of type '<channel_values>"
  "RCcontroller/channel_values")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'channel_values)))
  "Returns string type for a message object of type 'channel_values"
  "RCcontroller/channel_values")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<channel_values>)))
  "Returns md5sum for a message object of type '<channel_values>"
  "ca7acf8e5a00666a779bed08a3dab8d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'channel_values)))
  "Returns md5sum for a message object of type 'channel_values"
  "ca7acf8e5a00666a779bed08a3dab8d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<channel_values>)))
  "Returns full string definition for message of type '<channel_values>"
  (cl:format cl:nil "int32 channel_1~%int32 channel_2~%int32 channel_3~%int32 channel_4~%int32 channel_5~%int32 channel_6~%int32 channel_7~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'channel_values)))
  "Returns full string definition for message of type 'channel_values"
  (cl:format cl:nil "int32 channel_1~%int32 channel_2~%int32 channel_3~%int32 channel_4~%int32 channel_5~%int32 channel_6~%int32 channel_7~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <channel_values>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <channel_values>))
  "Converts a ROS message object to a list"
  (cl:list 'channel_values
    (cl:cons ':channel_1 (channel_1 msg))
    (cl:cons ':channel_2 (channel_2 msg))
    (cl:cons ':channel_3 (channel_3 msg))
    (cl:cons ':channel_4 (channel_4 msg))
    (cl:cons ':channel_5 (channel_5 msg))
    (cl:cons ':channel_6 (channel_6 msg))
    (cl:cons ':channel_7 (channel_7 msg))
))
