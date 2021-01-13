;; Auto-generated. Do not edit!


(when (boundp 'dockerpublisher::Num)
  (if (not (find-package "DOCKERPUBLISHER"))
    (make-package "DOCKERPUBLISHER"))
  (shadow 'Num (find-package "DOCKERPUBLISHER")))
(unless (find-package "DOCKERPUBLISHER::NUM")
  (make-package "DOCKERPUBLISHER::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html


(defclass dockerpublisher::Num
  :super ros::object
  :slots (_num _val ))

(defmethod dockerpublisher::Num
  (:init
   (&key
    ((:num __num) 0)
    ((:val __val) "")
    )
   (send-super :init)
   (setq _num (round __num))
   (setq _val (string __val))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:serialization-length
   ()
   (+
    ;; int64 _num
    8
    ;; string _val
    4 (length _val)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num) (= (length (_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num . bv) 0) 0) s)
              (write-long (ash (elt (_num . bv) 1) -1) s))
             ((and (class _num) (= (length (_num . bv)) 1)) ;; big1
              (write-long (elt (_num . bv) 0) s)
              (write-long (if (>= _num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num s)(write-long (if (>= _num 0) 0 #xffffffff) s)))
     ;; string _val
       (write-long (length _val) s) (princ _val s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _num
#+(or :alpha :irix6 :x86_64)
      (setf _num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _val
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _val (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dockerpublisher::Num :md5sum-) "3457c111a3bdee2fbe44c4a3a3d3212b")
(setf (get dockerpublisher::Num :datatype-) "dockerpublisher/Num")
(setf (get dockerpublisher::Num :definition-)
      "int64 num
string val
")



(provide :dockerpublisher/Num "3457c111a3bdee2fbe44c4a3a3d3212b")


