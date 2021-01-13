;; Auto-generated. Do not edit!


(when (boundp 'esp32communication::imu)
  (if (not (find-package "ESP32COMMUNICATION"))
    (make-package "ESP32COMMUNICATION"))
  (shadow 'imu (find-package "ESP32COMMUNICATION")))
(unless (find-package "ESP32COMMUNICATION::IMU")
  (make-package "ESP32COMMUNICATION::IMU"))

(in-package "ROS")
;;//! \htmlinclude imu.msg.html


(defclass esp32communication::imu
  :super ros::object
  :slots (_test ))

(defmethod esp32communication::imu
  (:init
   (&key
    ((:test __test) 0)
    )
   (send-super :init)
   (setq _test (round __test))
   self)
  (:test
   (&optional __test)
   (if __test (setq _test __test)) _test)
  (:serialization-length
   ()
   (+
    ;; int32 _test
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _test
       (write-long _test s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _test
     (setq _test (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get esp32communication::imu :md5sum-) "a42765ab4d844eca8833047e4d8c65ee")
(setf (get esp32communication::imu :datatype-) "esp32communication/imu")
(setf (get esp32communication::imu :definition-)
      "int32 test
")



(provide :esp32communication/imu "a42765ab4d844eca8833047e4d8c65ee")


