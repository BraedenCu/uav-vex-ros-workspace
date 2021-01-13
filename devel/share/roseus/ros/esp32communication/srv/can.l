;; Auto-generated. Do not edit!


(when (boundp 'esp32communication::can)
  (if (not (find-package "ESP32COMMUNICATION"))
    (make-package "ESP32COMMUNICATION"))
  (shadow 'can (find-package "ESP32COMMUNICATION")))
(unless (find-package "ESP32COMMUNICATION::CAN")
  (make-package "ESP32COMMUNICATION::CAN"))
(unless (find-package "ESP32COMMUNICATION::CANREQUEST")
  (make-package "ESP32COMMUNICATION::CANREQUEST"))
(unless (find-package "ESP32COMMUNICATION::CANRESPONSE")
  (make-package "ESP32COMMUNICATION::CANRESPONSE"))

(in-package "ROS")





(defclass esp32communication::canRequest
  :super ros::object
  :slots (_canid _message ))

(defmethod esp32communication::canRequest
  (:init
   (&key
    ((:canid __canid) 0)
    ((:message __message) 0.0)
    )
   (send-super :init)
   (setq _canid (round __canid))
   (setq _message (float __message))
   self)
  (:canid
   (&optional __canid)
   (if __canid (setq _canid __canid)) _canid)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int32 _canid
    4
    ;; float32 _message
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _canid
       (write-long _canid s)
     ;; float32 _message
       (sys::poke _message (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _canid
     (setq _canid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _message
     (setq _message (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass esp32communication::canResponse
  :super ros::object
  :slots (_response ))

(defmethod esp32communication::canResponse
  (:init
   (&key
    ((:response __response) "")
    )
   (send-super :init)
   (setq _response (string __response))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass esp32communication::can
  :super ros::object
  :slots ())

(setf (get esp32communication::can :md5sum-) "f290f8f9900c07c25bd51465e85836ce")
(setf (get esp32communication::can :datatype-) "esp32communication/can")
(setf (get esp32communication::can :request) esp32communication::canRequest)
(setf (get esp32communication::can :response) esp32communication::canResponse)

(defmethod esp32communication::canRequest
  (:response () (instance esp32communication::canResponse :init)))

(setf (get esp32communication::canRequest :md5sum-) "f290f8f9900c07c25bd51465e85836ce")
(setf (get esp32communication::canRequest :datatype-) "esp32communication/canRequest")
(setf (get esp32communication::canRequest :definition-)
      "int32 canid
float32 message
---
string response
")

(setf (get esp32communication::canResponse :md5sum-) "f290f8f9900c07c25bd51465e85836ce")
(setf (get esp32communication::canResponse :datatype-) "esp32communication/canResponse")
(setf (get esp32communication::canResponse :definition-)
      "int32 canid
float32 message
---
string response
")



(provide :esp32communication/can "f290f8f9900c07c25bd51465e85836ce")


