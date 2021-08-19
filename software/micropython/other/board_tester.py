
from machine import Pin, I2C, ADC, PWM, deepsleep
from time import sleep

import ssd1306

import gc
gc.collect()

import esp
#esp.osdebug(None)  # Turn off vendor O/S debugging messages
esp.osdebug(0)  # Redirect vendor O/S debugging messages to UART(0)

mode_button = Pin(33, Pin.IN, Pin.PULL_UP)
sys_ok = Pin(27, Pin.OUT, Pin.PULL_DOWN)
batt_1_led = Pin(14, Pin.OUT, Pin.PULL_DOWN) 
batt_2_led = Pin(25, Pin.OUT, Pin.PULL_DOWN) 
batt_1_enabled = Pin(32, Pin.OUT, Pin.PULL_DOWN) 
batt_2_enabled = Pin(26, Pin.OUT, Pin.PULL_DOWN)
load1 = Pin(15, Pin.OUT, Pin.PULL_DOWN)
load2 = Pin(13, Pin.OUT, Pin.PULL_DOWN)
load3 = Pin(4, Pin.OUT, Pin.PULL_DOWN)

i2c = machine.I2C(scl=machine.Pin(22), sda=machine.Pin(21))



# testing outputs

while True:
    print("Toggling...")
    print(sys_ok.value())
    sys_ok.value(not sys_ok.value())
    print(sys_ok.value())
    sleep(.1)

    print(batt_1_led.value())
    batt_1_led.value(not batt_1_led.value())
    print(batt_1_led.value())
    sleep(.1)

    print(batt_2_led.value())
    batt_2_led.value(not batt_2_led.value())
    print(batt_2_led.value())
    sleep(.1)

    print(batt_1_enabled.value())
    batt_1_enabled.value(not batt_1_enabled.value())
    print(batt_1_enabled.value())
    sleep(.1)

    print(batt_2_enabled.value())
    batt_2_enabled.value(not batt_2_enabled.value())
    print(batt_2_enabled.value())
    sleep(.1)

    print(load1.value())
    load1.value(not load1.value())
    print(load1.value())
    sleep(.1)

    print(load2.value())
    load2.value(not load2.value())
    print(load2.value())
    sleep(.1)

    print(load3.value())
    load3.value(not load3.value())
    print(load3.value())
    sleep(.1)

# Test LCD
print('Scanning i2c bus...')
devices = i2c.scan()

if len(devices) == 0:
  print("No i2c device !")
else:
  print('i2c devices found:',len(devices))

  for device in devices:  
    print("Decimal address: ",device," | Hexa address: ",hex(device))

oled_width = 128
oled_height = 32
oled = ssd1306.SSD1306_I2C(oled_width, oled_height, i2c)

oled.text('Hello, World 1!', 0, 0)
oled.text('Hello, World 2!', 0, 10)
oled.text('Hello, World 3!', 0, 20)

oled.rotate(1)  
oled.show()

    