EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ESP32 Battery Isolator"
Date "2021-08-04"
Rev "E"
Comp "Acea Quigg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR08
U 1 1 5EFCF275
P 2900 5500
F 0 "#PWR08" H 2900 5250 50  0001 C CNN
F 1 "GND" V 2900 5300 50  0000 C CNN
F 2 "" H 2900 5500 50  0001 C CNN
F 3 "" H 2900 5500 50  0001 C CNN
	1    2900 5500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5EFCFB7F
P 2100 7500
F 0 "#PWR04" H 2100 7250 50  0001 C CNN
F 1 "GND" H 2105 7327 50  0000 C CNN
F 2 "" H 2100 7500 50  0001 C CNN
F 3 "" H 2100 7500 50  0001 C CNN
	1    2100 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR02
U 1 1 5F01533D
P 1600 4550
F 0 "#PWR02" H 1600 4400 50  0001 C CNN
F 1 "+3V3" H 1615 4723 50  0000 C CNN
F 2 "" H 1600 4550 50  0001 C CNN
F 3 "" H 1600 4550 50  0001 C CNN
	1    1600 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5F08B08D
P 3500 4500
F 0 "#PWR013" H 3500 4250 50  0001 C CNN
F 1 "GND" H 3505 4327 50  0000 C CNN
F 2 "" H 3500 4500 50  0001 C CNN
F 3 "" H 3500 4500 50  0001 C CNN
	1    3500 4500
	1    0    0    -1  
$EndComp
Text GLabel 2700 5000 2    50   Output ~ 0
TXD
Text GLabel 2700 5200 2    50   Input ~ 0
RXD
Text GLabel 10900 4650 2    50   Input ~ 0
TXD
Text GLabel 10900 4550 2    50   Input ~ 0
RXD
Text Notes 1950 4400 0    50   ~ 0
ESP-32
Wire Notes Line
	11218 4184 11218 4180
Text GLabel 7650 5850 0    50   Input ~ 0
B1VD
$Comp
L power:GND #PWR040
U 1 1 5F0570E9
P 7750 6050
F 0 "#PWR040" H 7750 5800 50  0001 C CNN
F 1 "GND" H 7755 5877 50  0000 C CNN
F 2 "" H 7750 6050 50  0001 C CNN
F 3 "" H 7750 6050 50  0001 C CNN
	1    7750 6050
	1    0    0    -1  
$EndComp
Text GLabel 8350 5650 1    50   Output ~ 0
B2VM
Text GLabel 8250 5850 0    50   Input ~ 0
B2VD
$Comp
L power:GND #PWR041
U 1 1 5F05BD0E
P 8350 6050
F 0 "#PWR041" H 8350 5800 50  0001 C CNN
F 1 "GND" H 8355 5877 50  0000 C CNN
F 2 "" H 8350 6050 50  0001 C CNN
F 3 "" H 8350 6050 50  0001 C CNN
	1    8350 6050
	1    0    0    -1  
$EndComp
Text GLabel 7750 5650 1    50   Input ~ 0
B1VM
Text GLabel 2700 6300 2    50   BiDi ~ 0
SDA
Text GLabel 2700 6400 2    50   Output ~ 0
SCL
Text Notes 8900 5350 0    50   ~ 0
ADCs
Text Notes 4600 3850 0    50   ~ 0
I2C Port
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5F0D309D
P 5292 4170
F 0 "J2" H 5320 4146 50  0000 L CNN
F 1 "Conn_01x04_Female" H 4800 4390 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 5292 4170 50  0001 C CNN
F 3 "~" H 5292 4170 50  0001 C CNN
	1    5292 4170
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5F0D4D77
P 5092 4070
F 0 "#PWR020" H 5092 3820 50  0001 C CNN
F 1 "GND" V 5091 3874 50  0000 C CNN
F 2 "" H 5092 4070 50  0001 C CNN
F 3 "" H 5092 4070 50  0001 C CNN
	1    5092 4070
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR014
U 1 1 5F106EBF
P 4050 4150
F 0 "#PWR014" H 4050 4000 50  0001 C CNN
F 1 "+3V3" H 4050 4300 50  0000 C CNN
F 2 "" H 4050 4150 50  0001 C CNN
F 3 "" H 4050 4150 50  0001 C CNN
	1    4050 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR016
U 1 1 5F10CEE0
P 4350 4150
F 0 "#PWR016" H 4350 4000 50  0001 C CNN
F 1 "+3V3" H 4350 4300 50  0000 C CNN
F 2 "" H 4350 4150 50  0001 C CNN
F 3 "" H 4350 4150 50  0001 C CNN
	1    4350 4150
	1    0    0    -1  
$EndComp
Text GLabel 4400 4400 2    50   Input ~ 0
SDA
$Comp
L power:GND #PWR012
U 1 1 5F553B72
P 3500 4050
F 0 "#PWR012" H 3500 3800 50  0001 C CNN
F 1 "GND" H 3505 3877 50  0000 C CNN
F 2 "" H 3500 4050 50  0001 C CNN
F 3 "" H 3500 4050 50  0001 C CNN
	1    3500 4050
	1    0    0    -1  
$EndComp
Text GLabel 2900 4050 0    50   Input ~ 0
RST
Text GLabel 5092 4370 0    50   Input ~ 0
SDA
Text GLabel 5092 4270 0    50   Input ~ 0
SCL
$Comp
L power:+3V3 #PWR021
U 1 1 5F0D4017
P 5092 4170
F 0 "#PWR021" H 5092 4020 50  0001 C CNN
F 1 "+3V3" V 5091 4387 50  0000 C CNN
F 2 "" H 5092 4170 50  0001 C CNN
F 3 "" H 5092 4170 50  0001 C CNN
	1    5092 4170
	0    -1   -1   0   
$EndComp
Text GLabel 850  1500 0    50   Input ~ 0
B2VM
Wire Notes Line
	6972 2205 6971 2205
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5F1D7B08
P 1400 1300
F 0 "#FLG01" H 1400 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 1400 1473 50  0000 C CNN
F 2 "" H 1400 1300 50  0001 C CNN
F 3 "~" H 1400 1300 50  0001 C CNN
	1    1400 1300
	1    0    0    -1  
$EndComp
Text Notes 1300 700  0    50   ~ 0
DC-DC Buck (40V to 3.3V 600mA)
Wire Notes Line
	4700 7800 4650 7800
Wire Notes Line
	4156 476  4154 476 
Text GLabel 3050 4900 2    50   Input ~ 0
BOOT
Text GLabel 2871 4579 0    50   Input ~ 0
BOOT
NoConn ~ 2700 5100
NoConn ~ 2700 5400
NoConn ~ 1500 6100
NoConn ~ 1500 6200
NoConn ~ 1500 6300
NoConn ~ 1500 6400
NoConn ~ 1500 6500
NoConn ~ 1500 6600
$Comp
L RF_Module:ESP32-WROOM-32D U1
U 1 1 5EFC6F57
P 2100 6100
F 0 "U1" H 2100 7681 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 2100 7590 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2100 4600 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 1800 6150 50  0001 C CNN
F 4 "C473012" H 2100 6100 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/RF-Transceiver-ICs_Espressif-Systems-ESP32-WROOM-32D_C473012.html" H 2100 6100 50  0001 C CNN "lcsc_url"
F 6 "1" H 2100 6100 50  0001 C CNN "lcsc_min_qty"
F 7 "ESP32-WROOM-32D" H 2100 6100 50  0001 C CNN "mfr_part_number"
F 8 "SMD-38" H 2100 6100 50  0001 C CNN "package"
	1    2100 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4700 1600 4700
Wire Notes Line
	3700 3700 3700 7800
Text GLabel 5800 5700 2    50   BiDi ~ 0
SDA
Text GLabel 5800 5800 2    50   Input ~ 0
SCL
$Comp
L power:GND #PWR024
U 1 1 5FC13706
P 5850 5350
F 0 "#PWR024" H 5850 5100 50  0001 C CNN
F 1 "GND" H 5855 5177 50  0000 C CNN
F 2 "" H 5850 5350 50  0001 C CNN
F 3 "" H 5850 5350 50  0001 C CNN
	1    5850 5350
	1    0    0    -1  
$EndComp
$Comp
L Analog_ADC:ADC128D818 U3
U 1 1 5FC259EF
P 5300 6300
F 0 "U3" H 5000 7250 50  0000 C CNN
F 1 "ADC128D818" H 5000 7150 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 5300 6300 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/adc128d818.pdf" H 5300 6300 50  0001 C CNN
F 4 "C139062" H 5300 6300 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Analog-To-Digital-Converters-ADCs_Texas-Instruments_ADC128D818CIMTX-NOPB_Texas-Instruments-Texas-Instruments-ADC128D818CIMTX-NOPB_C139062.html" H 5300 6300 50  0001 C CNN "lcsc_url"
F 6 "1" H 5300 6300 50  0001 C CNN "lcsc_min_qty"
F 7 "ADC128D818CIMTX" H 5300 6300 50  0001 C CNN "mfr_part_number"
F 8 "TSSOP-16" H 5300 6300 50  0001 C CNN "package"
	1    5300 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5FC2C598
P 5300 7100
F 0 "#PWR023" H 5300 6850 50  0001 C CNN
F 1 "GND" H 5305 6927 50  0000 C CNN
F 2 "" H 5300 7100 50  0001 C CNN
F 3 "" H 5300 7100 50  0001 C CNN
	1    5300 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5150 5300 5500
NoConn ~ 5800 6200
$Comp
L power:GND #PWR025
U 1 1 5FC3F826
P 6200 5350
F 0 "#PWR025" H 6200 5100 50  0001 C CNN
F 1 "GND" H 6205 5177 50  0000 C CNN
F 2 "" H 6200 5350 50  0001 C CNN
F 3 "" H 6200 5350 50  0001 C CNN
	1    6200 5350
	1    0    0    -1  
$EndComp
Text Notes 3800 6200 0    50   ~ 0
2.56V full-range
$Comp
L power:GND #PWR019
U 1 1 5FC44893
P 4750 7000
F 0 "#PWR019" H 4750 6750 50  0001 C CNN
F 1 "GND" H 4755 6827 50  0000 C CNN
F 2 "" H 4750 7000 50  0001 C CNN
F 3 "" H 4750 7000 50  0001 C CNN
	1    4750 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6800 4750 6800
Wire Wire Line
	4750 6800 4750 6900
Wire Wire Line
	4800 6900 4750 6900
Connection ~ 4750 6900
Wire Wire Line
	4750 6900 4750 7000
$Comp
L power:GND #PWR015
U 1 1 5FC52930
P 4100 6850
F 0 "#PWR015" H 4100 6600 50  0001 C CNN
F 1 "GND" H 4105 6677 50  0000 C CNN
F 2 "" H 4100 6850 50  0001 C CNN
F 3 "" H 4100 6850 50  0001 C CNN
	1    4100 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5FC52949
P 4450 6850
F 0 "#PWR017" H 4450 6600 50  0001 C CNN
F 1 "GND" H 4455 6677 50  0000 C CNN
F 2 "" H 4450 6850 50  0001 C CNN
F 3 "" H 4450 6850 50  0001 C CNN
	1    4450 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6650 4100 6600
Wire Wire Line
	4100 6600 4450 6600
Wire Wire Line
	4450 6650 4450 6600
Wire Wire Line
	4450 6600 4800 6600
Connection ~ 4450 6600
Text Notes 5200 4950 0    50   ~ 0
ADC + temp
$Comp
L Interface_USB:CH330N U5
U 1 1 5F737302
P 10500 4650
F 0 "U5" H 10145 5150 50  0000 C CNN
F 1 "CH330N" H 10250 5055 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 10350 5400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811151442_WCH-Jiangsu-Qin-Heng-CH330N_C108996.pdf" H 10400 4850 50  0001 C CNN
F 4 "C108996" H 10500 4650 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/USB-ICs_WCH-Jiangsu-Qin-Heng-CH330N_C108996.html" H 10500 4650 50  0001 C CNN "lcsc_url"
F 6 "1" H 10500 4650 50  0001 C CNN "lcsc_min_qty"
F 7 "CH330N" H 10500 4650 50  0001 C CNN "mfr_part_number"
F 8 "SOP-8" H 10500 4650 50  0001 C CNN "package"
	1    10500 4650
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:GND #PWR035
U 1 1 5F737308
P 10500 5050
F 0 "#PWR035" H 10500 5050 30  0001 C CNN
F 1 "GND" H 10500 4980 30  0001 C CNN
F 2 "" H 10500 5050 60  0000 C CNN
F 3 "" H 10500 5050 60  0000 C CNN
	1    10500 5050
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:GND #PWR033
U 1 1 5F73730F
P 9700 4750
F 0 "#PWR033" H 9700 4750 30  0001 C CNN
F 1 "GND" H 9700 4680 30  0001 C CNN
F 2 "" H 9700 4750 60  0000 C CNN
F 3 "" H 9700 4750 60  0000 C CNN
	1    9700 4750
	1    0    0    -1  
$EndComp
Text GLabel 10100 4750 0    50   Input ~ 0
D+
Text GLabel 10100 4850 0    50   Input ~ 0
D-
$Comp
L MAX17260:GND #PWR038
U 1 1 5F737323
P 10800 4350
F 0 "#PWR038" H 10800 4350 30  0001 C CNN
F 1 "GND" H 10800 4280 30  0001 C CNN
F 2 "" H 10800 4350 60  0000 C CNN
F 3 "" H 10800 4350 60  0000 C CNN
	1    10800 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 4550 10100 4550
$Comp
L power:+3V3 #PWR039
U 1 1 5F77B761
P 10500 4100
F 0 "#PWR039" H 10500 3950 50  0001 C CNN
F 1 "+3V3" H 10515 4273 50  0000 C CNN
F 2 "" H 10500 4100 50  0001 C CNN
F 3 "" H 10500 4100 50  0001 C CNN
	1    10500 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 4350 10500 4150
NoConn ~ 10900 4850
$Comp
L MAX17260:GND #PWR026
U 1 1 5F7D6D14
P 6310 4665
F 0 "#PWR026" H 6310 4665 30  0001 C CNN
F 1 "GND" H 6310 4595 30  0001 C CNN
F 2 "" H 6310 4665 60  0000 C CNN
F 3 "" H 6310 4665 60  0000 C CNN
	1    6310 4665
	1    0    0    -1  
$EndComp
Text GLabel 6610 4265 2    50   Input ~ 0
D+
Text GLabel 6610 4365 2    50   Input ~ 0
D-
Text GLabel 6610 4065 2    50   Input ~ 0
5V
NoConn ~ 6610 4465
NoConn ~ 6210 4665
$Comp
L esp32_battery_isolator-rescue:USB_B_Micro-Connector J3
U 1 1 5F7D6D24
P 6310 4265
F 0 "J3" H 6367 4732 50  0000 C CNN
F 1 "USB_B_Micro" H 6367 4641 50  0000 C CNN
F 2 "Acea:USB_Micro_SHOU-HAN-MicroXNJ_C404969_Horizontal" H 6460 4215 50  0001 C CNN
F 3 "" H 6460 4215 50  0001 C CNN
F 4 "C404969" H 6310 4265 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/USB-Connectors_SHOU-HAN-MicroXNJ_C404969.html/?href=jlc-SMT" H 6310 4265 50  0001 C CNN "lcsc_url"
F 6 "micro_usb" H 6310 4265 50  0001 C CNN "package"
	1    6310 4265
	1    0    0    -1  
$EndComp
Text Notes 5900 3900 0    50   ~ 0
USB
$Comp
L Device:R_Small R10
U 1 1 5F8521DC
P 7750 5750
F 0 "R10" H 7870 5802 50  0000 C CNN
F 1 "200k" H 7886 5708 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7750 5750 50  0001 C CNN
F 3 "" H 7750 5750 50  0001 C CNN
F 4 "C25811" H 7750 5750 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF2003T5E_C25811.html/?href=jlc-SMT" H 7750 5750 50  0001 C CNN "lcsc_url"
F 6 "0603" H 7750 5750 50  0001 C CNN "package"
	1    7750 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5F852B2F
P 7750 5950
F 0 "R11" H 7870 6002 50  0000 C CNN
F 1 "33k" H 7868 5906 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7750 5950 50  0001 C CNN
F 3 "" H 7750 5950 50  0001 C CNN
F 4 " C4216" H 7750 5950 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF3302T5E_C4216.html/?href=jlc-SMT" H 7750 5950 50  0001 C CNN "lcsc_url"
F 6 "0603" H 7750 5950 50  0001 C CNN "package"
	1    7750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5850 7750 5850
Connection ~ 7750 5850
Wire Wire Line
	8250 5850 8350 5850
Text Notes 10300 3850 0    50   ~ 0
UART-USB
Text Notes 4200 750  0    50   ~ 0
Batt 1 isolator (starter)
$Comp
L Device:C_Small C2
U 1 1 5F921787
P 1200 1900
F 0 "C2" H 1000 1950 50  0000 L CNN
F 1 "100n" H 950 1800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1200 1900 50  0001 C CNN
F 3 "" H 1200 1900 50  0001 C CNN
F 4 "C14663" H 1200 1900 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_100nF-104-10-50V_C14663.html/?href=jlc-SMT" H 1200 1900 50  0001 C CNN "lcsc_url"
F 6 "0603" H 1200 1900 50  0001 C CNN "package"
	1    1200 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5F929D37
P 900 2000
F 0 "#PWR05" H 900 1750 50  0001 C CNN
F 1 "GND" H 905 1827 50  0000 C CNN
F 2 "" H 900 2000 50  0001 C CNN
F 3 "" H 900 2000 50  0001 C CNN
	1    900  2000
	1    0    0    -1  
$EndComp
NoConn ~ 1500 5100
NoConn ~ 1500 5200
NoConn ~ 2700 6200
NoConn ~ 2700 6500
Text GLabel 2700 6900 2    50   Output ~ 0
B1ON
Text GLabel 2700 6600 2    50   Output ~ 0
B2ON
Text GLabel 900  1200 1    50   Input ~ 0
5V
Wire Wire Line
	1400 1300 1400 1500
Wire Wire Line
	900  1500 850  1500
Connection ~ 900  1500
NoConn ~ 4800 6200
NoConn ~ 4800 6300
NoConn ~ 4800 6400
$Comp
L MAX17260:TACT-SWITCH SW1
U 1 1 5FA6E558
P 3200 4050
F 0 "SW1" H 3200 4305 50  0000 C CNN
F 1 "C492887" H 3200 4214 50  0000 C CNN
F 2 "Acea:TS4550TP" H 3200 4327 60  0001 C CNN
F 3 "" H 3200 4221 60  0001 C CNN
F 4 "C492887" H 3200 4050 50  0001 C CNN "lcsc_part_number"
F 5 "TS-1091S-A5B3-C1D2" H 3200 4050 50  0001 C CNN "mfr_part_number"
F 6 "4.5mm,4.5mm SMD" H 3200 4050 50  0001 C CNN "package"
	1    3200 4050
	1    0    0    -1  
$EndComp
Text GLabel 2871 4420 0    50   Input ~ 0
MODE
Text GLabel 3400 7000 2    50   Input ~ 0
MODE
Wire Wire Line
	850  4550 850  4600
$Comp
L power:GND #PWR037
U 1 1 5F9329D9
P 850 4800
F 0 "#PWR037" H 850 4550 50  0001 C CNN
F 1 "GND" H 855 4627 50  0000 C CNN
F 2 "" H 850 4800 50  0001 C CNN
F 3 "" H 850 4800 50  0001 C CNN
	1    850  4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	550  4550 550  4600
$Comp
L power:GND #PWR036
U 1 1 5F941D3A
P 550 4800
F 0 "#PWR036" H 550 4550 50  0001 C CNN
F 1 "GND" H 555 4627 50  0000 C CNN
F 2 "" H 550 4800 50  0001 C CNN
F 3 "" H 550 4800 50  0001 C CNN
	1    550  4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4700 2800 4700
Connection ~ 2100 4700
Wire Wire Line
	3400 7000 3350 7000
Wire Wire Line
	3350 7000 3350 6900
$Comp
L power:+3V3 #PWR042
U 1 1 5F95F2CA
P 3350 6700
F 0 "#PWR042" H 3350 6550 50  0001 C CNN
F 1 "+3V3" H 3365 6873 50  0000 C CNN
F 2 "" H 3350 6700 50  0001 C CNN
F 3 "" H 3350 6700 50  0001 C CNN
	1    3350 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 7000 2700 7000
Connection ~ 3350 7000
Wire Wire Line
	3869 1813 3869 1763
Wire Wire Line
	3819 1813 3869 1813
Wire Wire Line
	3869 1913 3869 1963
Wire Wire Line
	3819 1913 3869 1913
Text GLabel 3869 1763 1    50   Output ~ 0
B1VM
$Comp
L power:GND #PWR018
U 1 1 5FAC6DC8
P 3869 1963
F 0 "#PWR018" H 3869 1713 50  0001 C CNN
F 1 "GND" H 3874 1790 50  0000 C CNN
F 2 "" H 3869 1963 50  0001 C CNN
F 3 "" H 3869 1963 50  0001 C CNN
	1    3869 1963
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5FAC6DBE
P 3619 1913
F 0 "J1" H 3754 2088 50  0000 C CNN
F 1 "BATT1" H 3619 2013 50  0000 C CNN
F 2 "Acea:AMASS_XT60PW-M" H 3619 1913 50  0001 C CNN
F 3 "~" H 3619 1913 50  0001 C CNN
F 4 "" H 3619 1913 50  0001 C CNN "other_URL"
F 5 "C98732" H 3619 1913 50  0001 C CNN "lcsc_part_number"
	1    3619 1913
	1    0    0    1   
$EndComp
Wire Notes Line
	6506 476  6504 476 
$Comp
L power:+3V3 #PWR0104
U 1 1 5FA94B66
P 6200 5150
F 0 "#PWR0104" H 6200 5000 50  0001 C CNN
F 1 "+3V3" H 6215 5323 50  0000 C CNN
F 2 "" H 6200 5150 50  0001 C CNN
F 3 "" H 6200 5150 50  0001 C CNN
	1    6200 5150
	1    0    0    -1  
$EndComp
Text GLabel 4800 5700 0    50   Input ~ 0
B1VD
Text GLabel 4800 5800 0    50   Input ~ 0
B2VD
Wire Wire Line
	4432 888  4532 888 
Wire Wire Line
	4532 888  4532 938 
Wire Wire Line
	4532 1138 4532 1188
Text GLabel 4432 888  0    50   BiDi ~ 0
B1VM
Text GLabel 4800 6000 0    50   Input ~ 0
B2CVD
Text Notes 3900 6450 0    50   ~ 0
Don’t use IN7 (temp)
Wire Notes Line
	9500 2200 9500 450 
Text Notes 4650 2500 0    50   ~ 0
Load 1 (fridge?)
Wire Wire Line
	4077 3307 4077 3257
Wire Wire Line
	4027 3307 4077 3307
Wire Wire Line
	4077 3407 4077 3457
Wire Wire Line
	4027 3407 4077 3407
Text GLabel 4077 3257 1    50   Output ~ 0
LOAD1
$Comp
L power:GND #PWR027
U 1 1 5FD65F4F
P 4077 3457
F 0 "#PWR027" H 4077 3207 50  0001 C CNN
F 1 "GND" H 4082 3284 50  0000 C CNN
F 2 "" H 4077 3457 50  0001 C CNN
F 3 "" H 4077 3457 50  0001 C CNN
	1    4077 3457
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5FD65F62
P 3827 3407
F 0 "J5" H 3962 3582 50  0000 C CNN
F 1 "LOAD1" H 3877 3157 50  0000 C CNN
F 2 "Acea:AMASS_XT60PW-F" H 3827 3407 50  0001 C CNN
F 3 "~" H 3827 3407 50  0001 C CNN
F 4 "" H 3827 3407 50  0001 C CNN "other_URL"
F 5 "C428722" H 3827 3407 50  0001 C CNN "lcsc_part_number"
	1    3827 3407
	1    0    0    1   
$EndComp
Text GLabel 5100 2899 1    50   BiDi ~ 0
LOAD1
Text GLabel 4212 3249 1    50   Input ~ 0
L1ON
Wire Wire Line
	4700 2750 4800 2750
Wire Wire Line
	4800 2750 4800 2800
Text GLabel 4700 2750 0    50   Input ~ 0
B2VM
Text GLabel 5149 3299 2    50   BiDi ~ 0
B2C
Text Notes 7200 2500 0    50   ~ 0
Load 2 (freezer?)
Wire Wire Line
	6677 3313 6677 3263
Wire Wire Line
	6627 3313 6677 3313
Wire Wire Line
	6677 3413 6677 3463
Wire Wire Line
	6627 3413 6677 3413
Text GLabel 6677 3263 1    50   Output ~ 0
LOAD2
$Comp
L power:GND #PWR030
U 1 1 5FD820ED
P 6677 3463
F 0 "#PWR030" H 6677 3213 50  0001 C CNN
F 1 "GND" H 6682 3290 50  0000 C CNN
F 2 "" H 6677 3463 50  0001 C CNN
F 3 "" H 6677 3463 50  0001 C CNN
	1    6677 3463
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5FD82100
P 6427 3413
F 0 "J7" H 6562 3588 50  0000 C CNN
F 1 "LOAD2" H 6477 3163 50  0000 C CNN
F 2 "Acea:AMASS_XT60PW-F" H 6427 3413 50  0001 C CNN
F 3 "~" H 6427 3413 50  0001 C CNN
F 4 "" H 6427 3413 50  0001 C CNN "other_URL"
F 5 "C428722" H 6427 3413 50  0001 C CNN "lcsc_part_number"
	1    6427 3413
	1    0    0    1   
$EndComp
Text GLabel 7650 2900 1    50   BiDi ~ 0
LOAD2
Wire Wire Line
	7650 3300 7700 3300
Text GLabel 6799 3262 1    50   Input ~ 0
L2ON
Wire Wire Line
	7250 2750 7350 2750
Wire Wire Line
	7350 2750 7350 2800
Wire Wire Line
	7350 3000 7350 3100
Text GLabel 7250 2750 0    50   Input ~ 0
B2VM
Text GLabel 7700 3300 2    50   BiDi ~ 0
B2C
Text Notes 9550 2500 0    50   ~ 0
Load 3 (lights?)
Wire Wire Line
	9070 3300 9070 3250
Wire Wire Line
	9020 3300 9070 3300
Wire Wire Line
	9070 3400 9070 3450
Wire Wire Line
	9020 3400 9070 3400
Text GLabel 9070 3250 1    50   Output ~ 0
LOAD3
$Comp
L power:GND #PWR045
U 1 1 5FD8A180
P 9070 3450
F 0 "#PWR045" H 9070 3200 50  0001 C CNN
F 1 "GND" H 9075 3277 50  0000 C CNN
F 2 "" H 9070 3450 50  0001 C CNN
F 3 "" H 9070 3450 50  0001 C CNN
	1    9070 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 5FD8A193
P 8820 3400
F 0 "J8" H 8955 3575 50  0000 C CNN
F 1 "LOAD3" H 8870 3150 50  0000 C CNN
F 2 "Acea:AMASS_XT60PW-F" H 8820 3400 50  0001 C CNN
F 3 "~" H 8820 3400 50  0001 C CNN
F 4 "" H 8820 3400 50  0001 C CNN "other_URL"
F 5 "C428722" H 8820 3400 50  0001 C CNN "lcsc_part_number"
	1    8820 3400
	1    0    0    1   
$EndComp
Text GLabel 10162 2885 1    50   BiDi ~ 0
LOAD3
Wire Wire Line
	10162 3285 10212 3285
Text GLabel 9257 3284 1    50   Input ~ 0
L3ON
Wire Wire Line
	9762 2735 9862 2735
Wire Wire Line
	9862 2735 9862 2785
Wire Wire Line
	9862 2985 9862 3085
Text GLabel 9762 2735 0    50   Input ~ 0
B2VM
Text GLabel 10212 3285 2    50   BiDi ~ 0
B2C
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5FDBA5EF
P 5259 887
F 0 "J6" H 5394 1062 50  0000 C CNN
F 1 "CHGR" H 5259 987 50  0000 C CNN
F 2 "Acea:AMASS_XT60PW-M" H 5259 887 50  0001 C CNN
F 3 "~" H 5259 887 50  0001 C CNN
F 4 "" H 5259 887 50  0001 C CNN "other_URL"
F 5 "C98732" H 5259 887 50  0001 C CNN "lcsc_part_number"
	1    5259 887 
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5FDBA60B
P 5509 937
F 0 "#PWR028" H 5509 687 50  0001 C CNN
F 1 "GND" H 5514 764 50  0000 C CNN
F 2 "" H 5509 937 50  0001 C CNN
F 3 "" H 5509 937 50  0001 C CNN
	1    5509 937 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5459 887  5509 887 
Wire Wire Line
	5509 887  5509 937 
Wire Wire Line
	5459 787  5509 787 
Wire Wire Line
	5509 787  5509 737 
Text GLabel 5509 737  1    50   BiDi ~ 0
B1C
Text GLabel 8900 5850 0    50   Input ~ 0
3v3VD
$Comp
L power:GND #PWR047
U 1 1 5FE0D0D4
P 9000 6050
F 0 "#PWR047" H 9000 5800 50  0001 C CNN
F 1 "GND" H 9005 5877 50  0000 C CNN
F 2 "" H 9000 6050 50  0001 C CNN
F 3 "" H 9000 6050 50  0001 C CNN
	1    9000 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R18
U 1 1 5FE0D0EB
P 9000 5750
F 0 "R18" H 9120 5802 50  0000 C CNN
F 1 "3.6k" H 9150 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9000 5750 50  0001 C CNN
F 3 "" H 9000 5750 50  0001 C CNN
F 4 "C22980" H 9000 5750 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF3601T5E_C22980.html/?href=jlc-SMT" H 9000 5750 50  0001 C CNN "lcsc_url"
F 6 "0603" H 9000 5750 50  0001 C CNN "package"
	1    9000 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R19
U 1 1 5FE0D106
P 9000 5950
F 0 "R19" H 9120 6002 50  0000 C CNN
F 1 "11k" H 9150 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9000 5950 50  0001 C CNN
F 3 "" H 9000 5950 50  0001 C CNN
F 4 "C25950" H 9000 5950 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1102T5E_C25950.html/?href=jlc-SMT" H 9000 5950 50  0001 C CNN "lcsc_url"
F 6 "0603" H 9000 5950 50  0001 C CNN "package"
	1    9000 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 5850 9000 5850
Connection ~ 9000 5850
$Comp
L power:+3V3 #PWR046
U 1 1 5FE1A912
P 9000 5650
F 0 "#PWR046" H 9000 5500 50  0001 C CNN
F 1 "+3V3" H 9015 5823 50  0000 C CNN
F 2 "" H 9000 5650 50  0001 C CNN
F 3 "" H 9000 5650 50  0001 C CNN
	1    9000 5650
	1    0    0    -1  
$EndComp
Text GLabel 4800 6100 0    50   Input ~ 0
3v3VD
Text GLabel 4800 5900 0    50   Input ~ 0
B1CVD
Text Notes 550  7650 0    50   ~ 0
pins with pullups:\n14, 16, 17, 18, 19, 21, 22, 23
Text Notes 3000 5350 0    50   ~ 0
RTC_GPIO10
NoConn ~ 2700 6100
Text Notes 3050 6650 0    50   ~ 0
RTC_6
Text Notes 3000 6950 0    50   ~ 0
RTC_9
NoConn ~ 2700 7100
NoConn ~ 2700 7200
Text GLabel 2700 5700 2    50   Input ~ 0
L1ON
Text Notes 3050 5850 0    50   ~ 0
RTC_GPIO13
Text GLabel 2700 5600 2    50   Input ~ 0
L2ON
Text GLabel 2700 5300 2    50   Input ~ 0
L3ON
Text Notes 2751 6731 0    50   ~ 0
RTC_7
Text Notes 2753 6830 0    50   ~ 0
RTC_17
Text GLabel 9550 5850 0    50   Input ~ 0
B1CVD
$Comp
L power:GND #PWR0102
U 1 1 601B6A7F
P 9650 6050
F 0 "#PWR0102" H 9650 5800 50  0001 C CNN
F 1 "GND" H 9655 5877 50  0000 C CNN
F 2 "" H 9650 6050 50  0001 C CNN
F 3 "" H 9650 6050 50  0001 C CNN
	1    9650 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5850 9650 5850
Text GLabel 10200 5850 0    50   Input ~ 0
B2CVD
$Comp
L power:GND #PWR0103
U 1 1 601BD714
P 10300 6050
F 0 "#PWR0103" H 10300 5800 50  0001 C CNN
F 1 "GND" H 10305 5877 50  0000 C CNN
F 2 "" H 10300 6050 50  0001 C CNN
F 3 "" H 10300 6050 50  0001 C CNN
	1    10300 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 5850 10300 5850
Wire Notes Line
	7000 5200 11200 5200
Wire Notes Line
	7000 3700 7000 6550
Wire Notes Line
	3700 4800 7000 4800
Wire Notes Line
	5600 3700 5600 4800
Text GLabel 9650 5650 1    50   Input ~ 0
B1CM
Text GLabel 10300 5650 1    50   Input ~ 0
B2CM
Wire Wire Line
	1600 4700 1600 4550
Wire Wire Line
	1600 4550 1200 4550
Text GLabel 1150 4900 0    50   Input ~ 0
RST
Wire Wire Line
	1200 4550 1200 4600
Connection ~ 1200 4900
Wire Wire Line
	1200 4900 1200 4800
$Comp
L power:GND #PWR01
U 1 1 5F088CED
P 1200 5100
F 0 "#PWR01" H 1200 4850 50  0001 C CNN
F 1 "GND" H 1205 4927 50  0000 C CNN
F 2 "" H 1200 5100 50  0001 C CNN
F 3 "" H 1200 5100 50  0001 C CNN
	1    1200 5100
	1    0    0    -1  
$EndComp
Text GLabel 4997 1849 3    50   BiDi ~ 0
B1VM
Text GLabel 4032 1438 0    50   Input ~ 0
B1ON
Text GLabel 4000 4400 0    50   Input ~ 0
SCL
Wire Wire Line
	1200 4550 850  4550
Connection ~ 1200 4550
Wire Wire Line
	850  4550 550  4550
Connection ~ 850  4550
Connection ~ 1600 4550
Wire Wire Line
	1200 4900 1500 4900
Wire Wire Line
	1200 4900 1150 4900
Wire Wire Line
	10800 4150 10500 4150
Connection ~ 10500 4150
Wire Wire Line
	10500 4150 10500 4100
Wire Wire Line
	4000 4400 4050 4400
Wire Wire Line
	4050 4400 4050 4350
Wire Wire Line
	4400 4400 4350 4400
Wire Wire Line
	4350 4400 4350 4350
$Comp
L Device:R_Small R12
U 1 1 601E84F7
P 8350 5750
F 0 "R12" H 8470 5802 50  0000 C CNN
F 1 "200k" H 8486 5708 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8350 5750 50  0001 C CNN
F 3 "" H 8350 5750 50  0001 C CNN
F 4 "C25811" H 8350 5750 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF2003T5E_C25811.html/?href=jlc-SMT" H 8350 5750 50  0001 C CNN "lcsc_url"
F 6 "0603" H 8350 5750 50  0001 C CNN "package"
	1    8350 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 601ED5C7
P 8350 5950
F 0 "R13" H 8470 6002 50  0000 C CNN
F 1 "33k" H 8468 5906 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8350 5950 50  0001 C CNN
F 3 "" H 8350 5950 50  0001 C CNN
F 4 " C4216" H 8350 5950 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF3302T5E_C4216.html/?href=jlc-SMT" H 8350 5950 50  0001 C CNN "lcsc_url"
F 6 "0603" H 8350 5950 50  0001 C CNN "package"
	1    8350 5950
	1    0    0    -1  
$EndComp
Connection ~ 8350 5850
$Comp
L Device:R_Small R21
U 1 1 601F2504
P 9650 5750
F 0 "R21" H 9770 5802 50  0000 C CNN
F 1 "3.6k" H 9800 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9650 5750 50  0001 C CNN
F 3 "" H 9650 5750 50  0001 C CNN
F 4 "C22980" H 9650 5750 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF3601T5E_C22980.html/?href=jlc-SMT" H 9650 5750 50  0001 C CNN "lcsc_url"
F 6 "0603" H 9650 5750 50  0001 C CNN "package"
	1    9650 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R22
U 1 1 601F6E5A
P 9650 5950
F 0 "R22" H 9770 6002 50  0000 C CNN
F 1 "11k" H 9800 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9650 5950 50  0001 C CNN
F 3 "" H 9650 5950 50  0001 C CNN
F 4 "C25950" H 9650 5950 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1102T5E_C25950.html/?href=jlc-SMT" H 9650 5950 50  0001 C CNN "lcsc_url"
F 6 "0603" H 9650 5950 50  0001 C CNN "package"
	1    9650 5950
	1    0    0    -1  
$EndComp
Connection ~ 9650 5850
$Comp
L Device:R_Small R23
U 1 1 601FB65C
P 10300 5750
F 0 "R23" H 10420 5802 50  0000 C CNN
F 1 "3.6k" H 10450 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10300 5750 50  0001 C CNN
F 3 "" H 10300 5750 50  0001 C CNN
F 4 "C22980" H 10300 5750 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF3601T5E_C22980.html/?href=jlc-SMT" H 10300 5750 50  0001 C CNN "lcsc_url"
F 6 "0603" H 10300 5750 50  0001 C CNN "package"
	1    10300 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R24
U 1 1 601FFE7A
P 10300 5950
F 0 "R24" H 10420 6002 50  0000 C CNN
F 1 "11k" H 10450 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10300 5950 50  0001 C CNN
F 3 "" H 10300 5950 50  0001 C CNN
F 4 "C25950" H 10300 5950 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1102T5E_C25950.html/?href=jlc-SMT" H 10300 5950 50  0001 C CNN "lcsc_url"
F 6 "0603" H 10300 5950 50  0001 C CNN "package"
	1    10300 5950
	1    0    0    -1  
$EndComp
Connection ~ 10300 5850
$Comp
L Device:R_Small R20
U 1 1 602170C0
P 9862 2885
F 0 "R20" H 9982 2937 50  0000 C CNN
F 1 "200k" H 9998 2843 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9862 2885 50  0001 C CNN
F 3 "" H 9862 2885 50  0001 C CNN
F 4 "C25811" H 9862 2885 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF2003T5E_C25811.html/?href=jlc-SMT" H 9862 2885 50  0001 C CNN "lcsc_url"
F 6 "0603" H 9862 2885 50  0001 C CNN "package"
	1    9862 2885
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R17
U 1 1 602210A0
P 7350 2900
F 0 "R17" H 7470 2952 50  0000 C CNN
F 1 "200k" H 7486 2858 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7350 2900 50  0001 C CNN
F 3 "" H 7350 2900 50  0001 C CNN
F 4 "C25811" H 7350 2900 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF2003T5E_C25811.html/?href=jlc-SMT" H 7350 2900 50  0001 C CNN "lcsc_url"
F 6 "0603" H 7350 2900 50  0001 C CNN "package"
	1    7350 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R16
U 1 1 60230730
P 4800 2900
F 0 "R16" H 4920 2952 50  0000 C CNN
F 1 "200k" H 4936 2858 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4800 2900 50  0001 C CNN
F 3 "" H 4800 2900 50  0001 C CNN
F 4 "C25811" H 4800 2900 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF2003T5E_C25811.html/?href=jlc-SMT" H 4800 2900 50  0001 C CNN "lcsc_url"
F 6 "0603" H 4800 2900 50  0001 C CNN "package"
	1    4800 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 6028D96A
P 850 4700
F 0 "C12" H 900 4800 50  0000 L CNN
F 1 "100n" H 900 4600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 850 4700 50  0001 C CNN
F 3 "" H 850 4700 50  0001 C CNN
F 4 "C14663" H 850 4700 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_100nF-104-10-50V_C14663.html/?href=jlc-SMT" H 850 4700 50  0001 C CNN "lcsc_url"
F 6 "0603" H 850 4700 50  0001 C CNN "package"
	1    850  4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 60294ADE
P 1200 4700
F 0 "R1" H 1320 4752 50  0000 C CNN
F 1 "11k" H 1350 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1200 4700 50  0001 C CNN
F 3 "" H 1200 4700 50  0001 C CNN
F 4 "C25950" H 1200 4700 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1102T5E_C25950.html/?href=jlc-SMT" H 1200 4700 50  0001 C CNN "lcsc_url"
F 6 "0603" H 1200 4700 50  0001 C CNN "package"
	1    1200 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 6029E8F3
P 1200 5000
F 0 "C1" H 1300 5050 50  0000 L CNN
F 1 "100n" H 1300 4950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1200 5000 50  0001 C CNN
F 3 "" H 1200 5000 50  0001 C CNN
F 4 "C14663" H 1200 5000 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_100nF-104-10-50V_C14663.html/?href=jlc-SMT" H 1200 5000 50  0001 C CNN "lcsc_url"
F 6 "0603" H 1200 5000 50  0001 C CNN "package"
	1    1200 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 6029FA67
P 2800 4800
F 0 "R8" H 2920 4852 50  0000 C CNN
F 1 "11k" H 2950 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2800 4800 50  0001 C CNN
F 3 "" H 2800 4800 50  0001 C CNN
F 4 "C25950" H 2800 4800 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1102T5E_C25950.html/?href=jlc-SMT" H 2800 4800 50  0001 C CNN "lcsc_url"
F 6 "0603" H 2800 4800 50  0001 C CNN "package"
	1    2800 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4900 2800 4900
Connection ~ 2800 4900
Wire Wire Line
	2800 4900 3050 4900
$Comp
L Device:R_Small R6
U 1 1 602A5030
P 4050 4250
F 0 "R6" H 4170 4302 50  0000 C CNN
F 1 "3.6k" H 4200 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4050 4250 50  0001 C CNN
F 3 "" H 4050 4250 50  0001 C CNN
F 4 "C22980" H 4050 4250 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF3601T5E_C22980.html/?href=jlc-SMT" H 4050 4250 50  0001 C CNN "lcsc_url"
F 6 "0603" H 4050 4250 50  0001 C CNN "package"
	1    4050 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 602AF0A1
P 4350 4250
F 0 "R7" H 4470 4302 50  0000 C CNN
F 1 "3.6k" H 4500 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4350 4250 50  0001 C CNN
F 3 "" H 4350 4250 50  0001 C CNN
F 4 "C22980" H 4350 4250 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF3601T5E_C22980.html/?href=jlc-SMT" H 4350 4250 50  0001 C CNN "lcsc_url"
F 6 "0603" H 4350 4250 50  0001 C CNN "package"
	1    4350 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 602AFB4C
P 2800 5500
F 0 "R4" V 2700 5500 50  0000 C CNN
F 1 "11k" V 2800 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2800 5500 50  0001 C CNN
F 3 "" H 2800 5500 50  0001 C CNN
F 4 "C25950" H 2800 5500 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1102T5E_C25950.html/?href=jlc-SMT" H 2800 5500 50  0001 C CNN "lcsc_url"
F 6 "0603" H 2800 5500 50  0001 C CNN "package"
	1    2800 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 602C0380
P 3350 6800
F 0 "R9" V 3250 6800 50  0000 C CNN
F 1 "11k" V 3350 6800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3350 6800 50  0001 C CNN
F 3 "" H 3350 6800 50  0001 C CNN
F 4 "C25950" H 3350 6800 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1102T5E_C25950.html/?href=jlc-SMT" H 3350 6800 50  0001 C CNN "lcsc_url"
F 6 "0603" H 3350 6800 50  0001 C CNN "package"
	1    3350 6800
	-1   0    0    1   
$EndComp
$Comp
L Device:CP_Small C4
U 1 1 602C92D6
P 4100 6750
F 0 "C4" H 4150 6850 50  0000 L CNN
F 1 "1uF" H 4200 6750 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B" H 4100 6750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Honor-Elec-RVT1V220M0505_C23289.pdf" H 4100 6750 50  0001 C CNN
F 4 "C169224" H 4100 6750 50  0001 C CNN "lcsc_part_number"
F 5 "CASE-B_3528" H 4100 6750 50  0001 C CNN "package"
	1    4100 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 602D5277
P 4450 6750
F 0 "C5" H 4500 6850 50  0000 L CNN
F 1 "100n" H 4550 6750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4450 6750 50  0001 C CNN
F 3 "" H 4450 6750 50  0001 C CNN
F 4 "C14663" H 4450 6750 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_100nF-104-10-50V_C14663.html/?href=jlc-SMT" H 4450 6750 50  0001 C CNN "lcsc_url"
F 6 "0603" H 4450 6750 50  0001 C CNN "package"
	1    4450 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5150 5850 5150
$Comp
L Device:C_Small C6
U 1 1 602DA2CB
P 5850 5250
F 0 "C6" H 5950 5300 50  0000 L CNN
F 1 "100n" H 5950 5200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5850 5250 50  0001 C CNN
F 3 "" H 5850 5250 50  0001 C CNN
F 4 "C14663" H 5850 5250 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_100nF-104-10-50V_C14663.html/?href=jlc-SMT" H 5850 5250 50  0001 C CNN "lcsc_url"
F 6 "0603" H 5850 5250 50  0001 C CNN "package"
	1    5850 5250
	1    0    0    -1  
$EndComp
Connection ~ 5850 5150
Wire Wire Line
	5850 5150 6200 5150
$Comp
L Device:CP_Small C7
U 1 1 602DB1AF
P 6200 5250
F 0 "C7" H 6300 5300 50  0000 L CNN
F 1 "1uF" H 6300 5200 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B" H 6200 5250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Honor-Elec-RVT1V220M0505_C23289.pdf" H 6200 5250 50  0001 C CNN
F 4 "C169224" H 6200 5250 50  0001 C CNN "lcsc_part_number"
F 5 "CASE-B_3528" H 6200 5250 50  0001 C CNN "package"
	1    6200 5250
	1    0    0    -1  
$EndComp
Connection ~ 6200 5150
$Comp
L Device:C_Small C10
U 1 1 602F00D0
P 10800 4250
F 0 "C10" H 10850 4350 50  0000 L CNN
F 1 "100n" H 10900 4250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10800 4250 50  0001 C CNN
F 3 "" H 10800 4250 50  0001 C CNN
F 4 "C14663" H 10800 4250 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_100nF-104-10-50V_C14663.html/?href=jlc-SMT" H 10800 4250 50  0001 C CNN "lcsc_url"
F 6 "0603" H 10800 4250 50  0001 C CNN "package"
	1    10800 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 602F963B
P 9700 4650
F 0 "C9" H 9800 4550 50  0000 L CNN
F 1 "100n" H 9800 4650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9700 4650 50  0001 C CNN
F 3 "" H 9700 4650 50  0001 C CNN
F 4 "C14663" H 9700 4650 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_100nF-104-10-50V_C14663.html/?href=jlc-SMT" H 9700 4650 50  0001 C CNN "lcsc_url"
F 6 "0603" H 9700 4650 50  0001 C CNN "package"
	1    9700 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R14
U 1 1 601F5AA5
P 4532 1038
F 0 "R14" H 4652 1090 50  0000 C CNN
F 1 "200k" H 4668 996 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4532 1038 50  0001 C CNN
F 3 "" H 4532 1038 50  0001 C CNN
F 4 "C25811" H 4532 1038 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF2003T5E_C25811.html/?href=jlc-SMT" H 4532 1038 50  0001 C CNN "lcsc_url"
F 6 "0603" H 4532 1038 50  0001 C CNN "package"
	1    4532 1038
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:TACT-SWITCH SW2
U 1 1 601FAFC2
P 3200 4500
F 0 "SW2" H 3200 4755 50  0000 C CNN
F 1 "C492887" H 3200 4664 50  0000 C CNN
F 2 "Acea:TS4550TP" H 3200 4777 60  0001 C CNN
F 3 "" H 3200 4671 60  0001 C CNN
F 4 "C492887" H 3200 4500 50  0001 C CNN "lcsc_part_number"
F 5 "TS-1091S-A5B3-C1D2" H 3200 4500 50  0001 C CNN "mfr_part_number"
F 6 "4.5mm,4.5mm SMD" H 3200 4500 50  0001 C CNN "package"
	1    3200 4500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q1
U 1 1 60498BC7
P 4432 1438
F 0 "Q1" H 4325 1273 50  0000 L CNN
F 1 "MMBT3904" H 4031 1196 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4632 1363 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 4432 1438 50  0001 L CNN
F 4 "C20526" H 4432 1438 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_Changjiang-Electronics-Tech-CJ-MMBT3904_C20526.html/?href=jlc-SMT" H 4432 1438 50  0001 C CNN "lcsc_url"
F 6 "MMBT3904" H 4432 1438 50  0001 C CNN "mfr_part_number"
F 7 "SOT-23" H 4432 1438 50  0001 C CNN "package"
	1    4432 1438
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 604A31D6
P 4532 1638
F 0 "#PWR022" H 4532 1388 50  0001 C CNN
F 1 "GND" H 4537 1465 50  0000 C CNN
F 2 "" H 4532 1638 50  0001 C CNN
F 3 "" H 4532 1638 50  0001 C CNN
	1    4532 1638
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 604ACE28
P 4800 3499
F 0 "#PWR029" H 4800 3249 50  0001 C CNN
F 1 "GND" H 4801 3364 50  0000 C CNN
F 2 "" H 4800 3499 50  0001 C CNN
F 3 "" H 4800 3499 50  0001 C CNN
	1    4800 3499
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q7
U 1 1 604B26BA
P 7250 3300
F 0 "Q7" H 7460 3223 50  0000 L CNN
F 1 "MMBT3904" H 7459 3135 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7450 3225 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 7250 3300 50  0001 L CNN
F 4 "C20526" H 7250 3300 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_Changjiang-Electronics-Tech-CJ-MMBT3904_C20526.html/?href=jlc-SMT" H 7250 3300 50  0001 C CNN "lcsc_url"
F 6 "MMBT3904" H 7250 3300 50  0001 C CNN "mfr_part_number"
F 7 "SOT-23" H 7250 3300 50  0001 C CNN "package"
	1    7250 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 604B26EC
P 7350 3500
F 0 "#PWR034" H 7350 3250 50  0001 C CNN
F 1 "GND" H 7349 3362 50  0000 C CNN
F 2 "" H 7350 3500 50  0001 C CNN
F 3 "" H 7350 3500 50  0001 C CNN
	1    7350 3500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q9
U 1 1 604B8663
P 9762 3285
F 0 "Q9" H 9972 3208 50  0000 L CNN
F 1 "MMBT3904" H 9971 3120 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9962 3210 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 9762 3285 50  0001 L CNN
F 4 "C20526" H 9762 3285 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_Changjiang-Electronics-Tech-CJ-MMBT3904_C20526.html/?href=jlc-SMT" H 9762 3285 50  0001 C CNN "lcsc_url"
F 6 "MMBT3904" H 9762 3285 50  0001 C CNN "mfr_part_number"
F 7 "SOT-23" H 9762 3285 50  0001 C CNN "package"
	1    9762 3285
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR048
U 1 1 604B8695
P 9862 3485
F 0 "#PWR048" H 9862 3235 50  0001 C CNN
F 1 "GND" H 9859 3349 50  0000 C CNN
F 2 "" H 9862 3485 50  0001 C CNN
F 3 "" H 9862 3485 50  0001 C CNN
	1    9862 3485
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR049
U 1 1 607A705A
P 4075 2736
F 0 "#PWR049" H 4075 2486 50  0001 C CNN
F 1 "GND" H 4080 2563 50  0000 C CNN
F 2 "" H 4075 2736 50  0001 C CNN
F 3 "" H 4075 2736 50  0001 C CNN
	1    4075 2736
	1    0    0    -1  
$EndComp
Text GLabel 4102 2324 2    50   Output ~ 0
LOAD1
Wire Wire Line
	4075 2436 4075 2324
Wire Wire Line
	4075 2324 4102 2324
$Comp
L Diode:1N4148WS D8
U 1 1 607B4165
P 6673 2595
F 0 "D8" V 6579 2719 50  0000 L CNN
F 1 "B5819W" V 6679 2719 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 6673 2420 50  0001 C CNN
F 3 "" H 6673 2595 50  0001 C CNN
F 4 "C8598" H 6673 2595 50  0001 C CNN "lcsc_part_number"
	1    6673 2595
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR050
U 1 1 607B4197
P 6673 2745
F 0 "#PWR050" H 6673 2495 50  0001 C CNN
F 1 "GND" H 6678 2572 50  0000 C CNN
F 2 "" H 6673 2745 50  0001 C CNN
F 3 "" H 6673 2745 50  0001 C CNN
	1    6673 2745
	1    0    0    -1  
$EndComp
Text GLabel 6698 2330 2    50   Output ~ 0
LOAD2
Wire Wire Line
	6673 2445 6673 2330
Wire Wire Line
	6673 2330 6698 2330
$Comp
L power:GND #PWR051
U 1 1 607C0559
P 9066 2744
F 0 "#PWR051" H 9066 2494 50  0001 C CNN
F 1 "GND" H 9071 2571 50  0000 C CNN
F 2 "" H 9066 2744 50  0001 C CNN
F 3 "" H 9066 2744 50  0001 C CNN
	1    9066 2744
	1    0    0    -1  
$EndComp
Text GLabel 9101 2330 2    50   Output ~ 0
LOAD3
Wire Wire Line
	9066 2444 9066 2330
Wire Wire Line
	9066 2330 9101 2330
Text Notes 3049 5639 0    50   ~ 0
RTC_GPIO14
Text Notes 9800 750  0    50   ~ 0
Batt 2 current measurement
Connection ~ 9850 1200
Wire Wire Line
	9850 1200 9850 1250
Wire Wire Line
	9900 1250 9850 1250
Wire Wire Line
	9900 1150 9850 1150
Wire Wire Line
	9850 1200 9850 1150
Wire Wire Line
	9800 1200 9850 1200
Connection ~ 9850 1400
Wire Wire Line
	9850 1450 9900 1450
Wire Wire Line
	9850 1400 9850 1450
Wire Wire Line
	9900 1350 9850 1350
Wire Wire Line
	9850 1400 9850 1350
Wire Wire Line
	9800 1400 9850 1400
$Comp
L esp32_battery_isolator-rescue:CC6903-30A-Sensor_Current U6
U 1 1 5FAFE442
P 10300 1300
F 0 "U6" H 10600 1050 50  0000 L CNN
F 1 "CC6903SO-30A" H 10550 950 50  0000 L CNN
F 2 "Package_SO:SOP-8_3.9x4.9mm_P1.27mm" H 10300 1300 50  0001 C CNN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS780-Datasheet.ashx?la=en" H 10300 1300 50  0001 C CNN
F 4 "C469388" H 10300 1300 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Current-Sensors_Cross-chip-CC6903SO-30A_C469388.html" H 10300 1300 50  0001 C CNN "lcsc_url"
F 6 "1" H 10300 1300 50  0001 C CNN "lcsc_min_qty"
F 7 "CC6903SO-30A" H 10300 1300 50  0001 C CNN "mfr_part_number"
F 8 "SOP-8" H 10300 1300 50  0001 C CNN "package"
	1    10300 1300
	1    0    0    -1  
$EndComp
Text GLabel 10700 1300 2    50   BiDi ~ 0
B2CM
Text GLabel 9800 1400 0    50   BiDi ~ 0
B2C
Text GLabel 9800 1200 0    50   BiDi ~ 0
B2VM
$Comp
L power:GND #PWR0106
U 1 1 5FAE4F4A
P 10350 1600
F 0 "#PWR0106" H 10350 1350 50  0001 C CNN
F 1 "GND" H 10355 1427 50  0000 C CNN
F 2 "" H 10350 1600 50  0001 C CNN
F 3 "" H 10350 1600 50  0001 C CNN
	1    10350 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0105
U 1 1 5FADF299
P 10350 1000
F 0 "#PWR0105" H 10350 850 50  0001 C CNN
F 1 "+3V3" H 10365 1173 50  0000 C CNN
F 2 "" H 10350 1000 50  0001 C CNN
F 3 "" H 10350 1000 50  0001 C CNN
	1    10350 1000
	1    0    0    -1  
$EndComp
Text GLabel 4997 1049 1    50   BiDi ~ 0
B1C
Wire Notes Line
	5650 2200 5650 450 
Text GLabel 8100 1200 0    50   BiDi ~ 0
B1C
Connection ~ 8150 1200
Wire Wire Line
	8150 1200 8150 1250
Wire Wire Line
	8200 1250 8150 1250
Wire Wire Line
	8200 1150 8150 1150
Wire Wire Line
	8150 1200 8150 1150
Wire Wire Line
	8100 1200 8150 1200
Connection ~ 8150 1400
Wire Wire Line
	8150 1450 8200 1450
Wire Wire Line
	8150 1400 8150 1450
Wire Wire Line
	8200 1350 8150 1350
Wire Wire Line
	8150 1400 8150 1350
Wire Wire Line
	8100 1400 8150 1400
$Comp
L esp32_battery_isolator-rescue:CC6903-30A-Sensor_Current U4
U 1 1 5FD53F67
P 8600 1300
F 0 "U4" H 8900 1050 50  0000 L CNN
F 1 "CC6903SO-30A" H 8850 950 50  0000 L CNN
F 2 "Package_SO:SOP-8_3.9x4.9mm_P1.27mm" H 8600 1300 50  0001 C CNN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS780-Datasheet.ashx?la=en" H 8600 1300 50  0001 C CNN
F 4 "C469388" H 8600 1300 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Current-Sensors_Cross-chip-CC6903SO-30A_C469388.html" H 8600 1300 50  0001 C CNN "lcsc_url"
F 6 "1" H 8600 1300 50  0001 C CNN "lcsc_min_qty"
F 7 "CC6903SO-30A" H 8600 1300 50  0001 C CNN "mfr_part_number"
F 8 "SOP-8" H 8600 1300 50  0001 C CNN "package"
	1    8600 1300
	1    0    0    -1  
$EndComp
Text GLabel 9000 1300 2    50   BiDi ~ 0
B1CM
Text Notes 8100 750  0    50   ~ 0
Batt 1 current measurement
$Comp
L power:GND #PWR044
U 1 1 5FD53F4C
P 8650 1600
F 0 "#PWR044" H 8650 1350 50  0001 C CNN
F 1 "GND" H 8655 1427 50  0000 C CNN
F 2 "" H 8650 1600 50  0001 C CNN
F 3 "" H 8650 1600 50  0001 C CNN
	1    8650 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR043
U 1 1 5FD53F34
P 8650 1000
F 0 "#PWR043" H 8650 850 50  0001 C CNN
F 1 "+3V3" H 8665 1173 50  0000 C CNN
F 2 "" H 8650 1000 50  0001 C CNN
F 3 "" H 8650 1000 50  0001 C CNN
	1    8650 1000
	1    0    0    -1  
$EndComp
Text GLabel 8100 1400 0    50   BiDi ~ 0
COM
Wire Notes Line
	7750 2200 7750 450 
$Comp
L power:GND #PWR031
U 1 1 604A5AAD
P 6494 1607
F 0 "#PWR031" H 6494 1357 50  0001 C CNN
F 1 "GND" H 6499 1434 50  0000 C CNN
F 2 "" H 6494 1607 50  0001 C CNN
F 3 "" H 6494 1607 50  0001 C CNN
	1    6494 1607
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q5
U 1 1 604A5A7B
P 6394 1407
F 0 "Q5" H 6173 1309 50  0000 L CNN
F 1 "MMBT3904" H 6085 1226 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6594 1332 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 6394 1407 50  0001 L CNN
F 4 "C20526" H 6394 1407 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_Changjiang-Electronics-Tech-CJ-MMBT3904_C20526.html/?href=jlc-SMT" H 6394 1407 50  0001 C CNN "lcsc_url"
F 6 "MMBT3904" H 6394 1407 50  0001 C CNN "mfr_part_number"
F 7 "SOT-23" H 6394 1407 50  0001 C CNN "package"
	1    6394 1407
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R15
U 1 1 6020FD96
P 6494 1007
F 0 "R15" H 6614 1059 50  0000 C CNN
F 1 "200k" H 6630 965 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6494 1007 50  0001 C CNN
F 3 "" H 6494 1007 50  0001 C CNN
F 4 "C25811" H 6494 1007 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF2003T5E_C25811.html/?href=jlc-SMT" H 6494 1007 50  0001 C CNN "lcsc_url"
F 6 "0603" H 6494 1007 50  0001 C CNN "package"
	1    6494 1007
	1    0    0    -1  
$EndComp
Text GLabel 5994 1407 0    50   Input ~ 0
B2ON
Text GLabel 6963 1807 3    50   BiDi ~ 0
B2C
Text GLabel 6963 1007 1    50   BiDi ~ 0
COM
Text GLabel 6394 857  0    50   BiDi ~ 0
B2VM
Wire Wire Line
	6394 857  6494 857 
Wire Wire Line
	6494 857  6494 907 
Wire Wire Line
	6494 1107 6494 1207
Text Notes 6350 750  0    50   ~ 0
Batt 2 isolator (auxiliary)
Text GLabel 6015 1769 1    50   Output ~ 0
B2VM
Wire Wire Line
	6015 1819 6015 1769
Wire Wire Line
	5965 1819 6015 1819
Wire Wire Line
	6015 1919 6015 1969
Wire Wire Line
	5965 1919 6015 1919
$Comp
L power:GND #PWR032
U 1 1 5F07EB25
P 6015 1969
F 0 "#PWR032" H 6015 1719 50  0001 C CNN
F 1 "GND" H 6020 1796 50  0000 C CNN
F 2 "" H 6015 1969 50  0001 C CNN
F 3 "" H 6015 1969 50  0001 C CNN
	1    6015 1969
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5F07EB11
P 5765 1919
F 0 "J4" H 5900 2094 50  0000 C CNN
F 1 "BATT2" H 5765 2019 50  0000 C CNN
F 2 "Acea:AMASS_XT60PW-M" H 5765 1919 50  0001 C CNN
F 3 "~" H 5765 1919 50  0001 C CNN
F 4 "" H 5765 1919 50  0001 C CNN "other_URL"
F 5 "C98732" H 5765 1919 50  0001 C CNN "lcsc_part_number"
	1    5765 1919
	1    0    0    1   
$EndComp
Wire Wire Line
	4697 1249 4697 1188
Wire Wire Line
	4697 1188 4532 1188
Connection ~ 4532 1188
Wire Wire Line
	4532 1188 4532 1238
Wire Wire Line
	4697 1649 4697 1249
Connection ~ 4697 1249
Text GLabel 2700 5900 2    50   Input ~ 0
FANON
$Comp
L Transistor_BJT:MMBT3904 Q12
U 1 1 606A25F9
P 8800 4550
F 0 "Q12" H 9010 4473 50  0000 L CNN
F 1 "MMBT3904" H 9009 4385 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9000 4475 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 8800 4550 50  0001 L CNN
F 4 "C20526" H 8800 4550 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_Changjiang-Electronics-Tech-CJ-MMBT3904_C20526.html/?href=jlc-SMT" H 8800 4550 50  0001 C CNN "lcsc_url"
F 6 "MMBT3904" H 8800 4550 50  0001 C CNN "mfr_part_number"
F 7 "SOT-23" H 8800 4550 50  0001 C CNN "package"
	1    8800 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 606A4EE5
P 8900 4750
F 0 "#PWR0107" H 8900 4500 50  0001 C CNN
F 1 "GND" H 8899 4612 50  0000 C CNN
F 2 "" H 8900 4750 50  0001 C CNN
F 3 "" H 8900 4750 50  0001 C CNN
	1    8900 4750
	1    0    0    -1  
$EndComp
Text GLabel 8600 4550 0    50   Input ~ 0
FANON
Text GLabel 8900 4350 1    50   Output ~ 0
FANGND
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 606AD30F
P 7400 4500
F 0 "J9" H 7550 4850 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7550 4750 50  0000 C CNN
F 2 "Connector_JST:JST_SH_SM03B-SRSS-TB_1x03-1MP_P1.00mm_Horizontal" H 7400 4500 50  0001 C CNN
F 3 "~" H 7400 4500 50  0001 C CNN
F 4 "C160403" H 7400 4500 50  0001 C CNN "lcsc_part_number"
	1    7400 4500
	1    0    0    -1  
$EndComp
Text GLabel 7650 4500 2    50   Output ~ 0
FANGND
Wire Wire Line
	7650 4500 7600 4500
Text GLabel 7650 4400 2    50   Output ~ 0
B2C
Wire Wire Line
	7650 4600 7600 4600
Wire Notes Line
	8150 5200 8150 3700
Wire Notes Line
	9500 5200 9500 3700
Text Notes 8650 3850 0    50   ~ 0
FAN PWM
Text Notes 7450 3850 0    50   ~ 0
12V FAN
$Comp
L Device:R_Small R27
U 1 1 608AE0EC
P 4132 1438
F 0 "R27" H 4252 1490 50  0000 C CNN
F 1 "510R" H 4282 1388 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4132 1438 50  0001 C CNN
F 3 "" H 4132 1438 50  0001 C CNN
F 4 "C269885" H 4132 1438 50  0001 C CNN "lcsc_part_number"
F 5 "0603" H 4132 1438 50  0001 C CNN "package"
	1    4132 1438
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R29
U 1 1 608B25B5
P 6094 1407
F 0 "R29" H 6214 1459 50  0000 C CNN
F 1 "510R" H 6244 1357 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6094 1407 50  0001 C CNN
F 3 "" H 6094 1407 50  0001 C CNN
F 4 "C269885" H 6094 1407 50  0001 C CNN "lcsc_part_number"
F 5 "0603" H 6094 1407 50  0001 C CNN "package"
	1    6094 1407
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6663 1207 6663 1607
Wire Wire Line
	6663 1207 6494 1207
Connection ~ 6663 1207
Connection ~ 6494 1207
$Comp
L Device:R_Small R28
U 1 1 60912C5C
P 4400 3299
F 0 "R28" H 4520 3351 50  0000 C CNN
F 1 "510R" H 4550 3249 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4400 3299 50  0001 C CNN
F 3 "" H 4400 3299 50  0001 C CNN
F 4 "C269885" H 4400 3299 50  0001 C CNN "lcsc_part_number"
F 5 "0603" H 4400 3299 50  0001 C CNN "package"
	1    4400 3299
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R30
U 1 1 6091300D
P 6950 3300
F 0 "R30" H 7070 3352 50  0000 C CNN
F 1 "510R" H 7100 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6950 3300 50  0001 C CNN
F 3 "" H 6950 3300 50  0001 C CNN
F 4 "C269885" H 6950 3300 50  0001 C CNN "lcsc_part_number"
F 5 "0603" H 6950 3300 50  0001 C CNN "package"
	1    6950 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4212 3249 4212 3299
Wire Wire Line
	4212 3299 4300 3299
Wire Wire Line
	6850 3300 6799 3300
Wire Wire Line
	6799 3300 6799 3262
Connection ~ 9862 3085
Wire Wire Line
	4800 3000 4800 3099
$Comp
L Transistor_BJT:MMBT3904 Q3
U 1 1 604ACDF6
P 4700 3299
F 0 "Q3" H 4910 3222 50  0000 L CNN
F 1 "MMBT3904" H 4909 3134 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4900 3224 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 4700 3299 50  0001 L CNN
F 4 "C20526" H 4700 3299 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_Changjiang-Electronics-Tech-CJ-MMBT3904_C20526.html/?href=jlc-SMT" H 4700 3299 50  0001 C CNN "lcsc_url"
F 6 "MMBT3904" H 4700 3299 50  0001 C CNN "mfr_part_number"
F 7 "SOT-23" H 4700 3299 50  0001 C CNN "package"
	1    4700 3299
	1    0    0    -1  
$EndComp
Connection ~ 4800 3099
Wire Wire Line
	5100 3299 5149 3299
Wire Wire Line
	2871 4420 2886 4420
Wire Wire Line
	2886 4420 2886 4500
Wire Wire Line
	2886 4500 2900 4500
Wire Wire Line
	2871 4579 2886 4579
Wire Wire Line
	2886 4579 2886 4500
Connection ~ 2886 4500
$Comp
L Device:R_Small R31
U 1 1 60B44640
P 9462 3285
F 0 "R31" H 9582 3337 50  0000 C CNN
F 1 "510R" H 9612 3235 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9462 3285 50  0001 C CNN
F 3 "" H 9462 3285 50  0001 C CNN
F 4 "C269885" H 9462 3285 50  0001 C CNN "lcsc_part_number"
F 5 "0603" H 9462 3285 50  0001 C CNN "package"
	1    9462 3285
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9362 3285 9257 3285
Wire Wire Line
	9257 3285 9257 3284
NoConn ~ 2700 6700
NoConn ~ 2700 6800
Text Notes 3047 5731 0    50   ~ 0
RTC_GPIO16
NoConn ~ 2700 5800
$Comp
L Device:C_Small C8
U 1 1 608BD4B6
P 900 1900
F 0 "C8" H 700 1950 50  0000 L CNN
F 1 "4.7uF" H 600 1800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 900 1900 50  0001 C CNN
F 3 "" H 900 1900 50  0001 C CNN
F 4 "C1779" H 900 1900 50  0001 C CNN "lcsc_part_number"
	1    900  1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1500 1400 1500
$Comp
L power:GND #PWR03
U 1 1 608CF906
P 1200 2000
F 0 "#PWR03" H 1200 1750 50  0001 C CNN
F 1 "GND" H 1205 1827 50  0000 C CNN
F 2 "" H 1200 2000 50  0001 C CNN
F 3 "" H 1200 2000 50  0001 C CNN
	1    1200 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1800 1400 1800
Wire Wire Line
	1200 1800 900  1800
Connection ~ 1200 1800
Wire Wire Line
	1500 1900 1400 1900
Wire Wire Line
	1400 1900 1400 1800
Connection ~ 1400 1800
Wire Wire Line
	1400 1800 1200 1800
Wire Wire Line
	900  1500 900  1800
Connection ~ 900  1800
$Comp
L power:GND #PWR06
U 1 1 60905185
P 1800 2250
F 0 "#PWR06" H 1800 2000 50  0001 C CNN
F 1 "GND" H 1805 2077 50  0000 C CNN
F 2 "" H 1800 2250 50  0001 C CNN
F 3 "" H 1800 2250 50  0001 C CNN
	1    1800 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 6090670E
P 2500 1650
F 0 "C13" H 2250 1650 50  0000 L CNN
F 1 "100n" H 2250 1550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2500 1650 50  0001 C CNN
F 3 "" H 2500 1650 50  0001 C CNN
F 4 "C14663" H 2500 1650 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_100nF-104-10-50V_C14663.html/?href=jlc-SMT" H 2500 1650 50  0001 C CNN "lcsc_url"
F 6 "0603" H 2500 1650 50  0001 C CNN "package"
	1    2500 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1800 2100 1550
Wire Wire Line
	2100 1550 2500 1550
Wire Wire Line
	2500 1750 2500 1900
Wire Wire Line
	2500 1900 2100 1900
$Comp
L Device:L_Small L1
U 1 1 609206F3
P 2850 1900
F 0 "L1" V 3050 1900 50  0000 C CNN
F 1 "L_Small" V 2950 1900 50  0000 C CNN
F 2 "Inductor_SMD:L_Taiyo-Yuden_NR-30xx" H 2850 1900 50  0001 C CNN
F 3 "~" H 2850 1900 50  0001 C CNN
F 4 "C167747" H 2850 1900 50  0001 C CNN "lcsc_part_number"
	1    2850 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 6093A551
P 2450 2100
F 0 "R3" H 2250 2150 50  0000 L CNN
F 1 "40.2k" H 2200 2050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2450 2100 50  0001 C CNN
F 3 "" H 2450 2100 50  0001 C CNN
F 4 "C12447" H 2450 2100 50  0001 C CNN "lcsc_part_number"
	1    2450 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 6093CB2C
P 2150 2550
F 0 "R2" H 1950 2600 50  0000 L CNN
F 1 "124k" H 1900 2500 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2150 2550 50  0001 C CNN
F 3 "" H 2150 2550 50  0001 C CNN
F 4 "C22788" H 2150 2550 50  0001 C CNN "lcsc_part_number"
	1    2150 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 6093D5CA
P 2300 2550
F 0 "C11" H 2400 2600 50  0000 L CNN
F 1 "33p" H 2400 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2300 2550 50  0001 C CNN
F 3 "" H 2300 2550 50  0001 C CNN
F 4 "C1663" H 2300 2550 50  0001 C CNN "lcsc_part_number"
	1    2300 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1900 2700 1900
Connection ~ 2500 1900
$Comp
L power:GND #PWR09
U 1 1 6094EF21
P 2450 2200
F 0 "#PWR09" H 2450 1950 50  0001 C CNN
F 1 "GND" H 2455 2027 50  0000 C CNN
F 2 "" H 2450 2200 50  0001 C CNN
F 3 "" H 2450 2200 50  0001 C CNN
	1    2450 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR052
U 1 1 6094F3C1
P 2700 2200
F 0 "#PWR052" H 2700 1950 50  0001 C CNN
F 1 "GND" H 2705 2027 50  0000 C CNN
F 2 "" H 2700 2200 50  0001 C CNN
F 3 "" H 2700 2200 50  0001 C CNN
	1    2700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2000 2150 2000
Wire Wire Line
	2300 2450 2150 2450
Wire Wire Line
	2150 2450 2150 2000
Connection ~ 2150 2450
Connection ~ 2150 2000
Wire Wire Line
	2150 2000 2450 2000
Wire Wire Line
	2300 2650 2150 2650
Wire Wire Line
	2150 2650 2150 2900
Wire Wire Line
	2150 2900 3300 2900
Wire Wire Line
	3300 2900 3300 1900
Wire Wire Line
	3300 1900 3150 1900
Connection ~ 2150 2650
$Comp
L Device:C_Small C14
U 1 1 60990965
P 3050 2000
F 0 "C14" H 3150 1950 50  0000 L CNN
F 1 "10u" H 3100 1800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3050 2000 50  0001 C CNN
F 3 "" H 3050 2000 50  0001 C CNN
F 4 "C15850" H 3050 2000 50  0001 C CNN "lcsc_part_number"
	1    3050 2000
	1    0    0    -1  
$EndComp
Connection ~ 3050 1900
Wire Wire Line
	3050 1900 2950 1900
$Comp
L power:GND #PWR053
U 1 1 60991C05
P 3050 2100
F 0 "#PWR053" H 3050 1850 50  0001 C CNN
F 1 "GND" H 3055 1927 50  0000 C CNN
F 2 "" H 3050 2100 50  0001 C CNN
F 3 "" H 3050 2100 50  0001 C CNN
	1    3050 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR054
U 1 1 609A2BAF
P 3150 1900
F 0 "#PWR054" H 3150 1750 50  0001 C CNN
F 1 "+3V3" H 3165 2073 50  0000 C CNN
F 2 "" H 3150 1900 50  0001 C CNN
F 3 "" H 3150 1900 50  0001 C CNN
	1    3150 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C15
U 1 1 609A51C9
P 550 4700
F 0 "C15" H 600 4800 50  0000 L CNN
F 1 "4.7uF" H 600 4600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 550 4700 50  0001 C CNN
F 3 "" H 550 4700 50  0001 C CNN
F 4 "C1779" H 550 4700 50  0001 C CNN "lcsc_part_number"
	1    550  4700
	1    0    0    -1  
$EndComp
Connection ~ 3150 1900
Wire Wire Line
	3150 1900 3050 1900
Wire Notes Line
	3500 500  3500 3700
Wire Notes Line
	3500 2200 11250 2200
$Comp
L Diode:1N4148WS D9
U 1 1 60A3AF10
P 9066 2594
F 0 "D9" V 8972 2718 50  0000 L CNN
F 1 "B5819W" V 9072 2718 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 9066 2419 50  0001 C CNN
F 3 "" H 9066 2594 50  0001 C CNN
F 4 "C8598" H 9066 2594 50  0001 C CNN "lcsc_part_number"
	1    9066 2594
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148WS D3
U 1 1 60A5241C
P 4075 2586
F 0 "D3" V 3981 2710 50  0000 L CNN
F 1 "B5819W" V 4081 2710 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 4075 2411 50  0001 C CNN
F 3 "" H 4075 2586 50  0001 C CNN
F 4 "C8598" H 4075 2586 50  0001 C CNN "lcsc_part_number"
	1    4075 2586
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148WS D1
U 1 1 60A54F8B
P 2700 2050
F 0 "D1" V 2700 2100 50  0000 L CNN
F 1 "B5819W" V 2850 2050 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2700 1875 50  0001 C CNN
F 3 "" H 2700 2050 50  0001 C CNN
F 4 "C8598" H 2700 2050 50  0001 C CNN "lcsc_part_number"
	1    2700 2050
	0    1    1    0   
$EndComp
Connection ~ 2700 1900
Wire Wire Line
	2700 1900 2750 1900
$Comp
L Diode:1N4148WS D2
U 1 1 60A6092C
P 900 1350
F 0 "D2" V 900 1450 50  0000 L CNN
F 1 "B5819W" V 1050 1450 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 900 1175 50  0001 C CNN
F 3 "" H 900 1350 50  0001 C CNN
F 4 "C8598" H 900 1350 50  0001 C CNN "lcsc_part_number"
	1    900  1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 4400 7600 4400
Text GLabel 7650 4600 2    50   Output ~ 0
RPM
Text GLabel 2700 6000 2    50   Input ~ 0
RPM
Wire Notes Line
	5950 2200 5950 3700
Wire Notes Line
	450  3700 11250 3700
Wire Notes Line
	8500 2200 8500 3700
Connection ~ 7350 3100
$Comp
L Transistor_FET:QM6015D Q2
U 1 1 60943812
P 5000 3099
F 0 "Q2" H 5192 3241 50  0000 L CNN
F 1 "AONR21321" H 5199 3160 50  0000 L CNN
F 2 "Acea:TRANS_AONR21321" H 5200 3024 50  0001 L CIN
F 3 "" H 5000 3099 50  0001 L CNN
F 4 "C431196" H 5000 3099 50  0001 C CNN "lcsc_part_number"
F 5 "DFN 3x3" H 5000 3099 50  0001 C CNN "package"
	1    5000 3099
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:QM6015D Q8
U 1 1 6093CE02
P 7550 3100
F 0 "Q8" H 7742 3242 50  0000 L CNN
F 1 "AONR21321" H 7749 3161 50  0000 L CNN
F 2 "Acea:TRANS_AONR21321" H 7750 3025 50  0001 L CIN
F 3 "" H 7550 3100 50  0001 L CNN
F 4 "C431196" H 7550 3100 50  0001 C CNN "lcsc_part_number"
F 5 "DFN 3x3" H 7550 3100 50  0001 C CNN "package"
	1    7550 3100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:QM6015D Q10
U 1 1 6092D1B5
P 10062 3085
F 0 "Q10" H 10254 3227 50  0000 L CNN
F 1 "AONR21321" H 10261 3146 50  0000 L CNN
F 2 "Acea:TRANS_AONR21321" H 10262 3010 50  0001 L CIN
F 3 "" H 10062 3085 50  0001 L CNN
F 4 "C431196" H 10062 3085 50  0001 C CNN "lcsc_part_number"
F 5 "DFN 3x3" H 10062 3085 50  0001 C CNN "package"
	1    10062 3085
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:QM6015D Q6
U 1 1 608C8105
P 6863 1607
F 0 "Q6" H 7055 1749 50  0000 L CNN
F 1 "AONR21321" H 7062 1668 50  0000 L CNN
F 2 "Acea:TRANS_AONR21321" H 7063 1532 50  0001 L CIN
F 3 "" H 6863 1607 50  0001 L CNN
F 4 "C431196" H 6863 1607 50  0001 C CNN "lcsc_part_number"
F 5 "DFN 3x3" H 6863 1607 50  0001 C CNN "package"
	1    6863 1607
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:QM6015D Q4
U 1 1 606486BE
P 4897 1649
F 0 "Q4" H 5089 1791 50  0000 L CNN
F 1 "AONR21321" H 5096 1710 50  0000 L CNN
F 2 "Acea:TRANS_AONR21321" H 5097 1574 50  0001 L CIN
F 3 "" H 4897 1649 50  0001 L CNN
F 4 "C431196" H 4897 1649 50  0001 C CNN "lcsc_part_number"
F 5 "DFN 3x3" H 4897 1649 50  0001 C CNN "package"
	1    4897 1649
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:QM6015D Q11
U 1 1 606325E3
P 4897 1249
F 0 "Q11" H 5089 1391 50  0000 L CNN
F 1 "AONR21321" H 5096 1310 50  0000 L CNN
F 2 "Acea:TRANS_AONR21321" H 5097 1174 50  0001 L CIN
F 3 "" H 4897 1249 50  0001 L CNN
F 4 "C431196" H 4897 1249 50  0001 C CNN "lcsc_part_number"
F 5 "DFN 3x3" H 4897 1249 50  0001 C CNN "package"
	1    4897 1249
	1    0    0    1   
$EndComp
$Comp
L esp32_battery_isolator-rescue:BL9342-Relay U7
U 1 1 608BAD54
P 1800 1950
F 0 "U7" H 1800 2350 50  0000 C CNN
F 1 "BL9342" H 1800 2250 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 1850 1700 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/lcsc/1809050135_BL-Shanghai-Belling-BL9342_C93176.pdf" H 1550 2400 50  0001 C CNN
F 4 "C93176" H 1800 1950 50  0001 C CNN "lcsc_part_number"
	1    1800 1950
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:QM6015D Q13
U 1 1 608CF4ED
P 6863 1207
F 0 "Q13" H 7055 1349 50  0000 L CNN
F 1 "AONR21321" H 7062 1268 50  0000 L CNN
F 2 "Acea:TRANS_AONR21321" H 7063 1132 50  0001 L CIN
F 3 "" H 6863 1207 50  0001 L CNN
F 4 "C431196" H 6863 1207 50  0001 C CNN "lcsc_part_number"
F 5 "DFN 3x3" H 6863 1207 50  0001 C CNN "package"
	1    6863 1207
	1    0    0    1   
$EndComp
$EndSCHEMATC
