
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

const char* sw_version = "20210911";
const char* host = "isolator";
const char* ssid = "isolator";
const char* password = "isolator";

bool debugVoltages = false; // ToDo: move this into setup and catch a button press to enable
bool debugBLE = false;
bool debugPWM = false;
bool debugAppCommands = false;
bool debugTiming = true;
bool menuDebug = true;
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
const int l3EnPin = sysLED; //4 in prod

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

const char* serverIndex =
"<p>Please upload a .bin file to upgrade your isolator.<p><p>Wait at least 60 seconds before freaking out, you will see the OLED start cycling again when it is done.<p><form method='POST' action='/update' enctype='multipart/form-data'><input type='file' name='update'><input type='submit' value='Update'></form>";


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
  pinMode(buttonPin, INPUT_PULLUP);
  pinMode(sysLED, OUTPUT);
  pinMode(b1EnPin, OUTPUT);
  pinMode(b2EnPin, OUTPUT);
  pinMode(l1EnPin, OUTPUT);
  pinMode(l2EnPin, OUTPUT);
  pinMode(l3EnPin, OUTPUT);
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
      char SingleInt[13] = "00000000";
      char uptime[13] = "00000000";
      smallText = true;
      memset(uptime,0,sizeof(uptime)); //Ensure it's empty.
      itoa(days,SingleInt,10);
      strcat(uptime,SingleInt);
      strcat(uptime,"d");
      itoa(hours,SingleInt,10);
      strcat(uptime,SingleInt);
      strcat(uptime,"h");
      itoa(minutes,SingleInt,10);
      strcat(uptime,SingleInt);
      strcat(uptime,"m");
      itoa(seconds,SingleInt,10);
      strcat(uptime,SingleInt);
      strcat(uptime,"s");

      staticText("DEBUG:", uptime);
      smallText = false;
      OLEDEvent = 0;
    }
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
          if (!l3Mode)
          {
            digitalWrite(l3EnPin, HIGH);
          }
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
          digitalWrite(l3EnPin, LOW);
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
            digitalWrite(l3EnPin, LOW);
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
          if (!l3Mode)
          {
            digitalWrite(l3EnPin, HIGH);
          }
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
          if (!l3Mode)
          {
            digitalWrite(l3EnPin, HIGH);
          }
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
      if (l1Mode)
      {
        digitalWrite(l1EnPin, HIGH);
      }
      if (l2Mode)
      {
        digitalWrite(l2EnPin, HIGH);
      }
      if (l3Mode)
      {
        digitalWrite(l3EnPin, LOW);
      }

    }
    // ... and the internal temp sensor
    systemTemperature = adc.readTemperatureConverted();
    if (systemTemperature > maxAllowedBoardTemp)
    {
      Blynk.notify("ISOLATOR: Temperature HIGH!!!");
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
    Serial.println("Batch0 BLE firing...");
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
if (!MDNS.begin(host)) { //http://isolator.local
  Serial.println("Error setting up MDNS responder!");
  while (1) {
    delay(1000);
  }
}
Serial.println("mDNS responder started");

/*return index page which is stored in serverIndex */
server.on("/", HTTP_GET, []() {
  Serial.println("server.on(/)");
  server.sendHeader("Connection", "close");
  server.send(200, "text/html", serverIndex);
});
server.on("/serverIndex", HTTP_GET, []() {
  Serial.println("server.on(/serverIndex)");
  server.sendHeader("Connection", "close");
  server.send(200, "text/html", serverIndex);
});
/*handling uploading firmware file */
server.on("/update", HTTP_POST, []() {
  Serial.println("server.on(/update)");
  server.sendHeader("Connection", "close");
  server.send(200, "text/plain", (Update.hasError()) ? "FAIL" : "OK");
  ESP.restart();
}, []() {
  HTTPUpload& upload = server.upload();
  if (upload.status == UPLOAD_FILE_START) {
    Serial.printf("Update: %s\n", upload.filename.c_str());
    if (!Update.begin(UPDATE_SIZE_UNKNOWN)) { //start with max available size
      Update.printError(Serial);
    }
  } else if (upload.status == UPLOAD_FILE_WRITE) {
    /* flashing firmware to ESP*/
    if (Update.write(upload.buf, upload.currentSize) != upload.currentSize) {
      Update.printError(Serial);
    }
  } else if (upload.status == UPLOAD_FILE_END) {
    if (Update.end(true)) { //true to set the size to the current progress
      Serial.printf("Update Success: %u\nRebooting...\n", upload.totalSize);
    } else {
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
    l1 = 1;
  }

  // l1 modes
  if (singlePress && l1 == 1) //set menuMode back to 0 when exiting menu
  {
    if (menuDebug)
    {
    Serial.println("IO MODE");
    }
    singlePress = false;
    staticText("IO", "MODE");
    l1 = 2;
  }
  if (singlePress && l1 == 2)
  { 
    if (menuDebug)
    {
      Serial.println("LIMITS MODE");
    }
    singlePress = false;
    staticText("LIMITS", "MODE");
    l1 = 3;
  }
  if (singlePress && l1 == 3)
  {
    if (menuDebug)
    {
      Serial.println("WIFI .BIN UPLOAD");
    }
    singlePress = false;
    staticText("WIFI .BIN", "UPLOAD");
    l1 = 4;
  }

  if (longPress && l1 == 4)
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
  
  
  if (doublePress && l1 == 2)
  {
    if (menuDebug)
    {
      Serial.println("B1 MODE");
    }
    doublePress = false;
    staticText("B1", "MODE");
    l1 = 0;
    l2 = 1;
  }
  if (singlePress && l2 == 1)
  {
    if (menuDebug)
    {
      Serial.println("B2 MODE");
    }
    singlePress = false;
    staticText("B2", "MODE");
    l2 = 2;
  }
  if (singlePress && l2 == 2)
  {
    if (menuDebug)
    {
      Serial.println("L1 MODE");
    }
    singlePress = false;
    staticText("L1", "MODE");
    l2 = 3;
  }
  if (singlePress && l2 == 3)
  {
    if (menuDebug)
    {
      Serial.println("L2 MODE");
    }
    singlePress = false;
    staticText("L2", "MODE");
    l2 = 4;
  }
  if (singlePress && l2 == 4)
  {
    if (menuDebug)
    {
      Serial.println("L3 MODE");
    }
    singlePress = false;
    staticText("L3", "MODE");
  }
  if (longPress && l2 == 4)
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
    l3 = 0;
  }


  if (doublePress && l1 == 3)
  {
    if (menuDebug)
    {
      Serial.println("CHANGE LIMITS");
    }
    doublePress = false;
    staticText("CHANGE", "LIMITS");
    l1 = 6;
  }
  if (doublePress && l1 == 6)
  {
    if (menuDebug)
    {
      Serial.println("NYI");
    }
    doublePress = false;
    staticText("NOT YET IM", "PLEMENTED");
    l1 = 10;
    singlePress = true;
  }
  if (longPress && l3 == 6)
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
    l3 = 0;
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

  staticText("ISOLATOR", version);

  Serial.begin(115200);
  Serial.print("software version: ");
  Serial.println(sw_version);

  Blynk.setDeviceName("Isolator_v001");

  gpioSetup(); // setup the GPIOs and directions
  PWMSetup();  // setup the PWM current limiting

  adc.begin();

  // Setup a function to be called every x seconds
  timer0.setInterval(200L, readFromADC);
  timer0.setInterval(1000L, timeKeeper);
  timer0.setInterval(2000L, OLEDUpdater);
  timer0.setInterval(5000L, sendDataOverBLE);

  digitalWrite(sysLED, 1); // only used in dev

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
}
