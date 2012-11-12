// Johan Vertens
// University of Freiburg

#ifndef PID_H
#define PID_H
#include <vector>

// USER DEFINES

// Defines of pid tasks
class PID 
{
public:
// Constructor
PID();
// Set Proportional-value
void set_P(float P);
// Set Integral-value
void set_I(float I);
// Set Differential-value
void set_D(float D);
//Set maxmimum and minimum outputs
void set_ranges(float max, float min);
// Calculate next action
float process(float position, float setpoint, float time); 

private:
float P_coeff,I_coeff,D_coeff;
float max_output_value,min_output_value;
float error_before;
float integral;
};

#endif // PID_H
