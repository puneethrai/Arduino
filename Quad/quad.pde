/*	Setup Description
 *	Motors(M#) used 4 sensors(S#) used 6
 *
 *	M1(S1)								M2(S2)
 *
 *		Back-(S5)Microcontroller(S6)-Front
 *
 *	M3(S3)								M4(S4)
 *
 *	Kill Switch to be used to stop the quad copter immediatly-K1
 * 	Go switch to be used for initial purpose - G1
 */
#include <Servo.h>

Servo Motor;

void setup()
{

// Set first the position to prevent the servo to move to the middle
// position at initialisation
Motor1.writeMicroseconds(2000);  // Full power
Motor2.writeMicroseconds(2000);
Motor3.writeMicroseconds(2000);
Motor4.writeMicroseconds(2000);
// Only now attach the servo. When passing the proper
// minimum and maximum, you will be able to use the degrees
// for write. I assumed the standard range from 1000 to 2000
// microseconds.
Motor1.attach(7, 1000, 2000);
Motor2.attach(7, 1000, 2000);
Motor3.attach(7, 1000, 2000);
Motor4.attach(7, 1000, 2000);
//PLEASE WRITE THE ATTACH LOGIC FOR KILL SWITCH & SENSORS
// Wait for beep from ESC
delay(10000);

Motor1.writeMicroseconds(1000);  // Power off
Motor2.writeMicroseconds(1000);
Motor3.writeMicroseconds(1000);
Motor4.writeMicroseconds(1000);

// Wait for beep from ESC
delay(10000);

}

void loop()
{
	Init();
	while(1);
} 
void Init()
{
	bool go = false;
//Initially run the motor in medium speed so as to test wheather we have evenly balanced our bot
	while(!go)
	{
		Motor1.writeMicroseconds(1500);  
		Motor2.writeMicroseconds(1500);
		Motor3.writeMicroseconds(1500);
		Motor4.writeMicroseconds(1500);
	}
}