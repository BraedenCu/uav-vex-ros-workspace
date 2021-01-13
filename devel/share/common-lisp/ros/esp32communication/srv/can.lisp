; Auto-generated. Do not edit!


(cl:in-package esp32communication-srv)


;//! \htmlinclude can-request.msg.html

(cl:defclass <can-request> (roslisp-msg-protocol:ros-message)
  ((canid
    :reader canid
    :initarg :canid
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:float
    :initform 0.0))
)

(cl:defclass can-request (<can-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <can-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'can-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name esp32communication-srv:<can-request> is deprecated: use esp32communication-srv:can-request instead.")))

(cl:ensure-generic-function 'canid-val :lambda-list '(m))
(cl:defmethod canid-val ((m <can-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader esp32communication-srv:canid-val is deprecated.  Use esp32communication-srv:canid instead.")
  (canid m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <can-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader esp32communication-srv:message-val is deprecated.  Use esp32communication-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <can-request>) ostream)
  "Serializes a message object of type '<can-request>"
  (cl:let* ((signed (cl:slot-value msg 'canid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <can-request>) istream)
  "Deserializes a message object of type '<can-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'canid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'message) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<can-request>)))
  "Returns string type for a service object of type '<can-request>"
  "esp32communication/canRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'can-request)))
  "Returns string type for a service object of type 'can-request"
  "esp32communication/canRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<can-request>)))
  "Returns md5sum for a message object of type '<can-request>"
  "f290f8f9900c07c25bd51465e85836ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'can-request)))
  "Returns md5sum for a message object of type 'can-request"
  "f290f8f9900c07c25bd51465e85836ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<can-request>)))
  "Returns full string definition for message of type '<can-request>"
  (cl:format cl:nil "int32 canid~%float32 message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'can-request)))
  "Returns full string definition for message of type 'can-request"
  (cl:format cl:nil "int32 canid~%float32 message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <can-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <can-request>))
  "Converts a ROS message object to a list"
  (cl:list 'can-request
    (cl:cons ':canid (canid msg))
    (cl:cons ':message (message msg))
))
;//! \htmlinclude can-response.msg.html

(cl:defclass <can-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass can-response (<can-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <can-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'can-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name esp32communication-srv:<can-response> is deprecated: use esp32communication-srv:can-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <can-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader esp32communication-srv:response-val is deprecated.  Use esp32communication-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <can-response>) ostream)
  "Serializes a message object of type '<can-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <can-response>) istream)
  "Deserializes a message object of type '<can-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<can-response>)))
  "Returns string type for a service object of type '<can-response>"
  "esp32communication/canResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'can-response)))
  "Returns string type for a service object of type 'can-response"
  "esp32communication/canResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<can-response>)))
  "Returns md5sum for a message object of type '<can-response>"
  "f290f8f9900c07c25bd51465e85836ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'can-response)))
  "Returns md5sum for a message object of type 'can-response"
  "f290f8f9900c07c25bd51465e85836ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<can-response>)))
  "Returns full string definition for message of type '<can-response>"
  (cl:format cl:nil "string response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'can-response)))
  "Returns full string definition for message of type 'can-response"
  (cl:format cl:nil "string response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <can-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <can-response>))
  "Converts a ROS message object to a list"
  (cl:list 'can-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'can)))
  'can-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'can)))
  'can-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'can)))
  "Returns string type for a service object of type '<can>"
  "esp32communication/can")