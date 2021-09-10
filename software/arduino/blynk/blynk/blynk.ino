
#include "Wire.h"
#include "ADC128D818.h"
#include <SPI.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <BlynkSimpleEsp32_BLE.h>
#include <BLEDevice.h>
#include <BLEServer.h>

#define BLYNK_USE_DIRECT_CONNECT

/* Comment this out to disable prints and save space */
#define BLYNK_PRINT Serial

/* Fill-in your Template ID (only if using Blynk.Cloud) */
//#define BLYNK_TEMPLATE_ID   "YourTemplateID"

#define SCREEN_WIDTH 128    // OLED display width, in pixels
#define SCREEN_HEIGHT 32    // OLED display height, in pixels
#define OLED_RESET 4        // Reset pin # (or -1 if sharing Arduino reset pin)
#define SCREEN_ADDRESS 0x3C ///< See datasheet for Address; 0x3D for 128x64, 0x3C for 128x32

char auth[] = "pX5sSlM-W175Zs_KnO9OHuXQ-55sdPdU";

char version[] = "v001";
bool debugVoltages = false; // ToDo: move this into setup and catch a button press to enable
bool debugBLE = false;
bool debugPWM = false;
bool debugAppCommands = false;
bool notificationsOn = true;
bool notificationAllowed = false;

const int maxAllowedBoardTemp = 80;
int battery1CurrentLimit = 15;
int battery2CurrentLimit = 15;

const int buttonPin = 33;
const int sysLED = 27;  //not populated in prod
const int b1EnPin = 25; //32 in prod
const int b2EnPin = 18; //25 in prod
const int l1EnPin = 14;
const int l2EnPin = 13;
const int l3EnPin = 4;

float systemVoltageDivider = 1.322;
float currentVoltageDivider = 1.33;
float batteryVoltageDivider = 7.16;
float milliVoltPerAmp = 0.045;

float systemVoltage = 0.00;
float systemTemperature = 25.00;
float battery1Voltage = 0.00;
float battery2Voltage = 0.00;
float battery1Current = 0.00;
float battery2Current = 0.00;
float battery1VoltageMin = 15.00;
float battery2VoltageMin = 15.00;
float battery1VoltageMax = 0.00;
float battery2VoltageMax = 0.00;
float battery1CurrentMin = 25.00;
float battery2CurrentMin = 25.00;
float battery1CurrentMax = -25.00;
float battery2CurrentMax = -25.00;
float b1Voltage = 0.00;
float b2Voltage = 0.00;
float b1Current = 0.00;
float b2Current = 0.00;
int maxPWMVal = 255;
int minPWMVal = 0;
int battery1PWMVal = 255;
int battery2PWMVal = 255;
const int freq = 5000;
const int b1PWMChannel = 1;
const int b2PWMChannel = 2;
const int resolution = 8;

char staticTextToDisplay[22] = "";
char minBuffer[] = "-25.00";
char maxBuffer[] = "-25.00";

bool b1Healthy = 1;
bool b2Healthy = 1;
int b1Mode = 0;
int b2Mode = 0;
int l1Mode = 0;
int l2Mode = 0;
int l3Mode = 0;

int pwmValue = 255;
int loopDelay = 500;

int batchEvent = 0;
int OLEDEvent = 0;

int updatesInLoop = 5;

unsigned long previousTime = 0;
byte days;
byte seconds;
byte minutes;
byte hours;

Adafruit_SSD1306 display = Adafruit_SSD1306(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

ADC128D818 adc(0x1D);

BlynkTimer timer0;

void PWMSetup()
{
  // configure LED PWM functionalitites
  ledcSetup(b1PWMChannel, freq, resolution);
  ledcSetup(b2PWMChannel, freq, resolution);

  // attach the channel to the GPIO to be controlled
  ledcAttachPin(b1EnPin, b1PWMChannel);
  ledcAttachPin(b2EnPin, b2PWMChannel);
}

void gpioSetup()
{
  pinMode(buttonPin, INPUT);
  pinMode(sysLED, OUTPUT);
  pinMode(b1EnPin, OUTPUT);
  pinMode(b2EnPin, OUTPUT);
  pinMode(l1EnPin, OUTPUT);
  pinMode(l2EnPin, OUTPUT);
  pinMode(l3EnPin, OUTPUT);
}

void staticText(char *line1, char *line2)
{
  display.clearDisplay();
  display.setTextSize(2);
  display.setTextColor(SSD1306_WHITE);
  display.setCursor(00, 0);
  display.println(F(line1));
  display.println(F(line2));
  display.display();
}

void timeKeeper()
{
  if (millis() >= (previousTime))
  {
    previousTime = previousTime + 1000;
    seconds = seconds + 1;
    if (seconds == 60)
    {
      seconds = 0;
      minutes = minutes + 1;
    }
    if (minutes == 60)
    {
      minutes = 0;
      hours = hours + 1;
    }
    if ((hours == 8) || (hours == 16) || (hours == 24))
    {
      notificationAllowed = true; // only allow one notification per 8 hours
    }
    if (hours == 24)
    {
      hours = 0;
      days = days + 1;
    }
    if (days == 28)
    {
      days = 0;
    }
    Serial.print(days, DEC);
    Serial.print("d");
    Serial.print(":");
    Serial.print(hours, DEC);
    Serial.print("h");
    Serial.print(":");
    Serial.print(minutes, DEC);
    Serial.print("m");
    Serial.print(":");
    Serial.print(seconds, DEC);
    Serial.println("s");
  }
}

void OLEDUpdater()
{
  if (OLEDEvent == 0)
  {
    dtostrf(systemTemperature, 3, 2, staticTextToDisplay);
    staticText("Temp (C):", staticTextToDisplay);
    OLEDEvent++;
  }
  else if (OLEDEvent == 1)
  {
    dtostrf(battery1Voltage, 3, 2, staticTextToDisplay);
    staticText("B1 (V):", staticTextToDisplay);
    OLEDEvent++;
  }
  else if (OLEDEvent == 2)
  {
    dtostrf(battery2Voltage, 3, 2, staticTextToDisplay);
    staticText("B2 (V):", staticTextToDisplay);
    OLEDEvent++;
  }
  else if (OLEDEvent == 3)
  {
    dtostrf(battery1Current, 3, 2, staticTextToDisplay);
    staticText("B1 (A):", staticTextToDisplay);
    OLEDEvent++;
  }
  else if (OLEDEvent == 4)
  {
    dtostrf(battery2Current, 3, 2, staticTextToDisplay);
    staticText("B2 (A):", staticTextToDisplay);
    OLEDEvent = 0;
  }
}

void readFromADC()
{
  for (int i = 0; i < 7; i++)
  {
    if (i == 4)
    {
      systemVoltage = adc.readConverted(i) * systemVoltageDivider;
    }
    if (i == 0)
    {
      battery1Voltage = adc.readConverted(i) * batteryVoltageDivider;
      if (b1Mode == 1)
      {
        b1Healthy = true;
      }
      else
      {
        if (battery1Voltage < 12.4)
        {
          b1Healthy = false;
          if ((notificationsOn) && (notificationAllowed))
          {
            Blynk.notify("Starter Battery Low, TAKE ACTION NOW!!!"); // only one notification globally per 8 hours
            notificationAllowed = false;
          }
        }
        else if (battery1Voltage < 12.7)
        {
          if (debugVoltages)
          {
            Serial.println("B1: AT VOLTAGE CUTOFF");
            Serial.print("B1: < 12.7: ");
            Serial.println(battery1Voltage);
          }
          b1Healthy = false;
        }
        else if (battery1Voltage >= 12.7)
        {
          if (debugVoltages)
          {
            Serial.println("B1: IS HEALTHY!!!, ALL ON!!!");
            Serial.print("B1: => 12.7: ");
            Serial.println(battery1Voltage);
          }
          b1Healthy = true;
          b2Healthy = true;
          digitalWrite(l1EnPin, HIGH);
          digitalWrite(l2EnPin, HIGH);
          digitalWrite(l3EnPin, HIGH);
        }
      }
      if (battery1Voltage < battery1VoltageMin)
      {
        battery1VoltageMin = battery1Voltage;
      }
    }
    if (i == 1)
    {
      battery2Voltage = adc.readConverted(i) * batteryVoltageDivider;
      if (b2Mode == 1)
      {
        b2Healthy = true;
      }
      else
      {
        if (battery2Voltage <= 11.5)
        {
          if ((notificationsOn) && (notificationAllowed))
          {
            Blynk.notify("Auxiliary Battery Flat!!!"); // only one notification globally per 8 hours
            notificationAllowed = false;
          }
          if (debugVoltages)
          {
            Serial.println("B2: FLAT!!!, ALL OFF!!!");
            Serial.print("B2: < 11.5: ");
            Serial.println(b2Voltage);
          }
          if (!b1Mode)
          {
            b1Healthy = false;
          }
          b2Healthy = false;

          if (!l1Mode)
          {
            digitalWrite(l1EnPin, LOW);
          }
          if (!l2Mode)
          {
            digitalWrite(l2EnPin, LOW);
          }
          if (!l3Mode)
          {
            digitalWrite(l3EnPin, LOW);
          }
        }
        else if (battery2Voltage >= 11.8)
        {
          if ((notificationsOn) && (notificationAllowed))
          {
            Blynk.notify("Auxiliary Battery Low!!!"); // only one notification globally per 8 hours
            notificationAllowed = false;
          }
          if (debugVoltages)
          {
            Serial.println("B2: CRITICALLY LOW!, ONLY L1 ON");
            Serial.print("B2: < 11.8: ");
            Serial.println(battery2Voltage);
          }
          if (!b1Mode)
          {
            b1Healthy = false;
          }
          b2Healthy = true;

          digitalWrite(l1EnPin, HIGH);
          if (!l2Mode)
          {
            digitalWrite(l2EnPin, LOW);
          }
          if (!l3Mode)
          {
            digitalWrite(l3EnPin, LOW);
          }
        }
        else if (battery2Voltage < 12.8)
        {
          if (debugVoltages)
          {
            Serial.println("B2: IS HEALTHY, ALL ON!");
            Serial.print("B2: < 12.8: ");
            Serial.println(battery2Voltage);
          }

          if (!b1Mode)
          {
            b1Healthy = false;
          }
          b2Healthy = true;
          digitalWrite(l1EnPin, HIGH);
          digitalWrite(l2EnPin, HIGH);
          digitalWrite(l3EnPin, HIGH);
        }
        else
        {
          if (debugVoltages)
          {
            Serial.println("B2 IS CHARGING, ALL ON!");
          }
          b1Healthy = true;
          b2Healthy = true;
          digitalWrite(l1EnPin, HIGH);
          digitalWrite(l2EnPin, HIGH);
          digitalWrite(l3EnPin, HIGH);
        }
      }
      if (battery2Voltage < battery2VoltageMin)
      {
        battery2VoltageMin = battery2Voltage;
      }
    }
    if (i == 2)
    {
      if (b1Healthy)
      {
        ledcWrite(b1PWMChannel, battery1PWMVal);
      }
      else{
        ledcWrite(b1PWMChannel, minPWMVal);
      }
      battery1Current = (adc.readConverted(i) * currentVoltageDivider - (systemVoltage / 2)) / milliVoltPerAmp;
      if ((battery1Current > battery1CurrentLimit * -1) && (battery1Current < battery1CurrentLimit)) // current can be negative or positive (charging/discharging)
      {
        if (debugPWM)
        {
          Serial.print("B1: Current Normal ");
          Serial.println(battery1Current);
        }
        if (battery1PWMVal < maxPWMVal)
        {
          if (debugPWM)
          {
            Serial.print("B1: PWM Value ");
            Serial.println(battery1PWMVal);
          }
          if (battery1PWMVal < maxPWMVal)
          {
            battery1PWMVal++;
          }
        }
      }
      else if ((battery1Current < battery1CurrentLimit * -1) || (battery1Current > battery1CurrentLimit))
      {
        if (debugPWM)
        {
          Serial.print("B1: Current HIGH ");
          Serial.println(battery1Current);
          Serial.print("B1: PWM Value ");
          Serial.println(battery1PWMVal);
        }
        if (battery1PWMVal > minPWMVal)
        {
          battery1PWMVal--;
        }
      }
    }
    if (i == 3)
    {
      if (b2Healthy)
      {
        ledcWrite(b2PWMChannel, battery2PWMVal);
      }
      else{
        ledcWrite(b2PWMChannel, minPWMVal);
      }
      battery2Current = (adc.readConverted(i) * currentVoltageDivider - (systemVoltage / 2)) / milliVoltPerAmp;
      if ((battery2Current > battery2CurrentLimit * -1) && (battery2Current < battery2CurrentLimit)) // current can be negative or positive (charging/discharging)
      {
        if (battery2PWMVal < maxPWMVal)
        {
          battery2PWMVal++;
        }
      }
      else if ((battery2Current < battery2CurrentLimit * -1) || (battery2Current > battery2CurrentLimit))
      {
        if (battery2PWMVal > minPWMVal)
        {
          battery2PWMVal--;
        }
      }
    }
    // ... and the internal temp sensor
    systemTemperature = adc.readTemperatureConverted();
    if (systemTemperature > maxAllowedBoardTemp)
    {
      Blynk.notify("Isolator Temperature HIGH!!!");
      if (battery1PWMVal > minPWMVal)
      {
        battery1PWMVal -= 3; // ramp B1 current down fast
      }
      if (battery2PWMVal > minPWMVal)
      {
        battery2PWMVal -= 2; // ramp B2 current down less fast
      }
    }
  }
}

void sendDataOverBLE()
{
  if (batchEvent == 0)
  {
    sendBatch0Data();
    batchEvent++;
  }
  else if (batchEvent == 1)
  {
    sendBatch1Data();
    batchEvent = 0;
  }
}

void sendBatch0Data()
{
  if (debugBLE)
  {
    Serial.println("Batch0 firing...");
  }
  Blynk.virtualWrite(V0, battery1Voltage);
  Blynk.virtualWrite(V1, battery2Voltage);
  Blynk.virtualWrite(V2, battery1Current);
  Blynk.virtualWrite(V3, battery2Current);
}

void sendBatch1Data()
{
  if (debugBLE)
  {
    Serial.println("Batch1 firing...");
  }
  dtostrf(battery1VoltageMin, 1, 2, minBuffer);
  dtostrf(battery1VoltageMax, 1, 2, maxBuffer);
  Blynk.virtualWrite(V4, minBuffer, ",", maxBuffer);
  dtostrf(battery2VoltageMin, 1, 2, minBuffer);
  dtostrf(battery2VoltageMax, 1, 2, maxBuffer);
  Blynk.virtualWrite(V5, minBuffer, ",", maxBuffer);
  dtostrf(battery1CurrentMin, 1, 2, minBuffer);
  dtostrf(battery1CurrentMax, 1, 2, maxBuffer);
  Blynk.virtualWrite(V6, minBuffer, ",", maxBuffer);
  dtostrf(battery2CurrentMin, 1, 2, minBuffer);
  dtostrf(battery2CurrentMax, 1, 2, maxBuffer);
  Blynk.virtualWrite(V7, minBuffer, ",", maxBuffer);
}

BLYNK_WRITE(V8) // B1 Overide (starter)
{ 
  if(param.asInt() == 1)
  {
    b1Mode = true;
    if (debugAppCommands)
    {
      Serial.println("b1mode: 1");
    }
  }
  else
  {
    b1Mode = false;
    if (debugAppCommands)
    {
      Serial.println("b1mode: 0");
    }
  }
  
}
BLYNK_WRITE(V9) // B2 Overide (auxiliary)
{
  if(param.asInt() == 1)
  {
    b2Mode = true;
    if (debugAppCommands)
    {
      Serial.println("b2mode: 1");
    }
  }
  else
  {
    b2Mode = false;
    if (debugAppCommands)
    {
      Serial.println("b2mode: 0");
    }
  }
}
BLYNK_WRITE(V10) // L1 Overide (freezer)
{
  if(param.asInt() == 1)
  {
    l1Mode = true;
    if (debugAppCommands)
    {
      Serial.println("l1mode: 1");
    }
  }
  else
  {
    l1Mode = false;
    if (debugAppCommands)
    {
      Serial.println("l1mode: 0");
    }
  }
}
BLYNK_WRITE(V11) // L2 Overide (fridge)
{
  if(param.asInt() == 1)
  {
    l2Mode = true;
    if (debugAppCommands)
    {
      Serial.println("l2mode: 1");
    }
  }
  else
  {
    l2Mode = false;
    if (debugAppCommands)
    {
      Serial.println("l2mode: 0");
    }
  }
}
BLYNK_WRITE(V12) // L3 Overide (lights?)
{
  if(param.asInt() == 1)
  {
    l3Mode = true;
    if (debugAppCommands)
    {
      Serial.println("l3mode: 1");
    }
  }
  else
  {
    l3Mode = false;
    if (debugAppCommands)
    {
      Serial.println("l3mode: 0");
    }
  }
}


void setup()
{
  display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS);
  display.setRotation(2);
  display.clearDisplay();

  staticText("Isolator", version);

  Serial.begin(115200);
  Serial.println("Isolator is running...");

  Blynk.setDeviceName("Isolator_v001");

  gpioSetup(); // setup the GPIOs and directions
  PWMSetup();  // setup the PWM current limiting

  adc.begin();

  Blynk.begin(auth);

  // Setup a function to be called every x seconds
  timer0.setInterval(200L, readFromADC);
  timer0.setInterval(1000L, timeKeeper);
  timer0.setInterval(2000L, OLEDUpdater);
  timer0.setInterval(5000L, sendDataOverBLE);

  digitalWrite(sysLED, 1);
}

void loop()
{
  Blynk.run();
  timer0.run(); // Initiates BlynkTimer
}
