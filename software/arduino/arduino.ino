#include "Arduino.h"
#include "Wire.h"
#include "ADC128D818.h"
#include <SPI.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include "BluetoothSerial.h"

#if !defined(CONFIG_BT_ENABLED) || !defined(CONFIG_BLUEDROID_ENABLED)
#error Bluetooth is not enabled! Please run `make menuconfig` to and enable it
#endif

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 32 // OLED display height, in pixels
#define OLED_RESET     4 // Reset pin # (or -1 if sharing Arduino reset pin)
#define SCREEN_ADDRESS 0x3C ///< See datasheet for Address; 0x3D for 128x64, 0x3C for 128x32
Adafruit_SSD1306 display = Adafruit_SSD1306(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

ADC128D818 adc(0x1D);

int updatesInLoop = 5;

BluetoothSerial SerialBT;
int received;// received value will be stored in this variable
char receivedChar;// received value will be stored as CHAR in this variable

const char manualOff ='0';
const char manualOn ='1';
const char l1BtForceOn ='a';
const char l1BtForceOff ='b';
const char l2BtForceOn ='c';
const char l2BtForceOff ='d';
const char l3BtForceOn ='e';
const char l3BtForceOff ='f';
const char b1BtForceOn ='g';
const char b1BtForceOff ='h';
const char b2BtForceOn ='i';
const char b2BtForceOff ='j';

float systemVoltage = 3.0;
float systemTemperature = 25;
float systemVoltageDivider = 1.322; 
float currentVoltageDivider = 1.33;
float batteryVoltageDivider = 7.16;
float milliVoltPerAmp = 0.045;
float b1Voltage = 0.0;
float b2Voltage = 0.0;
float b1Current = 0.0;
float b2Current = 0.0;

char staticTextToDisplay[22] = "Isolator  V0.1";

int maxAllowedBoardTemp = 80;

int autoMode = 1;
int buttonPin = 33;
int sysLedPin = 14;
int b1LedPin = 27;
int b2LedPin = 25;
int b1EnPin = 26;
int b2EnPin = 32;
int l1EnPin = 15;
int l2EnPin = 13;
int l3EnPin = 4;

int pwmValue = 255;
int loopDelay = 500;

bool sysLedBlinkState = HIGH;

long loopTimer;

void setup() {
  Wire.begin();
  Serial.begin(115200);
  //SerialBT.begin("Isolator"); //Bluetooth device name
  adc.begin();
  pinMode(buttonPin, INPUT);
  pinMode(sysLedPin, OUTPUT);
  pinMode(b1LedPin, OUTPUT);
  pinMode(b2LedPin, OUTPUT);
  pinMode(b1EnPin, OUTPUT);
  pinMode(b2EnPin, OUTPUT);
  pinMode(l1EnPin, OUTPUT);
  pinMode(l2EnPin, OUTPUT);
  pinMode(l3EnPin, OUTPUT);
  
  loopTimer = millis();

  // SSD1306_SWITCHCAPVCC = generate display voltage from 3.3V internally
  if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
    Serial.println(F("SSD1306 allocation failed"));
    for(;;); // Don't proceed, loop forever
  }

  display.setRotation(2);
  display.clearDisplay();
  staticText(staticTextToDisplay, " ");
  
}

void loop() {
  receivedChar =(char)SerialBT.read();

  if (Serial.available()) {
    SerialBT.write(Serial.read());
  
  }
  if (SerialBT.available()) {
    SerialBT.print("Received:");// write on BT app
    SerialBT.println(receivedChar);// write on BT app      
    Serial.print ("Received:");//print on serial monitor
    Serial.println(receivedChar);//print on serial monitor    
    //SerialBT.println(receivedChar);//print on the app    
    //SerialBT.write(receivedChar); //print on serial monitor
    
    if(receivedChar == manualOff)
    {
     SerialBT.println("Manual Mode OFF:");// write on BT app
     Serial.println("Manual Mode OFF:");//write on serial monitor
     autoMode = 1;       
    }
    if(receivedChar == manualOn)
    {
     SerialBT.println("Manual Mode ON:");// write on BT app
     Serial.println("Manual Mode ON:");//write on serial monitor 
     autoMode = 0;        
    }
    if(receivedChar == b1BtForceOn)
    {
     SerialBT.println("B1 ON:");// write on BT app
     Serial.println("B1 ON:");//write on serial monitor 
     digitalWrite(b1EnPin, HIGH);      
     digitalWrite(b1LedPin, HIGH);    
    }
    if(receivedChar == b1BtForceOff)
    {
     SerialBT.println("B1 OFF:");// write on BT app
     Serial.println("B1 OFF:");//write on serial monitor
     digitalWrite(b1EnPin, LOW);
     digitalWrite(b1LedPin, LOW);  
    }    
    if(receivedChar == b2BtForceOn)
    {
     SerialBT.println("B2 ON:");// write on BT app
     Serial.println("B2 ON:");//write on serial monitor     
     digitalWrite(b2EnPin, HIGH);  
     digitalWrite(b2LedPin, HIGH);  
    }
    if(receivedChar == b2BtForceOff)
    {
     SerialBT.println("B2 OFF:");// write on BT app
     Serial.println("B2 OFF:");//write on serial monitor
     digitalWrite(b2EnPin, LOW);
     digitalWrite(b2LedPin, LOW);  
    }
    if(receivedChar == l1BtForceOn)
    {
     SerialBT.println("L1 ON:");// write on BT app
     Serial.println("L1 ON:");//write on serial monitor    
     digitalWrite(l1EnPin, HIGH);   
    }
    if(receivedChar == l1BtForceOff)
    {
     SerialBT.println("L1 OFF:");// write on BT app
     Serial.println("L1 OFF:");//write on serial monitor
     digitalWrite(l1EnPin, LOW);   
    }
    if(receivedChar == l2BtForceOn)
    {
     SerialBT.println("L2 ON:");// write on BT app
     Serial.println("L2 ON:");//write on serial monitor   
     digitalWrite(l2EnPin, HIGH);      
    }
    if(receivedChar == l2BtForceOff)
    {
     SerialBT.println("L2 OFF:");// write on BT app
     Serial.println("L2 OFF:");//write on serial monitor
     digitalWrite(l2EnPin, LOW);
    }
    if(receivedChar == l3BtForceOn)
    {
     SerialBT.println("L3 ON:");// write on BT app
     Serial.println("L3 ON:");//write on serial monitor   
     digitalWrite(l3EnPin, HIGH);    
    }
    if(receivedChar == l3BtForceOff)
    {
     SerialBT.println("L3 OFF:");// write on BT app
     Serial.println("L3 OFF:");//write on serial monitor
     digitalWrite(l3EnPin, LOW);
    }   
  }

  if (millis() - loopTimer > loopDelay) {
    loopTimer = millis();
    adcLoop();

    for (int i = 0; i < updatesInLoop; i++) {
      if (i == 0) {
        dtostrf(systemTemperature, 3, 2, staticTextToDisplay);
        staticText("Temp (C):", staticTextToDisplay);
        adcLoop();
      } 
      if (i == 1) {
        dtostrf(b1Voltage, 3, 2, staticTextToDisplay);
        staticText("B1 (V):", staticTextToDisplay);
        adcLoop();
      } 
      if (i == 2) {
        dtostrf(b2Voltage, 3, 2, staticTextToDisplay);
        staticText("B2 (V):", staticTextToDisplay);
        adcLoop();
      } 
      if (i == 3) {
        dtostrf(b1Current, 3, 2, staticTextToDisplay);
        staticText("B1 (A):", staticTextToDisplay);
        adcLoop();
      }
      if (i == 4) {
        dtostrf(b2Current, 3, 2, staticTextToDisplay);
        staticText("B2 (A):", staticTextToDisplay);
        adcLoop();
      }
      updateIsolator();
    }
    Serial.println();
  }
}

void adcLoop() {
  for (int i = 0; i < 7; i++) {
    if (i == 4) {
        systemVoltage = adc.readConverted(i) * systemVoltageDivider;
    } 
    if (i == 0) {
      b1Voltage = adc.readConverted(i) * batteryVoltageDivider;
    } 
    if (i == 1) {
      b2Voltage = adc.readConverted(i) * batteryVoltageDivider;
    } 
    if (i == 2) {
      b1Current = (adc.readConverted(i) * currentVoltageDivider - (systemVoltage / 2)) / milliVoltPerAmp;
    } 
    if (i == 3) {
      b2Current = (adc.readConverted(i) * currentVoltageDivider - (systemVoltage / 2)) / milliVoltPerAmp;
    }
  }
  // ... and the internal temp sensor
  systemTemperature = adc.readTemperatureConverted();
}

void updateIsolator() {
  sysLedBlinkState = !sysLedBlinkState;
  digitalWrite(sysLedPin, sysLedBlinkState);
  if (autoMode == 1) {
    if (systemTemperature < maxAllowedBoardTemp) {
      if (b1Voltage <= 12.8) {
        Serial.println("B1 ON STANDYBY");
        Serial.print("b1Voltage < 12.8: ");
        Serial.println(b1Voltage);
        digitalWrite(b1LedPin, LOW);
        digitalWrite(b1EnPin, LOW);
        Serial.println("B1 OFF");
      } 
      else if (b1Voltage >= 12.8) {
        Serial.println("B1 IS CURRENT SOURCE");
        Serial.print("b1Voltage => 12.8: ");
        Serial.println(b1Voltage);
        Serial.print("b2Voltage: ");
        Serial.println(b2Voltage);
        digitalWrite(b1LedPin, HIGH);
        digitalWrite(b2LedPin, HIGH);

        //digitalWrite(b1EnPin, HIGH);
        digitalWrite(b2EnPin, HIGH);
        Serial.println("B1 ON");
        Serial.println("B2 ON");

        //digitalWrite(l1EnPin, HIGH);
        //digitalWrite(l2EnPin, HIGH);
        //digitalWrite(l3EnPin, HIGH);
        Serial.println("L1 ON");
        Serial.println("L2 ON");
        Serial.println("L3 ON");
      }

      if (b2Voltage < 11.5) {
        Serial.println("B2 CRITICALLY LOW!!!");
        Serial.print("b2Voltage < 11.5: ");
        Serial.println(b2Voltage);
        Serial.print("b1Voltage: ");
        Serial.println(b1Voltage);
        
        digitalWrite(b1LedPin, LOW);
        digitalWrite(b2LedPin, LOW);

        digitalWrite(b1EnPin, LOW);
        digitalWrite(b2EnPin, LOW);
        Serial.println("B1 OFF");
        Serial.println("B2 OFF");

        digitalWrite(l1EnPin, LOW);
        digitalWrite(l2EnPin, LOW);
        digitalWrite(l3EnPin, LOW);
        Serial.println("L1 OFF");
        Serial.println("L2 OFF");
        Serial.println("L3 OFF");
      } 
      else if (b2Voltage < 11.8){
        Serial.println("B2 LOW!");
        Serial.print("b2Voltage < 11.8: ");
        Serial.println(b2Voltage);
        Serial.print("b1Voltage: ");
        Serial.println(b1Voltage);

        digitalWrite(b1LedPin, LOW);
        digitalWrite(b2LedPin, HIGH);

        digitalWrite(b1EnPin, LOW);
        digitalWrite(b2EnPin, HIGH);
        Serial.println("B1 OFF");
        Serial.println("B2 ON");

        //digitalWrite(l1EnPin, HIGH);
        digitalWrite(l2EnPin, LOW);
        digitalWrite(l3EnPin, LOW);
        Serial.println("L1 ON");
        Serial.println("L2 OFF");
        Serial.println("L3 OFF");
      } 
      else if (b2Voltage < 12.8){
        Serial.println("B2 IS LOAD SOURCE");
        Serial.print("b2Voltage  12.8: ");
        Serial.println(b2Voltage);
        Serial.print("b1Voltage: ");
        Serial.println(b1Voltage);

        digitalWrite(b1LedPin, LOW);
        digitalWrite(b2LedPin, HIGH);

        digitalWrite(b1EnPin, LOW);
        digitalWrite(b2EnPin, HIGH);
        Serial.println("B1 OFF");
        Serial.println("B2 ON");

        //digitalWrite(l1EnPin, HIGH);
        //digitalWrite(l2EnPin, HIGH);
        //digitalWrite(l3EnPin, HIGH);
        Serial.println("L1 ON");
        Serial.println("L2 ON");
        Serial.println("L3 ON");
      } 
      else if (b2Voltage >= 12.8){
        Serial.println("B2 IS CURRENT SOURCE");
        Serial.print("b2Voltage > 12.8: ");
        Serial.println(b2Voltage);
        Serial.print("b1Voltage: ");
        Serial.println(b1Voltage);

        digitalWrite(b1LedPin, HIGH);
        digitalWrite(b2LedPin, HIGH);

        digitalWrite(b1EnPin, HIGH);
        digitalWrite(b2EnPin, HIGH);
        Serial.println("B1 OFF");
        Serial.println("B2 ON");

        //digitalWrite(l1EnPin, HIGH);
        //digitalWrite(l2EnPin, HIGH);
        //digitalWrite(l3EnPin, HIGH);
        Serial.println("L1 ON");
        Serial.println("L2 ON");
        Serial.println("L3 ON");
      } 
      else {
        Serial.println("B2 IS CURRENT SOURCE");
        digitalWrite(b1LedPin, HIGH);
        digitalWrite(b2LedPin, HIGH);

        digitalWrite(b1EnPin, HIGH);
        digitalWrite(b2EnPin, HIGH);
        Serial.println("B1 ON");
        Serial.println("B2 ON");

        //digitalWrite(l1EnPin, HIGH);
        //digitalWrite(l2EnPin, HIGH);
        //digitalWrite(l3EnPin, HIGH);
        Serial.println("L1 ON");
        Serial.println("L2 ON");
        Serial.println("L3 ON");
      }
    } 
    else {
      dtostrf(systemTemperature, 3, 2, staticTextToDisplay);
      staticText("OVERTEMP!", staticTextToDisplay);
      Serial.print("OVERTEMP: ");
      Serial.println(systemTemperature);

      //ToDo:
      /*
      //limit current flow based on temperature
      // see https://github.com/espressif/arduino-esp32/blob/master/libraries/ESP32/examples/AnalogOut/LEDCSoftwareFade/LEDCSoftwareFade.ino
      if (b1Current < b2Current) { //B1 charged by B2
        pwmValue = 5.1 * (125 - systemTemperature);
        analogWrite(b1EnPin, pwmValue);
      } 
      else if (b2Current < b1Current) { //B2 charged by B1
        pwmValue = 5.1 * (125 - systemTemperature);
        analogWrite(b1EnPin, pwmValue);
      } */

      digitalWrite(b1LedPin, LOW);
      digitalWrite(b2LedPin, HIGH);

      digitalWrite(b1EnPin, LOW);
      digitalWrite(b2EnPin, HIGH);
      Serial.println("B1 OFF");
      Serial.println("B2 ON");

      //digitalWrite(l1EnPin, HIGH);
      //digitalWrite(l2EnPin, HIGH);
      //digitalWrite(l3EnPin, HIGH);
      Serial.println("L1 ON");
      Serial.println("L2 ON");
      Serial.println("L3 ON");
    }
  }
}

void staticText(char* line1, char* line2) {
  display.clearDisplay();

  display.setTextSize(2);             // Normal 1:1 pixel scale
  display.setTextColor(SSD1306_WHITE);        // Draw white text
  display.setCursor(00,0);             // Start at top-left corner
  display.println(F(line1));
  display.println(F(line2));
  display.display();
  delay(1000);

}

//ToDo:
//allow user to set the offset of the voltage between displayed and measured, then recalculate the multiplier
//
//void buttonPress() {
//  if (digitalRead(buttonPin) == LOW) {
//  
//  }  
//}