;; Auto-generated. Do not edit!


(when (boundp 'test_pkg::test)
  (if (not (find-package "TEST_PKG"))
    (make-package "TEST_PKG"))
  (shadow 'test (find-package "TEST_PKG")))
(unless (find-package "TEST_PKG::TEST")
  (make-package "TEST_PKG::TEST"))

(in-package "ROS")
;;//! \htmlinclude test.msg.html


(defclass test_pkg::test
  :super ros::object
  :slots (_message ))

(defmethod test_pkg::test
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get test_pkg::test :md5sum-) "5f003d6bcc824cbd51361d66d8e4f76c")
(setf (get test_pkg::test :datatype-) "test_pkg/test")
(setf (get test_pkg::test :definition-)
      "string message
")



(provide :test_pkg/test "5f003d6bcc824cbd51361d66d8e4f76c")


