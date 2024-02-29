import rospy
from geometry_msgs.msg import Twist

if __name__ == "__main__":
	rospy.init_node("Draw Circle")
	rospy.loginfo("Started for Saatvik 21BRS1435")
	pub = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size=10)
	rate = rospy.Rate(5)
	
	while not rospy.is_shutdown():
		msg = Twist()
		msg.linear.x = 5
		msg.angular.z = 5
		pub.publish(msg)
		rate.sleep()
	rospy.loginfo("Saatvik 21BRS1435 Stopped")
