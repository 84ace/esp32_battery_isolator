EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ESP32 Battery Isolator"
Date "2021-09-30"
Rev "G"
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
P 550 4550
F 0 "#PWR02" H 550 4400 50  0001 C CNN
F 1 "+3V3" H 565 4723 50  0000 C CNN
F 2 "" H 550 4550 50  0001 C CNN
F 3 "" H 550 4550 50  0001 C CNN
	1    550  4550
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
Text GLabel 10900 4575 2    50   Input ~ 0
TXD
Text GLabel 10900 4475 2    50   Input ~ 0
RXD
Text Notes 1966 3855 0    50   ~ 0
ESP-32
Text GLabel 7277 5841 0    50   Input ~ 0
B1VD
$Comp
L power:GND #PWR040
U 1 1 5F0570E9
P 7377 6041
F 0 "#PWR040" H 7377 5791 50  0001 C CNN
F 1 "GND" H 7382 5868 50  0000 C CNN
F 2 "" H 7377 6041 50  0001 C CNN
F 3 "" H 7377 6041 50  0001 C CNN
	1    7377 6041
	1    0    0    -1  
$EndComp
Text GLabel 7877 5841 0    50   Input ~ 0
B2VD
$Comp
L power:GND #PWR041
U 1 1 5F05BD0E
P 7977 6041
F 0 "#PWR041" H 7977 5791 50  0001 C CNN
F 1 "GND" H 7982 5868 50  0000 C CNN
F 2 "" H 7977 6041 50  0001 C CNN
F 3 "" H 7977 6041 50  0001 C CNN
	1    7977 6041
	1    0    0    -1  
$EndComp
Text GLabel 7377 5641 1    50   Input ~ 0
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
Wire Notes Line
	6972 2205 6971 2205
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5F1D7B08
P 2500 2850
F 0 "#FLG01" H 2500 2925 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 3023 50  0000 C CNN
F 2 "" H 2500 2850 50  0001 C CNN
F 3 "~" H 2500 2850 50  0001 C CNN
	1    2500 2850
	0    1    1    0   
$EndComp
Text Notes 1300 600  0    50   ~ 0
DC-DC Buck (40V to 3.3V 600mA)
Wire Notes Line
	4700 7800 4650 7800
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
Text Notes 5028 7481 0    50   ~ 0
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
P 10500 4575
F 0 "U5" H 10675 4950 50  0000 C CNN
F 1 "CH340N" H 10700 5075 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 10350 5325 50  0001 C CNN
F 3 "" H 10400 4775 50  0001 C CNN
F 4 "C506813" H 10500 4575 50  0001 C CNN "lcsc_part_number"
F 5 "1" H 10500 4575 50  0001 C CNN "lcsc_min_qty"
F 6 "CH340N" H 10500 4575 50  0001 C CNN "mfr_part_number"
F 7 "SOP-8" H 10500 4575 50  0001 C CNN "package"
	1    10500 4575
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:GND #PWR035
U 1 1 5F737308
P 10500 4975
F 0 "#PWR035" H 10500 4975 30  0001 C CNN
F 1 "GND" H 10500 4905 30  0001 C CNN
F 2 "" H 10500 4975 60  0000 C CNN
F 3 "" H 10500 4975 60  0000 C CNN
	1    10500 4975
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:GND #PWR033
U 1 1 5F73730F
P 9700 4675
F 0 "#PWR033" H 9700 4675 30  0001 C CNN
F 1 "GND" H 9700 4605 30  0001 C CNN
F 2 "" H 9700 4675 60  0000 C CNN
F 3 "" H 9700 4675 60  0000 C CNN
	1    9700 4675
	1    0    0    -1  
$EndComp
Text GLabel 10100 4675 0    50   Input ~ 0
D+
Text GLabel 10100 4775 0    50   Input ~ 0
D-
$Comp
L MAX17260:GND #PWR038
U 1 1 5F737323
P 10925 4350
F 0 "#PWR038" H 10925 4350 30  0001 C CNN
F 1 "GND" H 10925 4280 30  0001 C CNN
F 2 "" H 10925 4350 60  0000 C CNN
F 3 "" H 10925 4350 60  0000 C CNN
	1    10925 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 4475 10100 4475
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
P 7377 5741
F 0 "R10" H 7497 5793 50  0000 C CNN
F 1 "200k" H 7513 5699 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7377 5741 50  0001 C CNN
F 3 "" H 7377 5741 50  0001 C CNN
F 4 "C25811" H 7377 5741 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF2003T5E_C25811.html/?href=jlc-SMT" H 7377 5741 50  0001 C CNN "lcsc_url"
F 6 "0603" H 7377 5741 50  0001 C CNN "package"
	1    7377 5741
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5F852B2F
P 7377 5941
F 0 "R11" H 7497 5993 50  0000 C CNN
F 1 "33k" H 7495 5897 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7377 5941 50  0001 C CNN
F 3 "" H 7377 5941 50  0001 C CNN
F 4 " C4216" H 7377 5941 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF3302T5E_C4216.html/?href=jlc-SMT" H 7377 5941 50  0001 C CNN "lcsc_url"
F 6 "0603" H 7377 5941 50  0001 C CNN "package"
	1    7377 5941
	1    0    0    -1  
$EndComp
Wire Wire Line
	7277 5841 7377 5841
Connection ~ 7377 5841
Wire Wire Line
	7877 5841 7977 5841
Text Notes 10300 3850 0    50   ~ 0
UART-USB
Text Notes 4275 600  0    50   ~ 0
Batt 1 isolator (starter)
NoConn ~ 1500 5100
NoConn ~ 1500 5200
NoConn ~ 2700 6200
Text GLabel 2700 6900 2    50   Output ~ 0
B1ON
Text GLabel 2800 2450 2    50   Input ~ 0
5V
NoConn ~ 4800 6300
NoConn ~ 4800 6400
$Comp
L MAX17260:TACT-SWITCH SW1
U 1 1 5FA6E558
P 3200 4050
F 0 "SW1" H 3200 4305 50  0000 C CNN
F 1 "C480325" H 3200 4214 50  0000 C CNN
F 2 "Acea:TS4550TP" H 3200 4327 60  0001 C CNN
F 3 "" H 3200 4221 60  0001 C CNN
F 4 "C480325" H 3200 4050 50  0001 C CNN "lcsc_part_number"
F 5 "4.5mm,4.5mm SMD" H 3200 4050 50  0001 C CNN "package"
	1    3200 4050
	1    0    0    -1  
$EndComp
Text GLabel 2871 4420 0    50   Input ~ 0
MODE
Text GLabel 2700 7000 2    50   Input ~ 0
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
$Comp
L power:GND #PWR018
U 1 1 5FAC6DC8
P 3925 800
F 0 "#PWR018" H 3925 550 50  0001 C CNN
F 1 "GND" H 3930 627 50  0000 C CNN
F 2 "" H 3925 800 50  0001 C CNN
F 3 "" H 3925 800 50  0001 C CNN
	1    3925 800 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5FAC6DBE
P 3650 750
F 0 "J1" H 3785 925 50  0000 C CNN
F 1 "BATT1" H 3650 850 50  0000 C CNN
F 2 "Acea:AMASS_XT60PW-M" H 3650 750 50  0001 C CNN
F 3 "~" H 3650 750 50  0001 C CNN
F 4 "" H 3650 750 50  0001 C CNN "other_URL"
F 5 "C98732" H 3650 750 50  0001 C CNN "lcsc_part_number"
	1    3650 750 
	1    0    0    1   
$EndComp
Wire Notes Line
	8431 451  8429 451 
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
Text GLabel 4800 6000 0    50   Input ~ 0
B2CVD
Text Notes 3900 6450 0    50   ~ 0
Don’t use IN7 (temp)
Text Notes 4500 2325 0    50   ~ 0
Load 1 (freezer)
Wire Wire Line
	3852 3307 3852 3257
Wire Wire Line
	3802 3307 3852 3307
Wire Wire Line
	3852 3407 3852 3457
Wire Wire Line
	3802 3407 3852 3407
Text GLabel 3852 3257 1    50   Output ~ 0
LOAD1
$Comp
L power:GND #PWR027
U 1 1 5FD65F4F
P 3852 3457
F 0 "#PWR027" H 3852 3207 50  0001 C CNN
F 1 "GND" H 3857 3284 50  0000 C CNN
F 2 "" H 3852 3457 50  0001 C CNN
F 3 "" H 3852 3457 50  0001 C CNN
	1    3852 3457
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5FD65F62
P 3602 3407
F 0 "J5" H 3737 3582 50  0000 C CNN
F 1 "LOAD1" H 3652 3157 50  0000 C CNN
F 2 "Acea:AMASS_XT60PW-F" H 3602 3407 50  0001 C CNN
F 3 "~" H 3602 3407 50  0001 C CNN
F 4 "" H 3602 3407 50  0001 C CNN "other_URL"
F 5 "C428722" H 3602 3407 50  0001 C CNN "lcsc_part_number"
	1    3602 3407
	1    0    0    1   
$EndComp
Text GLabel 5475 2775 1    50   BiDi ~ 0
LOAD1
Text GLabel 4050 3200 1    50   Input ~ 0
L1ON
Text GLabel 5175 2575 1    50   Input ~ 0
COM
Text GLabel 5475 3175 3    50   BiDi ~ 0
COM
Text Notes 7075 2325 0    50   ~ 0
Load 2 (fridge)
Text Notes 9525 2325 0    50   ~ 0
Load 3 (lights)
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
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5FDBA5EF
P 6634 887
F 0 "J6" H 6769 1062 50  0000 C CNN
F 1 "CHGR" H 6634 987 50  0000 C CNN
F 2 "Acea:AMASS_XT60PW-M" H 6634 887 50  0001 C CNN
F 3 "~" H 6634 887 50  0001 C CNN
F 4 "" H 6634 887 50  0001 C CNN "other_URL"
F 5 "C98732" H 6634 887 50  0001 C CNN "lcsc_part_number"
	1    6634 887 
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5FDBA60B
P 6884 937
F 0 "#PWR028" H 6884 687 50  0001 C CNN
F 1 "GND" H 6889 764 50  0000 C CNN
F 2 "" H 6884 937 50  0001 C CNN
F 3 "" H 6884 937 50  0001 C CNN
	1    6884 937 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6834 887  6884 887 
Wire Wire Line
	6884 887  6884 937 
Text GLabel 6834 787  2    50   BiDi ~ 0
B1C
Text GLabel 9305 5854 0    50   Input ~ 0
3v3VD
$Comp
L power:GND #PWR047
U 1 1 5FE0D0D4
P 9405 6054
F 0 "#PWR047" H 9405 5804 50  0001 C CNN
F 1 "GND" H 9410 5881 50  0000 C CNN
F 2 "" H 9405 6054 50  0001 C CNN
F 3 "" H 9405 6054 50  0001 C CNN
	1    9405 6054
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R18
U 1 1 5FE0D0EB
P 9405 5754
F 0 "R18" H 9525 5806 50  0000 C CNN
F 1 "3.6k" H 9555 5704 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9405 5754 50  0001 C CNN
F 3 "" H 9405 5754 50  0001 C CNN
F 4 "C22980" H 9405 5754 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF3601T5E_C22980.html/?href=jlc-SMT" H 9405 5754 50  0001 C CNN "lcsc_url"
F 6 "0603" H 9405 5754 50  0001 C CNN "package"
	1    9405 5754
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R19
U 1 1 5FE0D106
P 9405 5954
F 0 "R19" H 9525 6006 50  0000 C CNN
F 1 "11k" H 9555 5904 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9405 5954 50  0001 C CNN
F 3 "" H 9405 5954 50  0001 C CNN
F 4 "C25950" H 9405 5954 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1102T5E_C25950.html/?href=jlc-SMT" H 9405 5954 50  0001 C CNN "lcsc_url"
F 6 "0603" H 9405 5954 50  0001 C CNN "package"
	1    9405 5954
	1    0    0    -1  
$EndComp
Wire Wire Line
	9305 5854 9405 5854
Connection ~ 9405 5854
$Comp
L power:+3V3 #PWR046
U 1 1 5FE1A912
P 9405 5654
F 0 "#PWR046" H 9405 5504 50  0001 C CNN
F 1 "+3V3" H 9420 5827 50  0000 C CNN
F 2 "" H 9405 5654 50  0001 C CNN
F 3 "" H 9405 5654 50  0001 C CNN
	1    9405 5654
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
Text GLabel 9955 5854 0    50   Input ~ 0
B1CVD
$Comp
L power:GND #PWR0102
U 1 1 601B6A7F
P 10055 6054
F 0 "#PWR0102" H 10055 5804 50  0001 C CNN
F 1 "GND" H 10060 5881 50  0000 C CNN
F 2 "" H 10055 6054 50  0001 C CNN
F 3 "" H 10055 6054 50  0001 C CNN
	1    10055 6054
	1    0    0    -1  
$EndComp
Wire Wire Line
	9955 5854 10055 5854
Text GLabel 10605 5854 0    50   Input ~ 0
B2CVD
$Comp
L power:GND #PWR0103
U 1 1 601BD714
P 10705 6054
F 0 "#PWR0103" H 10705 5804 50  0001 C CNN
F 1 "GND" H 10710 5881 50  0000 C CNN
F 2 "" H 10705 6054 50  0001 C CNN
F 3 "" H 10705 6054 50  0001 C CNN
	1    10705 6054
	1    0    0    -1  
$EndComp
Wire Wire Line
	10605 5854 10705 5854
Wire Notes Line
	7000 5200 11200 5200
Wire Notes Line
	7000 3700 7000 6550
Wire Notes Line
	3700 4800 7000 4800
Wire Notes Line
	5600 3700 5600 4800
Text GLabel 10055 5654 1    50   Input ~ 0
B1CM
Text GLabel 10705 5654 1    50   Input ~ 0
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
Text GLabel 3600 1550 1    50   Input ~ 0
B1ON
Text GLabel 4000 4400 0    50   Input ~ 0
SCL
Wire Wire Line
	1200 4550 850  4550
Connection ~ 1200 4550
Wire Wire Line
	850  4550 550  4550
Connection ~ 850  4550
Wire Wire Line
	1200 4900 1500 4900
Wire Wire Line
	1200 4900 1150 4900
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
P 7977 5741
F 0 "R12" H 8097 5793 50  0000 C CNN
F 1 "200k" H 8113 5699 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7977 5741 50  0001 C CNN
F 3 "" H 7977 5741 50  0001 C CNN
F 4 "C25811" H 7977 5741 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF2003T5E_C25811.html/?href=jlc-SMT" H 7977 5741 50  0001 C CNN "lcsc_url"
F 6 "0603" H 7977 5741 50  0001 C CNN "package"
	1    7977 5741
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 601ED5C7
P 7977 5941
F 0 "R13" H 8097 5993 50  0000 C CNN
F 1 "33k" H 8095 5897 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7977 5941 50  0001 C CNN
F 3 "" H 7977 5941 50  0001 C CNN
F 4 " C4216" H 7977 5941 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF3302T5E_C4216.html/?href=jlc-SMT" H 7977 5941 50  0001 C CNN "lcsc_url"
F 6 "0603" H 7977 5941 50  0001 C CNN "package"
	1    7977 5941
	1    0    0    -1  
$EndComp
Connection ~ 7977 5841
$Comp
L Device:R_Small R21
U 1 1 601F2504
P 10055 5754
F 0 "R21" H 10175 5806 50  0000 C CNN
F 1 "3.6k" H 10205 5704 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10055 5754 50  0001 C CNN
F 3 "" H 10055 5754 50  0001 C CNN
F 4 "C22980" H 10055 5754 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF3601T5E_C22980.html/?href=jlc-SMT" H 10055 5754 50  0001 C CNN "lcsc_url"
F 6 "0603" H 10055 5754 50  0001 C CNN "package"
	1    10055 5754
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R22
U 1 1 601F6E5A
P 10055 5954
F 0 "R22" H 10175 6006 50  0000 C CNN
F 1 "11k" H 10205 5904 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10055 5954 50  0001 C CNN
F 3 "" H 10055 5954 50  0001 C CNN
F 4 "C25950" H 10055 5954 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1102T5E_C25950.html/?href=jlc-SMT" H 10055 5954 50  0001 C CNN "lcsc_url"
F 6 "0603" H 10055 5954 50  0001 C CNN "package"
	1    10055 5954
	1    0    0    -1  
$EndComp
Connection ~ 10055 5854
$Comp
L Device:R_Small R23
U 1 1 601FB65C
P 10705 5754
F 0 "R23" H 10825 5806 50  0000 C CNN
F 1 "3.6k" H 10855 5704 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10705 5754 50  0001 C CNN
F 3 "" H 10705 5754 50  0001 C CNN
F 4 "C22980" H 10705 5754 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF3601T5E_C22980.html/?href=jlc-SMT" H 10705 5754 50  0001 C CNN "lcsc_url"
F 6 "0603" H 10705 5754 50  0001 C CNN "package"
	1    10705 5754
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R24
U 1 1 601FFE7A
P 10705 5954
F 0 "R24" H 10825 6006 50  0000 C CNN
F 1 "11k" H 10855 5904 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10705 5954 50  0001 C CNN
F 3 "" H 10705 5954 50  0001 C CNN
F 4 "C25950" H 10705 5954 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1102T5E_C25950.html/?href=jlc-SMT" H 10705 5954 50  0001 C CNN "lcsc_url"
F 6 "0603" H 10705 5954 50  0001 C CNN "package"
	1    10705 5954
	1    0    0    -1  
$EndComp
Connection ~ 10705 5854
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
P 10925 4250
F 0 "C10" H 10975 4350 50  0000 L CNN
F 1 "100n" H 11025 4250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10925 4250 50  0001 C CNN
F 3 "" H 10925 4250 50  0001 C CNN
F 4 "C14663" H 10925 4250 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_100nF-104-10-50V_C14663.html/?href=jlc-SMT" H 10925 4250 50  0001 C CNN "lcsc_url"
F 6 "0603" H 10925 4250 50  0001 C CNN "package"
	1    10925 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 602F963B
P 9700 4575
F 0 "C9" H 9800 4475 50  0000 L CNN
F 1 "100n" H 9800 4575 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9700 4575 50  0001 C CNN
F 3 "" H 9700 4575 50  0001 C CNN
F 4 "C14663" H 9700 4575 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_100nF-104-10-50V_C14663.html/?href=jlc-SMT" H 9700 4575 50  0001 C CNN "lcsc_url"
F 6 "0603" H 9700 4575 50  0001 C CNN "package"
	1    9700 4575
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:TACT-SWITCH SW2
U 1 1 601FAFC2
P 3200 4500
F 0 "SW2" H 3200 4755 50  0000 C CNN
F 1 "C480325" H 3200 4664 50  0000 C CNN
F 2 "Acea:TS4550TP" H 3200 4777 60  0001 C CNN
F 3 "" H 3200 4671 60  0001 C CNN
F 4 "C480325" H 3200 4500 50  0001 C CNN "lcsc_part_number"
F 5 "4.5mm,4.5mm SMD" H 3200 4500 50  0001 C CNN "package"
	1    3200 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 604ACE28
P 5175 3375
F 0 "#PWR029" H 5175 3125 50  0001 C CNN
F 1 "GND" H 5176 3240 50  0000 C CNN
F 2 "" H 5175 3375 50  0001 C CNN
F 3 "" H 5175 3375 50  0001 C CNN
	1    5175 3375
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR049
U 1 1 607A705A
P 3825 2736
F 0 "#PWR049" H 3825 2486 50  0001 C CNN
F 1 "GND" H 3830 2563 50  0000 C CNN
F 2 "" H 3825 2736 50  0001 C CNN
F 3 "" H 3825 2736 50  0001 C CNN
	1    3825 2736
	1    0    0    -1  
$EndComp
Text GLabel 3852 2324 2    50   Output ~ 0
LOAD1
Wire Wire Line
	3825 2436 3825 2324
Wire Wire Line
	3825 2324 3852 2324
Wire Wire Line
	6323 2330 6348 2330
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
Text Notes 9800 600  0    50   ~ 0
Batt 2 current measurement
Wire Wire Line
	9900 1450 9850 1450
Wire Wire Line
	9900 1350 9850 1350
Connection ~ 9850 1600
Wire Wire Line
	9850 1650 9900 1650
Wire Wire Line
	9850 1600 9850 1650
Wire Wire Line
	9900 1550 9850 1550
Wire Wire Line
	9850 1600 9850 1550
$Comp
L esp32_battery_isolator-rescue:CC6903-30A-Sensor_Current U6
U 1 1 5FAFE442
P 10300 1500
F 0 "U6" H 10600 1250 50  0000 L CNN
F 1 "CC6903SO-30A" H 10550 1150 50  0000 L CNN
F 2 "Package_SO:SOP-8_3.9x4.9mm_P1.27mm" H 10300 1500 50  0001 C CNN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS780-Datasheet.ashx?la=en" H 10300 1500 50  0001 C CNN
F 4 "C469388" H 10300 1500 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Current-Sensors_Cross-chip-CC6903SO-30A_C469388.html" H 10300 1500 50  0001 C CNN "lcsc_url"
F 6 "1" H 10300 1500 50  0001 C CNN "lcsc_min_qty"
F 7 "CC6903SO-30A" H 10300 1500 50  0001 C CNN "mfr_part_number"
F 8 "SOP-8" H 10300 1500 50  0001 C CNN "package"
	1    10300 1500
	1    0    0    -1  
$EndComp
Text GLabel 10700 1500 2    50   BiDi ~ 0
B2CM
$Comp
L power:GND #PWR0106
U 1 1 5FAE4F4A
P 10350 1800
F 0 "#PWR0106" H 10350 1550 50  0001 C CNN
F 1 "GND" H 10355 1627 50  0000 C CNN
F 2 "" H 10350 1800 50  0001 C CNN
F 3 "" H 10350 1800 50  0001 C CNN
	1    10350 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0105
U 1 1 5FADF299
P 10350 1200
F 0 "#PWR0105" H 10350 1050 50  0001 C CNN
F 1 "+3V3" H 10365 1373 50  0000 C CNN
F 2 "" H 10350 1200 50  0001 C CNN
F 3 "" H 10350 1200 50  0001 C CNN
	1    10350 1200
	1    0    0    -1  
$EndComp
Wire Notes Line
	6425 2200 6425 450 
Text GLabel 7025 1600 0    50   BiDi ~ 0
B1C
Connection ~ 7075 1400
Wire Wire Line
	7075 1400 7075 1450
Wire Wire Line
	7125 1450 7075 1450
Wire Wire Line
	7125 1350 7075 1350
Wire Wire Line
	7075 1400 7075 1350
Wire Wire Line
	7025 1400 7075 1400
Connection ~ 7075 1600
Wire Wire Line
	7075 1650 7125 1650
Wire Wire Line
	7075 1600 7075 1650
Wire Wire Line
	7125 1550 7075 1550
Wire Wire Line
	7075 1600 7075 1550
Wire Wire Line
	7025 1600 7075 1600
$Comp
L esp32_battery_isolator-rescue:CC6903-30A-Sensor_Current U4
U 1 1 5FD53F67
P 7525 1500
F 0 "U4" H 7825 1250 50  0000 L CNN
F 1 "CC6903SO-30A" H 7775 1150 50  0000 L CNN
F 2 "Package_SO:SOP-8_3.9x4.9mm_P1.27mm" H 7525 1500 50  0001 C CNN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS780-Datasheet.ashx?la=en" H 7525 1500 50  0001 C CNN
F 4 "C469388" H 7525 1500 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Current-Sensors_Cross-chip-CC6903SO-30A_C469388.html" H 7525 1500 50  0001 C CNN "lcsc_url"
F 6 "1" H 7525 1500 50  0001 C CNN "lcsc_min_qty"
F 7 "CC6903SO-30A" H 7525 1500 50  0001 C CNN "mfr_part_number"
F 8 "SOP-8" H 7525 1500 50  0001 C CNN "package"
	1    7525 1500
	1    0    0    -1  
$EndComp
Text GLabel 7925 1500 2    50   BiDi ~ 0
B1CM
Text Notes 6525 600  0    50   ~ 0
Batt 1 current measurement
$Comp
L power:GND #PWR044
U 1 1 5FD53F4C
P 7575 1800
F 0 "#PWR044" H 7575 1550 50  0001 C CNN
F 1 "GND" H 7580 1627 50  0000 C CNN
F 2 "" H 7575 1800 50  0001 C CNN
F 3 "" H 7575 1800 50  0001 C CNN
	1    7575 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR043
U 1 1 5FD53F34
P 7575 1200
F 0 "#PWR043" H 7575 1050 50  0001 C CNN
F 1 "+3V3" H 7590 1373 50  0000 C CNN
F 2 "" H 7575 1200 50  0001 C CNN
F 3 "" H 7575 1200 50  0001 C CNN
	1    7575 1200
	1    0    0    -1  
$EndComp
Text GLabel 5150 1725 3    50   BiDi ~ 0
COM
Text GLabel 9800 1400 0    50   BiDi ~ 0
COM
Text Notes 8575 600  0    50   ~ 0
Batt 2 connection (auxiliary)
$Comp
L power:GND #PWR032
U 1 1 5F07EB25
P 9125 1750
F 0 "#PWR032" H 9125 1500 50  0001 C CNN
F 1 "GND" H 9130 1577 50  0000 C CNN
F 2 "" H 9125 1750 50  0001 C CNN
F 3 "" H 9125 1750 50  0001 C CNN
	1    9125 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5F07EB11
P 8875 1700
F 0 "J4" H 9010 1875 50  0000 C CNN
F 1 "BATT2" H 8875 1800 50  0000 C CNN
F 2 "Acea:AMASS_XT60PW-M" H 8875 1700 50  0001 C CNN
F 3 "~" H 8875 1700 50  0001 C CNN
F 4 "" H 8875 1700 50  0001 C CNN "other_URL"
F 5 "C98732" H 8875 1700 50  0001 C CNN "lcsc_part_number"
	1    8875 1700
	1    0    0    1   
$EndComp
Text GLabel 2700 5900 2    50   Input ~ 0
FANON
$Comp
L Transistor_BJT:MMBT3904 Q12
U 1 1 606A25F9
P 8925 4575
F 0 "Q12" H 8625 4825 50  0000 L CNN
F 1 "MMBT3904" H 8525 4725 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9125 4500 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 8925 4575 50  0001 L CNN
F 4 "C20526" H 8925 4575 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_Changjiang-Electronics-Tech-CJ-MMBT3904_C20526.html/?href=jlc-SMT" H 8925 4575 50  0001 C CNN "lcsc_url"
F 6 "MMBT3904" H 8925 4575 50  0001 C CNN "mfr_part_number"
F 7 "SOT-23" H 8925 4575 50  0001 C CNN "package"
	1    8925 4575
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 606A4EE5
P 9025 4775
F 0 "#PWR0107" H 9025 4525 50  0001 C CNN
F 1 "GND" H 9024 4637 50  0000 C CNN
F 2 "" H 9025 4775 50  0001 C CNN
F 3 "" H 9025 4775 50  0001 C CNN
	1    9025 4775
	1    0    0    -1  
$EndComp
Text GLabel 8697 4575 0    50   Input ~ 0
FANON
Text GLabel 9025 4375 1    50   Output ~ 0
FANGND
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 606AD30F
P 7350 4500
F 0 "J9" H 7500 4850 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7500 4750 50  0000 C CNN
F 2 "Connector_JST:JST_SH_SM03B-SRSS-TB_1x03-1MP_P1.00mm_Horizontal" H 7350 4500 50  0001 C CNN
F 3 "~" H 7350 4500 50  0001 C CNN
F 4 "C160403" H 7350 4500 50  0001 C CNN "lcsc_part_number"
	1    7350 4500
	1    0    0    -1  
$EndComp
Text GLabel 7600 4500 2    50   Input ~ 0
FANGND
Wire Wire Line
	7600 4500 7550 4500
Text GLabel 7600 4400 2    50   Input ~ 0
COM
Wire Wire Line
	7600 4600 7550 4600
Wire Notes Line
	8150 5200 8150 3700
Wire Notes Line
	9500 5200 9500 3700
Text Notes 8650 3850 0    50   ~ 0
FAN PWM
Text Notes 7450 3850 0    50   ~ 0
12V FAN
$Comp
L Transistor_BJT:MMBT3904 Q3
U 1 1 604ACDF6
P 5075 2775
F 0 "Q3" H 4875 2825 50  0000 L CNN
F 1 "MMBT3904" H 4750 2925 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5275 2700 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 5075 2775 50  0001 L CNN
F 4 "C20526" H 5075 2775 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_Changjiang-Electronics-Tech-CJ-MMBT3904_C20526.html/?href=jlc-SMT" H 5075 2775 50  0001 C CNN "lcsc_url"
F 6 "MMBT3904" H 5075 2775 50  0001 C CNN "mfr_part_number"
F 7 "SOT-23" H 5075 2775 50  0001 C CNN "package"
	1    5075 2775
	1    0    0    -1  
$EndComp
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
NoConn ~ 2700 6700
NoConn ~ 2700 6800
Text Notes 3047 5731 0    50   ~ 0
RTC_GPIO16
NoConn ~ 2700 5800
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
P 3825 2586
F 0 "D3" V 3731 2710 50  0000 L CNN
F 1 "B5819W" V 3831 2710 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 3825 2411 50  0001 C CNN
F 3 "" H 3825 2586 50  0001 C CNN
F 4 "C8598" H 3825 2586 50  0001 C CNN "lcsc_part_number"
	1    3825 2586
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148WS D2
U 1 1 60A6092C
P 2650 2450
F 0 "D2" V 2650 2550 50  0000 L CNN
F 1 "B5819W" V 2800 2550 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2650 2275 50  0001 C CNN
F 3 "" H 2650 2450 50  0001 C CNN
F 4 "C8598" H 2650 2450 50  0001 C CNN "lcsc_part_number"
	1    2650 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4400 7550 4400
Text GLabel 7600 4600 2    50   Output ~ 0
RPM
Text GLabel 2700 6000 2    50   Input ~ 0
RPM
Wire Notes Line
	5950 2200 5950 3700
Wire Notes Line
	450  3700 11250 3700
Connection ~ 550  4550
$Comp
L xl1509_sop8:XL1509_SOP8 U2
U 1 1 6130AA98
P 1350 1650
F 0 "U2" H 1350 1200 50  0000 C CNN
F 1 "XL1509_SOP8" H 1350 1300 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1350 2075 50  0001 C CIN
F 3 "" H 1350 1650 50  0001 C CNN
F 4 "C2681226" H 1350 1650 50  0001 C CNN "lcsc_part_number"
	1    1350 1650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6130AA9F
P 800 1750
F 0 "#PWR0101" H 800 1500 50  0001 C CNN
F 1 "GND" H 950 1700 50  0000 C CNN
F 2 "" H 800 1750 50  0001 C CNN
F 3 "" H 800 1750 50  0001 C CNN
	1    800  1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  1450 950  1450
Wire Wire Line
	950  1750 800  1750
Wire Wire Line
	800  1750 800  1650
Wire Wire Line
	950  1650 800  1650
Connection ~ 800  1650
Wire Wire Line
	800  1650 800  1550
Wire Wire Line
	950  1550 800  1550
Connection ~ 800  1550
Wire Wire Line
	800  1550 800  1450
$Comp
L Device:CP_Small C3
U 1 1 6130AAAF
P 2050 2300
F 0 "C3" H 2150 2300 50  0000 L CNN
F 1 "220uF" H 2150 2200 50  0000 L CNN
F 2 "Capacitor_SMD:C_Elec_6.3x7.7" H 2050 2300 50  0001 C CNN
F 3 "~" H 2050 2300 50  0001 C CNN
F 4 "C371974" H 2050 2300 50  0001 C CNN "lcsc_part_number"
	1    2050 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2200 1850 2200
Connection ~ 2050 2200
$Comp
L Device:C_Small C2
U 1 1 6130AAB9
P 1850 2300
F 0 "C2" H 1650 2300 50  0000 L CNN
F 1 "1uF" H 1600 2200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1850 2300 50  0001 C CNN
F 3 "~" H 1850 2300 50  0001 C CNN
F 4 "C15849" H 1850 2300 50  0001 C CNN "lcsc_part_number"
	1    1850 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D1
U 1 1 6130AAC0
P 2400 1750
F 0 "D1" V 2500 1550 50  0000 L CNN
F 1 "SS34" V 2350 1450 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" V 2400 1750 50  0001 C CNN
F 3 "~" V 2400 1750 50  0001 C CNN
F 4 "C8678" H 2400 1750 50  0001 C CNN "lcsc_part_number"
	1    2400 1750
	0    1    1    0   
$EndComp
Connection ~ 800  1750
$Comp
L power:GND #PWR0108
U 1 1 6130AAC7
P 1850 2400
F 0 "#PWR0108" H 1850 2150 50  0001 C CNN
F 1 "GND" H 1850 2250 50  0000 C CNN
F 2 "" H 1850 2400 50  0001 C CNN
F 3 "" H 1850 2400 50  0001 C CNN
	1    1850 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 6130AACD
P 2050 2400
F 0 "#PWR0109" H 2050 2150 50  0001 C CNN
F 1 "GND" H 2050 2250 50  0000 C CNN
F 2 "" H 2050 2400 50  0001 C CNN
F 3 "" H 2050 2400 50  0001 C CNN
	1    2050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2200 1750 2200
Connection ~ 1850 2200
$Comp
L power:GND #PWR0110
U 1 1 6130AAD6
P 2400 1850
F 0 "#PWR0110" H 2400 1600 50  0001 C CNN
F 1 "GND" H 2400 1700 50  0000 C CNN
F 2 "" H 2400 1850 50  0001 C CNN
F 3 "" H 2400 1850 50  0001 C CNN
	1    2400 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L1
U 1 1 6130AADD
P 1950 1650
F 0 "L1" V 1892 1654 50  0000 C CNN
F 1 "47uH" V 1793 1654 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns_SRN6045TA" H 1950 1650 50  0001 C CNN
F 3 "~" H 1950 1650 50  0001 C CNN
F 4 "C36414" H 1950 1650 50  0001 C CNN "lcsc_part_number"
	1    1950 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 1550 2400 1650
Connection ~ 2400 1650
$Comp
L Device:CP_Small C8
U 1 1 6130AAE8
P 2600 1750
F 0 "C8" H 2700 1750 50  0000 L CNN
F 1 "220uF" H 2700 1650 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-15_AVX-H" H 2600 1750 50  0001 C CNN
F 3 "~" H 2600 1750 50  0001 C CNN
F 4 "C30242" H 2600 1750 50  0001 C CNN "lcsc_part_number"
	1    2600 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 6130AAEE
P 2600 1850
F 0 "#PWR0111" H 2600 1600 50  0001 C CNN
F 1 "GND" H 2600 1700 50  0000 C CNN
F 2 "" H 2600 1850 50  0001 C CNN
F 3 "" H 2600 1850 50  0001 C CNN
	1    2600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1650 2600 1650
$Comp
L power:+3.3V #PWR0112
U 1 1 6130AAF5
P 2600 1650
F 0 "#PWR0112" H 2600 1500 50  0001 C CNN
F 1 "+3.3V" H 2650 1850 50  0000 C CNN
F 2 "" H 2600 1650 50  0001 C CNN
F 3 "" H 2600 1650 50  0001 C CNN
	1    2600 1650
	1    0    0    -1  
$EndComp
Connection ~ 2600 1650
Wire Wire Line
	1750 1750 1750 2200
Wire Wire Line
	2500 2850 2500 2450
Wire Wire Line
	2500 2450 2500 2200
Wire Wire Line
	2050 2200 2500 2200
Connection ~ 2500 2450
Text GLabel 2700 6500 2    50   Output ~ 0
SYS_LED
Text GLabel 725  5400 1    50   Input ~ 0
SYS_LED
$Comp
L Device:R_Small R3
U 1 1 613FB5D9
P 725 5600
F 0 "R3" H 875 5650 50  0000 C CNN
F 1 "3.6k" H 925 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 725 5600 50  0001 C CNN
F 3 "" H 725 5600 50  0001 C CNN
F 4 "C22980" H 725 5600 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF3601T5E_C22980.html/?href=jlc-SMT" H 725 5600 50  0001 C CNN "lcsc_url"
F 6 "0603" H 725 5600 50  0001 C CNN "package"
	1    725  5600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D4
U 1 1 613FD7BF
P 725 5800
F 0 "D4" V 775 5700 50  0000 R CNN
F 1 "LED_Small" V 675 5700 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 725 5800 50  0001 C CNN
F 3 "~" V 725 5800 50  0001 C CNN
F 4 "C2286" H 725 5800 50  0001 C CNN "lcsc_part_number"
	1    725  5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 613FF196
P 725 5950
F 0 "#PWR03" H 725 5700 50  0001 C CNN
F 1 "GND" H 730 5777 50  0000 C CNN
F 2 "" H 725 5950 50  0001 C CNN
F 3 "" H 725 5950 50  0001 C CNN
	1    725  5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	725  5900 725  5950
Wire Wire Line
	725  5500 725  5400
$Comp
L power:GND #PWR06
U 1 1 6148B1A6
P 4650 3450
F 0 "#PWR06" H 4650 3200 50  0001 C CNN
F 1 "GND" H 4651 3315 50  0000 C CNN
F 2 "" H 4650 3450 50  0001 C CNN
F 3 "" H 4650 3450 50  0001 C CNN
	1    4650 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R32
U 1 1 61563FE9
P 8725 4675
F 0 "R32" H 8575 4675 50  0000 C CNN
F 1 "11k" H 8575 4575 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8725 4675 50  0001 C CNN
F 3 "" H 8725 4675 50  0001 C CNN
F 4 "C25950" H 8725 4675 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1102T5E_C25950.html/?href=jlc-SMT" H 8725 4675 50  0001 C CNN "lcsc_url"
F 6 "0603" H 8725 4675 50  0001 C CNN "package"
	1    8725 4675
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 61563FF3
P 8725 4775
F 0 "#PWR010" H 8725 4525 50  0001 C CNN
F 1 "GND" H 8726 4640 50  0000 C CNN
F 2 "" H 8725 4775 50  0001 C CNN
F 3 "" H 8725 4775 50  0001 C CNN
	1    8725 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	8697 4575 8725 4575
Connection ~ 8725 4575
Wire Wire Line
	1750 1650 1850 1650
Wire Wire Line
	2050 1650 2400 1650
Wire Wire Line
	1750 1550 2400 1550
NoConn ~ 1750 1450
Text Notes 7525 6400 0    50   ~ 0
18V max.
Text Notes 2650 4250 0    50   ~ 0
CLRs?
Text Notes 9900 6400 0    50   ~ 0
3.4V max.
Text Notes 8000 2125 0    50   ~ 0
25A max.
Text Notes 10850 2175 0    50   ~ 0
25A max.
Text Notes 5000 2175 0    50   ~ 0
32.5A max cont.\n136A pulsed
Text GLabel 10900 4775 2    50   Input ~ 0
RST
Text Notes 875  4200 0    50   ~ 0
Hold boot button to enter bootloader \nas ~RST~ will reset the uC automatically
Wire Wire Line
	10500 4275 10500 4150
Wire Wire Line
	10500 4150 10925 4150
Connection ~ 10500 4150
Wire Wire Line
	10500 4150 10500 4100
$Comp
L Device:Buzzer BZ1
U 1 1 6160ADE0
P 925 6575
F 0 "BZ1" H 1150 6500 50  0000 C CNN
F 1 "Buzzer" H 1125 6375 50  0000 C CNN
F 2 "Buzzer_Beeper:SMDBuzzer_C201046" V 900 6675 50  0001 C CNN
F 3 "~" V 900 6675 50  0001 C CNN
F 4 "C201046" H 925 6575 50  0001 C CNN "lcsc_part_number"
	1    925  6575
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 6160BBCA
P 1025 7125
F 0 "#PWR0114" H 1025 6875 50  0001 C CNN
F 1 "GND" H 1030 6952 50  0000 C CNN
F 2 "" H 1025 7125 50  0001 C CNN
F 3 "" H 1025 7125 50  0001 C CNN
	1    1025 7125
	1    0    0    -1  
$EndComp
Text GLabel 2700 6100 2    50   Output ~ 0
BZR
Text GLabel 725  6925 0    50   Input ~ 0
BZR
Text Notes 600  7250 0    50   ~ 0
Buzzer
Text Notes 3150 3650 0    50   ~ 0
2A max.
Wire Wire Line
	9075 1700 9125 1700
Wire Wire Line
	9125 1700 9125 1750
NoConn ~ 2700 6600
Wire Wire Line
	3850 750  3925 750 
Wire Wire Line
	3925 750  3925 800 
Text GLabel 3850 650  2    50   BiDi ~ 0
B1VM
Text Notes 5300 3675 0    50   ~ 0
32.5A max cont.\n136A pulsed
Text Notes 10575 3675 0    50   ~ 0
32.5A max cont.\n136A pulsed
Text Notes 7850 3675 0    50   ~ 0
32.5A max cont.\n136A pulsed
$Comp
L Transistor_FET:QM6015D Q2
U 1 1 60943812
P 5375 2975
F 0 "Q2" H 5525 2850 50  0000 L CNN
F 1 "AONR21357" H 5500 3125 50  0000 L CNN
F 2 "Acea:DFN-TRANS_AONR21321" H 5575 2900 50  0001 L CIN
F 3 "" H 5375 2975 50  0001 L CNN
F 4 "C431196" H 5375 2975 50  0001 C CNN "lcsc_part_number"
F 5 "DFN 3x3" H 5375 2975 50  0001 C CNN "package"
	1    5375 2975
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q5
U 1 1 616F9C2F
P 4550 3250
F 0 "Q5" H 4350 3300 50  0000 L CNN
F 1 "MMBT3904" H 4225 3400 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4750 3175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 4550 3250 50  0001 L CNN
F 4 "C20526" H 4550 3250 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_Changjiang-Electronics-Tech-CJ-MMBT3904_C20526.html/?href=jlc-SMT" H 4550 3250 50  0001 C CNN "lcsc_url"
F 6 "MMBT3904" H 4550 3250 50  0001 C CNN "mfr_part_number"
F 7 "SOT-23" H 4550 3250 50  0001 C CNN "package"
	1    4550 3250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3906 Q14
U 1 1 6170533D
P 5075 3175
F 0 "Q14" H 4875 3075 50  0000 L CNN
F 1 "MMBT3906" H 4750 3000 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5275 3100 50  0001 L CIN
F 3 "C111114" H 5075 3175 50  0001 L CNN
F 4 "https://datasheet.lcsc.com/lcsc/1811141238_Shikues-MMBT3906_C111114.pdf" H 5075 3175 50  0001 C CNN "lcsc_part_number"
	1    5075 3175
	1    0    0    -1  
$EndComp
Connection ~ 5175 2975
Wire Wire Line
	4875 2775 4875 2975
Wire Wire Line
	4650 3050 4650 2975
Wire Wire Line
	4650 2975 4875 2975
Connection ~ 4875 2975
Wire Wire Line
	4875 2975 4875 3175
$Comp
L Device:R_Small R28
U 1 1 61737319
P 4250 3250
F 0 "R28" V 4075 3250 50  0000 C CNN
F 1 "510R" V 4150 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4250 3250 50  0001 C CNN
F 3 "" H 4250 3250 50  0001 C CNN
F 4 "C269885" H 4250 3250 50  0001 C CNN "lcsc_part_number"
F 5 "0603" H 4250 3250 50  0001 C CNN "package"
	1    4250 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 3250 4050 3250
Wire Wire Line
	4050 3250 4050 3200
Text GLabel 4725 925  1    50   Input ~ 0
COM
$Comp
L power:GND #PWR0115
U 1 1 6166C575
P 4725 1725
F 0 "#PWR0115" H 4725 1475 50  0001 C CNN
F 1 "GND" H 4726 1590 50  0000 C CNN
F 2 "" H 4725 1725 50  0001 C CNN
F 3 "" H 4725 1725 50  0001 C CNN
	1    4725 1725
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q6
U 1 1 6166C583
P 4625 1125
F 0 "Q6" H 4425 1175 50  0000 L CNN
F 1 "MMBT3904" H 4300 1275 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4825 1050 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 4625 1125 50  0001 L CNN
F 4 "C20526" H 4625 1125 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_Changjiang-Electronics-Tech-CJ-MMBT3904_C20526.html/?href=jlc-SMT" H 4625 1125 50  0001 C CNN "lcsc_url"
F 6 "MMBT3904" H 4625 1125 50  0001 C CNN "mfr_part_number"
F 7 "SOT-23" H 4625 1125 50  0001 C CNN "package"
	1    4625 1125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 6166C58D
P 4200 1800
F 0 "#PWR0116" H 4200 1550 50  0001 C CNN
F 1 "GND" H 4201 1665 50  0000 C CNN
F 2 "" H 4200 1800 50  0001 C CNN
F 3 "" H 4200 1800 50  0001 C CNN
	1    4200 1800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:QM6015D Q4
U 1 1 6166C59A
P 5050 1525
F 0 "Q4" H 5200 1400 50  0000 L CNN
F 1 "AONR21357" V 5425 1225 50  0000 L CNN
F 2 "Acea:DFN-TRANS_AONR21321" H 5250 1450 50  0001 L CIN
F 3 "" H 5050 1525 50  0001 L CNN
F 4 "C431196" H 5050 1525 50  0001 C CNN "lcsc_part_number"
F 5 "DFN 3x3" H 5050 1525 50  0001 C CNN "package"
	1    5050 1525
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q1
U 1 1 6166C5A8
P 4100 1600
F 0 "Q1" H 3900 1650 50  0000 L CNN
F 1 "MMBT3904" H 3775 1750 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4300 1525 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 4100 1600 50  0001 L CNN
F 4 "C20526" H 4100 1600 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_Changjiang-Electronics-Tech-CJ-MMBT3904_C20526.html/?href=jlc-SMT" H 4100 1600 50  0001 C CNN "lcsc_url"
F 6 "MMBT3904" H 4100 1600 50  0001 C CNN "mfr_part_number"
F 7 "SOT-23" H 4100 1600 50  0001 C CNN "package"
	1    4100 1600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3906 Q13
U 1 1 6166C5B2
P 4625 1525
F 0 "Q13" H 4425 1425 50  0000 L CNN
F 1 "MMBT3906" H 4300 1350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4825 1450 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/lcsc/1811141238_Shikues-MMBT3906_C111114.pdf" H 4625 1525 50  0001 L CNN
F 4 "C111114" H 4625 1525 50  0001 C CNN "lcsc_part_number"
	1    4625 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	4425 1125 4425 1325
Wire Wire Line
	4200 1400 4200 1325
Wire Wire Line
	4200 1325 4425 1325
Connection ~ 4425 1325
Wire Wire Line
	4425 1325 4425 1525
$Comp
L Device:R_Small R5
U 1 1 6166C5C4
P 3800 1600
F 0 "R5" V 3625 1600 50  0000 C CNN
F 1 "510R" V 3700 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3800 1600 50  0001 C CNN
F 3 "" H 3800 1600 50  0001 C CNN
F 4 "C269885" H 3800 1600 50  0001 C CNN "lcsc_part_number"
F 5 "0603" H 3800 1600 50  0001 C CNN "package"
	1    3800 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 1600 3600 1600
Wire Wire Line
	3600 1600 3600 1550
$Comp
L Transistor_FET:QM6015D Q11
U 1 1 6168521D
P 5050 1125
F 0 "Q11" H 5200 1275 50  0000 L CNN
F 1 "AONR21357" V 5425 825 50  0000 L CNN
F 2 "Acea:DFN-TRANS_AONR21321" H 5250 1050 50  0001 L CIN
F 3 "" H 5050 1125 50  0001 L CNN
F 4 "C431196" H 5050 1125 50  0001 C CNN "lcsc_part_number"
F 5 "DFN 3x3" H 5050 1125 50  0001 C CNN "package"
	1    5050 1125
	1    0    0    1   
$EndComp
Wire Wire Line
	4850 1525 4850 1325
Wire Wire Line
	4725 1325 4850 1325
Connection ~ 4725 1325
Connection ~ 4850 1325
Wire Wire Line
	4850 1325 4850 1125
Text GLabel 7025 1400 0    50   BiDi ~ 0
B1VM
Text GLabel 5150 925  1    50   BiDi ~ 0
B1C
Text GLabel 7950 2825 1    50   BiDi ~ 0
LOAD2
Wire Wire Line
	6525 3300 6525 3250
Wire Wire Line
	6625 3300 6525 3300
$Comp
L Device:R_Small R30
U 1 1 61711795
P 6725 3300
F 0 "R30" V 6550 3300 50  0000 C CNN
F 1 "510R" V 6625 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6725 3300 50  0001 C CNN
F 3 "" H 6725 3300 50  0001 C CNN
F 4 "C269885" H 6725 3300 50  0001 C CNN "lcsc_part_number"
F 5 "0603" H 6725 3300 50  0001 C CNN "package"
	1    6725 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7350 3025 7350 3225
Connection ~ 7350 3025
Wire Wire Line
	7125 3025 7350 3025
Wire Wire Line
	7125 3100 7125 3025
Wire Wire Line
	7350 2825 7350 3025
Connection ~ 7650 3025
$Comp
L Transistor_BJT:MMBT3906 Q16
U 1 1 61711783
P 7550 3225
F 0 "Q16" H 7350 3125 50  0000 L CNN
F 1 "MMBT3906" H 7225 3050 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7750 3150 50  0001 L CIN
F 3 "C111114" H 7550 3225 50  0001 L CNN
F 4 "https://datasheet.lcsc.com/lcsc/1811141238_Shikues-MMBT3906_C111114.pdf" H 7550 3225 50  0001 C CNN "lcsc_part_number"
	1    7550 3225
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q7
U 1 1 61711778
P 7025 3300
F 0 "Q7" H 6825 3350 50  0000 L CNN
F 1 "MMBT3904" H 6700 3450 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7225 3225 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 7025 3300 50  0001 L CNN
F 4 "C20526" H 7025 3300 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_Changjiang-Electronics-Tech-CJ-MMBT3904_C20526.html/?href=jlc-SMT" H 7025 3300 50  0001 C CNN "lcsc_url"
F 6 "MMBT3904" H 7025 3300 50  0001 C CNN "mfr_part_number"
F 7 "SOT-23" H 7025 3300 50  0001 C CNN "package"
	1    7025 3300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:QM6015D Q8
U 1 1 6171176A
P 7850 3025
F 0 "Q8" H 8000 2900 50  0000 L CNN
F 1 "AONR21357" H 7975 3175 50  0000 L CNN
F 2 "Acea:DFN-TRANS_AONR21321" H 8050 2950 50  0001 L CIN
F 3 "" H 7850 3025 50  0001 L CNN
F 4 "C431196" H 7850 3025 50  0001 C CNN "lcsc_part_number"
F 5 "DFN 3x3" H 7850 3025 50  0001 C CNN "package"
	1    7850 3025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 6171175E
P 7125 3500
F 0 "#PWR0117" H 7125 3250 50  0001 C CNN
F 1 "GND" H 7126 3365 50  0000 C CNN
F 2 "" H 7125 3500 50  0001 C CNN
F 3 "" H 7125 3500 50  0001 C CNN
	1    7125 3500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q15
U 1 1 61711754
P 7550 2825
F 0 "Q15" H 7350 2875 50  0000 L CNN
F 1 "MMBT3904" H 7225 2975 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7750 2750 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 7550 2825 50  0001 L CNN
F 4 "C20526" H 7550 2825 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_Changjiang-Electronics-Tech-CJ-MMBT3904_C20526.html/?href=jlc-SMT" H 7550 2825 50  0001 C CNN "lcsc_url"
F 6 "MMBT3904" H 7550 2825 50  0001 C CNN "mfr_part_number"
F 7 "SOT-23" H 7550 2825 50  0001 C CNN "package"
	1    7550 2825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 61711746
P 7650 3425
F 0 "#PWR0118" H 7650 3175 50  0001 C CNN
F 1 "GND" H 7651 3290 50  0000 C CNN
F 2 "" H 7650 3425 50  0001 C CNN
F 3 "" H 7650 3425 50  0001 C CNN
	1    7650 3425
	1    0    0    -1  
$EndComp
Text GLabel 7950 3225 3    50   BiDi ~ 0
COM
Text GLabel 7650 2625 1    50   Input ~ 0
COM
Text GLabel 6525 3250 1    50   Input ~ 0
L2ON
Wire Wire Line
	6297 3313 6297 3263
Wire Wire Line
	6247 3313 6297 3313
Wire Wire Line
	6297 3413 6297 3463
Wire Wire Line
	6247 3413 6297 3413
Text GLabel 6297 3263 1    50   Output ~ 0
LOAD2
$Comp
L power:GND #PWR030
U 1 1 5FD820ED
P 6297 3463
F 0 "#PWR030" H 6297 3213 50  0001 C CNN
F 1 "GND" H 6302 3290 50  0000 C CNN
F 2 "" H 6297 3463 50  0001 C CNN
F 3 "" H 6297 3463 50  0001 C CNN
	1    6297 3463
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5FD82100
P 6047 3413
F 0 "J7" H 6182 3588 50  0000 C CNN
F 1 "LOAD2" H 6097 3163 50  0000 C CNN
F 2 "Acea:AMASS_XT60PW-F" H 6047 3413 50  0001 C CNN
F 3 "~" H 6047 3413 50  0001 C CNN
F 4 "" H 6047 3413 50  0001 C CNN "other_URL"
F 5 "C428722" H 6047 3413 50  0001 C CNN "lcsc_part_number"
	1    6047 3413
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148WS D8
U 1 1 607B4165
P 6323 2595
F 0 "D8" V 6229 2719 50  0000 L CNN
F 1 "B5819W" V 6329 2719 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 6323 2420 50  0001 C CNN
F 3 "" H 6323 2595 50  0001 C CNN
F 4 "C8598" H 6323 2595 50  0001 C CNN "lcsc_part_number"
	1    6323 2595
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR050
U 1 1 607B4197
P 6323 2745
F 0 "#PWR050" H 6323 2495 50  0001 C CNN
F 1 "GND" H 6328 2572 50  0000 C CNN
F 2 "" H 6323 2745 50  0001 C CNN
F 3 "" H 6323 2745 50  0001 C CNN
	1    6323 2745
	1    0    0    -1  
$EndComp
Wire Wire Line
	6323 2445 6323 2330
Text GLabel 6348 2330 2    50   Output ~ 0
LOAD2
Text GLabel 9300 3250 1    50   Input ~ 0
L3ON
Text GLabel 10425 2625 1    50   Input ~ 0
COM
Text GLabel 10725 3225 3    50   BiDi ~ 0
COM
$Comp
L power:GND #PWR0119
U 1 1 61779754
P 10425 3425
F 0 "#PWR0119" H 10425 3175 50  0001 C CNN
F 1 "GND" H 10426 3290 50  0000 C CNN
F 2 "" H 10425 3425 50  0001 C CNN
F 3 "" H 10425 3425 50  0001 C CNN
	1    10425 3425
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q17
U 1 1 61779762
P 10325 2825
F 0 "Q17" H 10125 2875 50  0000 L CNN
F 1 "MMBT3904" H 10000 2975 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10525 2750 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 10325 2825 50  0001 L CNN
F 4 "C20526" H 10325 2825 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_Changjiang-Electronics-Tech-CJ-MMBT3904_C20526.html/?href=jlc-SMT" H 10325 2825 50  0001 C CNN "lcsc_url"
F 6 "MMBT3904" H 10325 2825 50  0001 C CNN "mfr_part_number"
F 7 "SOT-23" H 10325 2825 50  0001 C CNN "package"
	1    10325 2825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 6177976C
P 9900 3500
F 0 "#PWR0120" H 9900 3250 50  0001 C CNN
F 1 "GND" H 9901 3365 50  0000 C CNN
F 2 "" H 9900 3500 50  0001 C CNN
F 3 "" H 9900 3500 50  0001 C CNN
	1    9900 3500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:QM6015D Q10
U 1 1 61779778
P 10625 3025
F 0 "Q10" H 10775 2900 50  0000 L CNN
F 1 "AONR21357" H 10750 3175 50  0000 L CNN
F 2 "Acea:DFN-TRANS_AONR21321" H 10825 2950 50  0001 L CIN
F 3 "" H 10625 3025 50  0001 L CNN
F 4 "C431196" H 10625 3025 50  0001 C CNN "lcsc_part_number"
F 5 "DFN 3x3" H 10625 3025 50  0001 C CNN "package"
	1    10625 3025
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q9
U 1 1 61779786
P 9800 3300
F 0 "Q9" H 9600 3350 50  0000 L CNN
F 1 "MMBT3904" H 9475 3450 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10000 3225 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 9800 3300 50  0001 L CNN
F 4 "C20526" H 9800 3300 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_Changjiang-Electronics-Tech-CJ-MMBT3904_C20526.html/?href=jlc-SMT" H 9800 3300 50  0001 C CNN "lcsc_url"
F 6 "MMBT3904" H 9800 3300 50  0001 C CNN "mfr_part_number"
F 7 "SOT-23" H 9800 3300 50  0001 C CNN "package"
	1    9800 3300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3906 Q18
U 1 1 61779791
P 10325 3225
F 0 "Q18" H 10125 3125 50  0000 L CNN
F 1 "MMBT3906" H 10000 3050 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10525 3150 50  0001 L CIN
F 3 "C111114" H 10325 3225 50  0001 L CNN
F 4 "https://datasheet.lcsc.com/lcsc/1811141238_Shikues-MMBT3906_C111114.pdf" H 10325 3225 50  0001 C CNN "lcsc_part_number"
	1    10325 3225
	1    0    0    -1  
$EndComp
Connection ~ 10425 3025
Wire Wire Line
	10125 2825 10125 3025
Wire Wire Line
	9900 3100 9900 3025
Wire Wire Line
	9900 3025 10125 3025
Connection ~ 10125 3025
Wire Wire Line
	10125 3025 10125 3225
$Comp
L Device:R_Small R31
U 1 1 617797A3
P 9500 3300
F 0 "R31" V 9325 3300 50  0000 C CNN
F 1 "510R" V 9400 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9500 3300 50  0001 C CNN
F 3 "" H 9500 3300 50  0001 C CNN
F 4 "C269885" H 9500 3300 50  0001 C CNN "lcsc_part_number"
F 5 "0603" H 9500 3300 50  0001 C CNN "package"
	1    9500 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 3300 9300 3300
Wire Wire Line
	9300 3300 9300 3250
Text GLabel 10725 2825 1    50   BiDi ~ 0
LOAD3
$Comp
L Transistor_BJT:MMBT3904 Q19
U 1 1 617B9838
P 925 6925
F 0 "Q19" H 725 6975 50  0000 L CNN
F 1 "MMBT3904" H 600 7075 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1125 6850 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 925 6925 50  0001 L CNN
F 4 "C20526" H 925 6925 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_Changjiang-Electronics-Tech-CJ-MMBT3904_C20526.html/?href=jlc-SMT" H 925 6925 50  0001 C CNN "lcsc_url"
F 6 "MMBT3904" H 925 6925 50  0001 C CNN "mfr_part_number"
F 7 "SOT-23" H 925 6925 50  0001 C CNN "package"
	1    925  6925
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0121
U 1 1 617C0569
P 1025 6475
F 0 "#PWR0121" H 1025 6325 50  0001 C CNN
F 1 "+3V3" H 1040 6648 50  0000 C CNN
F 2 "" H 1025 6475 50  0001 C CNN
F 3 "" H 1025 6475 50  0001 C CNN
	1    1025 6475
	1    0    0    -1  
$EndComp
Wire Wire Line
	1025 6675 1025 6725
$Comp
L Diode:1N4148WS D5
U 1 1 617E45D7
P 7550 4900
F 0 "D5" V 7456 5024 50  0000 L CNN
F 1 "B5819W" V 7556 5024 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 7550 4725 50  0001 C CNN
F 3 "" H 7550 4900 50  0001 C CNN
F 4 "C8598" H 7550 4900 50  0001 C CNN "lcsc_part_number"
	1    7550 4900
	0    1    1    0   
$EndComp
Text GLabel 7550 4750 0    50   Input ~ 0
COM
Text GLabel 7550 5050 0    50   Input ~ 0
FANGND
Wire Notes Line
	8500 475  8500 3700
Text GLabel 5875 1725 3    50   BiDi ~ 0
COM
$Comp
L Transistor_FET:QM6015D Q21
U 1 1 6172162C
P 5775 1525
F 0 "Q21" H 5925 1400 50  0000 L CNN
F 1 "AONR21357" H 5925 1675 50  0000 L CNN
F 2 "Acea:DFN-TRANS_AONR21321" H 5975 1450 50  0001 L CIN
F 3 "" H 5775 1525 50  0001 L CNN
F 4 "C431196" H 5775 1525 50  0001 C CNN "lcsc_part_number"
F 5 "DFN 3x3" H 5775 1525 50  0001 C CNN "package"
	1    5775 1525
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:QM6015D Q20
U 1 1 61721638
P 5775 1125
F 0 "Q20" H 5925 1275 50  0000 L CNN
F 1 "AONR21357" H 5925 975 50  0000 L CNN
F 2 "Acea:DFN-TRANS_AONR21321" H 5975 1050 50  0001 L CIN
F 3 "" H 5775 1125 50  0001 L CNN
F 4 "C431196" H 5775 1125 50  0001 C CNN "lcsc_part_number"
F 5 "DFN 3x3" H 5775 1125 50  0001 C CNN "package"
	1    5775 1125
	1    0    0    1   
$EndComp
Text GLabel 5875 925  1    50   BiDi ~ 0
B1C
Wire Wire Line
	9850 1350 9850 1400
Wire Wire Line
	9075 1600 9850 1600
Wire Wire Line
	9800 1400 9850 1400
Connection ~ 9850 1400
Wire Wire Line
	9850 1400 9850 1450
Wire Wire Line
	5575 1125 5575 1525
Text GLabel 4850 1325 2    50   Output ~ 0
G
Text GLabel 5575 1325 0    50   Output ~ 0
G
Text GLabel 5150 1325 2    50   Output ~ 0
D
Text GLabel 5875 1325 2    50   Output ~ 0
D
Text GLabel 2500 2600 2    50   Input ~ 0
COM
Text GLabel 7977 5641 1    50   Input ~ 0
COM
NoConn ~ 4800 6200
$EndSCHEMATC
