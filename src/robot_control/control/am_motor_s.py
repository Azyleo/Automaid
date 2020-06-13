#!/usr/bin/env python
#import RPi.GPIO as IO
import time
import os, sys
import rospy
from std_msgs.msg import String
from robot_control.msg import rc
#import msvcrt

#initializer IO
#IO.setwarnings(False)
LM1 = 7 #pin26 raspi3
LM2 = 1 #pin28 raspi3
LM_en = 12  #32 raspi3
RM1 = 5 #pin29 raspi3
RM2 = 6 #pin31 raspi3
RM_en = 25  #pin33 raspi3
temp1=1
"""GPIO.setmode(GPIO.BCM)
GPIO.setup(LM1,GPIO.OUT) 
GPIO.setup(LM2,GPIO.OUT)
GPIO.setup(RM1,GPIO.OUT) 
GPIO.setup(RM2,GPIO.OUT)
GPIO.setup(en1,GPIO.OUT)
GPIO.setup(en2,GPIO.OUT)
GPIO.output(LM1,GPIO.LOW)
GPIO.output(LM2,GPIO.LOW)
GPIO.output(LM1,GPIO.LOW)
GPIO.output(LM2,GPIO.LOW)
LM_PWM=GPIO.PWM(LM_EN,1000)
RM_PWM=GPIO.PWM(RM_EN,1000)
p.start(25)"""

def callback(data):
    if data.direction == "forward":
        """GPIO.output(LM1,GPIO.LOW)
        GPIO.output(LM2,GPIO.LOW)
        GPIO.output(RM1,GPIO.HIGH)
        GPIO.output(RM2,GPIO.LOW)"""
        rospy.loginfo(data.direction)
    if data.direction == "backward":
        """"GPIO.output(LM1,GPIO.LOW)
        GPIO.output(LM2,GPIO.LOW)
        GPIO.output(RM1,GPIO.LOW)
        GPIO.output(RM2,GPIO.HIGH)"""
        rospy.loginfo(data.direction)
    if data.direction == "left":
        rospy.loginfo(data.direction)
        """GPIO.output(LM1,GPIO.LOW)
        GPIO.output(LM2,GPIO.HIGH)
        GPIO.output(RM1,GPIO.LOW)
        GPIO.output(RM2,GPIO.LOW)"""
    if data.direction == "right":
        rospy.loginfo(data.direction)
        """GPIO.output(LM1,GPIO.HIGH)
        GPIO.output(LM2,GPIO.LOW)
        GPIO.output(RM1,GPIO.LOW)
        GPIO.output(RM2,GPIO.LOW)"""

def listener():
    rospy.init_node('motor_subscriber', anonymous=True)
    rospy.Subscriber("/control_topic", rc, callback)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()