#include <string>
#include <iostream>
#include <cstdio>

// OS Specific sleep
#ifdef _WIN32
#include <windows.h>
#else
#include <unistd.h>
#endif

// Use the serial library in ros
#include "serial/serial.h"

#include "ros/ros.h"
#include "QuadroController/channel_values.h"

// Define the baudrate here
#define baudrate 57600

using std::string;
using std::exception;
using std::cout;
using std::cerr;
using std::endl;

// Array which holds the channel-values going to control the curcuit
uint8_t send_data[10] = {0};
// Create the serial port
serial::Serial my_serial("/dev/ttyUSB0", baudrate , serial::Timeout::simpleTimeout(100));

// Sleep for win and linux
void my_sleep(unsigned long milliseconds) {
#ifdef _WIN32
      Sleep(milliseconds); // 100 ms
#else
      usleep(milliseconds*1000); // 100 ms
#endif
}

// Opens and configures the com-port
void configure_com_port(void)
{
  if (my_serial.isOpen())
  {
    cout << "Port is open " << endl;
  }
  else
  {
     cout << "Unable to open com-port " << endl;
  }
}

// Calculates the checksum over the given data
// Here: Checksum over the channel-array for communication-security
// between pc and rc-controller
uint8_t calculate_checksum(const uint8_t* data, uint8_t size)
{
  uint8_t checksum = 0;
  for (int i = 0; i < size; i++)
  {
    checksum ^= data[i];    
  }
  return checksum;
}

// Sends the given channel values with it's checksum to
// the rc-controller
void send_to_controller( const QuadroController::channel_values::ConstPtr& msg)
{
  send_data[0] = 0x00;
  send_data[1] = 0x01;
  send_data[2] = msg->channel_1;
  send_data[3] = msg->channel_2;
  send_data[4] = msg->channel_3;
  send_data[5] = msg->channel_4;
  send_data[6] = msg->channel_5;
  send_data[7] = 0x00;
  send_data[8] = 0x00;
  send_data[9] = calculate_checksum(send_data,9);
  // 0x55 is the start-byte to initiate the communication
  // prozess 
  send_data[0] = 0x55;
  my_serial.write(send_data,sizeof(send_data));
  // Uncomment to see the checksum
  //ROS_INFO("Checksum: [%d]", send_data[9]);
}

int main(int argc, char **argv)
{
  configure_com_port();
  ROS_INFO("Control-Server is running!! Ready to recieve data to send to RC-Controller! /n");
  ros::init(argc, argv, "controller_server");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("Channel_Information", 1000, send_to_controller);
  ros::spin();
  return 0;
}
