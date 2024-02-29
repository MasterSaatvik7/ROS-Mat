#!/usr/bin/env python3
import rospy
from my_robot_msgs.srv import AddTwoInts

def add_two_ints(req):
    result = req.a+req.b
    rospy.loginfo("Sum of " +str(req.a)+ " and " +str(req.b) + " is " + str(result))
    return result

if __name__ == '__main__':
    rospy.init_node("add_two_ints_server")
    rospy.loginfo("Add two ints server node created")
    service = rospy.Service("/add_two_ints", AddTwoInts, add_two_ints)
    rospy.loginfo("Service server has been started")
    rospy.spin()
