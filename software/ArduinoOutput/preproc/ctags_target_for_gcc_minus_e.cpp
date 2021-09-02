# 1 "/Users/acea/projects/hardware/esp32_battery_isolator/software/arduino/main/main.ino"
# 2 "/Users/acea/projects/hardware/esp32_battery_isolator/software/arduino/main/main.ino" 2
# 3 "/Users/acea/projects/hardware/esp32_battery_isolator/software/arduino/main/main.ino" 2
# 4 "/Users/acea/projects/hardware/esp32_battery_isolator/software/arduino/main/main.ino" 2
# 5 "/Users/acea/projects/hardware/esp32_battery_isolator/software/arduino/main/main.ino" 2
# 6 "/Users/acea/projects/hardware/esp32_battery_isolator/software/arduino/main/main.ino" 2





#define SCREEN_WIDTH 128 /* OLED display width, in pixels*/
#define SCREEN_HEIGHT 32 /* OLED display height, in pixels*/
#define OLED_RESET 4 /* Reset pin # (or -1 if sharing Arduino reset pin)*/
#define SCREEN_ADDRESS 0x3C /*|< See datasheet for Address; 0x3D for 128x64, 0x3C for 128x32*/
Adafruit_SSD1306 display = Adafruit_SSD1306(128 /* OLED display width, in pixels*/, 32 /* OLED display height, in pixels*/, &Wire, 4 /* Reset pin # (or -1 if sharing Arduino reset pin)*/);


ADC128D818 adc(0x1D);

int updatesInLoop = 5;

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


int maxAllowedBoardTemp = 80;

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

int pwmValue = 255;
int loopDelay = 500;

bool sysLedBlinkState = 0x1;

long loopTimer;

void setup() {
  Wire.begin();
  Serial.begin(115200);
  adc.begin();


  loopTimer = millis();

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
        digitalWrite(b1LedPin, 0x0);
        digitalWrite(b1EnPin, 0x0);
        Serial.println("B1 OFF");
      }
      else if (b1Voltage >= 12.8) {
        Serial.println("B1 IS CURRENT SOURCE");
        Serial.print("b1Voltage => 12.8: ");
        Serial.println(b1Voltage);
        Serial.print("b2Voltage: ");
        Serial.println(b2Voltage);
        digitalWrite(b1LedPin, 0x1);
        digitalWrite(b2LedPin, 0x1);

        //digitalWrite(b1EnPin, HIGH);
        digitalWrite(b2EnPin, 0x1);
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

        digitalWrite(b1LedPin, 0x0);
        digitalWrite(b2LedPin, 0x0);

        digitalWrite(b1EnPin, 0x0);
        digitalWrite(b2EnPin, 0x0);
        Serial.println("B1 OFF");
        Serial.println("B2 OFF");

        digitalWrite(l1EnPin, 0x0);
        digitalWrite(l2EnPin, 0x0);
        digitalWrite(l3EnPin, 0x0);
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

        digitalWrite(b1LedPin, 0x0);
        digitalWrite(b2LedPin, 0x1);

        digitalWrite(b1EnPin, 0x0);
        digitalWrite(b2EnPin, 0x1);
        Serial.println("B1 OFF");
        Serial.println("B2 ON");

        //digitalWrite(l1EnPin, HIGH);
        digitalWrite(l2EnPin, 0x0);
        digitalWrite(l3EnPin, 0x0);
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

        digitalWrite(b1LedPin, 0x0);
        digitalWrite(b2LedPin, 0x1);

        digitalWrite(b1EnPin, 0x0);
        digitalWrite(b2EnPin, 0x1);
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

        digitalWrite(b1LedPin, 0x1);
        digitalWrite(b2LedPin, 0x1);

        digitalWrite(b1EnPin, 0x1);
        digitalWrite(b2EnPin, 0x1);
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
        digitalWrite(b1LedPin, 0x1);
        digitalWrite(b2LedPin, 0x1);

        digitalWrite(b1EnPin, 0x1);
        digitalWrite(b2EnPin, 0x1);
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

      digitalWrite(b1LedPin, 0x0);
      digitalWrite(b2LedPin, 0x1);

      digitalWrite(b1EnPin, 0x0);
      digitalWrite(b2EnPin, 0x1);
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

  display.setTextSize(2); // Normal 1:1 pixel scale
  display.setTextColor(SSD1306_WHITE); // Draw white text
  display.setCursor(00,0); // Start at top-left corner
  display.println(((reinterpret_cast<const __FlashStringHelper *>((line1)))));
  display.println(((reinterpret_cast<const __FlashStringHelper *>((line2)))));
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
