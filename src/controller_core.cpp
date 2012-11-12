#include "ros/ros.h"
#include "QuadroController/channel_values.h"
#include <RCcontroller/pid.h>

#include <sstream>
int main(int argc, char **argv)
{
  // NOTE: First three to test
  // Angle-PID's
  PID pid_pitch;
  PID pid_roll;
  PID pid_yaw;

  // Position-PID
  PID pid_position_x;
  PID pid_position_y;
  PID pid_position_z;

  // PID CONFIGURATION HERE

  pid_pitch.process(2,4,1);
  ros::init(argc, argv, "controller_core");

  ros::NodeHandle n;

  ros::Publisher chatter_pub = n.advertise<QuadroController::channel_values>("Channel_Information", 1000);
  // Frequency
  ros::Rate loop_rate(10);
  int count = 0;
  QuadroController::channel_values msg;
  while (ros::ok())
  {
    // RECIEVE THE COORDINATES FROM MOCAP HERE
    // UPDATE PID'S HERE

    // Create msg for the RC-Controller
    msg.channel_1 = count;
    msg.channel_2 = count;
    msg.channel_3 = count;
    msg.channel_4 = count;
    msg.channel_5 = count;
    msg.channel_6 = count;
    msg.channel_7 = count;

    ROS_INFO("Count: %d", count);
    // Publish the msg to the RC-Controller
    chatter_pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
    count++;
    if (count >100) count = 0;
  }
  return 0;
}
