
from machine import Pin, I2C, ADC, PWM, deepsleep
from time import sleep

import gc
gc.collect()

#import esp
#esp.osdebug(None)  # Turn off vendor O/S debugging messages
#esp.osdebug(0)  # Redirect vendor O/S debugging messages to UART(0)

debug = True

batt1 = Pin(32, Pin.OUT, Pin.PULL_UP)
batt2 = Pin(26, Pin.OUT, Pin.PULL_UP)

# testing relays

while True:
    print("Toggling...")
    batt1.value(not batt1.value())
    sleep(2)
    batt2.value(not batt2.value())
    sleep(2)
    