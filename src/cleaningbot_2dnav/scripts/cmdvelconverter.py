#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from geometry_msgs import Twist

def callback(data):
    #https://answers.ros.org/question/209963/cmd_veltwist-transform-twist-message-into-left-and-right-motor-commands/
    linear = data.linear
    angular = data.angular
    print(linear)
    
def listener():

    rospy.init_node('converter', anonymous=True)

    rospy.Subscriber("cmd_vel", Twist, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()