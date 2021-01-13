;; Auto-generated. Do not edit!


(when (boundp 'vexai::Encoder)
  (if (not (find-package "VEXAI"))
    (make-package "VEXAI"))
  (shadow 'Encoder (find-package "VEXAI")))
(unless (find-package "VEXAI::ENCODER")
  (make-package "VEXAI::ENCODER"))

(in-package "ROS")
;;//! \htmlinclude Encoder.msg.html


(defclass vexai::Encoder
  :super ros::object
  :slots (_leftEncoderData _rightEncoderData ))

(defmethod vexai::Encoder
  (:init
   (&key
    ((:leftEncoderData __leftEncoderData) 0.0)
    ((:rightEncoderData __rightEncoderData) 0.0)
    )
   (send-super :init)
   (setq _leftEncoderData (float __leftEncoderData))
   (setq _rightEncoderData (float __rightEncoderData))
   self)
  (:leftEncoderData
   (&optional __leftEncoderData)
   (if __leftEncoderData (setq _leftEncoderData __leftEncoderData)) _leftEncoderData)
  (:rightEncoderData
   (&optional __rightEncoderData)
   (if __rightEncoderData (setq _rightEncoderData __rightEncoderData)) _rightEncoderData)
  (:serialization-length
   ()
   (+
    ;; float32 _leftEncoderData
    4
    ;; float32 _rightEncoderData
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _leftEncoderData
       (sys::poke _leftEncoderData (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rightEncoderData
       (sys::poke _rightEncoderData (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _leftEncoderData
     (setq _leftEncoderData (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rightEncoderData
     (setq _rightEncoderData (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vexai::Encoder :md5sum-) "bd234730d2f0cac98804ac6dd70ae1ef")
(setf (get vexai::Encoder :datatype-) "vexai/Encoder")
(setf (get vexai::Encoder :definition-)
      "float32 leftEncoderData
float32 rightEncoderData

")



(provide :vexai/Encoder "bd234730d2f0cac98804ac6dd70ae1ef")


