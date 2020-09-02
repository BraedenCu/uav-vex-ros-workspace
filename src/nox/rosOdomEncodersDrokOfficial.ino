#include <ros.h>
#include <geometry_msgs/Twist.h>
#include <PID_v1.h>
#include <std_msgs/String.h>
#include <geometry_msgs/Vector3Stamped.h>
#include <geometry_msgs/Twist.h>
#include <ros/time.h>
#include <Encoder.h>

//THE ENCODERS CANNOT BE ON TOO ADJECENT PINS OR PROBLEMS OCCOUR!!!!! 
//THE ENCODERS CANNOT BE ON TOO ADJECENT PINS OR PROBLEMS OCCOUR!!!!! 
Encoder myEnc2(2, 4);
Encoder myEnc(3, 5);
//THE ENCODERS CANNOT BE ON TOO ADJECENT PINS OR PROBLEMS OCCOUR!!!!! 

float x, z;

int enA = 8, in1 = 9, in2 = 10, enB = 11, in3 = 12, in4 = 13;

//enA = 5, in1 = 3, in2 = 4, enB = 6, in3 = 2, in4 = 7, enC = 10, in5 = 12, in6 = 11, enD = 9, in7 = 13, in8 = 8;


long oldPosition = -999, oldPosition2 = -999;
long pos_left = 0, pos_right = 0;      //encoder positions
long old_left = 0, old_right = 0;

#define LOOPTIME 100     //Looptime in millisecond
const byte noCommLoopMax = 10;                //number of main loops the robot will execute without communication before stopping
unsigned int noCommLoops = 0;                 //main loop without communication counter

unsigned long lastMilli = 0;

const double radius = 0.1016;                   //.   Wheel radius, in m
const double wheelbase = 0.4;               //.   Wheelbase, in m
const double encoder_cpr = 28.65;               //.   Encoder ticks or counts per rotation 
const double speed_to_pwm_ratio = 0.00235;    //Ratio to convert speed (in m/s) to PWM value. It was obtained by plotting the wheel speed in relation to the PWM motor command (the value is the slope of the linear function).
const double min_speed_cmd = 0.0882;          //(min_speed_cmd/speed_to_pwm_ratio) is the minimum command value needed for the motor to start moving. This value was obtained by plotting the wheel speed in relation to the PWM motor command (the value is the constant of the linear function).

double speed_req = 0;                         //Desired linear speed for the robot, in m/s
double angular_speed_req = 0;                 //Desired angular speed for the robot, in rad/s

double speed_req_left = 0;                    //Desired speed for left wheel in m/s
double actual_left = 0, actual_right=0;                        //Actual speed for left wheel in m/s
double speed_cmd_left = 0;                    //Command speed for left wheel in m/s 

double speed_req_right = 0, speed_act_right = 0, speed_cmd_right = 0; 
                        
const double max_speed = 0.4;                 //Max speed in m/s

int PWM_leftMotor = 0, PWM_rightMotor = 0;  //PWM commands
                                                      
// PID Parameters
const double PID_left_param[] = { 0, 0, 0.1 }; //Respectively Kp, Ki and Kd for left motor PID
const double PID_right_param[] = { 0, 0, 0.1 }; //Respectively Kp, Ki and Kd for right motor PID


PID PID_leftMotor(&actual_left, &speed_cmd_left, &speed_req_left, PID_left_param[0], PID_left_param[1], PID_left_param[2], DIRECT);          //Setting up the PID for left motor
PID PID_rightMotor(&actual_right, &speed_cmd_right, &speed_req_right, PID_right_param[0], PID_right_param[1], PID_right_param[2], DIRECT);   //Setting up the PID for right motor

ros::NodeHandle nh;

void velcallback(const geometry_msgs::Twist& cmd_vel) {
  
  speed_req = cmd_vel.linear.x;                                     //Extract the commanded linear speed from the message
  angular_speed_req = cmd_vel.angular.z;                            //Extract the commanded angular speed from the message
  
  speed_req_left = speed_req - angular_speed_req*(wheelbase/2);     //Calculate the required speed for the left motor to comply with commanded linear and angular speeds
  speed_req_right = speed_req + angular_speed_req*(wheelbase/2);    //Calculate the required speed for the right motor to comply with commanded linear and angular speeds
  
}

ros::Subscriber<geometry_msgs::Twist> sub("cmd_vel", &velcallback);
//publishes data for use in converting to odom on host machine
geometry_msgs::Vector3Stamped speed_msg;                                //create a "speed_msg" ROS message
ros::Publisher speed_pub("speed", &speed_msg);


void setup() {
  
  nh.initNode();
  nh.subscribe(sub);
  nh.advertise(speed_pub);

  //initialize motor controller
  pinMode(enA, OUTPUT);
  pinMode(in1, OUTPUT);
  pinMode(in2, OUTPUT);

  pinMode(enB, OUTPUT);
  pinMode(in3, OUTPUT);
  pinMode(in4, OUTPUT);

  //setting PID parameters
  PID_leftMotor.SetSampleTime(95);
  PID_rightMotor.SetSampleTime(95);
  PID_leftMotor.SetOutputLimits(-max_speed, max_speed);
  PID_rightMotor.SetOutputLimits(-max_speed, max_speed);
  PID_leftMotor.SetMode(AUTOMATIC);
  PID_rightMotor.SetMode(AUTOMATIC); 

  runMotorLeft("f", 0);
  runMotorRight("f", 0);

}

void loop() {
  
  nh.spinOnce();
  
  if((millis()-lastMilli) >= LOOPTIME) {   
                                                                          
    lastMilli = millis();
    
    pos_left = getEncoderTwoPosition();
    pos_right = getEncoderOnePosition();


    actual_right=(pos_right - old_right)/encoder_cpr;
    actual_left=((pos_left - old_left)/encoder_cpr)*-1;

    old_left = pos_left;
    old_right = pos_right;
    

    publishSpeed(LOOPTIME);
  }
}

//Publish function for odometry, uses a vector type message to send the data (message type is not meant for that but that's easier than creating a specific message type)
void publishSpeed(double time) {
  speed_msg.header.stamp = nh.now();      //timestamp for odometry data
  speed_msg.vector.x = (actual_left);    //left wheel speed (in m/s)  speed_act_left
  speed_msg.vector.y = (actual_right*-1);   //right wheel speed (in m/s)
  speed_msg.vector.z = time/1000;         //looptime, should be the same as specified in LOOPTIME (in s)
  speed_pub.publish(&speed_msg);
  nh.spinOnce();
  //nh.loginfo(speed_act_left);
}

float getEncoderOnePosition() {
  float newPosition = myEnc.read();
  if (newPosition != oldPosition) {
    oldPosition = newPosition;
  }
  return newPosition;
}

float getEncoderTwoPosition() {
  float newPosition2 = myEnc2.read();
  if (newPosition2 != pos_left) {
    oldPosition2 = newPosition2;
  }
  return newPosition2;
}


void runMotorRight(char dir, int speed) {
  analogWrite(enA, speed);
  if (dir == "f") {
    digitalWrite(in1, HIGH);
    digitalWrite(in2, LOW);
  }
  if (dir == "r") {
    digitalWrite(in1, LOW);
    digitalWrite(in2, HIGH);
  }
}

void runMotorLeft(char dir, int speed) {
  analogWrite(enB, speed);
  if (dir == "f") {
    digitalWrite(in3, HIGH);
    digitalWrite(in4, LOW);
  }
  if (dir == "r") {
    digitalWrite(in3, LOW);
    digitalWrite(in4, HIGH);
  }
}
