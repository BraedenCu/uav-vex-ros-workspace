#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import Int16MultiArray, Float64MultiArray, String, Int32, Int32MultiArray, MultiArrayLayout, MultiArrayDimension
import os
import numpy as np

def callback(cmd_vel):
    #https://answers.ros.org/question/209963/cmd_veltwist-transform-twist-message-into-left-and-right-motor-commands/
    #https://answers.ros.org/question/197626/cmd_vel-linear-and-angular-relationship/#197631

    wheelSep = 30
    wheelRadius = 4

    transVelocity = cmd_vel.linear.x
    rotVelocity = cmd_vel.angular.z
    velDiff = (wheelSep * rotVelocity) / 2.0;
    leftPower = (transVelocity + velDiff) / wheelRadius;
    rightPower = (transVelocity - velDiff) / wheelRadius;

    array_for_publishing = String(data=leftPower)
        
    rospy.loginfo(leftPower)
    rospy.loginfo(rightPower)
    pub.publish(leftPower)

def listener():

    global pub

    pub_arr_key = Int32MultiArray()

    pub = rospy.Publisher('x', String, queue_size=10)

    
    rospy.init_node('converter', anonymous=True)

    rospy.Subscriber("cmd_vel", Twist, callback)

    rate = rospy.Rate(10)


    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()
    rate.sleep()

    
if __name__ == '__main__':
    listener()