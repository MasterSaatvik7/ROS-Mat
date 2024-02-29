#!/usr/bin/env python3

import rospy
from my_robot_msgs.srv import AddTwoInts

if __name__ == '__main__':
    rospy.init_node("add_two_ints_client")
    rospy.wait_for_service("/add_two_ints")
    try:
        add_two_ints = rospy.ServiceProxy("/add_two_ints", AddTwoInts)
        a = int(input("Give First Number: "))
        b = int(input("Give Second Number: "))
        response = add_two_ints(a,b)
        rospy.loginfo("Sum is :" +str(response.result))
    except rospy.ServiceException as e:
        rospy.logwarn("Service failed:" +str(e))
