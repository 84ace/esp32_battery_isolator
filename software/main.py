
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
minutes_since_counter_reset = 0 # allows us to reset daily averages

max_battery_voltage = 14.1  # Lead acid, max charge voltage, ~14.1
min_batery_voltage = 11.8   # Lead acid, 0% SOC voltage, ~11.8V
battery_voltage_range = max_battery_voltage - min_batery_voltage

max_aux1_voltage = 0  # Min/Max stats creation
min_aux1_voltage = 15
max_aux2_voltage = 0
min_aux2_voltage = 15

aux1 = Pin(25, Pin.OUT)  # aux1 battery fet, GPIO25
aux2 = Pin(14, Pin.OUT)  # aux2 battery fet, GPIO14

load1_fet = Pin(19, Pin.OUT)  # load1 (fridge) fet, GPIO19
load2_fet = Pin(23, Pin.OUT)  # load2 (freezer) fet, GPIO23

battery_ADC_multiplier = 4.704  # battery ADC voltage divider ratio, ((100k+27k)/27k)
max_ADC_value = 4095  # 12-bit ADC in the ESP-32
max_ADC_voltage = 3.3  # 3.6V when using ATTN_11DB

aux1_battery = ADC(Pin(39))  # AUX 1 battery voltage, GPIO39
aux1_battery.atten(ADC.ATTN_11DB)  #Full range: 3.3v

aux2_battery = ADC(Pin(34))  # AUX 2 battery voltage, GPIO34
aux2_battery.atten(ADC.ATTN_11DB)  #Full range: 3.3v

aux1_current = ADC(Pin(33))  # AUX 1 current, GPIO33
aux1_current.atten(ADC.ATTN_11DB)  #Full range: 3.3v

aux2_current = ADC(Pin(36))  # Aux 2 current, GPIO36
aux2_current.atten(ADC.ATTN_11DB)  #Full range: 3.3v

ACS781LLRTR100B = .0132 # 13.2mV/A

# TODO: 
esp32_supply_voltage = 3.3 # Need to actually measure this on the fly
adc_volts_per_devision = esp32_supply_voltage / max_ADC_value

class LM75(object):
    ADDRESS = 0x48  # LM75 bus address
    FREQUENCY = 100000  # I2C bus frequency

    def __init__(self):
        self.i2c = I2C(scl=Pin(22), sda=Pin(21), freq=self.FREQUENCY)

    
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
    temperature, point = sensor.get_temp()
    print("Board temp: %s.%s" % (temperature, point))


def adc_value_to_voltage(value):
    return round((max_ADC_voltage/max_ADC_value)*value*battery_ADC_multiplier, 2)
    

def get_ADC_value(pin):
    loop = 0
    adc_value = 0
    
    while loop < 250:
        loop +=1
        adc_value += pin.read()

    return adc_value_to_voltage(adc_value/loop)
     

def get_aux1_voltage():
    return get_ADC_value(aux1_battery)


def get_aux2_voltage():
    return get_ADC_value(aux2_battery)


def get_aux1_current():
    adc = aux1_current.read()
    print("AUX 1 ADC: ", adc)
    if adc < 2047:
        #        3.3/4095=0.0008058608059*2047-adc=n/.0132 = amps
        amps = ((adc_volts_per_devision * (2047 - adc)) / ACS781LLRTR100B)
    else:
        amps = ((adc_volts_per_devision * (adc - 2047)) / ACS781LLRTR100B)
    return amps

    
def get_aux2_current():
    adc = aux2_current.read()
    print("AUX 2 ADC: ", adc)
    if adc < 2047:
        amps = ((adc_volts_per_devision * (2047 - adc)) / ACS781LLRTR100B)
    else:
        amps = ((adc_volts_per_devision * (adc - 2047)) / ACS781LLRTR100B)
    return amps


def status_led(led, state):
    led.value(state)
    # Pin(32) for the status LED


def aux1_led(duty_cycle):
    aux1_led = PWM(Pin(26), frequency)  # aux1 LED, GPIO26
    if duty_cycle > 100:
        duty_cycle = 100
    elif duty_cycle < 0:
        duty_cycle = 0
    aux1_led.duty(duty_cycle)
    sleep(0.005)


def aux2_led(duty_cycle):
    aux2_led = PWM(Pin(27), frequency)  # aux2 LED, GPIO27
    if duty_cycle > 100:
        duty_cycle = 100
    elif duty_cycle < 0:
        duty_cycle = 0
    aux2_led.duty(duty_cycle)
    sleep(0.005)


# TODO: add a function to deal with voltage drop due to current draw 


def check_aux1_voltage():
    global min_aux1_voltage
    global max_aux1_voltage
    aux1_voltage = get_aux1_voltage()
    aux1_led_brightness = round((aux1_voltage - min_batery_voltage) / battery_voltage_range * 100)
    aux1_led(aux1_led_brightness)

    # create some min/max stats
    if aux1_voltage > max_aux1_voltage:
        max_aux1_voltage = aux1_voltage
    print("MAX AUX 1 voltage: ", max_aux1_voltage)

    if aux1_voltage < min_aux1_voltage:
        min_aux1_voltage = aux1_voltage
    print("MIN AUX 1 voltage: ", min_aux1_voltage)

    #DEBUG:
    print("AUX 1 voltage: ", aux1_voltage)

    if aux1_voltage > 12.4:  # 75% full
        aux1.value(1)
        print("AUX 1 state: ON")
    else:
        aux1.value(0)
        print("AUX 1 state: OFF")

def check_aux2_voltage():
    global min_aux2_voltage
    global max_aux2_voltage
    aux2_voltage = get_aux2_voltage()
    aux2_led_brightness = round((aux2_voltage - min_batery_voltage) / battery_voltage_range * 100)
    aux2_led(aux2_led_brightness)

    # create some min/max stats
    if aux2_voltage > max_aux2_voltage:
        max_aux2_voltage = aux2_voltage
    print("MAX AUX 2 voltage: ", max_aux2_voltage)

    if aux2_voltage < min_aux2_voltage:
        min_aux2_voltage = aux2_voltage
    print("MIN AUX 2 voltage: ", min_aux2_voltage)

    #DEBUG:
    print("AUX 2 voltage: ", aux2_voltage)

    if aux2_voltage > 12.2:  # 50% full
        aux2.value(1)
        print("AUX 2 state: ON")
    else:
        aux2.value(0)
        print("AUX 2 state: OFF")

def check_aux1_current():
    # get_aux1_current()

    #DEBUG:
    print("AUX 1 current: ", get_aux1_current())


def check_aux2_current():
    # get_aux2_current()

    #DEBUG:
    print("AUX 2 current: ", get_aux2_current())


def load1(load1_state):
    
    #DEBUG:
    if load1_state:
        print("Load 1 state: Connected!")
    else: 
        print("Load 1 state: Disconnected!")
    load1_fet.value(load1_state)
    

def load2(load2_state):
    
    #DEBUG:
    if load2_state:
        print("Load 2 state: Connected!")
    else: 
        print("Load 2 state: Disconnected!")
    
    load2_fet.value(load2_state)


#TODO: do something with board temperature for safety


def looper():
    check_aux1_voltage()
    check_aux2_voltage()
    check_aux1_current()
    check_aux2_current()
    load1(1)
    load2(1)
    print_temp()
    pass


# Kick this thing off
while True:  
    start = utime.ticks_ms()
    looper()
    #print(utime.ticks_ms()/1000)  # show the time since boot in seconds
    sleep(1)
    print("\n")
    minutes_since_counter_reset += (utime.ticks_ms() - start) / 1000 / 60
    
    #  Reset counters / daily averages
    if minutes_since_counter_reset > 1440:
        minutes_since_counter_reset = 0
        max_aux1_voltage = 0  # Min/Max stats creation
        min_aux1_voltage = 15
        max_aux2_voltage = 0
        min_aux2_voltage = 15

    print("Minutes since counter reset: ", minutes_since_counter_reset)