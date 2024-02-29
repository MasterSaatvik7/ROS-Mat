#!/usr/bin/env python3

import rospy
from my_robot_msgs.srv import fibonacci

if __name__ == '__main__':
    rospy.init_node("Fibonacci_client")
    rospy.wait_for_service("/fibonacci")
    try:
        fibonacci = rospy.ServiceProxy("/fibonacci", fibonacci)
        a = int(input("Give index: "))
        b = int(input("Give length: "))
        response = fibonacci(a,b)
        rospy.loginfo("Fibonacci Series is :" +str(response.result))
    except rospy.ServiceException as e:
        rospy.logwarn("Service failed:" +str(e))
