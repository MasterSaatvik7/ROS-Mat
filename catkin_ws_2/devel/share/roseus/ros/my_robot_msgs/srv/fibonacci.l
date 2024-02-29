;; Auto-generated. Do not edit!


(when (boundp 'my_robot_msgs::fibonacci)
  (if (not (find-package "MY_ROBOT_MSGS"))
    (make-package "MY_ROBOT_MSGS"))
  (shadow 'fibonacci (find-package "MY_ROBOT_MSGS")))
(unless (find-package "MY_ROBOT_MSGS::FIBONACCI")
  (make-package "MY_ROBOT_MSGS::FIBONACCI"))
(unless (find-package "MY_ROBOT_MSGS::FIBONACCIREQUEST")
  (make-package "MY_ROBOT_MSGS::FIBONACCIREQUEST"))
(unless (find-package "MY_ROBOT_MSGS::FIBONACCIRESPONSE")
  (make-package "MY_ROBOT_MSGS::FIBONACCIRESPONSE"))

(in-package "ROS")





(defclass my_robot_msgs::fibonacciRequest
  :super ros::object
  :slots (_a _b ))

(defmethod my_robot_msgs::fibonacciRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ;; int64 _b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;; int64 _b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _b) (= (length (_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_b . bv) 0) 0) s)
              (write-long (ash (elt (_b . bv) 1) -1) s))
             ((and (class _b) (= (length (_b . bv)) 1)) ;; big1
              (write-long (elt (_b . bv) 0) s)
              (write-long (if (>= _b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _b s)(write-long (if (>= _b 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _b
#+(or :alpha :irix6 :x86_64)
      (setf _b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass my_robot_msgs::fibonacciResponse
  :super ros::object
  :slots (_result ))

(defmethod my_robot_msgs::fibonacciResponse
  (:init
   (&key
    ((:result __result) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int64[] _result
    (* 8    (length _result)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[] _result
     (write-long (length _result) s)
     (dotimes (i (length _result))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _result i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _result i)) (= (length ((elt _result i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _result i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _result i) . bv) 1) -1) s))
             ((and (class (elt _result i)) (= (length ((elt _result i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _result i) . bv) 0) s)
              (write-long (if (>= (elt _result i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _result i) s)(write-long (if (>= (elt _result i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[] _result
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _result i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _result i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(defclass my_robot_msgs::fibonacci
  :super ros::object
  :slots ())

(setf (get my_robot_msgs::fibonacci :md5sum-) "226a58bba76a1d92514e474f2bb7bc3b")
(setf (get my_robot_msgs::fibonacci :datatype-) "my_robot_msgs/fibonacci")
(setf (get my_robot_msgs::fibonacci :request) my_robot_msgs::fibonacciRequest)
(setf (get my_robot_msgs::fibonacci :response) my_robot_msgs::fibonacciResponse)

(defmethod my_robot_msgs::fibonacciRequest
  (:response () (instance my_robot_msgs::fibonacciResponse :init)))

(setf (get my_robot_msgs::fibonacciRequest :md5sum-) "226a58bba76a1d92514e474f2bb7bc3b")
(setf (get my_robot_msgs::fibonacciRequest :datatype-) "my_robot_msgs/fibonacciRequest")
(setf (get my_robot_msgs::fibonacciRequest :definition-)
      "int64 a
int64 b
---
int64[] result
")

(setf (get my_robot_msgs::fibonacciResponse :md5sum-) "226a58bba76a1d92514e474f2bb7bc3b")
(setf (get my_robot_msgs::fibonacciResponse :datatype-) "my_robot_msgs/fibonacciResponse")
(setf (get my_robot_msgs::fibonacciResponse :definition-)
      "int64 a
int64 b
---
int64[] result
")



(provide :my_robot_msgs/fibonacci "226a58bba76a1d92514e474f2bb7bc3b")


