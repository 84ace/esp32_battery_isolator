#include "Arduino.h"

int autoMode = 1;
int buttonPin = 33;
int sysLedPin = 18; //deprecated
int b1LedPin = 19; //deprecated
int b2LedPin = 23; //deprecated
int b1EnPin = 32;
int b2EnPin = 25;
int l1EnPin = 14;
int l2EnPin = 13;
int l3EnPin = 4;

char state;

void setup() {
  Serial.begin(115200);
  pinMode(buttonPin, INPUT);
  pinMode(sysLedPin, OUTPUT);
  pinMode(b1LedPin, OUTPUT);
  pinMode(b2LedPin, OUTPUT);
  pinMode(b1EnPin, OUTPUT);
  pinMode(b2EnPin, OUTPUT);
  pinMode(l1EnPin, OUTPUT);
  pinMode(l2EnPin, OUTPUT);
  pinMode(l3EnPin, OUTPUT);
  Serial.println("Waiting for input...");
    
}

void loop() {
  if (Serial.available() > 0) {
    state = Serial.parseInt();
  }

  if (state == 99) {
    digitalWrite(b1EnPin, LOW);
    digitalWrite(b2EnPin, LOW);
    digitalWrite(l1EnPin, LOW);
    digitalWrite(l2EnPin, LOW);
    digitalWrite(l3EnPin, LOW);
    Serial.println("All off");
    Serial.flush();
  }
  else if (state == 10) {
    digitalWrite(b1EnPin, LOW);
    Serial.println("B1 off");
    Serial.flush();
  }
  else if (state == 11) {
    digitalWrite(b1EnPin, HIGH);
    Serial.println("B1 on");
    Serial.flush();
  }
  else if (state == 20) {
    digitalWrite(b2EnPin, LOW);
    Serial.println("B2 off");
    Serial.flush();
  }
  else if (state == 21) {
    digitalWrite(b2EnPin, HIGH);
    Serial.println("B2 on");
    Serial.flush();
  }
  else if (state == 30) {
    digitalWrite(l1EnPin, LOW);
    Serial.println("L1 off");
    Serial.flush();
  }
  else if (state == 31) {
    digitalWrite(l1EnPin, HIGH);
    Serial.println("L1 on");
    Serial.flush();
  }
  else if (state == 40) {
    digitalWrite(l2EnPin, LOW);
    Serial.println("L2 off");
    Serial.flush();
  }
  else if (state == 41) {
    digitalWrite(l2EnPin, HIGH);
    Serial.println("L2 on");
    Serial.flush();
  }
  else if (state == 50) {
    digitalWrite(l3EnPin, LOW);
    Serial.println("L3 off");
    Serial.flush();
  }
  else if (state == 51) {
    digitalWrite(l3EnPin, HIGH);
    Serial.println("L3 on");
    Serial.flush();
  }
  
  delay(100);
  Serial.flush();

}