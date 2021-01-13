;; Auto-generated. Do not edit!


(when (boundp 'dockerpublisher::AddTwoInts)
  (if (not (find-package "DOCKERPUBLISHER"))
    (make-package "DOCKERPUBLISHER"))
  (shadow 'AddTwoInts (find-package "DOCKERPUBLISHER")))
(unless (find-package "DOCKERPUBLISHER::ADDTWOINTS")
  (make-package "DOCKERPUBLISHER::ADDTWOINTS"))
(unless (find-package "DOCKERPUBLISHER::ADDTWOINTSREQUEST")
  (make-package "DOCKERPUBLISHER::ADDTWOINTSREQUEST"))
(unless (find-package "DOCKERPUBLISHER::ADDTWOINTSRESPONSE")
  (make-package "DOCKERPUBLISHER::ADDTWOINTSRESPONSE"))

(in-package "ROS")





(defclass dockerpublisher::AddTwoIntsRequest
  :super ros::object
  :slots (_name ))

(defmethod dockerpublisher::AddTwoIntsRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dockerpublisher::AddTwoIntsResponse
  :super ros::object
  :slots (_greeting ))

(defmethod dockerpublisher::AddTwoIntsResponse
  (:init
   (&key
    ((:greeting __greeting) "")
    )
   (send-super :init)
   (setq _greeting (string __greeting))
   self)
  (:greeting
   (&optional __greeting)
   (if __greeting (setq _greeting __greeting)) _greeting)
  (:serialization-length
   ()
   (+
    ;; string _greeting
    4 (length _greeting)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _greeting
       (write-long (length _greeting) s) (princ _greeting s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _greeting
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _greeting (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dockerpublisher::AddTwoInts
  :super ros::object
  :slots ())

(setf (get dockerpublisher::AddTwoInts :md5sum-) "4d4778d28f323c1d92882d79624c0c0f")
(setf (get dockerpublisher::AddTwoInts :datatype-) "dockerpublisher/AddTwoInts")
(setf (get dockerpublisher::AddTwoInts :request) dockerpublisher::AddTwoIntsRequest)
(setf (get dockerpublisher::AddTwoInts :response) dockerpublisher::AddTwoIntsResponse)

(defmethod dockerpublisher::AddTwoIntsRequest
  (:response () (instance dockerpublisher::AddTwoIntsResponse :init)))

(setf (get dockerpublisher::AddTwoIntsRequest :md5sum-) "4d4778d28f323c1d92882d79624c0c0f")
(setf (get dockerpublisher::AddTwoIntsRequest :datatype-) "dockerpublisher/AddTwoIntsRequest")
(setf (get dockerpublisher::AddTwoIntsRequest :definition-)
      "string name
---
string greeting
")

(setf (get dockerpublisher::AddTwoIntsResponse :md5sum-) "4d4778d28f323c1d92882d79624c0c0f")
(setf (get dockerpublisher::AddTwoIntsResponse :datatype-) "dockerpublisher/AddTwoIntsResponse")
(setf (get dockerpublisher::AddTwoIntsResponse :definition-)
      "string name
---
string greeting
")



(provide :dockerpublisher/AddTwoInts "4d4778d28f323c1d92882d79624c0c0f")


