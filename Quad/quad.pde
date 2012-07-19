/*	Setup Description
 *	Motors(M#) used 4 sensors(S#) used 6
 *
 *	M1(S1)								M2(S2)
 *	   \								/
 *		Back-(S5)Microcontroller(S6)-Top
 *	   /								\
 *	M3(S3)								M4(S4)
 *
 *	Kill Switch to be used to stop the quad copter immediatly-K1
 * 	Go switch to be used for initial purpose - G1
 *	Accelorometer is used for balacing of bot - A1
 */
#include <Servo.h>

Servo Motor;

void setup()
{

	// Set first the position to prevent the servo to move to the middle
	// position at initialisation
	MotorControl(2000,2000,2000,2000);// Full power

	// Only now attach the servo. When passing the proper
	// minimum and maximum, you will be able to use the degrees
	// for write. I assumed the standard range from 1000 to 2000
	// microseconds.
	Motor1.attach(7, 1000, 2000);
	Motor2.attach(7, 1000, 2000);//PLEASE FILL APPROPRIATE PIN NO
	Motor3.attach(7, 1000, 2000);
	Motor4.attach(7, 1000, 2000);
	//PLEASE WRITE THE ATTACH LOGIC FOR KILL SWITCH , SENSORS & ACCELOROMETER
	// Wait for beep from ESC
	delay(10000);

	PowerOff();

	// Wait for beep from ESC
	delay(10000);

}

void loop()
{
	if(Init())
	{
		LiftOff();
		Landing();
	}
	while(1);
} 
int Init()
{
	bool go = false;
//Initially run the motor in medium speed so as to test wheather we have evenly balanced our bot
	while(!go)
	{
		MotorControl(1500,1500,1500,1500);
		if(G1 pin is set)
		{
			go = true;
	
		}
		else if(k1 pin is set)
		{
			PowerOff();
			break;
		}
		
	}
	if(go)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}
void PowerOff()
{
	MotorControl(1000,1000,1000,1000);// Power off
}
void MotorControl(int m1,int m2,int m3,int m4)
{
	Motor1.writeMicroseconds(m1);  
	Motor2.writeMicroseconds(m2);
	Motor3.writeMicroseconds(m3);
	Motor4.writeMicroseconds(m4);
}
void Forward()
{
	MotorControl(1200,1200,1800,1800);
}
void Reverse()
{
	MotorControl(1800,1800,1200,1200);
}
void Left()
{
	MotorControl(1200,1800,1200,1800);
}
void Right()
{
	MotorControl(1800,1200,1800,1200);
}
void EagleView()
{
	MotorControl(1500,1500,1500,1500);//Values Should be such that Quad must be stable in air
}
void LiftOff()
{
	bool go = false;
	MotorControl(1800,1800,1800,1800);
	delay(400);//this should be avoided
	while(!go)
	{
		MotorControl(2000,2000,2000,2000);// Full power
		if(k1 pin is set)
		{
			Landing();
			return;
		}
		if(s6 pin is set)
		{
			MotorControl(1200,1200,1200,1200);
			delay(400);
			EagleView();
		}
	}
}
void Landing()
{
	bool Landed = false
	while(!Landed)
	{
		MotorControl(1200,1200,1200,1200);
		if(s5 pin is set)
		{
			MotorControl(1200,1200,1200,1200);//Multiply with sensor's analog value so as to avoid below line
			delay(200);//Avoid it
			PowerOff();
		}
	}
}