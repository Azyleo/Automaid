#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
import getch
rospy.init_node('robot_cleaner', anonymous=True)
velocity_publisher = rospy.Publisher('/husky_velocity_controller/cmd_vel', Twist, queue_size=10)
vel_msg = Twist()
rate = rospy.Rate(10) # 10hz
speed=1.0

def stop():
    	vel_msg.linear.x = 0
    	vel_msg.linear.y = 0
    	vel_msg.linear.z = 0
   	vel_msg.angular.x = 0
    	vel_msg.angular.y = 0
    	vel_msg.angular.z = 0
	velocity_publisher.publish(vel_msg)
def move_forword():
	print('forword')
	vel_msg.linear.x = speed 
    	vel_msg.linear.y = 0
    	vel_msg.linear.z = 0
   	vel_msg.angular.x = 0
    	vel_msg.angular.y = 0
    	vel_msg.angular.z = 0
	velocity_publisher.publish(vel_msg)

def move_back():
	print('back')
	vel_msg.linear.x = -speed 
    	vel_msg.linear.y = 0
    	vel_msg.linear.z = 0
   	vel_msg.angular.x = 0
    	vel_msg.angular.y = 0
    	vel_msg.angular.z = 0
	velocity_publisher.publish(vel_msg)

def move_left():
	print('left')
	vel_msg.linear.x = 0
    	vel_msg.linear.y =0
    	vel_msg.linear.z = 0
   	vel_msg.angular.x = 0
    	vel_msg.angular.y = 0
    	vel_msg.angular.z = speed
	velocity_publisher.publish(vel_msg)

def move_right():
	print('right')
	vel_msg.linear.x = 0
    	vel_msg.linear.y =0
    	vel_msg.linear.z = 0
   	vel_msg.angular.x = 0
    	vel_msg.angular.y = 0
    	vel_msg.angular.z = -speed
	velocity_publisher.publish(vel_msg)

while not rospy.is_shutdown():
	
	key = getch.getch()
	if key.decode("utf-8") == "w":
		move_forword()
	if key.decode("utf-8") == "a":
		move_left()
	if key.decode("utf-8") == "d":
		move_right()
	if key.decode("utf-8") == "s":
		move_back()
	#else: stop()		

rate.sleep()







