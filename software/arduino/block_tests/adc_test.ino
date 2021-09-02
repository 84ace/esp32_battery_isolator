#include "Arduino.h"
#include "Wire.h"
#include "ADC128D818.h"
#include <SPI.h>

ADC128D818 adc(0x1D);

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

void setup() {
  Wire.begin();
  Serial.begin(115200);
  //adc.begin();
  Serial.println("Setup is done");
}

void loop() {
    //adcLoop();
    Serial.println("Looping...");
}

void adcLoop() {
  for (int i = 0; i < 7; i++) {
    if (i == 4) {
      systemVoltage = adc.readConverted(i) * systemVoltageDivider;
      Serial.print("System voltage: ");
      Serial.println(systemVoltage);
    } 
    if (i == 0) {
      b1Voltage = adc.readConverted(i) * batteryVoltageDivider;
      Serial.print("b1Voltage: ");
      Serial.println(b1Voltage);
    } 
    if (i == 1) {
      b2Voltage = adc.readConverted(i) * batteryVoltageDivider;
      Serial.print("b2Voltage: ");
      Serial.println(b2Voltage);
    } 
    if (i == 2) {
      b1Current = (adc.readConverted(i) * currentVoltageDivider - (systemVoltage / 2)) / milliVoltPerAmp;
      Serial.print("b1Current: ");
      Serial.println(b1Current);
    } 
    if (i == 3) {
      b2Current = (adc.readConverted(i) * currentVoltageDivider - (systemVoltage / 2)) / milliVoltPerAmp;
      Serial.print("b2Current: ");
      Serial.println(b2Current);
    }
  }
  // ... and the internal temp sensor
  systemTemperature = adc.readTemperatureConverted();
  Serial.print("systemTemperature: ");
  Serial.println(systemTemperature);
}