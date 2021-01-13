#include "ros/ros.h"
#include "std_msgs/String.h"
#include "vexai/Encoder.h"
#include <sstream>
#include <iostream>

vexai::Encoder msg;

void encoderCallback(const vexai::Encoder::ConstPtr& msg)
{
  ROS_INFO("I heard: [%f]", msg->leftEncoderData);
}

int main(int argc, char **argv)
{
  //ROS_INFO("I heard:");
  ros::init(argc, argv, "encoderToOdom");

  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("encoderData", 1000, encoderCallback); 

  ros::spin();

  return 0;
}