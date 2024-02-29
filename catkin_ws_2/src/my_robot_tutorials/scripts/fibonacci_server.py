#!/usr/bin/env python3
import rospy
from my_robot_msgs.srv import fibonacci ,fibonacciResponse


def fibo(x):
    if x<=0:
        return 0
    elif x==1:
        return 1
    else:
        return fibo(x-1)+fibo(x-2)

def Fibonacci_callback(request):
    arr=[]
    length=request.b
    index=request.a


    for i in range(length):
        arr.append(fibo(index+i))

    return fibonacciResponse(arr)
      
    
    

if __name__ == '__main__':
    rospy.init_node("fibonacci_server")
    rospy.loginfo("Fibonacci server node created")
    service = rospy.Service("/fibonacci", fibonacci, Fibonacci_callback)
    rospy.loginfo("Service server has been started")
    rospy.spin()
