#!/usr/bin/env python
import time
import rospy
from std_msgs.msg import String
from test_pkg.msg import test


def callback(data):
    rospy.loginfo("Whats cool? %s"%data.message)

def listener():
    rospy.init_node('simple_subscriber', anonymous=True)
    rospy.Subscriber("/test_topic", test, callback)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()