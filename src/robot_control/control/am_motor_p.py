#!/usr/bin/env python
#import RPi.GPIO as IO
import time
import os, sys
import rospy
from std_msgs.msg import String
from robot_control.msg import rc
import msvcrt
#import getch

#initializer Ros Publisher
pub = rospy.Publisher('/control_topic', rc, queue_size=4)
rospy.init_node('motor_publisher', anonymous=True)
rate = rospy.Rate(10) # 10hz
motor_control = rc()

while not rospy.is_shutdown():
   if msvcrt.kbhit():
    #    key_stroke = getch.getch()
        key_stroke = msvcrt.getch()
        print(key_stroke)
        if key_stroke.decode("utf-8") == "w":
            motor_control.direction = "forward"
            rospy.loginfo(motor_control)
            pub.publish(motor_control)
        elif key_stroke.decode("utf-8") == "s":
            motor_control.direction = "backward"
            rospy.loginfo(motor_control)
            pub.publish(motor_control)
        elif key_stroke.decode("utf-8") == "d":
            motor_control.direction = "right"
            rospy.loginfo(motor_control)
            pub.publish(motor_control)
        elif key_stroke.decode("utf-8") == "a":
            motor_control.direction = "left"
            rospy.loginfo(motor_control)
            pub.publish(motor_control)
rate.sleep()




