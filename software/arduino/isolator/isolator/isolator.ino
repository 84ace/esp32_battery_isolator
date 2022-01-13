#define BLYNK_USE_DIRECT_CONNECT

/* Comment this out to disable prints and save space */
#define BLYNK_PRINT Serial

#include "Wire.h"
#include "ADC128D818.h"
#include <SPI.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <BlynkSimpleEsp32_BLE.h>
#include <BLEDevice.h>
#include <BLEServer.h>
#include <WiFi.h>
#include <WiFiClient.h>
#include <WebServer.h>
#include <ESPmDNS.h>
#include <Update.h>
#include "OneButton.h"

/* Fill-in your Template ID (only if using Blynk.Cloud) */
//#define BLYNK_TEMPLATE_ID   "YourTemplateID"

#define SCREEN_WIDTH 128    // OLED display width, in pixels
#define SCREEN_HEIGHT 32    // OLED display height, in pixels
#define OLED_RESET 4        // Reset pin # (or -1 if sharing Arduino reset pin)
#define SCREEN_ADDRESS 0x3C ///< See datasheet for Address; 0x3D for 128x64, 0x3C for 128x32

//const char auth[] = "F_vFiDebuoiGhieNf7NrUHF3qbPQSBDX"; // Acea's new token
//const char auth[] = "pX5sSlM-W175Zs_KnO9OHuXQ-55sdPdU"; // Acea's old token
//const char auth[] = "OXJ0Zess1y0CIiUHsOAZgY8n23J2pXoI"; // Warren's new token
const char auth[] = "KkZ2Pvq4-I8aNwZjsOCtiQJzL8I8NYvO"; // Warren's old token

char version[] = "v001";

char sw_version[] = "20211230";
const char *host = "isolator";
const char *ssid = "isolator";
const char *password = "isolator";

bool debugVoltages = false; // ToDo: move this into setup and catch a button press to enable
bool debugBLE = false;
bool debugPWM = true;
bool debugTemp = false;
bool debugAppCommands = false;
bool debugTiming = false;
bool menuDebug = false;
bool notificationsOn = true;
bool notificationAllowed = true;

const int maxAllowedBoardTemp = 84;
float battery1CurrentLimit = 25.00;
float battery2CurrentLimit = 25.00;
int b1CurrentLimited = 0;
int b2CurrentLimited = 0;
int temperatureLimited = 0;
unsigned long startMillis = 0;
unsigned long currentMillis = 0;
unsigned long carStartingTimer = 0;
unsigned b1LoadDebounceTimer = 0;
unsigned b2LoadDebounceTimer = 0;
int carStarting = 0;
String channelName;

#define REVG // board hardware version (written on the back of the PCB)
#ifdef REVG
const int buttonPin = 33; // Mode button
const int sysLED = 23;    // SYS LED (red, 1Hz blink)
const int b1EnPin = 32;   // connection to starter battery (32)
const int b2EnPin = 25;   // connection to auxiliary battery (25)
const int l1EnPin = 14;   // connection to Load 1 (Freezer) (14)
const int l2EnPin = 13;   // connection to Load 2 (Fridge) (13)
const int l3EnPin = 4;    // Connection to Load 3 (Lights) (4)
const int fanEnPin = 16;  // PWM fan in case
// need to write the code for the buzzer
const int buzzerEnPin = 18;  // buzzer on PCB
#endif

int sysLEDState = 0;

float systemVoltageDivider = 1.322;
float currentVoltageDivider = 1.33;
float batteryVoltageDivider = 7.139;
float milliVoltPerAmp = 0.045;

float systemVoltage = 0.00;
float systemTemperature = 25.00;
float battery1Voltage = 13.00;
float battery2Voltage = 13.00;
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
int ioControlLoop = 0;
int b1VSmoother = 0;
int b2VSmoother = 0;
int maxPWMVal = 255; // full range at 50Hz
int minPWMVal = 0;   // full range at 50Hz
int battery1PWMVal = 255;
int battery2PWMVal = 255;
int l1PWMVal = 255;
int l2PWMVal = 255;
int l3PWMVal = 255;
int fanPWMVal = 255;
const int freq = 125; // 400Hz
const int b2PWMChannel = 2;
const int l1PWMChannel = 3;
const int l2PWMChannel = 4;
const int l3PWMChannel = 5;
const int fanPWMChannel = 6;
const int resolution = 8;
bool smallText = false;
bool suspendOLEDUpdates = false;

int l0 = 0;
int l1 = 0;
int l2 = 0;
int l3 = 0;
int l4 = 0;
bool singlePress = false;
bool doublePress = false;
int multiPress = 0;
bool longPress = false;
bool menuMode = false;
bool menuOpen = false;
bool ioMenuMode = false;
bool b1MenuMode = false;
bool b1MenuAuto = false;
bool b2MenuMode = false;
bool l1MenuMode = false;
bool l2MenuMode = false;
bool l3MenuMode = false;
bool b1MenuOn = false;
bool b1MenuOff = false;
bool limitsMenuMode = false;
bool uploadMenuMode = false;

char staticTextToDisplay[22] = "";
char minBuffer[] = "-25.00";
char maxBuffer[] = "-25.00";

bool b1Healthy = 1;
bool b2Healthy = 1;
bool l1Healthy = 1;
bool l2Healthy = 1;
bool l3Healthy = 1;

int b1ForcedOn = 0;
int b2ForcedOn = 0;
int l1ForcedOn = 0;
int l2ForcedOn = 0;
int l3ForcedOff = 0;

int batchEvent = 0;
int OLEDEvent = 0;
int connectedToBlynk = 0;
extern bool appState;

int updatesInLoop = 5;

unsigned long previousTime = 0;
int days = 0;
int seconds = 0;
int minutes = 0;
int hours = 0;

WebServer server(80);

Adafruit_SSD1306 display = Adafruit_SSD1306(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

ADC128D818 adc(0x1D);

BlynkTimer timer0;

OneButton button(buttonPin, true);

// save the millis when a button press has started.
unsigned long pressStartTime;

ICACHE_RAM_ATTR void checkTicks()
{
  // include all buttons here to be checked
  button.tick(); // just call tick() to check the state.
}

const char *serverIndex =
    "<p>Please upload a .bin file to upgrade your isolator.<p><p>Wait at least 60 seconds before freaking out, you will see the OLED start cycling again when it is done.<p><form method='POST' action='/update' enctype='multipart/form-data'><input type='file' name='update'><input type='submit' value='Update'></form>";

void PWMSetup()
{
  // configure LED PWM functionalitites
  ledcSetup(b2PWMChannel, freq, resolution);
  ledcSetup(l1PWMChannel, freq, resolution);
  ledcSetup(l2PWMChannel, freq, resolution);
  ledcSetup(l3PWMChannel, freq, resolution);
  ledcSetup(fanPWMChannel, freq, resolution);

  // attach the channel to the GPIO to be controlled
  ledcAttachPin(b2EnPin, b2PWMChannel);
  ledcAttachPin(l1EnPin, l1PWMChannel);
  ledcAttachPin(l2EnPin, l2PWMChannel);
  ledcAttachPin(l3EnPin, l3PWMChannel);
  ledcAttachPin(fanEnPin, fanPWMChannel);
}

void gpioSetup()
{
  pinMode(buttonPin, INPUT_PULLUP);
  pinMode(sysLED, OUTPUT);
  pinMode(b1EnPin, OUTPUT);
}

// this function will be called when the button was pressed 1 time only.
void singleClick()
{
  Serial.println("singleClick() detected.");
  singlePress = true;
  menuNavigator();
} // singleClick

// this function will be called when the button was pressed 2 times in a short timeframe.
void doubleClick()
{
  Serial.println("doubleClick() detected.");
  doublePress = true;
  menuNavigator();
} // doubleClick

// this function will be called when the button was pressed multiple times in a short timeframe.
void multiClick()
{
  Serial.print("multiClick(");
  Serial.print(button.getNumberClicks());
  Serial.println(") detected.");
  menuNavigator();
} // multiClick

// this function will be called when the button was held down for 1 second or more.
void pressStart()
{
  Serial.println("pressStart()");
  pressStartTime = millis() - 1000; // as set in setPressTicks()
} // pressStart()

// this function will be called when the button was released after a long hold.
void pressStop()
{
  Serial.print("longPress(");
  Serial.print(millis() - pressStartTime);
  Serial.println(") detected.");
  longPress = true;
  menuNavigator();
} // pressStop()

void staticText(char *line1, char *line2, char *line3 = "", char *line4 = "")
{
  display.clearDisplay();
  if (!smallText)
  {
    display.setTextSize(2);
  }
  else
  {
    display.setTextSize(1);
  }
  display.setTextColor(SSD1306_WHITE);
  display.setCursor(00, 0);
  display.println(F(line1));
  display.println(F(line2));
  display.println(F(line3));
  display.println(F(line4));
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
      b1LoadDebounceTimer = 0;
      b2LoadDebounceTimer = 0;
      if (debugPWM)
      {
        Serial.print("Seconds =60, debouncing to 0: ");
        Serial.println(b1LoadDebounceTimer);
      }
      ioControlLoop++;
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
      resetDailyCounters();
    }
    if (days == 28)
    {
      days = 0;
    }
    if (debugTiming)
    {
      Serial.print(days);
      Serial.print("d");
      Serial.print(hours);
      Serial.print("h");
      Serial.print(minutes);
      Serial.print("m");
      Serial.print(seconds);
      Serial.println("s");
    }
  }
  digitalWrite(sysLED, sysLEDState);
  sysLEDState = !sysLEDState;
}

void OLEDUpdater()
{
  if (!suspendOLEDUpdates)
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
      OLEDEvent++;
    }
    else if (OLEDEvent == 5)
    {
      char SingleInt[21] = "00000000";
      char uptime[21] = "";
      char systemV[19] = "";
      char systemVText[19] = "";
      smallText = true;
      //memset(uptime,0,sizeof(uptime)); // ensure it's empty, probably redundant
      strcat(uptime, "Uptime: ");
      itoa(days, SingleInt, 10);
      strcat(uptime, SingleInt);
      strcat(uptime, "d");
      itoa(hours, SingleInt, 10);
      strcat(uptime, SingleInt);
      strcat(uptime, "h");
      itoa(minutes, SingleInt, 10);
      strcat(uptime, SingleInt);
      strcat(uptime, "m");
      itoa(seconds, SingleInt, 10);
      strcat(uptime, SingleInt);
      strcat(uptime, "s");

      strcat(systemV, "Sys Voltage:");
      dtostrf(systemVoltage, 6, 2, systemVText);
      strcat(systemV, systemVText);

      staticText("DEBUG:", uptime, systemV);
      smallText = false;
      OLEDEvent = 0;
    }
  }
}

void resetDailyCounters() 
{
  Serial.println("RESETTING DAILY COUNTERS");
  battery1VoltageMin = battery1VoltageMax;
  battery2VoltageMin = battery2VoltageMax;
  battery1VoltageMax = battery1VoltageMin;
  battery2VoltageMax = battery2VoltageMin;
  battery1CurrentMin = battery1CurrentMax;
  battery2CurrentMin = battery2CurrentMax;
  battery1CurrentMax = battery1CurrentMin;
  battery2CurrentMax = battery2CurrentMin;
}

void adjustCurrentFlow()
{
  // B1 current limiting
  if ((battery1Current > -battery1CurrentLimit) && (battery1Current < battery1CurrentLimit)) // current within limits
  {
    if (b1Healthy)
    {  
      if (battery1PWMVal < 255)
      {
        currentMillis = millis();
        if ((battery1PWMVal == 0) && (currentMillis - startMillis >= 15000))
        {
          battery1PWMVal++;
          Serial.println("B1: CURRENT LOWER LIMIT APPLIED FOR THE NEXT 15 SECONDS");
          startMillis = currentMillis;
        }
        else if (battery1PWMVal > 0)
        {
          battery1PWMVal++;
          Serial.println("B1: CURRENT INCREASING TO MANAGE LOAD");
        }
      }
      else
      {
        Serial.println("B1: CURRENT INCREASED TO MAXIMUM");
      }
      if (battery2PWMVal == 155)
      {
        b1CurrentLimited = 0;
      }
    }
    else
    {
      battery1PWMVal = minPWMVal;
      Serial.println("B1: UNHEALTHY - SETTING PWM TO MINIMUM");
    }
  }
  else
  {
    b1CurrentLimited = 1;
    if (battery1PWMVal > 0)
    {
      battery1PWMVal--;
      Serial.println("B1: CURRENT REDUCING TO MANAGE LOAD");
    }
    else
    {
      Serial.println("B1: CURRENT DECREASED TO MINIMUM");
    }
    if (notificationAllowed)
    {
      Blynk.notify("ISOLATOR: CURRENT HIGH!!!");
      notificationAllowed = false;
    }
  }
  //pwmControl(b1PWMChannel, battery1PWMVal, "B1 CURRENT LIMITING PWM"); // disconnect

  /*
  // B2 current limiting
  if ((battery2Current > -battery2CurrentLimit) && (battery2Current < battery2CurrentLimit)) // current within limits
  {
    if (b2Healthy)
    {  
      if (battery2PWMVal < 255)
      {
        currentMillis = millis();
        if ((battery2PWMVal == 0) && (currentMillis - startMillis >= 15000))
        {
          battery2PWMVal++;
          Serial.println("B2: CURRENT LOWER LIMIT APPLIED FOR THE NEXT 15 SECONDS");
          startMillis = currentMillis;
        }
        else if (battery2PWMVal > 0)
        {
          battery2PWMVal++;
          Serial.println("B2: CURRENT INCREASING TO MANAGE LOAD");
        }
      }
      else
      {
        Serial.println("B2: CURRENT INCREASED TO MAXIMUM");
      }
      if (battery2PWMVal == 255)
      {
        b2CurrentLimited = 0;
      }
    }
    else
    {
      battery2PWMVal = minPWMVal;
      Serial.println("B2: UNHEALTHY - SETTING PWM TO MINIMUM");
    }
  }
  else
  {
    b2CurrentLimited = 1;
    if (battery2PWMVal > 0)
    {
      battery2PWMVal--;
      Serial.println("B2: CURRENT REDUCING TO MANAGE LOAD");
    }
    else
    {
      Serial.println("B2: CURRENT DECREASED TO MINIMUM");
    }
    if (notificationAllowed)
    {
      Blynk.notify("ISOLATOR: CURRENT HIGH!!!");
      notificationAllowed = false;
    }
  }
  pwmControl(b2PWMChannel, battery2PWMVal, "B2 CURRENT LIMITING PWM"); // disconnect
  */
}

void adjustFan()
{
  if (systemTemperature > maxAllowedBoardTemp * .75)
  {
    temperatureLimited = 0;
    if (fanPWMVal < maxPWMVal)
    {
      fanPWMVal += 1; // ramp up fan speed
      if (debugPWM)
      {
        Serial.print("FAN: SPEED INCREASING - TEMP APPROACHING LIMIT - PWM value: ");
        Serial.println(fanPWMVal);
      }
    }
  }
  /*else if (systemTemperature > maxAllowedBoardTemp)
  {
    temperatureLimited = 1;
    if (notificationAllowed)
    {
      Blynk.notify("ISOLATOR: PCB TEMPERATURE HIGH!!!");
      notificationAllowed = false;
    }
    if (fanPWMVal < maxPWMVal)
    {
      fanPWMVal += 1; // ramp up fan speed
      if (debugPWM)
      {
        Serial.print("FAN: SPEED INCREASING - TEMP ABOVE LIMIT - PWM value: ");
        Serial.println(fanPWMVal);
      }
    }
    if (battery1PWMVal > minPWMVal)
    {
      battery1PWMVal -= 10; // ramp B1 current down fast
      if (debugPWM)
      {
        Serial.print("B1: Current being reduced, PCB OVERTEMP - PWM value: ");
        Serial.println(battery1PWMVal);
      }
    }
  }
  */
  else
  {
    temperatureLimited = 0;
    if (fanPWMVal > minPWMVal)
    {
      fanPWMVal -= 1; // ramp down fan speed
      if (debugPWM)
      {
        Serial.print("FAN: SPEED REDUCING - TEMP GOOD - PWM Value ");
        Serial.println(fanPWMVal);
      }
    }
    /*
    if (battery1PWMVal < maxPWMVal)
    {
      battery1PWMVal += 1; // ramp B1 current up slow
      if (debugPWM)
      {
        Serial.print("B1: Current being increased, after PCB overtemp, PWM value: ");
        Serial.println(battery1PWMVal);
      }
    }
    */
  }
  if (debugTemp)
  {
    Serial.print("PCB Temp (C): ");
    Serial.println(systemTemperature);
  }
  // set the actual fan speed
  ledcWrite(fanPWMChannel, fanPWMVal);
  // limit B1 current
  //ledcWrite(b1PWMChannel, battery1PWMVal);
}

void updateLimits()
{
  if (battery1Voltage < battery1VoltageMin)
  {
    battery1VoltageMin = battery1Voltage;
  }
  else if (battery1Voltage > battery1VoltageMax)
  {
    battery1VoltageMax = battery1Voltage;
  }
  if (battery2Voltage < battery2VoltageMin)
  {
    battery2VoltageMin = battery2Voltage;
  }
  else if (battery2Voltage > battery2VoltageMax)
  {
    battery2VoltageMax = battery2Voltage;
  }
  if (battery1Current < battery1CurrentMin)
  {
    battery1CurrentMin = battery1Current;
  }
  else if (battery1Current > battery1CurrentMax)
  {
    battery1CurrentMax = battery1Current;
  }
  if (battery2Current < battery2CurrentMin)
  {
    battery2CurrentMin = battery2Current;
  }
  else if (battery2Current > battery2CurrentMax)
  {
    battery2CurrentMax = battery2Current;
  }
}

void pwmControl(int channel, int value, String from)
{
  ledcWrite(channel, value);
  if (channel == 1)
  {
    channelName = "B1";
  }
  else if (channel == 2)
  {
    channelName = "B2";
  }
  else if (channel == 3)
  {
    channelName = "L1";
  }
  else if (channel == 4)
  {
    channelName = "L2";
  }
  else if (channel == 5)
  {
    channelName = "L3";
  }

  if ((debugPWM) && (value > 1))
  {
    Serial.print(channelName);
    Serial.print(" ON ");
    Serial.print(value);
    Serial.print(" ");
    Serial.println(from);
  }
  else if ((debugPWM) && (value <= 1))
  {
    Serial.print(channelName);
    Serial.print(" OFF ");
    Serial.print(value);
    Serial.print(" ");
    Serial.println(from);
  }
}

void ioControl()
{
  if (battery1Voltage <= 5.0) // B1 not connected, may as well try and act like an isolator
  {
    //pwmControl(b1PWMChannel, minPWMVal, "B1 < 11.3 - OFF"); // disconnected
    digitalWrite(b1EnPin, LOW);
    carStarting = 0;
    if (debugPWM)
      {
        Serial.println("B1 < 5V");
      }
  }
  else if (battery1Voltage <= 11.3) // car is cranking over
  {
    if (carStartingTimer <401)
    {
      carStartingTimer++;
    }
    if (debugPWM)
      {
        Serial.println("B1 < 11.3V");
      }
    if (carStartingTimer > 400) // give up after 20 seconds, must be a battery issue
    {
      carStarting = 0;
      carStartingTimer = 0;
      if (debugPWM)
      {
        Serial.println("CarStartingTimer Timed out > 400");
      }
      if (notificationAllowed)
      {
        Blynk.notify("ISOLATOR: B1 DISCONNECTED?");
        notificationAllowed = false;
      }
    }
    else if (carStartingTimer == 0)
    {
      if (debugPWM)
      {
        Serial.println("CarStartTimer was 0: ");
      }
      carStarting = 1;
      //pwmControl(b1PWMChannel, minPWMVal, "CAR STARTING - B1 OFF"); // disconnected
      digitalWrite(b1EnPin, LOW);
      pwmControl(b2PWMChannel, minPWMVal, "CAR STARTING - B2 OFF"); // disconnected
    }
    
    if (carStartingTimer > 0)
    {
      if (debugPWM)
      {
        Serial.print("CarStartTimer was not 0 and not >400: ");
        Serial.println(fanPWMVal);
      }
      Serial.print("carStartingTimer");
      Serial.println(carStartingTimer);
    }
  }
  else if (battery1Voltage <= 12.7) // normal state
  {
    carStarting++;
    carStartingTimer = 0;
    //pwmControl(b1PWMChannel, minPWMVal, "B1 < 12.7 - OFF"); // disconnected
    digitalWrite(b1EnPin, LOW);
  }
  else // all fine here, nothing to see
  {
    Serial.println("B1 > 12.7");
    Serial.print("b1loaddebouncetimer: ");
    Serial.println(b1LoadDebounceTimer);
    Serial.print("carStarting: ");
    Serial.println(carStarting);
    Serial.print("carStartingTimer: ");
    Serial.println(carStartingTimer);
    carStarting = 0;
    carStartingTimer = 0;
    if (b1LoadDebounceTimer == 0)
    {
      //pwmControl(b1PWMChannel, maxPWMVal, "B1 > 12.7 - ON"); // connected
      digitalWrite(b1EnPin, HIGH);
      pwmControl(b2PWMChannel, maxPWMVal, "B1 > 12.7 - ON"); // connect
      Serial.print("B2 ENABLED BY B1");
      b1LoadDebounceTimer = 1;
    }
  }


  if (battery2Voltage <= 11.50) //
  {
    if (notificationAllowed)
    {
      Blynk.notify("ISOLATOR: B2 FLAT, TAKE ACTION!!!");
      notificationAllowed = false;
    }
    b2Healthy = 0;
    // B1 control
    if (b1ForcedOn) // if forced on, be on
    {
      //pwmControl(b1PWMChannel, maxPWMVal, "B2 < 11.5 - FORCED ON IN APP"); // connect
      digitalWrite(b1EnPin, HIGH);
    }
    else // if not forced on, be off
    {
      //pwmControl(b1PWMChannel, minPWMVal, "B2 < 11.5 - OFF"); // disconnect
      pwmControl(b2PWMChannel, minPWMVal, "B2 < 11.5 - OFF"); // disconnect
      digitalWrite(b1EnPin, LOW);
    }
    //B2 Control
    if (b2ForcedOn) // if forced on, be on
    {
      pwmControl(b2PWMChannel, maxPWMVal, "B2 < 11.5 - FORCED ON IN APP"); // connect
    }
    else // if not forced on, be off
    {
      pwmControl(b2PWMChannel, minPWMVal, "B2 < 11.5 - OFF"); // disconnect
    }
    //L1 Control
    if (l1ForcedOn) // if forced on, be on
    {
      pwmControl(l1PWMChannel, maxPWMVal,"B2 < 11.5 - FORCED ON IN APP"); // connect
    }
    else // if not forced on, be off
    {
      pwmControl(l1PWMChannel, minPWMVal, "B2 < 11.5 - OFF"); // disconnect
    }
    //L2 Control
    if (l2ForcedOn) // if forced on, be on
    {
      pwmControl(l2PWMChannel, maxPWMVal, "B2 < 11.5 - FORCED ON IN APP"); // connect
    }
    else // if not forced on, be off
    {
      if (b2LoadDebounceTimer == 0)
      {
        pwmControl(l2PWMChannel, minPWMVal, "B2 < 11.5 - OFF"); // disconnect
        b2LoadDebounceTimer = 1;
      }
    }
    //l3 Control
    pwmControl(l3PWMChannel, minPWMVal,"B2 < 11.5 - OFF"); // disconnect (app is force off, so no need to check)
  } 
  else if ((battery2Voltage > 11.50) && (battery2Voltage < 12.7) && (!carStarting) && (!b2CurrentLimited)) // B1 voltage high or B2 voltage normal (normal run mode)
  {
    carStarting = 0;
    if (debugPWM)
      {
        Serial.println("B2 > 11.5");
      }
    b2Healthy = 1;
    //B2 Control
    if (b2LoadDebounceTimer == 0)
    {
      if (battery1Voltage > 12.7)
      {
        pwmControl(b2PWMChannel, maxPWMVal, "B2 >= 11.5 && < 12.7 - on"); // connect
      }
      else
      {
       pwmControl(b2PWMChannel, minPWMVal, "B2 >= 11.5 && < 12.7 - OFF"); // disconnect
      }
       //L1 Control
      pwmControl(l1PWMChannel, maxPWMVal, "B2 >= 11.5 && < 12.7 - ON"); // connect
      //L2 Control
      pwmControl(l2PWMChannel, maxPWMVal, "B2 >= 11.5 && < 12.7 - ON"); // connect
      b2LoadDebounceTimer = 1;
    }
    //l3 Control
    if (l3ForcedOff)
    {
      pwmControl(l3PWMChannel, minPWMVal, "B2 >= 11.5 && < 12.7 - FORCED OFF IN APP"); // disconnect
    }
    else
    {
      pwmControl(l3PWMChannel, maxPWMVal, "B2 >= 11.5 && < 12.7 - ON"); // connect
    }
  }
  else if (((battery2Voltage > 12.70) || (battery1Voltage > 12.70)) && (!carStarting) && (!b1CurrentLimited) && (!b2CurrentLimited)) // B1 charging
  {
    carStarting = 0;
    if (debugPWM)
      {
        Serial.println("B1 || B2 > 12.7V");
      }
    b1Healthy = 1;
    b2Healthy = 1;
    // B1 control
    if (!b1ForcedOn) // if not forced on
    {
      if (ioControlLoop > 61) // reset back to normal after 2 seconds of checking B1 voltage while B1 disconnected
      {
        ioControlLoop = 0; // reset int
      }
      else if (ioControlLoop > 59) // disconnect b1 every minute and check its voltage
      {
        if (debugPWM)
        {
          Serial.println("B1 DICONNECTING FOR VOLTAGE CHECK");
        }
        //pwmControl(b1PWMChannel, minPWMVal, "B1 || B2 > 12.7 - OFF TO CHECK"); // disconnect
        digitalWrite(b1EnPin, LOW);
        pwmControl(b2PWMChannel, minPWMVal, "B1 || B2 > 12.7 - OFF TO CHECK"); // disconnect
      }
      else // normal operation
      {
        if (b2LoadDebounceTimer == 0)
        {
          //pwmControl(b1PWMChannel, maxPWMVal, "B1 || B2 > 12.7 - ON"); // connect
          digitalWrite(b1EnPin, HIGH);
          pwmControl(b2PWMChannel, maxPWMVal, "B1 || B2 > 12.7 - ON"); // connect
          //L1 Control
          pwmControl(l1PWMChannel, maxPWMVal, "B1 || B2 > 12.7 - ON"); // connect
          //L2 Control
          pwmControl(l2PWMChannel, maxPWMVal, "B1 || B2 > 12.7 - ON"); // connect
          b2LoadDebounceTimer = 1;
        }
        //l3 Control
        if (l3ForcedOff)
        {
          pwmControl(l3PWMChannel, minPWMVal, "B1 || B2 > 12.7 - FORCED OFF IN APP"); // disconnect
        }
        else
        {
          pwmControl(l3PWMChannel, maxPWMVal, "B1 || B2 > 12.7 - ON"); // connect
        }
      }
    }
    else // if forced on
    {
      pwmControl(b2PWMChannel, maxPWMVal, "B1 || B2 > 12.7 - FORCED ON"); // connect
      digitalWrite(b1EnPin, HIGH);
    }
  }
  // check current is within limits
  //adjustCurrentFlow();
  // update min/max values for voltage and current
  updateLimits();
  // adjust fn speed based on temp
  adjustFan();
}

void readFromADC()
{
  for (int i = 0; i < 7; i++)
  {
    if (i == 0) // B1 voltage
    {
      battery1Voltage = adc.readConverted(i) * batteryVoltageDivider;
    }
    if (i == 1) // B2 voltage
    {
      battery2Voltage = adc.readConverted(i) * batteryVoltageDivider;
    }
    if (i == 2) // B1 current
    {
      battery1Current = (adc.readConverted(i) * currentVoltageDivider - (systemVoltage / 2)) / milliVoltPerAmp;
    }
    if (i == 3) // B2 current
    {
      battery2Current = (adc.readConverted(i) * currentVoltageDivider - (systemVoltage / 2)) / milliVoltPerAmp;
    }
    if (i == 4) // system voltage
    {
      systemVoltage = adc.readConverted(i) * systemVoltageDivider;
    }
    // ... and the internal temp sensor, frequently
    systemTemperature = adc.readTemperatureConverted();
  }
  if (millis() > 3000) // don't update anything until after the ADC settles on reboot
  {
    ioControl(); // act on the ADC values and control IO
    Serial.print("B1 Voltage ");
    Serial.print(battery1Voltage);
    Serial.print(" B1 Current ");
    Serial.print(battery1Current);
    Serial.print(" B2 Voltage ");
    Serial.print(battery2Voltage);
    Serial.print(" B2 Current ");
    Serial.println(battery2Current);
    Serial.println(" ");
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
    Serial.println("Batch0 BLE firing...");
  }
  Blynk.virtualWrite(V0, battery1Voltage);
  Blynk.virtualWrite(V1, battery2Voltage);
  Blynk.virtualWrite(V2, battery1Current);
  Blynk.virtualWrite(V3, battery2Current);
  Blynk.virtualWrite(V13, systemTemperature);
}

void sendBatch1Data()
{
  if (debugBLE)
  {
    Serial.println("Batch1 BLE firing...");
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

void startWifi()
{
  WiFi.softAP(ssid, password);
  Serial.println();
  Serial.print("software version: ");
  Serial.println(sw_version);
  Serial.print("host: ");
  Serial.println(host);
  Serial.print("ssid: ");
  Serial.println(ssid);
  Serial.print("password: ");
  Serial.println(password);
  IPAddress IP = WiFi.softAPIP();
  Serial.print("url: http://");
  Serial.println(IP);

  /*use mdns for host name resolution*/
  if (!MDNS.begin(host))
  { //http://isolator.local
    Serial.println("Error setting up MDNS responder!");
    while (1)
    {
      delay(1000);
    }
  }
  Serial.println("mDNS responder started");

  /*return index page which is stored in serverIndex */
  server.on("/", HTTP_GET, []()
            {
              Serial.println("server.on(/)");
              server.sendHeader("Connection", "close");
              server.send(200, "text/html", serverIndex);
            });
  server.on("/serverIndex", HTTP_GET, []()
            {
              Serial.println("server.on(/serverIndex)");
              server.sendHeader("Connection", "close");
              server.send(200, "text/html", serverIndex);
            });
  /*handling uploading firmware file */
  server.on(
      "/update", HTTP_POST, []()
      {
        Serial.println("server.on(/update)");
        server.sendHeader("Connection", "close");
        server.send(200, "text/plain", (Update.hasError()) ? "FAIL" : "OK");
        ESP.restart();
      },
      []()
      {
        HTTPUpload &upload = server.upload();
        if (upload.status == UPLOAD_FILE_START)
        {
          Serial.printf("Update: %s\n", upload.filename.c_str());
          if (!Update.begin(UPDATE_SIZE_UNKNOWN))
          { //start with max available size
            Update.printError(Serial);
          }
        }
        else if (upload.status == UPLOAD_FILE_WRITE)
        {
          /* flashing firmware to ESP*/
          if (Update.write(upload.buf, upload.currentSize) != upload.currentSize)
          {
            Update.printError(Serial);
          }
        }
        else if (upload.status == UPLOAD_FILE_END)
        {
          if (Update.end(true))
          { //true to set the size to the current progress
            Serial.printf("Update Success: %u\nRebooting...\n", upload.totalSize);
          }
          else
          {
            Update.printError(Serial);
          }
        }
      });
  server.begin();
}

void menuNavigator()
{
  suspendOLEDUpdates = true; // only display the menu on the OLED
  if (menuDebug)
  {
    Serial.print("l0: ");
    Serial.println(l0);
    Serial.print("l1: ");
    Serial.println(l1);
    Serial.print("l2: ");
    Serial.println(l2);
    Serial.print("l3: ");
    Serial.println(l3);
    Serial.print("l4: ");
    Serial.println(l4);
  }

  // l0 modes
  if ((singlePress && l0 == 0) || (singlePress && l1 == 10))
  {
    if (menuDebug)
    {
      Serial.println("entered SETTINGS MENU");
    }
    staticText("SETTINGS", "MENU");
    singlePress = false;
    l0 = 1;
    l1 = 0;
    l2 = 0;
    l3 = 0;
  }

  // l1 modes
  if (doublePress && l0 == 1 && l1 == 0) //set menuMode back to 0 when exiting menu
  {
    if (menuDebug)
    {
      Serial.println("IO MODE");
    }
    doublePress = false;
    singlePress = false;
    staticText("IO", "MODE");
    l1 = 1;
  }
  if (singlePress && l1 == 1 && l2 == 0)
  {
    if (menuDebug)
    {
      Serial.println("LIMITS MODE");
    }
    singlePress = false;
    staticText("LIMITS", "MODE");
    l1 = 2;
  }
  if (singlePress && l1 == 2 && l2 == 0)
  {
    if (menuDebug)
    {
      Serial.println("WIFI .BIN UPLOAD");
    }
    singlePress = false;
    staticText("WIFI .BIN", "UPLOAD");
    l1 = 3;
  }

  if (longPress && l1 == 3 && l2 == 0)
  {
    if (menuDebug)
    {
      Serial.println("BACK");
    }
    longPress = false;
    singlePress = true;
    staticText("BACK", "");
    l1 = 10;
    l2 = 0;
  }

  // B1 modes
  if (doublePress && l1 == 1 && l2 == 0 && l3 == 0)
  {
    if (menuDebug)
    {
      Serial.println("B1 MODE");
    }
    doublePress = false;
    staticText("B1", "MODE");
    l2 = 1;
    l3 = 0;
  }
  if (doublePress && l1 == 1 && l2 == 1 && l3 == 0)
  {
    if (menuDebug)
    {
      Serial.println("B1 AUTO");
    }
    doublePress = false;
    staticText("B1", "AUTO");
    l3 = 1;
  }
  if (doublePress && l1 == 1 && l2 == 1 && l3 == 1)
  {
    if (menuDebug)
    {
      Serial.println("B1 AUTO SELECTED");
    }
    doublePress = false;
    staticText("AUTO", "SELECTED");
    l1 = 10;

    // do stuff here to put B1 in auto mode
    // must long click to go back
  }
  if (singlePress && l1 == 1 && l2 == 1 && l3 == 1)
  {
    if (menuDebug)
    {
      Serial.println("B1 ON");
    }
    singlePress = false;
    staticText("B1", "ON");
    l3 = 2;
  }
  if (doublePress && l1 == 1 && l2 == 1 && l3 == 2)
  {
    if (menuDebug)
    {
      Serial.println("B1 ON SELECTED");
    }
    doublePress = false;
    staticText("ON", "SELECTED");
    l1 = 10;

    // do stuff here to put B1 in on mode
    // must long click to go back
  }
  if (singlePress && l1 == 1 && l2 == 1 && l3 == 2)
  {
    if (menuDebug)
    {
      Serial.println("B1 OFF");
    }
    singlePress = false;
    staticText("B1", "OFF");
    l3 = 3;
  }
  if (doublePress && l1 == 1 && l2 == 1 && l3 == 3)
  {
    if (menuDebug)
    {
      Serial.println("B1 OFF SELECTED");
    }
    doublePress = false;
    staticText("OFF", "SELECTED");

    // do stuff here to put B1 in off mode
    // must long click to go back
  }
  if (longPress && l2 == 1 && l3 == 3)
  {
    if (menuDebug)
    {
      Serial.println("BACK");
    }
    singlePress = true;
    longPress = false;
    staticText("BACK", "");
    l1 = 10;
  }

  // B2 modes
  if (singlePress && l1 == 1 && l2 == 1 && l3 == 0)
  {
    if (menuDebug)
    {
      Serial.println("B2 MODE");
    }
    singlePress = false;
    staticText("B2", "MODE");
    l2 = 2;
  }
  if (doublePress && l1 == 1 && l2 == 2 && l3 == 0)
  {
    if (menuDebug)
    {
      Serial.println("B2 AUTO");
    }
    doublePress = false;
    staticText("B2", "AUTO");
    l3 = 1;
  }
  if (doublePress && l1 == 1 && l2 == 2 && l3 == 1)
  {
    if (menuDebug)
    {
      Serial.println("B2 AUTO SELECTED");
    }
    doublePress = false;
    staticText("AUTO", "SELECTED");
    l1 = 10;

    // do stuff here to put B2 in auto mode
    // must long click to go back
  }
  if (singlePress && l1 == 1 && l2 == 2 && l3 == 1)
  {
    if (menuDebug)
    {
      Serial.println("B2 ON");
    }
    singlePress = false;
    staticText("B2", "ON");
    l3 = 2;
  }
  if (doublePress && l1 == 1 && l2 == 2 && l3 == 2)
  {
    if (menuDebug)
    {
      Serial.println("B2 ON SELECTED");
    }
    singlePress = false;
    staticText("ON", "SELECTED");
    l1 = 10;

    // do stuff here to put B2 in on mode
    // must long click to go back
  }
  if (singlePress && l1 == 1 && l2 == 2 && l3 == 2)
  {
    if (menuDebug)
    {
      Serial.println("B2 OFF");
    }
    singlePress = false;
    staticText("B2", "OFF");
    l3 = 3;
  }
  if (doublePress && l1 == 1 && l2 == 2 && l3 == 2)
  {
    if (menuDebug)
    {
      Serial.println("B2 OFF SELECTED");
    }
    doublePress = false;
    staticText("OFF", "SELECTED");

    // do stuff here to put B2 in off mode
    // must long click to go back
  }
  if (longPress && l1 == 1 && l2 == 2 && l3 == 3)
  {
    if (menuDebug)
    {
      Serial.println("BACK");
    }
    singlePress = true;
    longPress = false;
    staticText("BACK", "");
    l1 = 10;
  }

  // L1 modes
  if (singlePress && l1 == 1 && l2 == 2 && l3 == 0)
  {
    if (menuDebug)
    {
      Serial.println("L1 MODE");
    }
    singlePress = false;
    staticText("L1", "MODE");
    l2 = 3;
  }
  if (doublePress && l1 == 1 && l2 == 3 && l3 == 0)
  {
    if (menuDebug)
    {
      Serial.println("L1 AUTO");
    }
    doublePress = false;
    staticText("L1", "AUTO");
    l3 = 1;
  }
  if (doublePress && l1 == 1 && l2 == 3 && l3 == 1)
  {
    if (menuDebug)
    {
      Serial.println("L1 AUTO SELECTED");
    }
    doublePress = false;
    staticText("AUTO", "SELECTED");
    l1 = 10;

    // do stuff here to put L1 in auto mode
    // must long click to go back
  }
  if (singlePress && l1 == 1 && l2 == 3 && l3 == 1)
  {
    if (menuDebug)
    {
      Serial.println("L1 ON");
    }
    singlePress = false;
    staticText("L1", "ON");
    l3 = 2;
  }
  if (doublePress && l1 == 1 && l2 == 3 && l3 == 2)
  {
    if (menuDebug)
    {
      Serial.println("L1 ON SELECTED");
    }
    doublePress = false;
    staticText("ON", "SELECTED");
    l1 = 10;

    // do stuff here to put L1 in on mode
    // must long click to go back
  }
  if (singlePress && l1 == 1 && l2 == 3 && l3 == 2)
  {
    if (menuDebug)
    {
      Serial.println("L1 OFF");
    }
    singlePress = false;
    staticText("L1", "OFF");
    l3 = 3;
  }
  if (doublePress && l1 == 1 && l2 == 3 && l3 == 3)
  {
    if (menuDebug)
    {
      Serial.println("L1 OFF SELECTED");
    }
    doublePress = false;
    staticText("OFF", "SELECTED");

    // do stuff here to put L1 in off mode
    // must long click to go back
  }
  if (longPress && l1 == 1 && l2 == 3 && l3 == 3)
  {
    if (menuDebug)
    {
      Serial.println("BACK");
    }
    singlePress = true;
    longPress = false;
    staticText("BACK", "");
    l1 = 10;
  }

  // l2 modes
  if (singlePress && l1 == 1 && l2 == 3 && l3 == 0)
  {
    if (menuDebug)
    {
      Serial.println("L2 MODE");
    }
    singlePress = false;
    staticText("L2", "MODE");
    l2 = 4;
  }
  if (doublePress && l1 == 1 && l2 == 4 && l3 == 0)
  {
    if (menuDebug)
    {
      Serial.println("L2 AUTO");
    }
    doublePress = false;
    staticText("L2", "AUTO");
    l3 = 1;
  }
  if (doublePress && l1 == 1 && l2 == 4 && l3 == 1)
  {
    if (menuDebug)
    {
      Serial.println("L2 AUTO SELECTED");
    }
    doublePress = false;
    staticText("AUTO", "SELECTED");
    l1 = 10;

    // do stuff here to put L1 in auto mode
    // must long click to go back
  }
  if (singlePress && l1 == 1 && l2 == 4 && l3 == 1)
  {
    if (menuDebug)
    {
      Serial.println("L2 ON");
    }
    singlePress = false;
    staticText("L2", "ON");
    l3 = 2;
  }
  if (doublePress && l1 == 1 && l2 == 4 && l3 == 2)
  {
    if (menuDebug)
    {
      Serial.println("L2 ON SELECTED");
    }
    doublePress = false;
    staticText("ON", "SELECTED");
    l1 = 10;

    // do stuff here to put L2 in on mode
    // must long click to go back
  }
  if (singlePress && l1 == 1 && l2 == 4 && l3 == 2)
  {
    if (menuDebug)
    {
      Serial.println("L2 OFF");
    }
    singlePress = false;
    staticText("L2", "OFF");
    l3 = 3;
  }
  if (doublePress && l1 == 1 && l2 == 4 && l3 == 3)
  {
    if (menuDebug)
    {
      Serial.println("L2 OFF SELECTED");
    }
    doublePress = false;
    staticText("OFF", "SELECTED");

    // do stuff here to put L2 in off mode
    // must long click to go back
  }
  if (longPress && l1 == 1 && l2 == 4 && l3 == 3)
  {
    if (menuDebug)
    {
      Serial.println("BACK");
    }
    singlePress = true;
    longPress = false;
    staticText("BACK", "");
    l1 = 10;
  }

  // l3 modes
  if (singlePress && l1 == 1 && l2 == 4 && l3 == 0)
  {
    if (menuDebug)
    {
      Serial.println("L3 MODE");
    }
    singlePress = false;
    staticText("L3", "MODE");
    l2 = 5;
  }
  if (doublePress && l1 == 1 && l2 == 5 && l3 == 0)
  {
    if (menuDebug)
    {
      Serial.println("L3 AUTO");
    }
    doublePress = false;
    staticText("L3", "AUTO");
    l3 = 1;
  }
  if (doublePress && l1 == 1 && l2 == 5 && l3 == 1)
  {
    if (menuDebug)
    {
      Serial.println("L3 AUTO SELECTED");
    }
    doublePress = false;
    staticText("AUTO", "SELECTED");
    l1 = 10;

    // do stuff here to put L3 in auto mode
    // must long click to go back
  }
  if (singlePress && l1 == 1 && l2 == 5 && l3 == 1)
  {
    if (menuDebug)
    {
      Serial.println("L3 ON");
    }
    singlePress = false;
    staticText("L3", "ON");
    l3 = 2;
  }
  if (doublePress && l1 == 1 && l2 == 5 && l3 == 2)
  {
    if (menuDebug)
    {
      Serial.println("L3 ON SELECTED");
    }
    doublePress = false;
    staticText("ON", "SELECTED");
    l1 = 10;

    // do stuff here to put L2 in on mode
    // must long click to go back
  }
  if (singlePress && l1 == 1 && l2 == 5 && l3 == 2)
  {
    if (menuDebug)
    {
      Serial.println("L3 OFF");
    }
    singlePress = false;
    staticText("L3", "OFF");
    l3 = 3;
  }
  if (doublePress && l1 == 1 && l2 == 5 && l3 == 3)
  {
    if (menuDebug)
    {
      Serial.println("L3 OFF SELECTED");
    }
    doublePress = false;
    staticText("OFF", "SELECTED");

    // do stuff here to put L2 in off mode
    // must long click to go back
  }
  if (longPress && l1 == 1 && l2 == 5 && l3 == 3)
  {
    if (menuDebug)
    {
      Serial.println("BACK");
    }
    singlePress = true;
    longPress = false;
    staticText("BACK", "");
    l1 = 10;
  }

  if (doublePress && l1 == 2 && l2 == 0)
  {
    if (menuDebug)
    {
      Serial.println("CHANGE LIMITS");
    }
    doublePress = false;
    staticText("CHANGE", "LIMITS");
    l1 = 2;
    l2 = 6;
  }
  if (doublePress && l1 == 2 && l2 == 6)
  {
    if (menuDebug)
    {
      Serial.println("NYI");
    }
    doublePress = false;
    singlePress = true;
    staticText("NOT YET IM", "PLEMENTED");
    l1 = 10;
    // must long click to go back
  }
  if (longPress && l1 == 2 && l2 == 6)
  {
    if (menuDebug)
    {
      Serial.println("BACK");
    }
    longPress = false;
    singlePress = true;
    staticText("BACK", "");
    l1 = 10;
  }

  if (doublePress && l1 == 4)
  {
    if (menuDebug)
    {
      Serial.println("UPLOAD FIRMWARE");
    }
    doublePress = false;
    staticText("UPLOAD", "FIRMWARE");
    smallText = true;
    staticText("UPLOAD MODE:", "http://192.168.4.1", "SSID:isolator", "PWD:isolator");
    startWifi();
    smallText = false;
  }
  if (longPress && l1 == 4)
  {

    if (menuDebug)
    {
      Serial.println("BACK");
    }
    WiFi.mode(WIFI_OFF);
    longPress = false;
    singlePress = true;
    staticText("BACK", "");
    l1 = 10;
    l2 = 0;
    l3 = 0;
  }

  if (menuDebug)
  {
    Serial.print("l0: ");
    Serial.println(l0);
    Serial.print("l1: ");
    Serial.println(l1);
    Serial.print("l2: ");
    Serial.println(l2);
    Serial.print("l3: ");
    Serial.println(l3);
    Serial.print("l4: ");
    Serial.println(l4);
  }
}

BLYNK_WRITE(V8) // B1 Overide (starter)
{
  if (param.asInt() == 1)
  {
    b1ForcedOn = true;
    if (debugAppCommands)
    {
      Serial.println("b1ForcedOn: 1");
    }
  }
  else
  {
    b1ForcedOn = false;
    if (debugAppCommands)
    {
      Serial.println("b1ForcedOn: 0");
    }
  }
}
BLYNK_WRITE(V9) // B2 Overide (auxiliary)
{
  if (param.asInt() == 1)
  {
    b2ForcedOn = true;
    if (debugAppCommands)
    {
      Serial.println("b2ForcedOn: 1");
    }
  }
  else
  {
    b2ForcedOn = false;
    if (debugAppCommands)
    {
      Serial.println("b2ForcedOn: 0");
    }
  }
}
BLYNK_WRITE(V10) // L1 Overide (freezer)
{
  if (param.asInt() == 1)
  {
    l1ForcedOn = true;
    if (debugAppCommands)
    {
      Serial.println("l1ForcedOn: 1");
    }
  }
  else
  {
    l1ForcedOn = false;
    if (debugAppCommands)
    {
      Serial.println("l1ForcedOn: 0");
    }
  }
}
BLYNK_WRITE(V11) // L2 Overide (fridge)
{
  if (param.asInt() == 1)
  {
    l2ForcedOn = true;
    if (debugAppCommands)
    {
      Serial.println("l2ForcedOn: 1");
    }
  }
  else
  {
    l2ForcedOn = false;
    if (debugAppCommands)
    {
      Serial.println("l2ForcedOn: 0");
    }
  }
}
BLYNK_WRITE(V12) // L3 Overide (lights?)
{
  if (param.asInt() == 1)
  {
    l3ForcedOff = false;
    if (debugAppCommands)
    {
      Serial.println("l3ForcedOff: 0");
    }
  }
  else
  {
    l3ForcedOff = true;
    if (debugAppCommands)
    {
      Serial.println("l3ForcedOff: 1");
    }
  }
}

void updateConnectionDetails()
{
  if (appState)
  {
    if (appState != connectedToBlynk)
    {
      connectedToBlynk = appState;
      if (connectedToBlynk)
      {
        staticText("APP", "CONNECT");
      }
      else
      {
        staticText("APP", "DISCONNECT");
      }
    }
  }
}

void setup()
{
  currentMillis = millis();
  display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS);
  display.setRotation(2);
  display.clearDisplay();

  digitalWrite(sysLED, 1); // turn LED on to show some sign of life

  staticText("ISOLATOR", sw_version);

  Serial.begin(115200);
  Serial.print("software version: ");
  Serial.println(sw_version);

  Blynk.setDeviceName("Isolator_v1");

  gpioSetup(); // setup the GPIOs and directions
  PWMSetup();  // setup the PWM current limiting

  adc.begin();

  // Setup a function to be called every x seconds
  timer0.setInterval(50L, readFromADC);
  timer0.setInterval(1000L, timeKeeper);
  timer0.setInterval(2000L, OLEDUpdater);
  timer0.setInterval(2500L, sendDataOverBLE);

  attachInterrupt(digitalPinToInterrupt(buttonPin), checkTicks, CHANGE);

  // link the xxxclick functions to be called on xxxclick event.
  button.attachClick(singleClick);
  button.attachDoubleClick(doubleClick);
  button.attachMultiClick(multiClick);

  button.setPressTicks(1000); // that is the time when LongPressStart is called
  button.attachLongPressStart(pressStart);
  button.attachLongPressStop(pressStop);

  Blynk.begin(auth);
}

void loop()
{
  timer0.run(); // Initiates BlynkTimer
  server.handleClient();
  button.tick();
  Blynk.run();
  updateConnectionDetails();
}
