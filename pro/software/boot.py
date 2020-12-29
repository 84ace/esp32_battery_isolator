def do_connect(ssid, pwd):
    import network
    sta_if = network.WLAN(network.STA_IF)
    if not sta_if.isconnected():
        print('connecting to network...')
        sta_if.active(True)
        sta_if.connect(ssid, pwd)
        while not sta_if.isconnected():
            pass
    print('network config:', sta_if.ifconfig())
 
# This file is executed on every boot (including wake-boot from deepsleep)
#import esp
#esp.osdebug(None)
 
# Attempt to connect to WiFi network
do_connect('ShelveNET24', 'buttpiratry')
 
import webrepl
webrepl.start()

from machine import Pin
aux1 = Pin(25, Pin.OUT)  # aux1 battery fet, GPIO25
aux1.value(1) # needed to make the 