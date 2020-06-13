;; Auto-generated. Do not edit!


(when (boundp 'robot_control::rc)
  (if (not (find-package "ROBOT_CONTROL"))
    (make-package "ROBOT_CONTROL"))
  (shadow 'rc (find-package "ROBOT_CONTROL")))
(unless (find-package "ROBOT_CONTROL::RC")
  (make-package "ROBOT_CONTROL::RC"))

(in-package "ROS")
;;//! \htmlinclude rc.msg.html


(defclass robot_control::rc
  :super ros::object
  :slots (_direction ))

(defmethod robot_control::rc
  (:init
   (&key
    ((:direction __direction) "")
    )
   (send-super :init)
   (setq _direction (string __direction))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; string _direction
    4 (length _direction)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_control::rc :md5sum-) "326e9417def5db9a05a2704a4d8de15e")
(setf (get robot_control::rc :datatype-) "robot_control/rc")
(setf (get robot_control::rc :definition-)
      "string direction
")



(provide :robot_control/rc "326e9417def5db9a05a2704a4d8de15e")


