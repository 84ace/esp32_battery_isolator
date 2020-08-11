
from machine import Pin, I2C, ADC, PWM
from math import floor
from time import sleep
import utime

import gc
gc.collect()

#import esp
#esp.osdebug(None)  # Turn off vendor O/S debugging messages
#esp.osdebug(0)  # Redirect vendor O/S debugging messages to UART(0)

frequency = 1000  # 1Hz to 1000Hz range, I think?

max_battery_voltage = 14.1  # Lead acid, max charge voltage, ~14.1
min_batery_voltage = 11.8   # Lead acid, 0% SOC voltage, ~11.8V
battery_voltage_range = max_battery_voltage - min_batery_voltage

aux1_fet = Pin(25, Pin.OUT)  # aux1 battery fet, GPIO25
aux2_fet = Pin(13, Pin.OUT)  # aux2 battery fet, GPIO14
load1_fet = Pin(19, Pin.OUT)  # load1 (fridge) fet, GPIO19
load2_fet = Pin(23, Pin.OUT)  # load2 (freezer) fet, GPIO23

battery_ADC_multiplier = 4.704  # battery ADC voltage divider ratio, ((100k+27k)/27k)
max_ADC_value = 4095  # 12-bit ADC in the ESP-32
max_ADC_voltage = 3.6  # 3.6V when using ATTN_11DB

starter_battery = ADC(Pin(36))  # MAIN battery voltage, GPIO36 
starter_battery.atten(ADC.ATTN_11DB)  #Full range: 3.3v

aux1_battery = ADC(Pin(39))  # AUX 1 battery voltage, GPIO39
aux1_battery.atten(ADC.ATTN_11DB)  #Full range: 3.3v

aux2_battery = ADC(Pin(34))  # AUX 2 battery voltage, GPIO34
aux2_battery.atten(ADC.ATTN_11DB)  #Full range: 3.3v

class LM75(object):
    ADDRESS = 0x48  # LM75 bus address
    FREQUENCY = 100000  # I2C bus frequency
    SCL = Pin(22)  # SCL, GPIO22
    SDA = Pin(21)  # SDA, GPIO21

    def __init__(self):
        self.i2c = I2C(scl=SCL, sda=SDA, freq=self.FREQUENCY)

    
    def get_output(self):
        """Return raw output from the LM75 sensor."""
        output = self.i2c.readfrom(self.ADDRESS, 2)
        return output[0], output[1]

    
    def get_temp(self):
        """Return a tuple of (temp_c, point)."""
        temp = self.get_output()
        return int(temp[0]), floor(int(temp[1]) / 23)


def print_temp():
    sensor = LM75()
    while True:
        temperature, point = sensor.get_temp()
        print("%s.%s" % (temperature, point))
        sleep(1)


def adc_value_to_voltage(value):
    return round((max_ADC_voltage/max_ADC_value)*value*battery_ADC_multiplier, 2)


def get_ADC_value(pin):
    return adc_value_to_voltage(pin.read())


def get_starter_voltage():
    return get_ADC_value(starter_battery)


def get_aux1_voltage():
    return get_ADC_value(aux1_battery)


def get_aux2_voltage():
    return get_ADC_value(aux2_battery)


def status_led(led, state):
    led.value(state)


def starter_led(duty_cycle):
    starter_led = PWM(Pin(32), frequency)  # status LED, GPIO32
    starter_led.duty(duty_cycle)
    sleep(0.005)


def aux1_led(duty_cycle):
    aux1_led = PWM(Pin(26), frequency)  # aux1 LED, GPIO26
    aux1_led.duty(duty_cycle)
    sleep(0.005)


def aux2_led(duty_cycle):
    aux2_led = PWM(Pin(27), frequency)  # aux2 LED, GPIO27
    aux2_led.duty(duty_cycle)
    sleep(0.005)


# TODO: add a function to deal with voltage drop due to current draw 
def check_starter_voltage():
    starter_voltage = get_starter_voltage()
    # TODO: Check the logic below, seems like more is is less brightness, shouldn't be

    starter_led_brightness = round(battery_voltage_range / (starter_voltage - min_batery_voltage))
    starter_led(starter_led_brightness)

    if starter_voltage < 12.4:  # 75% full
        disconnect_starter = True
    else:
        disconnect_starter = False


def check_aux1_voltage():
    aux1_voltage = get_aux1_voltage()

    aux1_led_brightness = round(battery_voltage_range / (aux1_voltage - min_batery_voltage))
    aux1_led(aux1_led_brightness)

    if aux1_voltage < 12.2:  # 50% full
        disconnect_aux1 = True
    else:
        disconnect_aux1 = False


def check_aux2_voltage():
    aux2_voltage = get_aux2_voltage()
    
    aux2_led_brightness = round(battery_voltage_range / (aux2_voltage - min_batery_voltage))
    aux2_led(aux2_led_brightness)

    if aux2_voltage < 12.2:  # 50% full
        disconnect_aux2 = True
    else:
        disconnect_aux2 = False

def battery_connector():
    if disconnect_starter:
        


def looper():
    check_starter_voltage()
    check_aux1_voltage()
    check_aux2_voltage()
    pass


# Kick this thing off
while True:  
    print("Looping")
    looper()
    #print(utime.ticks_ms()/1000)  # show the time since boot in seconds
    sleep(1)
