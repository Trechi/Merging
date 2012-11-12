#include "ros/ros.h"
#include "QuadroController/channel_values.h"

#include <sstream>
// NOTE:!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// This node is only for testing RC-Controller!!!
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
int main(int argc, char **argv)
{
  ros::init(argc, argv, "send_to_controller");

  ros::NodeHandle n;

  ros::Publisher chatter_pub = n.advertise<QuadroController::channel_values>("Channel_Information", 1000);
  // Frequency
  ros::Rate loop_rate(10);
  int count = 0;
  while (ros::ok())
  {
    // Create msg for the RC-Controller
    QuadroController::channel_values msg;
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
