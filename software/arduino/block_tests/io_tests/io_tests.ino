#include "Arduino.h"

// setup some pinzz
int buttonPin = 33;
int sysLedPin = 23;
int b1EnPin = 32;
int b2EnPin = 25;
int l1EnPin = 14;
int l2EnPin = 13;
int l3EnPin = 4;
int fanPin = 16;
int fanRpmPin = 17;
int buzzer = 18;  // buzzer on PCB

// butt stuff ;)
int buttonState = 0;
char state;

// read RPM
 int half_revolutions = 0;
 int rpm = 0;
 unsigned long lastmillis = 0;

// setting PWM properties
const int freq = 5000;
const int fanChannel = 0;
const int resolution = 8;

// this code will be executed every time the interrupt 0 (pin2) gets low.
 void rpm_fan(){
  half_revolutions++;
 }

// on boot
void setup() {
  Serial.begin(115200);

  // setup GPIOs
  pinMode(buttonPin, INPUT_PULLUP);
  pinMode(fanRpmPin, INPUT_PULLUP);
  pinMode(fanPin, OUTPUT);
  pinMode(sysLedPin, OUTPUT);
  pinMode(b1EnPin, OUTPUT);
  pinMode(b2EnPin, OUTPUT);
  pinMode(l1EnPin, OUTPUT);
  pinMode(l2EnPin, OUTPUT);
  pinMode(l3EnPin, OUTPUT);
  pinMode(buzzer, OUTPUT);

  // configure FAN PWM functionalitites
  ledcSetup(fanChannel, freq, resolution);
  
  // attach the channel to the GPIO to be controlled
  ledcAttachPin(fanPin, fanChannel);

  // attach to the fan RPM interrupt
  attachInterrupt(0, rpm_fan, FALLING);

  // setup the buzzer
  ledcSetup(0,1E5,12);
  ledcAttachPin(buzzer,0);
  
  Serial.println("Waiting for input...");
    
}

//on run
void loop() {
  buttonState = digitalRead(buttonPin);
  if (buttonState == LOW) {
    Serial.println("Mode button pressed");
  }

  if (Serial.available() > 0) {
    state = Serial.parseInt();
  }

  if (state == 99) {
    digitalWrite(b1EnPin, LOW);
    digitalWrite(b2EnPin, LOW);
    digitalWrite(l1EnPin, LOW);
    digitalWrite(l2EnPin, LOW);
    digitalWrite(l3EnPin, LOW);
    ledcWriteTone(0,0);
    Serial.println("All off");
    Serial.flush();
  }
  // fan up
  else if (state == 98) {
    // increase the LED brightness
    for(int dutyCycle = 0; dutyCycle <= 255; dutyCycle++){   
      // changing the LED brightness with PWM
      ledcWrite(fanChannel, dutyCycle);
      Serial.print("PWM going up: ");
      Serial.println(dutyCycle);
      delay(15);
    }
  }
  // fan down
  else if (state ==97) {
    // decrease the LED brightness
    for(int dutyCycle = 255; dutyCycle >= 0; dutyCycle--){
      // changing the LED brightness with PWM
      ledcWrite(fanChannel, dutyCycle);
      Serial.print("PWM going down: ");
      Serial.println(dutyCycle);
      delay(15);
    }
  }
  else if (state == 10) {
    pinMode(b1EnPin, INPUT_PULLDOWN);
    Serial.println("B1 off");
  }
  else if (state == 11) {
    pinMode(b1EnPin, OUTPUT);
    digitalWrite(b1EnPin, HIGH);
    Serial.println("B1 on");
  }
  else if (state == 20) {
    digitalWrite(b2EnPin, LOW);
    Serial.println("B2 off");
  }
  else if (state == 21) {
    digitalWrite(b2EnPin, HIGH);
    Serial.println("B2 on");
  }
  else if (state == 30) {
    digitalWrite(l1EnPin, LOW);
    Serial.println("L1 off");
  }
  else if (state == 31) {
    digitalWrite(l1EnPin, HIGH);
    Serial.println("L1 on");
  }
  else if (state == 40) {
    digitalWrite(l2EnPin, LOW);
    Serial.println("L2 off");
  }
  else if (state == 41) {
    digitalWrite(l2EnPin, HIGH);
    Serial.println("L2 on");
  }
  else if (state == 50) {
    digitalWrite(l3EnPin, LOW);
    Serial.println("L3 off");
  }
  else if (state == 51) {
    digitalWrite(l3EnPin, HIGH);
    Serial.println("L3 on");
  }
  else if (state == 61) {
    ledcWriteTone(0,800);
    delay(1000);
    ledcWriteTone(0,3000);
    delay(1000);
  }

  // monitor fan RPM
  if (millis() - lastmillis == 1000){ //Uptade every one second, this will be equal to reading frecuency (Hz).
    detachInterrupt(0);//Disable interrupt when calculating
    rpm = half_revolutions * 60; // Convert frecuency to RPM, note: this works for one interruption per full rotation. For two interrups per full rotation use half_revolutions * 30.
    Serial.print("RPM =\t"); //print the word "RPM" and tab.
    Serial.print(rpm); // print the rpm value.
    Serial.print("\t Hz=\t"); //print the word "Hz".
    Serial.println(half_revolutions); //print revolutions per second or Hz. And print new line or enter.
    half_revolutions = 0; // Restart the RPM counter
    lastmillis = millis(); // Uptade lasmillis
    attachInterrupt(0, rpm_fan, FALLING); //enable interrupt
  }
  
  delay(100);
  Serial.flush(); // this might just be for fun?

}