import rospy
from turtlesim.msg import Pose

def pose_callback(msg: Pose):
	rospy.loginfo("("+str(msg.x)+","+str(msg.y)+")")
	
if __name__ == "__main__":
	rospy.init_node("Pose_Subscribe")
	sub = rospy.Subscriber("/turtle1/pose",Pose,callback=pose_callback)
	rospy.loginfo("Saatvik 21BRS1435!! Node has been subscribed")
	rospy.spin()
	
