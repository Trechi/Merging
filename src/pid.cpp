// Johan Vertens
// University of Freiburg

#include <stdlib.h>
#include <stdio.h>
#include <vector>
#include "pid.h"
#include <ros/ros.h>

PID::PID()
{
  P_coeff = 0;
  I_coeff = 0;
  D_coeff = 0;
  max_output_value = 0;
  min_output_value = 0;
  error_before = 0;
  integral = 0;
}

void PID::set_P(float P)
{
  P_coeff = P;
}

void PID::set_I(float I)
{
  I_coeff = I;
}

void PID::set_D(float D)
{
  D_coeff = D;
}

void PID::set_ranges(float max, float min)
{
  max_output_value = max;
  min_output_value = min;
}

float PID::process(float position, float setpoint, float time)
{
  ROS_INFO("TEST");
  float error = 0;
  float output = 0;
  float derivative = 0;
  // Compute the error
  error = setpoint - position;
  // Compute the Integral
  if(abs(error) > INTEGRAL_FILTER) integral += (error*time);
  // Compute the derivative
  derivative = (error - error_before)/time;
  // Compute the output in respect to the coeffizients
  output = P_coeff*error + I_coeff*integral + D_coeff*derivative;
  // Max Output-Range Filter
  if (output > max_output_value) output = max_output_value;
  else if (output < min_output_value) output = min_output_value;
  // Give the next state back
  return output;
}
