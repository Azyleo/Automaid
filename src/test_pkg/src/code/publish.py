#!/usr/bin/env python
import time
import rospy
from std_msgs.msg import String
from test_pkg.msg import test

pub = rospy.Publisher('/test_topic', test, queue_size=10)
rospy.init_node('test_publisher', anonymous=True)
rate = rospy.Rate(10) # 10hz
test_topic = test()

while not rospy.is_shutdown(): 
    test_topic.message = "Hassan Rana"
    rospy.loginfo(test_topic)
    pub.publish(test_topic)
    rate.sleep()