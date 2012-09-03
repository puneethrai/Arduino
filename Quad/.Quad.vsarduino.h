#define __AVR_ATmega1280__
#define __cplusplus
#define __builtin_va_list int
#define __attribute__(x)
#define __inline__
#define __asm__(x)
#define ARDUINO 100
extern "C" void __cxa_pure_virtual() {}
#include "C:\Users\gangathara rai\Documents\Visual Studio 2010\arduino-1.0.1\libraries\Servo\Servo.h"
#include "C:\Users\gangathara rai\Documents\Visual Studio 2010\arduino-1.0.1\libraries\Servo\Servo.cpp"
void setup();
bool isCutOff(int x, int y);
void Stability(int x ,int y);
void Ascend();
void Decend();
void loop();
int Init();
void PowerOff();
void MotorControl(int m1,int m2,int m3,int m4);
void Forward();
void Reverse();
void Left();
void Right();
void EagleView();
void LiftOff();
void Landing();

#include "C:\Users\gangathara rai\Documents\Visual Studio 2010\arduino-1.0.1\hardware\arduino\variants\mega\pins_arduino.h" 
#include "C:\Users\gangathara rai\Documents\Visual Studio 2010\arduino-1.0.1\hardware\arduino\cores\arduino\Arduino.h"
#include "C:\Users\gangathara rai\Documents\GitHub\Arduino\Quad\Quad.pde" 
#include "C:\Users\gangathara rai\Documents\GitHub\Arduino\Quad\quad.pde"
