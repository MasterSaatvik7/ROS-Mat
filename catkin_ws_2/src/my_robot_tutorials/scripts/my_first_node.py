import rospy
if __name__ == "__main__":
	rospy.init_node("My_First_Node")
	rospy.loginfo("Node Started")
	rospy.sleep(1)
	rospy.loginfo("Exit Node")
