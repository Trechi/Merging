#include <string>
#include <iostream>
#include <cstdio>

#include "ros/ros.h"



using std::string;
using std::exception;
using std::cout;
using std::cerr;
using std::endl;


int pid(int setting, int input)
{
 // Needed variables for the pid
 static float integral = 0;
 float derivative = 0;
 float output = 0;
 float error = 0;
 static float error_before;
 error = setting - input;

 // Compute the Integral
 if(abs(error) > INT_RANGE) integral += (error*dt);

 // Compute the derivative
 derivative = (error - error_before)/dt
 
 // Compute the output in respect to the constants
 output = KP*error + KI*integral + KD*derivative;
 // Filter
 if (output > MAX_OUTPUT_VALUE) output = MAX_OUTPUT_VALUE;
 else if (output < MIN_OUTPUT_VALUE) output = MIN_OUTPUT_VALUE;_
}

int main(int argc, char **argv)
{
  ROS_INFO("Controller_Core is starting.../n");
  ros::init(argc, argv, "controller_core");
  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("Channel_Information", 1000, send_to_controller);
  

  ros::spin();

  
  return 0;
}
