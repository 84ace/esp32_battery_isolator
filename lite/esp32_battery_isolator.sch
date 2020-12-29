EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ESP-32 Battery Isolator lite"
Date "2020-10-19"
Rev "A"
Comp "Acea Quigg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R_Small R4
U 1 1 5EFC8B89
P 2800 5500
F 0 "R4" V 2800 5500 50  0000 C CNN
F 1 "10k" V 2700 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2800 5500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 2800 5500 50  0001 C CNN
F 4 "C15401" H 2800 5500 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 2800 5500 50  0001 C CNN "lcsc_url"
F 6 "100" H 2800 5500 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 2800 5500 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 2800 5500 50  0001 C CNN "package"
	1    2800 5500
	0    1    1    0   
$EndComp
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
P 1600 3950
F 0 "#PWR02" H 1600 3800 50  0001 C CNN
F 1 "+3V3" H 1615 4123 50  0000 C CNN
F 2 "" H 1600 3950 50  0001 C CNN
F 3 "" H 1600 3950 50  0001 C CNN
	1    1600 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5F0878E3
P 1200 5000
F 0 "C1" H 1300 5000 50  0000 L CNN
F 1 "100n" H 1250 4900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1200 5000 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-0805B104K250_C128353.pdf" H 1200 5000 50  0001 C CNN
F 4 "C128353" H 1200 5000 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Walsin-Tech-Corp-0805B104K250_C128353.html" H 1200 5000 50  0001 C CNN "lcsc_url"
F 6 "100" H 1200 5000 50  0001 C CNN "lcsc_min_qty"
F 7 "0805B104K250" H 1200 5000 50  0001 C CNN "mfr_part_number"
F 8 "0805" H 1200 5000 50  0001 C CNN "package"
	1    1200 5000
	1    0    0    -1  
$EndComp
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
$Comp
L MAX17260:TACT-SWITCH SW2
U 1 1 5F089A41
P 3200 4500
F 0 "SW2" H 3200 4755 50  0000 C CNN
F 1 "KMR221GLFS" H 3200 4664 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_CK_KMR2" H 3200 4777 60  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1809292031_C-K-KMR221GLFS_C72443.pdf" H 3200 4671 60  0001 C CNN
F 4 "C72443" H 3200 4500 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Tactile-Switches_C-K_KMR221GLFS_C-K-KMR221GLFS_C72443.html" H 3200 4500 50  0001 C CNN "lcsc_url"
F 6 "1" H 3200 4500 50  0001 C CNN "lcsc_min_qty"
F 7 "KMR221GLFS" H 3200 4500 50  0001 C CNN "mfr_part_number"
F 8 "KMR2" H 3200 4500 50  0001 C CNN "package"
	1    3200 4500
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
$Comp
L Device:R_Small R1
U 1 1 5F08C101
P 1200 4700
F 0 "R1" H 1288 4724 50  0000 C CNN
F 1 "10k" H 1308 4656 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1200 4700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 1200 4700 50  0001 C CNN
F 4 "C15401" H 1200 4700 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 1200 4700 50  0001 C CNN "lcsc_url"
F 6 "100" H 1200 4700 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 1200 4700 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 1200 4700 50  0001 C CNN "package"
	1    1200 4700
	1    0    0    -1  
$EndComp
Text GLabel 2700 5000 2    50   Output ~ 0
TXD
Text GLabel 2700 5200 2    50   Input ~ 0
RXD
Text GLabel 9600 4650 2    50   Input ~ 0
TXD
Text GLabel 9600 4550 2    50   Input ~ 0
RXD
$Comp
L Device:LED D1
U 1 1 5F05CC6B
P 1538 1068
F 0 "D1" V 1577 951 50  0000 R CNN
F 1 "MAIN LED" V 1486 951 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1538 1068 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Everlight-Elec-19-217-R6C-AL1M2VY-3T_C72044.pdf" H 1538 1068 50  0001 C CNN
F 4 "C72044" H 1538 1068 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_0603-Red-LED_C72044.html" H 1538 1068 50  0001 C CNN "lcsc_url"
F 6 "20" H 1538 1068 50  0001 C CNN "lcsc_min_qty"
F 7 "19-217/R6C-AL1M2VY/3T" H 1538 1068 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 1538 1068 50  0001 C CNN "package"
	1    1538 1068
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5F06058B
P 1538 1418
F 0 "#PWR03" H 1538 1168 50  0001 C CNN
F 1 "GND" H 1678 1284 50  0000 C CNN
F 2 "" H 1538 1418 50  0001 C CNN
F 3 "" H 1538 1418 50  0001 C CNN
	1    1538 1418
	1    0    0    -1  
$EndComp
Text GLabel 1538 918  0    50   Input ~ 0
SYS_OK_LED
$Comp
L Device:LED D3
U 1 1 5F0616FE
P 2170 1070
F 0 "D3" V 2209 953 50  0000 R CNN
F 1 "B1 LED" V 2118 953 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2170 1070 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Everlight-Elec-19-217-R6C-AL1M2VY-3T_C72044.pdf" H 2170 1070 50  0001 C CNN
F 4 "C72044" H 2170 1070 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_0603-Red-LED_C72044.html" H 2170 1070 50  0001 C CNN "lcsc_url"
F 6 "20" H 2170 1070 50  0001 C CNN "lcsc_min_qty"
F 7 "19-217/R6C-AL1M2VY/3T" H 2170 1070 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 2170 1070 50  0001 C CNN "package"
	1    2170 1070
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5F061708
P 2170 1420
F 0 "#PWR06" H 2170 1170 50  0001 C CNN
F 1 "GND" H 2310 1286 50  0000 C CNN
F 2 "" H 2170 1420 50  0001 C CNN
F 3 "" H 2170 1420 50  0001 C CNN
	1    2170 1420
	1    0    0    -1  
$EndComp
Text GLabel 2170 920  0    50   Input ~ 0
B1_LED
$Comp
L Device:LED D4
U 1 1 5F063619
P 2806 1070
F 0 "D4" V 2845 953 50  0000 R CNN
F 1 "B2 LED" V 2754 953 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2806 1070 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Everlight-Elec-19-217-R6C-AL1M2VY-3T_C72044.pdf" H 2806 1070 50  0001 C CNN
F 4 "C72044" H 2806 1070 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_0603-Red-LED_C72044.html" H 2806 1070 50  0001 C CNN "lcsc_url"
F 6 "20" H 2806 1070 50  0001 C CNN "lcsc_min_qty"
F 7 "19-217/R6C-AL1M2VY/3T" H 2806 1070 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 2806 1070 50  0001 C CNN "package"
	1    2806 1070
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5F063623
P 2806 1420
F 0 "#PWR09" H 2806 1170 50  0001 C CNN
F 1 "GND" H 2946 1286 50  0000 C CNN
F 2 "" H 2806 1420 50  0001 C CNN
F 3 "" H 2806 1420 50  0001 C CNN
	1    2806 1420
	1    0    0    -1  
$EndComp
Text GLabel 2806 920  0    50   Input ~ 0
B2_LED
Text Notes 1900 700  0    50   ~ 0
Status LEDS\n
$Comp
L Device:R_Small R2
U 1 1 5F069BC9
P 1538 1318
F 0 "R2" H 1652 1366 50  0000 L CNN
F 1 "2.55K" H 1652 1276 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1538 1318 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Guangdong-Fenghua-Advanced-Tech-RS-03K2551FT_C304726.pdf" H 1538 1318 50  0001 C CNN
F 4 "C304726" H 1538 1318 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_FH-Guangdong-Fenghua-Advanced-Tech-RS-03K2551FT_C304726.html" H 1538 1318 50  0001 C CNN "lcsc_url"
F 6 "50" H 1538 1318 50  0001 C CNN "lcsc_min_qty"
F 7 "RS-03K2551FT" H 1538 1318 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 1538 1318 50  0001 C CNN "package"
	1    1538 1318
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5F06E5B1
P 2170 1320
F 0 "R3" H 2284 1368 50  0000 L CNN
F 1 "2.55K" H 2284 1278 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2170 1320 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Guangdong-Fenghua-Advanced-Tech-RS-03K2551FT_C304726.pdf" H 2170 1320 50  0001 C CNN
F 4 "C304726" H 2170 1320 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_FH-Guangdong-Fenghua-Advanced-Tech-RS-03K2551FT_C304726.html" H 2170 1320 50  0001 C CNN "lcsc_url"
F 6 "50" H 2170 1320 50  0001 C CNN "lcsc_min_qty"
F 7 "RS-03K2551FT" H 2170 1320 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 2170 1320 50  0001 C CNN "package"
	1    2170 1320
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5F06F0C0
P 2806 1320
F 0 "R5" H 2920 1368 50  0000 L CNN
F 1 "2.55K" H 2920 1278 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2806 1320 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Guangdong-Fenghua-Advanced-Tech-RS-03K2551FT_C304726.pdf" H 2806 1320 50  0001 C CNN
F 4 "C304726" H 2806 1320 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_FH-Guangdong-Fenghua-Advanced-Tech-RS-03K2551FT_C304726.html" H 2806 1320 50  0001 C CNN "lcsc_url"
F 6 "50" H 2806 1320 50  0001 C CNN "lcsc_min_qty"
F 7 "RS-03K2551FT" H 2806 1320 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 2806 1320 50  0001 C CNN "package"
	1    2806 1320
	1    0    0    -1  
$EndComp
Text Notes 1950 4250 0    50   ~ 0
ESP-32
Wire Notes Line
	11218 4184 11218 4180
Wire Notes Line
	268  2206 11026 2206
Wire Notes Line
	11226 2206 11226 2214
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
F 1 "Conn_01x04_Female" H 4750 3840 50  0000 L CNN
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
P 4066 4090
F 0 "#PWR014" H 4066 3940 50  0001 C CNN
F 1 "+3V3" H 4081 4263 50  0000 C CNN
F 2 "" H 4066 4090 50  0001 C CNN
F 3 "" H 4066 4090 50  0001 C CNN
	1    4066 4090
	1    0    0    -1  
$EndComp
Text GLabel 4132 4324 2    50   Input ~ 0
SCL
Wire Wire Line
	4132 4324 4066 4324
Wire Wire Line
	4066 4324 4066 4290
$Comp
L Device:R_Small R7
U 1 1 5F10CED6
P 4436 4192
F 0 "R7" H 4550 4234 50  0000 C CNN
F 1 "2.2k" H 4554 4148 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4436 4192 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904031208_Walsin-Tech-Corp-2-2KR-222-5_C384262.pdf" H 4436 4192 50  0001 C CNN
F 4 "C384262" H 4436 4192 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Walsin-Tech-Corp-Walsin-Tech-Corp-2-2KR-222-5_C384262.html" H 4436 4192 50  0001 C CNN "lcsc_url"
F 6 "100" H 4436 4192 50  0001 C CNN "lcsc_min_qty"
F 7 "WR06X222 JTL" H 4436 4192 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 4436 4192 50  0001 C CNN "package"
	1    4436 4192
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR016
U 1 1 5F10CEE0
P 4436 4092
F 0 "#PWR016" H 4436 3942 50  0001 C CNN
F 1 "+3V3" H 4451 4265 50  0000 C CNN
F 2 "" H 4436 4092 50  0001 C CNN
F 3 "" H 4436 4092 50  0001 C CNN
	1    4436 4092
	1    0    0    -1  
$EndComp
Text GLabel 4502 4326 2    50   Input ~ 0
SDA
Wire Wire Line
	4502 4326 4436 4326
Wire Wire Line
	4436 4326 4436 4292
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
Text GLabel 1450 4850 1    50   Input ~ 0
RST
Text GLabel 1700 3050 0    50   Input ~ 0
B2VM
Wire Notes Line
	6972 2205 6971 2205
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5F1D7B08
P 2250 2850
F 0 "#FLG01" H 2250 2925 50  0001 C CNN
F 1 "PWR_FLAG" H 2250 3023 50  0000 C CNN
F 2 "" H 2250 2850 50  0001 C CNN
F 3 "~" H 2250 2850 50  0001 C CNN
	1    2250 2850
	1    0    0    -1  
$EndComp
Text Notes 2100 2400 0    50   ~ 0
DC-DC Buck (30V, 3.3V, 1.5A)
Wire Notes Line
	3500 2200 3500 500 
Wire Notes Line
	4700 7800 4650 7800
Wire Notes Line
	4156 476  4154 476 
Text GLabel 3350 4900 2    50   Input ~ 0
BOOT
Text GLabel 2900 4500 0    50   Input ~ 0
BOOT
NoConn ~ 2700 5100
NoConn ~ 2700 5400
NoConn ~ 2700 5900
NoConn ~ 2700 6000
NoConn ~ 1500 6100
NoConn ~ 1500 6200
NoConn ~ 1500 6300
NoConn ~ 1500 6400
NoConn ~ 1500 6500
NoConn ~ 1500 6600
Wire Wire Line
	1450 4850 1450 4900
Wire Wire Line
	1450 4900 1500 4900
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
Wire Wire Line
	1600 4700 1600 4550
Wire Notes Line
	3700 3700 3700 7800
Text GLabel 5800 5700 2    50   BiDi ~ 0
SDA
Text GLabel 5800 5800 2    50   Input ~ 0
SCL
$Comp
L Device:C_Small C6
U 1 1 5FC12A78
P 5850 5250
F 0 "C6" H 5920 5295 50  0000 L CNN
F 1 "100n" H 5920 5200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5850 5250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-0805B104K250_C128353.pdf" H 5850 5250 50  0001 C CNN
F 4 "C128353" H 5850 5250 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Walsin-Tech-Corp-0805B104K250_C128353.html" H 5850 5250 50  0001 C CNN "lcsc_url"
F 6 "100" H 5850 5250 50  0001 C CNN "lcsc_min_qty"
F 7 "0805B104K250" H 5850 5250 50  0001 C CNN "mfr_part_number"
F 8 "0805" H 5850 5250 50  0001 C CNN "package"
	1    5850 5250
	1    0    0    -1  
$EndComp
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
F 7 "https://lcsc.com/product-detail/Analog-To-Digital-Converters-ADCs_Texas-Instruments_ADC128D818CIMTX-NOPB_Texas-Instruments-Texas-Instruments-ADC128D818CIMTX-NOPB_C139062.html" H 5300 6300 50  0001 C CNN "mfr_part_number"
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
	5300 5150 5850 5150
Wire Wire Line
	5300 5150 5300 5500
NoConn ~ 5800 6200
$Comp
L Device:CP_Small C7
U 1 1 5FC3EF7C
P 6200 5250
F 0 "C7" H 6270 5295 50  0000 L CNN
F 1 "1uF" H 6270 5200 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 6200 5250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Hunan-Xiangyee-in-S-T-CA45-A035K105T_C126949.pdf" H 6200 5250 50  0001 C CNN
F 4 "C126949" H 6200 5250 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Tantalum-Capacitors_Hunan-Xiangyee-in-S-T-CA45-A035K105T_C126949.html" H 6200 5250 50  0001 C CNN "lcsc_url"
F 6 "5" H 6200 5250 50  0001 C CNN "lcsc_min_qty"
F 7 "CA45-A035K105T" H 6200 5250 50  0001 C CNN "mfr_part_number"
F 8 "CASE_A_3216" H 6200 5250 50  0001 C CNN "package"
	1    6200 5250
	1    0    0    -1  
$EndComp
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
Wire Wire Line
	5850 5150 6200 5150
Connection ~ 5850 5150
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
L Device:C_Small C5
U 1 1 5FC52926
P 4450 6750
F 0 "C5" H 4520 6795 50  0000 L CNN
F 1 "100n" H 4520 6700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4450 6750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-0805B104K250_C128353.pdf" H 4450 6750 50  0001 C CNN
F 4 "C128353" H 4450 6750 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Walsin-Tech-Corp-0805B104K250_C128353.html" H 4450 6750 50  0001 C CNN "lcsc_url"
F 6 "100" H 4450 6750 50  0001 C CNN "lcsc_min_qty"
F 7 "0805B104K250" H 4450 6750 50  0001 C CNN "mfr_part_number"
F 8 "0805" H 4450 6750 50  0001 C CNN "package"
	1    4450 6750
	1    0    0    -1  
$EndComp
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
L Device:CP_Small C4
U 1 1 5FC5293F
P 4100 6750
F 0 "C4" H 4170 6795 50  0000 L CNN
F 1 "1uF" H 4170 6700 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 4100 6750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Hunan-Xiangyee-in-S-T-CA45-A035K105T_C126949.pdf" H 4100 6750 50  0001 C CNN
F 4 "C126949" H 4100 6750 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Tantalum-Capacitors_Hunan-Xiangyee-in-S-T-CA45-A035K105T_C126949.html" H 4100 6750 50  0001 C CNN "lcsc_url"
F 6 "5" H 4100 6750 50  0001 C CNN "lcsc_min_qty"
F 7 "CA45-A035K105T" H 4100 6750 50  0001 C CNN "mfr_part_number"
F 8 "CASE_A_3216" H 4100 6750 50  0001 C CNN "package"
	1    4100 6750
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
Wire Notes Line
	4850 3700 4850 2200
$Comp
L Interface_USB:CH330N U5
U 1 1 5F737302
P 9200 4650
F 0 "U5" H 8845 5150 50  0000 C CNN
F 1 "CH330N" H 8950 5055 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9050 5400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811151442_WCH-Jiangsu-Qin-Heng-CH330N_C108996.pdf" H 9100 4850 50  0001 C CNN
F 4 "C108996" H 9200 4650 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/USB-ICs_WCH-Jiangsu-Qin-Heng-CH330N_C108996.html" H 9200 4650 50  0001 C CNN "lcsc_url"
F 6 "1" H 9200 4650 50  0001 C CNN "lcsc_min_qty"
F 7 "CH330N" H 9200 4650 50  0001 C CNN "mfr_part_number"
F 8 "SOP-8" H 9200 4650 50  0001 C CNN "package"
	1    9200 4650
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:GND #PWR035
U 1 1 5F737308
P 9200 5050
F 0 "#PWR035" H 9200 5050 30  0001 C CNN
F 1 "GND" H 9200 4980 30  0001 C CNN
F 2 "" H 9200 5050 60  0000 C CNN
F 3 "" H 9200 5050 60  0000 C CNN
	1    9200 5050
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:GND #PWR033
U 1 1 5F73730F
P 8400 4750
F 0 "#PWR033" H 8400 4750 30  0001 C CNN
F 1 "GND" H 8400 4680 30  0001 C CNN
F 2 "" H 8400 4750 60  0000 C CNN
F 3 "" H 8400 4750 60  0000 C CNN
	1    8400 4750
	1    0    0    -1  
$EndComp
Text GLabel 8800 4750 0    50   Input ~ 0
D+
Text GLabel 8800 4850 0    50   Input ~ 0
D-
$Comp
L Device:C_Small C10
U 1 1 5F73731C
P 9500 4200
F 0 "C10" H 9300 4450 50  0000 L CNN
F 1 "100n" H 9250 4350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9500 4200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1910111742_YAGEO-AC0603KRX7R0BB104_C408909.pdf" H 9500 4200 50  0001 C CNN
F 4 "C408909" H 9500 4200 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_YAGEO-AC0603KRX7R0BB104_C408909.html" H 9500 4200 50  0001 C CNN "lcsc_url"
F 6 "20" H 9500 4200 50  0001 C CNN "lcsc_min_qty"
F 7 "AC0603KRX7R0BB104" H 9500 4200 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 9500 4200 50  0001 C CNN "package"
	1    9500 4200
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:GND #PWR038
U 1 1 5F737323
P 9500 4300
F 0 "#PWR038" H 9500 4300 30  0001 C CNN
F 1 "GND" H 9500 4230 30  0001 C CNN
F 2 "" H 9500 4300 60  0000 C CNN
F 3 "" H 9500 4300 60  0000 C CNN
	1    9500 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5F737332
P 8400 4650
F 0 "C9" H 8250 4955 50  0000 L CNN
F 1 "100n" H 8255 4875 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8400 4650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1910111742_YAGEO-AC0603KRX7R0BB104_C408909.pdf" H 8400 4650 50  0001 C CNN
F 4 "C408909" H 8400 4650 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_YAGEO-AC0603KRX7R0BB104_C408909.html" H 8400 4650 50  0001 C CNN "lcsc_url"
F 6 "20" H 8400 4650 50  0001 C CNN "lcsc_min_qty"
F 7 "AC0603KRX7R0BB104" H 8400 4650 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 8400 4650 50  0001 C CNN "package"
	1    8400 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4550 8800 4550
$Comp
L power:+3V3 #PWR039
U 1 1 5F77B761
P 9600 4050
F 0 "#PWR039" H 9600 3900 50  0001 C CNN
F 1 "+3V3" H 9615 4223 50  0000 C CNN
F 2 "" H 9600 4050 50  0001 C CNN
F 3 "" H 9600 4050 50  0001 C CNN
	1    9600 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4350 9200 4100
Wire Wire Line
	9200 4100 9500 4100
Wire Wire Line
	9500 4100 9600 4100
Wire Wire Line
	9600 4100 9600 4050
Connection ~ 9500 4100
NoConn ~ 9600 4850
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
F 2 "Acea:USB_Micro-B_XKB_4BH89_SMT" H 6460 4215 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2002271812_XKB-Enterprise-U253-051T-4BH89-F1B_C319172.pdf" H 6460 4215 50  0001 C CNN
F 4 "C319172" H 6310 4265 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/USB-Connectors_XKB-Enterprise-U253-051T-4BH89-F1B_C319172.html" H 6310 4265 50  0001 C CNN "lcsc_url"
F 6 "10" H 6310 4265 50  0001 C CNN "lcsc_min_qty"
F 7 "U253-051T-4BH89-F1B" H 6310 4265 50  0001 C CNN "mfr_part_number"
F 8 "micro_usb" H 6310 4265 50  0001 C CNN "package"
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
F 1 "105k" H 7886 5708 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7750 5750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2004071109_PANASONIC-ERA3AEB1053V_C491109.pdf" H 7750 5750 50  0001 C CNN
F 4 "C491109" H 7750 5750 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/New-Arrivals_PANASONIC-ERA3AEB1053V_C491109.html" H 7750 5750 50  0001 C CNN "lcsc_url"
F 6 "5" H 7750 5750 50  0001 C CNN "lcsc_min_qty"
F 7 "ERA3AEB1053V" H 7750 5750 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 7750 5750 50  0001 C CNN "package"
	1    7750 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5F852B2F
P 7750 5950
F 0 "R11" H 7870 6002 50  0000 C CNN
F 1 "20k" H 7868 5906 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7750 5950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Viking-Tech-AR03BTCX2002_C319766.pdf" H 7750 5950 50  0001 C CNN
F 4 "C319766" H 7750 5950 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Others_Viking-Tech-AR03BTCX2002_C319766.html" H 7750 5950 50  0001 C CNN "lcsc_url"
F 6 "20" H 7750 5950 50  0001 C CNN "lcsc_min_qty"
F 7 "AR03BTCX2002" H 7750 5950 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 7750 5950 50  0001 C CNN "package"
	1    7750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5850 7750 5850
Connection ~ 7750 5850
$Comp
L Device:R_Small R12
U 1 1 5F86FB99
P 8350 5750
F 0 "R12" H 8470 5802 50  0000 C CNN
F 1 "105k" H 8486 5708 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8350 5750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2004071109_PANASONIC-ERA3AEB1053V_C491109.pdf" H 8350 5750 50  0001 C CNN
F 4 "C491109" H 8350 5750 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/New-Arrivals_PANASONIC-ERA3AEB1053V_C491109.html" H 8350 5750 50  0001 C CNN "lcsc_url"
F 6 "5" H 8350 5750 50  0001 C CNN "lcsc_min_qty"
F 7 "ERA3AEB1053V" H 8350 5750 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 8350 5750 50  0001 C CNN "package"
	1    8350 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 5F87046E
P 8350 5950
F 0 "R13" H 8470 6002 50  0000 C CNN
F 1 "20k" H 8468 5906 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8350 5950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Viking-Tech-AR03BTCX2002_C319766.pdf" H 8350 5950 50  0001 C CNN
F 4 "C319766" H 8350 5950 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Others_Viking-Tech-AR03BTCX2002_C319766.html" H 8350 5950 50  0001 C CNN "lcsc_url"
F 6 "20" H 8350 5950 50  0001 C CNN "lcsc_min_qty"
F 7 "AR03BTCX2002" H 8350 5950 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 8350 5950 50  0001 C CNN "package"
	1    8350 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5850 8350 5850
Connection ~ 8350 5850
Text Notes 9000 3850 0    50   ~ 0
UART-USB
$Comp
L Device:R_Small R6
U 1 1 5F105614
P 4066 4190
F 0 "R6" H 4200 4230 50  0000 C CNN
F 1 "2.2k" H 4184 4146 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4066 4190 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904031208_Walsin-Tech-Corp-2-2KR-222-5_C384262.pdf" H 4066 4190 50  0001 C CNN
F 4 "C384262" H 4066 4190 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Walsin-Tech-Corp-Walsin-Tech-Corp-2-2KR-222-5_C384262.html" H 4066 4190 50  0001 C CNN "lcsc_url"
F 6 "100" H 4066 4190 50  0001 C CNN "lcsc_min_qty"
F 7 "WR06X222 JTL" H 4066 4190 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 4066 4190 50  0001 C CNN "package"
	1    4066 4190
	1    0    0    -1  
$EndComp
Text Notes 4200 750  0    50   ~ 0
Batt 1 isolator (starter)
$Comp
L Regulator_Linear:LD1086D2T33TR U2
U 1 1 5F91F1F0
P 2700 3050
F 0 "U2" H 2700 3417 50  0000 C CNN
F 1 "LD1086D2T33TR" H 2700 3326 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 2700 3550 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/ld1086.pdf" H 2700 3550 50  0001 C CNN
F 4 "C12051" H 2700 3050 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Dropout-Regulators-LDO_STMicroelectronics_LD1086DT33TR_STMicroelectronics-LD1086DT33TR_C12051.html" H 2700 3050 50  0001 C CNN "lcsc_url"
F 6 "1" H 2700 3050 50  0001 C CNN "lcsc_min_qty"
F 7 "LD1086DT33TR" H 2700 3050 50  0001 C CNN "mfr_part_number"
F 8 "TO-252-2(DPAK)" H 2700 3050 50  0001 C CNN "package"
	1    2700 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C2
U 1 1 5F921787
P 2150 3150
F 0 "C2" H 1950 3200 50  0000 L CNN
F 1 "CP_Small" H 1700 3100 50  0000 L CNN
F 2 "Capacitor_SMD:C_Elec_5x5.4" H 2150 3150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Honor-Elec-RVT1V220M0505_C23289.pdf" H 2150 3150 50  0001 C CNN
F 4 "C23289" H 2150 3150 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Aluminum-Electrolytic-Capacitors-SMD_Honor-Elec-RVT1V220M0505_C23289.html" H 2150 3150 50  0001 C CNN "lcsc_url"
F 6 "20" H 2150 3150 50  0001 C CNN "lcsc_min_qty"
F 7 "RVT1V220M0505" H 2150 3150 50  0001 C CNN "mfr_part_number"
F 8 "5x5.4" H 2150 3150 50  0001 C CNN "package"
	1    2150 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C3
U 1 1 5F922B54
P 3250 3150
F 0 "C3" H 3338 3196 50  0000 L CNN
F 1 "CP_Small" H 3338 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_Elec_5x5.4" H 3250 3150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Honor-Elec-RVT1V220M0505_C23289.pdf" H 3250 3150 50  0001 C CNN
F 4 "C23289" H 3250 3150 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Aluminum-Electrolytic-Capacitors-SMD_Honor-Elec-RVT1V220M0505_C23289.html" H 3250 3150 50  0001 C CNN "lcsc_url"
F 6 "20" H 3250 3150 50  0001 C CNN "lcsc_min_qty"
F 7 "RVT1V220M0505" H 3250 3150 50  0001 C CNN "mfr_part_number"
F 8 "5x5.4" H 3250 3150 50  0001 C CNN "package"
	1    3250 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5F925604
P 2700 3350
F 0 "#PWR07" H 2700 3100 50  0001 C CNN
F 1 "GND" H 2705 3177 50  0000 C CNN
F 2 "" H 2700 3350 50  0001 C CNN
F 3 "" H 2700 3350 50  0001 C CNN
	1    2700 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3050 2250 3050
Wire Wire Line
	3100 3050 3250 3050
$Comp
L power:GND #PWR011
U 1 1 5F9298A2
P 3250 3250
F 0 "#PWR011" H 3250 3000 50  0001 C CNN
F 1 "GND" H 3255 3077 50  0000 C CNN
F 2 "" H 3250 3250 50  0001 C CNN
F 3 "" H 3250 3250 50  0001 C CNN
	1    3250 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5F929D37
P 2150 3250
F 0 "#PWR05" H 2150 3000 50  0001 C CNN
F 1 "GND" H 2155 3077 50  0000 C CNN
F 2 "" H 2150 3250 50  0001 C CNN
F 3 "" H 2150 3250 50  0001 C CNN
	1    2150 3250
	1    0    0    -1  
$EndComp
Connection ~ 2150 3050
$Comp
L power:+3V3 #PWR010
U 1 1 5F92C138
P 3250 2900
F 0 "#PWR010" H 3250 2750 50  0001 C CNN
F 1 "+3V3" H 3265 3073 50  0000 C CNN
F 2 "" H 3250 2900 50  0001 C CNN
F 3 "" H 3250 2900 50  0001 C CNN
	1    3250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2900 3250 3050
Connection ~ 3250 3050
NoConn ~ 1500 5100
NoConn ~ 1500 5200
NoConn ~ 2700 6200
NoConn ~ 2700 6500
Text GLabel 2700 6800 2    50   Output ~ 0
SYS_OK_LED
Text GLabel 2700 5700 2    50   Output ~ 0
B1_LED
Text GLabel 2700 6600 2    50   Output ~ 0
B2_LED
Text GLabel 2700 6900 2    50   Output ~ 0
B1ON
Text GLabel 2700 6700 2    50   Output ~ 0
B2ON
Text GLabel 1750 2850 1    50   Input ~ 0
5V
Wire Wire Line
	2250 2850 2250 3050
Connection ~ 2250 3050
Wire Wire Line
	2250 3050 2300 3050
$Comp
L Device:D_Schottky_Small D2
U 1 1 5F968FB0
P 1750 2950
F 0 "D2" V 1796 2880 50  0000 R CNN
F 1 "SS14" V 1705 2880 50  0000 R CNN
F 2 "Diode_SMD:D_SMA" V 1750 2950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2007141104_MDD-Microdiode-Electronics-SS14_C2480.pdf" V 1750 2950 50  0001 C CNN
F 4 "C2480" H 1750 2950 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Schottky-Barrier-Diodes-SBD_MDD-Microdiode-Electronics-SS14_C2480.html" H 1750 2950 50  0001 C CNN "lcsc_url"
F 6 "50" H 1750 2950 50  0001 C CNN "lcsc_min_qty"
F 7 "SS14" H 1750 2950 50  0001 C CNN "mfr_part_number"
F 8 "SMA" H 1750 2950 50  0001 C CNN "package"
	1    1750 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1750 3050 2150 3050
Wire Wire Line
	1750 3050 1700 3050
Connection ~ 1750 3050
NoConn ~ 4800 6200
NoConn ~ 4800 6300
NoConn ~ 4800 6400
$Comp
L MAX17260:TACT-SWITCH SW1
U 1 1 5FA6E558
P 3200 4050
F 0 "SW1" H 3200 4305 50  0000 C CNN
F 1 "KMR221GLFS" H 3200 4214 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_CK_KMR2" H 3200 4327 60  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1809292031_C-K-KMR221GLFS_C72443.pdf" H 3200 4221 60  0001 C CNN
F 4 "C72443" H 3200 4050 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Tactile-Switches_C-K_KMR221GLFS_C-K-KMR221GLFS_C72443.html" H 3200 4050 50  0001 C CNN "lcsc_url"
F 6 "1" H 3200 4050 50  0001 C CNN "lcsc_min_qty"
F 7 "KMR221GLFS" H 3200 4050 50  0001 C CNN "mfr_part_number"
F 8 "KMR2" H 3200 4050 50  0001 C CNN "package"
	1    3200 4050
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:TACT-SWITCH SW3
U 1 1 5FB487FE
P 3250 7550
F 0 "SW3" H 3250 7805 50  0000 C CNN
F 1 "KMR221GLFS" H 3250 7714 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_CK_KMR2" H 3250 7827 60  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1809292031_C-K-KMR221GLFS_C72443.pdf" H 3250 7721 60  0001 C CNN
F 4 "C72443" H 3250 7550 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Tactile-Switches_C-K_KMR221GLFS_C-K-KMR221GLFS_C72443.html" H 3250 7550 50  0001 C CNN "lcsc_url"
F 6 "1" H 3250 7550 50  0001 C CNN "lcsc_min_qty"
F 7 "KMR221GLFS" H 3250 7550 50  0001 C CNN "mfr_part_number"
F 8 "KMR2" H 3250 7550 50  0001 C CNN "package"
	1    3250 7550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FB48816
P 3550 7550
F 0 "#PWR0101" H 3550 7300 50  0001 C CNN
F 1 "GND" H 3555 7377 50  0000 C CNN
F 2 "" H 3550 7550 50  0001 C CNN
F 3 "" H 3550 7550 50  0001 C CNN
	1    3550 7550
	1    0    0    -1  
$EndComp
Text GLabel 2950 7550 0    50   Input ~ 0
MODE
Text GLabel 3400 7000 2    50   Input ~ 0
MODE
Wire Wire Line
	1200 4900 1200 4800
$Comp
L Device:C_Small C12
U 1 1 5F91DD56
P 1100 4100
F 0 "C12" H 1200 4200 50  0000 L CNN
F 1 "100n" H 1200 4100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1100 4100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-0805B104K250_C128353.pdf" H 1100 4100 50  0001 C CNN
F 4 "C128353" H 1100 4100 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Walsin-Tech-Corp-0805B104K250_C128353.html" H 1100 4100 50  0001 C CNN "lcsc_url"
F 6 "100" H 1100 4100 50  0001 C CNN "lcsc_min_qty"
F 7 "0805B104K250" H 1100 4100 50  0001 C CNN "mfr_part_number"
F 8 "0805" H 1100 4100 50  0001 C CNN "package"
	1    1100 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4900 1200 4900
Connection ~ 1450 4900
Connection ~ 1200 4900
Wire Wire Line
	1600 4550 1200 4550
Wire Wire Line
	1200 4550 1200 4600
Wire Wire Line
	1100 3950 1100 4000
$Comp
L power:GND #PWR037
U 1 1 5F9329D9
P 1100 4200
F 0 "#PWR037" H 1100 3950 50  0001 C CNN
F 1 "GND" H 1105 4027 50  0000 C CNN
F 2 "" H 1100 4200 50  0001 C CNN
F 3 "" H 1100 4200 50  0001 C CNN
	1    1100 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C11
U 1 1 5F9330EE
P 650 4100
F 0 "C11" H 750 4200 50  0000 L CNN
F 1 "1uF" H 750 4100 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 650 4100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Hunan-Xiangyee-in-S-T-CA45-A035K105T_C126949.pdf" H 650 4100 50  0001 C CNN
F 4 "C126949" H 650 4100 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Tantalum-Capacitors_Hunan-Xiangyee-in-S-T-CA45-A035K105T_C126949.html" H 650 4100 50  0001 C CNN "lcsc_url"
F 6 "5" H 650 4100 50  0001 C CNN "lcsc_min_qty"
F 7 "CA45-A035K105T" H 650 4100 50  0001 C CNN "mfr_part_number"
F 8 "CASE_A_3216" H 650 4100 50  0001 C CNN "package"
	1    650  4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3950 650  3950
Wire Wire Line
	650  3950 650  4000
Connection ~ 1100 3950
$Comp
L power:GND #PWR036
U 1 1 5F941D3A
P 650 4200
F 0 "#PWR036" H 650 3950 50  0001 C CNN
F 1 "GND" H 655 4027 50  0000 C CNN
F 2 "" H 650 4200 50  0001 C CNN
F 3 "" H 650 4200 50  0001 C CNN
	1    650  4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3950 1600 3950
Wire Wire Line
	1600 4550 1600 3950
Connection ~ 1600 4550
Connection ~ 1600 3950
$Comp
L Device:R_Small R8
U 1 1 5F952AB6
P 3000 4800
F 0 "R8" H 3088 4824 50  0000 C CNN
F 1 "10k" H 3108 4756 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3000 4800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 3000 4800 50  0001 C CNN
F 4 "C15401" H 3000 4800 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 3000 4800 50  0001 C CNN "lcsc_url"
F 6 "100" H 3000 4800 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 3000 4800 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 3000 4800 50  0001 C CNN "package"
	1    3000 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4700 3000 4700
Connection ~ 2100 4700
Wire Wire Line
	3000 4900 2700 4900
Wire Wire Line
	3000 4900 3350 4900
Connection ~ 3000 4900
$Comp
L Device:R_Small R9
U 1 1 5F95A20E
P 3350 6800
F 0 "R9" H 3438 6824 50  0000 C CNN
F 1 "10k" H 3458 6756 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3350 6800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 3350 6800 50  0001 C CNN
F 4 "C15401" H 3350 6800 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 3350 6800 50  0001 C CNN "lcsc_url"
F 6 "100" H 3350 6800 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 3350 6800 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 3350 6800 50  0001 C CNN "package"
	1    3350 6800
	1    0    0    -1  
$EndComp
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
	4000 800  4000 750 
Wire Wire Line
	3950 800  4000 800 
Wire Wire Line
	4000 900  4000 950 
Wire Wire Line
	3950 900  4000 900 
Text GLabel 4000 750  1    50   Output ~ 0
B1VM
$Comp
L power:GND #PWR018
U 1 1 5FAC6DC8
P 4000 950
F 0 "#PWR018" H 4000 700 50  0001 C CNN
F 1 "GND" H 4005 777 50  0000 C CNN
F 2 "" H 4000 950 50  0001 C CNN
F 3 "" H 4000 950 50  0001 C CNN
	1    4000 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5FAC6DBE
P 3750 900
F 0 "J1" H 3885 1075 50  0000 C CNN
F 1 "BATT1" H 3750 1000 50  0000 C CNN
F 2 "Connector_AMASS:AMASS_XT60-F_1x02_P7.20mm_Vertical" H 3750 900 50  0001 C CNN
F 3 "~" H 3750 900 50  0001 C CNN
F 4 "https://www.frontlinehobbies.com.au/g-force-xt60-gold-connector-male-female-2pair-gf-1?gclid=CjwKCAjwrvv3BRAJEiwAhwOdM8-qgWv5jfFefjTFyJOH3A9PPJY-dncYXHNHYDGoyDbJGDFwuET0RRoCcNgQAvD_BwE" H 3750 900 50  0001 C CNN "other_URL"
	1    3750 900 
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5F07EB11
P 5900 900
F 0 "J4" H 6035 1075 50  0000 C CNN
F 1 "BATT2" H 5900 1000 50  0000 C CNN
F 2 "Connector_AMASS:AMASS_XT60-F_1x02_P7.20mm_Vertical" H 5900 900 50  0001 C CNN
F 3 "~" H 5900 900 50  0001 C CNN
F 4 "https://www.frontlinehobbies.com.au/g-force-xt60-gold-connector-male-female-2pair-gf-1?gclid=CjwKCAjwrvv3BRAJEiwAhwOdM8-qgWv5jfFefjTFyJOH3A9PPJY-dncYXHNHYDGoyDbJGDFwuET0RRoCcNgQAvD_BwE" H 5900 900 50  0001 C CNN "other_URL"
	1    5900 900 
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5F07EB25
P 6150 950
F 0 "#PWR032" H 6150 700 50  0001 C CNN
F 1 "GND" H 6155 777 50  0000 C CNN
F 2 "" H 6150 950 50  0001 C CNN
F 3 "" H 6150 950 50  0001 C CNN
	1    6150 950 
	1    0    0    -1  
$EndComp
Wire Notes Line
	6506 476  6504 476 
Wire Wire Line
	6100 900  6150 900 
Wire Wire Line
	6150 900  6150 950 
Wire Wire Line
	6100 800  6150 800 
Wire Wire Line
	6150 800  6150 750 
Text GLabel 6150 750  1    50   Output ~ 0
B2VM
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
Connection ~ 6200 5150
Text GLabel 4800 5700 0    50   Input ~ 0
B1VD
Text GLabel 4800 5800 0    50   Input ~ 0
B2VD
$Comp
L Transistor_FET:Si7141DP Q4
U 1 1 5FB4BE84
P 4750 1350
F 0 "Q4" H 4954 1396 50  0000 L CNN
F 1 "WSD20L120DN" H 4950 1300 50  0000 L CNN
F 2 "Package_SO:PowerPAK_SO-8_Single" H 4950 1275 50  0001 L CIN
F 3 "https://www.vishay.com/docs/65596/si7141dp.pdf" H 4750 1350 50  0001 L CNN
F 4 "C148395" H 4750 1350 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/MOSFET_Winsok-Semicon-WSD20L120DN_C148395.html" H 4750 1350 50  0001 C CNN "lcsc_url"
F 6 "1" H 4750 1350 50  0001 C CNN "lcsc_min_qty"
F 7 "WSD20L120DN" H 4750 1350 50  0001 C CNN "mfr_part_number"
F 8 "SON8" H 4750 1350 50  0001 C CNN "package"
	1    4750 1350
	1    0    0    -1  
$EndComp
Text GLabel 8100 1400 0    50   BiDi ~ 0
COM
Text GLabel 4850 1150 1    50   BiDi ~ 0
B1C
Wire Wire Line
	4850 1550 4900 1550
Text GLabel 4250 1550 0    50   Input ~ 0
B1ON
$Comp
L Transistor_BJT:MMBT3904 Q3
U 1 1 5FB90C38
P 4450 1550
F 0 "Q3" H 4650 1450 50  0000 L CNN
F 1 "MMBT3904" H 4650 1350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4650 1475 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 4450 1550 50  0001 L CNN
F 4 "C81464" H 4450 1550 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_ON-Semiconductor-MMBT3904LT1G_C81464.html" H 4450 1550 50  0001 C CNN "lcsc_url"
F 6 "50" H 4450 1550 50  0001 C CNN "lcsc_min_qty"
F 7 "MMBT3904LT1G" H 4450 1550 50  0001 C CNN "mfr_part_number"
F 8 "SOT-23" H 4450 1550 50  0001 C CNN "package"
	1    4450 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5FB90C6A
P 4550 1750
F 0 "#PWR022" H 4550 1500 50  0001 C CNN
F 1 "GND" H 4377 1675 50  0000 C CNN
F 2 "" H 4550 1750 50  0001 C CNN
F 3 "" H 4550 1750 50  0001 C CNN
	1    4550 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R14
U 1 1 5FB90C82
P 4550 1150
F 0 "R14" H 4670 1202 50  0000 C CNN
F 1 "105k" H 4686 1108 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4550 1150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2004071109_PANASONIC-ERA3AEB1053V_C491109.pdf" H 4550 1150 50  0001 C CNN
F 4 "C491109" H 4550 1150 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/New-Arrivals_PANASONIC-ERA3AEB1053V_C491109.html" H 4550 1150 50  0001 C CNN "lcsc_url"
F 6 "5" H 4550 1150 50  0001 C CNN "lcsc_min_qty"
F 7 "ERA3AEB1053V" H 4550 1150 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 4550 1150 50  0001 C CNN "package"
	1    4550 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1000 4550 1000
Wire Wire Line
	4550 1000 4550 1050
Wire Wire Line
	4550 1250 4550 1350
Connection ~ 4550 1350
Text GLabel 4450 1000 0    50   BiDi ~ 0
B1VM
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
Text GLabel 9800 1200 0    50   BiDi ~ 0
B2VM
Text GLabel 9800 1400 0    50   BiDi ~ 0
B2C
Text Notes 9800 750  0    50   ~ 0
Batt 2 current measurement
Text GLabel 10700 1300 2    50   BiDi ~ 0
B2CM
Text GLabel 4800 6000 0    50   Input ~ 0
B2CVD
Text Notes 3900 6450 0    50   ~ 0
Don’t use IN7 (temp)
$Comp
L Sensor_Current:CC6903-30A U6
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
Wire Wire Line
	9800 1400 9850 1400
Wire Wire Line
	9850 1400 9850 1350
Wire Wire Line
	9900 1350 9850 1350
Wire Wire Line
	9850 1400 9850 1450
Wire Wire Line
	9850 1450 9900 1450
Connection ~ 9850 1400
Wire Wire Line
	9800 1200 9850 1200
Wire Wire Line
	9850 1200 9850 1150
Wire Wire Line
	9900 1150 9850 1150
Wire Wire Line
	9900 1250 9850 1250
Wire Wire Line
	9850 1200 9850 1250
Connection ~ 9850 1200
Wire Notes Line
	5650 2200 5650 450 
Wire Notes Line
	7750 2200 7750 450 
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
Text Notes 8100 750  0    50   ~ 0
Batt 1 current measurement
Text GLabel 9000 1300 2    50   BiDi ~ 0
B1CM
$Comp
L Sensor_Current:CC6903-30A U4
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
Wire Wire Line
	8100 1400 8150 1400
Wire Wire Line
	8150 1400 8150 1350
Wire Wire Line
	8200 1350 8150 1350
Wire Wire Line
	8150 1400 8150 1450
Wire Wire Line
	8150 1450 8200 1450
Connection ~ 8150 1400
Wire Wire Line
	8100 1200 8150 1200
Wire Wire Line
	8150 1200 8150 1150
Wire Wire Line
	8200 1150 8150 1150
Wire Wire Line
	8200 1250 8150 1250
Wire Wire Line
	8150 1200 8150 1250
Connection ~ 8150 1200
Wire Notes Line
	11200 2200 11000 2200
Wire Notes Line
	9500 2200 9500 450 
Text Notes 5750 2500 0    50   ~ 0
Load 1 (fridge?)
Wire Wire Line
	5350 2550 5350 2500
Wire Wire Line
	5300 2550 5350 2550
Wire Wire Line
	5350 2650 5350 2700
Wire Wire Line
	5300 2650 5350 2650
Text GLabel 5350 2500 1    50   Output ~ 0
LOAD1
$Comp
L power:GND #PWR027
U 1 1 5FD65F4F
P 5350 2700
F 0 "#PWR027" H 5350 2450 50  0001 C CNN
F 1 "GND" H 5355 2527 50  0000 C CNN
F 2 "" H 5350 2700 50  0001 C CNN
F 3 "" H 5350 2700 50  0001 C CNN
	1    5350 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5FD65F62
P 5100 2650
F 0 "J5" H 5235 2825 50  0000 C CNN
F 1 "LOAD1" H 5150 2400 50  0000 C CNN
F 2 "Connector_AMASS:AMASS_XT60-F_1x02_P7.20mm_Vertical" H 5100 2650 50  0001 C CNN
F 3 "~" H 5100 2650 50  0001 C CNN
F 4 "https://www.frontlinehobbies.com.au/g-force-xt60-gold-connector-male-female-2pair-gf-1?gclid=CjwKCAjwrvv3BRAJEiwAhwOdM8-qgWv5jfFefjTFyJOH3A9PPJY-dncYXHNHYDGoyDbJGDFwuET0RRoCcNgQAvD_BwE" H 5100 2650 50  0001 C CNN "other_URL"
	1    5100 2650
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:Si7141DP Q2
U 1 1 5FD65F83
P 6100 3100
F 0 "Q2" H 6304 3146 50  0000 L CNN
F 1 "WSD20L120DN" H 6300 3050 50  0000 L CNN
F 2 "Package_SO:PowerPAK_SO-8_Single" H 6300 3025 50  0001 L CIN
F 3 "https://www.vishay.com/docs/65596/si7141dp.pdf" H 6100 3100 50  0001 L CNN
F 4 "C148395" H 6100 3100 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/MOSFET_Winsok-Semicon-WSD20L120DN_C148395.html" H 6100 3100 50  0001 C CNN "lcsc_url"
F 6 "1" H 6100 3100 50  0001 C CNN "lcsc_min_qty"
F 7 "WSD20L120DN" H 6100 3100 50  0001 C CNN "mfr_part_number"
F 8 "SON8" H 6100 3100 50  0001 C CNN "package"
	1    6100 3100
	1    0    0    -1  
$EndComp
Text GLabel 6200 2900 1    50   BiDi ~ 0
LOAD1
Wire Wire Line
	6200 3300 6250 3300
Text GLabel 5600 3300 0    50   Input ~ 0
L1ON
$Comp
L Transistor_BJT:MMBT3904 Q1
U 1 1 5FD65FC2
P 5800 3300
F 0 "Q1" H 6000 3200 50  0000 L CNN
F 1 "MMBT3904" H 6000 3100 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6000 3225 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 5800 3300 50  0001 L CNN
F 4 "C81464" H 5800 3300 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_ON-Semiconductor-MMBT3904LT1G_C81464.html" H 5800 3300 50  0001 C CNN "lcsc_url"
F 6 "50" H 5800 3300 50  0001 C CNN "lcsc_min_qty"
F 7 "MMBT3904LT1G" H 5800 3300 50  0001 C CNN "mfr_part_number"
F 8 "SOT-23" H 5800 3300 50  0001 C CNN "package"
	1    5800 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5FD65FF4
P 5900 3500
F 0 "#PWR029" H 5900 3250 50  0001 C CNN
F 1 "GND" H 5727 3425 50  0000 C CNN
F 2 "" H 5900 3500 50  0001 C CNN
F 3 "" H 5900 3500 50  0001 C CNN
	1    5900 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R16
U 1 1 5FD6600B
P 5900 2900
F 0 "R16" H 6020 2952 50  0000 C CNN
F 1 "105k" H 6036 2858 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5900 2900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2004071109_PANASONIC-ERA3AEB1053V_C491109.pdf" H 5900 2900 50  0001 C CNN
F 4 "C491109" H 5900 2900 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/New-Arrivals_PANASONIC-ERA3AEB1053V_C491109.html" H 5900 2900 50  0001 C CNN "lcsc_url"
F 6 "5" H 5900 2900 50  0001 C CNN "lcsc_min_qty"
F 7 "ERA3AEB1053V" H 5900 2900 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 5900 2900 50  0001 C CNN "package"
	1    5900 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2750 5900 2750
Wire Wire Line
	5900 2750 5900 2800
Wire Wire Line
	5900 3000 5900 3100
Connection ~ 5900 3100
Text GLabel 5800 2750 0    50   Input ~ 0
B2VM
Text GLabel 6250 3300 2    50   BiDi ~ 0
B2C
Text Notes 7800 2500 0    50   ~ 0
Load 2 (freezer?)
Wire Wire Line
	7400 2550 7400 2500
Wire Wire Line
	7350 2550 7400 2550
Wire Wire Line
	7400 2650 7400 2700
Wire Wire Line
	7350 2650 7400 2650
Text GLabel 7400 2500 1    50   Output ~ 0
LOAD2
$Comp
L power:GND #PWR030
U 1 1 5FD820ED
P 7400 2700
F 0 "#PWR030" H 7400 2450 50  0001 C CNN
F 1 "GND" H 7405 2527 50  0000 C CNN
F 2 "" H 7400 2700 50  0001 C CNN
F 3 "" H 7400 2700 50  0001 C CNN
	1    7400 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5FD82100
P 7150 2650
F 0 "J7" H 7285 2825 50  0000 C CNN
F 1 "LOAD2" H 7200 2400 50  0000 C CNN
F 2 "Connector_AMASS:AMASS_XT60-F_1x02_P7.20mm_Vertical" H 7150 2650 50  0001 C CNN
F 3 "~" H 7150 2650 50  0001 C CNN
F 4 "https://www.frontlinehobbies.com.au/g-force-xt60-gold-connector-male-female-2pair-gf-1?gclid=CjwKCAjwrvv3BRAJEiwAhwOdM8-qgWv5jfFefjTFyJOH3A9PPJY-dncYXHNHYDGoyDbJGDFwuET0RRoCcNgQAvD_BwE" H 7150 2650 50  0001 C CNN "other_URL"
	1    7150 2650
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:Si7141DP Q8
U 1 1 5FD82121
P 8150 3100
F 0 "Q8" H 8354 3146 50  0000 L CNN
F 1 "WSD20L120DN" H 8350 3050 50  0000 L CNN
F 2 "Package_SO:PowerPAK_SO-8_Single" H 8350 3025 50  0001 L CIN
F 3 "https://www.vishay.com/docs/65596/si7141dp.pdf" H 8150 3100 50  0001 L CNN
F 4 "C148395" H 8150 3100 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/MOSFET_Winsok-Semicon-WSD20L120DN_C148395.html" H 8150 3100 50  0001 C CNN "lcsc_url"
F 6 "1" H 8150 3100 50  0001 C CNN "lcsc_min_qty"
F 7 "WSD20L120DN" H 8150 3100 50  0001 C CNN "mfr_part_number"
F 8 "SON8" H 8150 3100 50  0001 C CNN "package"
	1    8150 3100
	1    0    0    -1  
$EndComp
Text GLabel 8250 2900 1    50   BiDi ~ 0
LOAD2
Wire Wire Line
	8250 3300 8300 3300
Text GLabel 7650 3300 0    50   Input ~ 0
L2ON
$Comp
L Transistor_BJT:MMBT3904 Q7
U 1 1 5FD8215F
P 7850 3300
F 0 "Q7" H 8050 3200 50  0000 L CNN
F 1 "MMBT3904" H 8050 3100 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8050 3225 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 7850 3300 50  0001 L CNN
F 4 "C81464" H 7850 3300 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_ON-Semiconductor-MMBT3904LT1G_C81464.html" H 7850 3300 50  0001 C CNN "lcsc_url"
F 6 "50" H 7850 3300 50  0001 C CNN "lcsc_min_qty"
F 7 "MMBT3904LT1G" H 7850 3300 50  0001 C CNN "mfr_part_number"
F 8 "SOT-23" H 7850 3300 50  0001 C CNN "package"
	1    7850 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5FD82191
P 7950 3500
F 0 "#PWR031" H 7950 3250 50  0001 C CNN
F 1 "GND" H 7777 3425 50  0000 C CNN
F 2 "" H 7950 3500 50  0001 C CNN
F 3 "" H 7950 3500 50  0001 C CNN
	1    7950 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R17
U 1 1 5FD821A8
P 7950 2900
F 0 "R17" H 8070 2952 50  0000 C CNN
F 1 "105k" H 8086 2858 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7950 2900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2004071109_PANASONIC-ERA3AEB1053V_C491109.pdf" H 7950 2900 50  0001 C CNN
F 4 "C491109" H 7950 2900 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/New-Arrivals_PANASONIC-ERA3AEB1053V_C491109.html" H 7950 2900 50  0001 C CNN "lcsc_url"
F 6 "5" H 7950 2900 50  0001 C CNN "lcsc_min_qty"
F 7 "ERA3AEB1053V" H 7950 2900 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 7950 2900 50  0001 C CNN "package"
	1    7950 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2750 7950 2750
Wire Wire Line
	7950 2750 7950 2800
Wire Wire Line
	7950 3000 7950 3100
Connection ~ 7950 3100
Text GLabel 7850 2750 0    50   Input ~ 0
B2VM
Text GLabel 8300 3300 2    50   BiDi ~ 0
B2C
Wire Notes Line
	500  3700 13050 3700
Text Notes 9850 2500 0    50   ~ 0
Load 3 (lights?)
Wire Wire Line
	9450 2550 9450 2500
Wire Wire Line
	9400 2550 9450 2550
Wire Wire Line
	9450 2650 9450 2700
Wire Wire Line
	9400 2650 9450 2650
Text GLabel 9450 2500 1    50   Output ~ 0
LOAD3
$Comp
L power:GND #PWR045
U 1 1 5FD8A180
P 9450 2700
F 0 "#PWR045" H 9450 2450 50  0001 C CNN
F 1 "GND" H 9455 2527 50  0000 C CNN
F 2 "" H 9450 2700 50  0001 C CNN
F 3 "" H 9450 2700 50  0001 C CNN
	1    9450 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 5FD8A193
P 9200 2650
F 0 "J8" H 9335 2825 50  0000 C CNN
F 1 "LOAD3" H 9250 2400 50  0000 C CNN
F 2 "Connector_AMASS:AMASS_XT60-F_1x02_P7.20mm_Vertical" H 9200 2650 50  0001 C CNN
F 3 "~" H 9200 2650 50  0001 C CNN
F 4 "https://www.frontlinehobbies.com.au/g-force-xt60-gold-connector-male-female-2pair-gf-1?gclid=CjwKCAjwrvv3BRAJEiwAhwOdM8-qgWv5jfFefjTFyJOH3A9PPJY-dncYXHNHYDGoyDbJGDFwuET0RRoCcNgQAvD_BwE" H 9200 2650 50  0001 C CNN "other_URL"
	1    9200 2650
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:Si7141DP Q10
U 1 1 5FD8A1B4
P 10200 3100
F 0 "Q10" H 10404 3146 50  0000 L CNN
F 1 "WSD20L120DN" H 10400 3050 50  0000 L CNN
F 2 "Package_SO:PowerPAK_SO-8_Single" H 10400 3025 50  0001 L CIN
F 3 "https://www.vishay.com/docs/65596/si7141dp.pdf" H 10200 3100 50  0001 L CNN
F 4 "C148395" H 10200 3100 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/MOSFET_Winsok-Semicon-WSD20L120DN_C148395.html" H 10200 3100 50  0001 C CNN "lcsc_url"
F 6 "1" H 10200 3100 50  0001 C CNN "lcsc_min_qty"
F 7 "WSD20L120DN" H 10200 3100 50  0001 C CNN "mfr_part_number"
F 8 "SON8" H 10200 3100 50  0001 C CNN "package"
	1    10200 3100
	1    0    0    -1  
$EndComp
Text GLabel 10300 2900 1    50   BiDi ~ 0
LOAD3
Wire Wire Line
	10300 3300 10350 3300
Text GLabel 9700 3300 0    50   Input ~ 0
L3ON
$Comp
L Transistor_BJT:MMBT3904 Q9
U 1 1 5FD8A1F2
P 9900 3300
F 0 "Q9" H 10100 3200 50  0000 L CNN
F 1 "MMBT3904" H 10100 3100 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10100 3225 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 9900 3300 50  0001 L CNN
F 4 "C81464" H 9900 3300 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_ON-Semiconductor-MMBT3904LT1G_C81464.html" H 9900 3300 50  0001 C CNN "lcsc_url"
F 6 "50" H 9900 3300 50  0001 C CNN "lcsc_min_qty"
F 7 "MMBT3904LT1G" H 9900 3300 50  0001 C CNN "mfr_part_number"
F 8 "SOT-23" H 9900 3300 50  0001 C CNN "package"
	1    9900 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR048
U 1 1 5FD8A224
P 10000 3500
F 0 "#PWR048" H 10000 3250 50  0001 C CNN
F 1 "GND" H 9827 3425 50  0000 C CNN
F 2 "" H 10000 3500 50  0001 C CNN
F 3 "" H 10000 3500 50  0001 C CNN
	1    10000 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R20
U 1 1 5FD8A23B
P 10000 2900
F 0 "R20" H 10120 2952 50  0000 C CNN
F 1 "105k" H 10136 2858 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10000 2900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2004071109_PANASONIC-ERA3AEB1053V_C491109.pdf" H 10000 2900 50  0001 C CNN
F 4 "C491109" H 10000 2900 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/New-Arrivals_PANASONIC-ERA3AEB1053V_C491109.html" H 10000 2900 50  0001 C CNN "lcsc_url"
F 6 "5" H 10000 2900 50  0001 C CNN "lcsc_min_qty"
F 7 "ERA3AEB1053V" H 10000 2900 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 10000 2900 50  0001 C CNN "package"
	1    10000 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2750 10000 2750
Wire Wire Line
	10000 2750 10000 2800
Wire Wire Line
	10000 3000 10000 3100
Connection ~ 10000 3100
Text GLabel 9900 2750 0    50   Input ~ 0
B2VM
Text GLabel 10350 3300 2    50   BiDi ~ 0
B2C
Text Notes 6350 750  0    50   ~ 0
Batt 2 isolator (auxiliary)
Text GLabel 7050 1550 2    50   BiDi ~ 0
B2C
Connection ~ 6700 1350
Wire Wire Line
	6700 1250 6700 1350
Wire Wire Line
	6700 1000 6700 1050
Wire Wire Line
	6600 1000 6700 1000
$Comp
L Device:R_Small R15
U 1 1 5FB8069D
P 6700 1150
F 0 "R15" H 6820 1202 50  0000 C CNN
F 1 "105k" H 6836 1108 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6700 1150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2004071109_PANASONIC-ERA3AEB1053V_C491109.pdf" H 6700 1150 50  0001 C CNN
F 4 "C491109" H 6700 1150 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/New-Arrivals_PANASONIC-ERA3AEB1053V_C491109.html" H 6700 1150 50  0001 C CNN "lcsc_url"
F 6 "5" H 6700 1150 50  0001 C CNN "lcsc_min_qty"
F 7 "ERA3AEB1053V" H 6700 1150 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 6700 1150 50  0001 C CNN "package"
	1    6700 1150
	1    0    0    -1  
$EndComp
Text GLabel 6600 1000 0    50   BiDi ~ 0
B2VM
$Comp
L power:GND #PWR034
U 1 1 5FB79D9A
P 6700 1750
F 0 "#PWR034" H 6700 1500 50  0001 C CNN
F 1 "GND" H 6527 1675 50  0000 C CNN
F 2 "" H 6700 1750 50  0001 C CNN
F 3 "" H 6700 1750 50  0001 C CNN
	1    6700 1750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q5
U 1 1 5FB70A89
P 6600 1550
F 0 "Q5" H 6800 1450 50  0000 L CNN
F 1 "MMBT3904" H 6800 1350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6800 1475 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 6600 1550 50  0001 L CNN
F 4 "C81464" H 6600 1550 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Transistors-NPN-PNP_ON-Semiconductor-MMBT3904LT1G_C81464.html" H 6600 1550 50  0001 C CNN "lcsc_url"
F 6 "50" H 6600 1550 50  0001 C CNN "lcsc_min_qty"
F 7 "MMBT3904LT1G" H 6600 1550 50  0001 C CNN "mfr_part_number"
F 8 "SOT-23" H 6600 1550 50  0001 C CNN "package"
	1    6600 1550
	1    0    0    -1  
$EndComp
Text GLabel 6400 1550 0    50   Input ~ 0
B2ON
Wire Wire Line
	7000 1550 7050 1550
Text GLabel 7000 1150 1    50   BiDi ~ 0
COM
$Comp
L Transistor_FET:Si7141DP Q6
U 1 1 5FB0264A
P 6900 1350
F 0 "Q6" H 7104 1396 50  0000 L CNN
F 1 "WSD20L120DN" H 7104 1305 50  0000 L CNN
F 2 "Package_SO:PowerPAK_SO-8_Single" H 7100 1275 50  0001 L CIN
F 3 "https://www.vishay.com/docs/65596/si7141dp.pdf" H 6900 1350 50  0001 L CNN
F 4 "C148395" H 6900 1350 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/MOSFET_Winsok-Semicon-WSD20L120DN_C148395.html" H 6900 1350 50  0001 C CNN "lcsc_url"
F 6 "1" H 6900 1350 50  0001 C CNN "lcsc_min_qty"
F 7 "WSD20L120DN" H 6900 1350 50  0001 C CNN "mfr_part_number"
F 8 "SON8" H 6900 1350 50  0001 C CNN "package"
	1    6900 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5FDBA5EF
P 5200 900
F 0 "J6" H 5335 1075 50  0000 C CNN
F 1 "CHGR" H 5200 1000 50  0000 C CNN
F 2 "Connector_AMASS:AMASS_XT60-F_1x02_P7.20mm_Vertical" H 5200 900 50  0001 C CNN
F 3 "~" H 5200 900 50  0001 C CNN
F 4 "https://www.frontlinehobbies.com.au/g-force-xt60-gold-connector-male-female-2pair-gf-1?gclid=CjwKCAjwrvv3BRAJEiwAhwOdM8-qgWv5jfFefjTFyJOH3A9PPJY-dncYXHNHYDGoyDbJGDFwuET0RRoCcNgQAvD_BwE" H 5200 900 50  0001 C CNN "other_URL"
	1    5200 900 
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5FDBA60B
P 5450 950
F 0 "#PWR028" H 5450 700 50  0001 C CNN
F 1 "GND" H 5455 777 50  0000 C CNN
F 2 "" H 5450 950 50  0001 C CNN
F 3 "" H 5450 950 50  0001 C CNN
	1    5450 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 900  5450 900 
Wire Wire Line
	5450 900  5450 950 
Wire Wire Line
	5400 800  5450 800 
Wire Wire Line
	5450 800  5450 750 
Text GLabel 4900 1550 2    50   BiDi ~ 0
B1VM
Text GLabel 8100 1200 0    50   BiDi ~ 0
B1C
Text GLabel 5450 750  1    50   BiDi ~ 0
B1C
Wire Notes Line
	9050 3700 9050 2200
Wire Notes Line
	6950 3700 6950 2200
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
F 1 "30k9" H 9150 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9000 5750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAF3092T5E_C23022.pdf" H 9000 5750 50  0001 C CNN
F 4 "C23022" H 9000 5750 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAF3092T5E_C23022.html" H 9000 5750 50  0001 C CNN "lcsc_url"
F 6 "100" H 9000 5750 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAF3092T5E" H 9000 5750 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 9000 5750 50  0001 C CNN "package"
	1    9000 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R19
U 1 1 5FE0D106
P 9000 5950
F 0 "R19" H 9120 6002 50  0000 C CNN
F 1 "10k2" H 9150 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9000 5950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2011091910_YAGEO-RT0603BRE0710K2L_C705802.pdf" H 9000 5950 50  0001 C CNN
F 4 "C705802" H 9000 5950 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_YAGEO-RT0603BRE0710K2L_C705802.html" H 9000 5950 50  0001 C CNN "lcsc_url"
F 6 "100" H 9000 5950 50  0001 C CNN "lcsc_min_qty"
F 7 "RT0603BRE0710K2L" H 9000 5950 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 9000 5950 50  0001 C CNN "package"
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
RTC_GPIO11
NoConn ~ 2700 6100
Text Notes 3050 5750 0    50   ~ 0
RTC_GPIO16
Text Notes 3050 6650 0    50   ~ 0
RTC_6
Text Notes 3000 6950 0    50   ~ 0
RTC_9
NoConn ~ 2700 7100
NoConn ~ 2700 7200
Text GLabel 2700 5800 2    50   Input ~ 0
L1ON
Text Notes 3050 5850 0    50   ~ 0
RTC_GPIO13
Text GLabel 2700 5600 2    50   Input ~ 0
L2ON
Text GLabel 2700 5300 2    50   Input ~ 0
L3ON
Text Notes 3050 6750 0    50   ~ 0
RTC_7
Text Notes 3200 6850 0    50   ~ 0
17
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
$Comp
L Device:R_Small R21
U 1 1 601B6A96
P 9650 5750
F 0 "R21" H 9770 5802 50  0000 C CNN
F 1 "30k9" H 9800 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9650 5750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAF3092T5E_C23022.pdf" H 9650 5750 50  0001 C CNN
F 4 "C23022" H 9650 5750 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAF3092T5E_C23022.html" H 9650 5750 50  0001 C CNN "lcsc_url"
F 6 "100" H 9650 5750 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAF3092T5E" H 9650 5750 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 9650 5750 50  0001 C CNN "package"
	1    9650 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R22
U 1 1 601B6AB1
P 9650 5950
F 0 "R22" H 9770 6002 50  0000 C CNN
F 1 "10k2" H 9800 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9650 5950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2011091910_YAGEO-RT0603BRE0710K2L_C705802.pdf" H 9650 5950 50  0001 C CNN
F 4 "C705802" H 9650 5950 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_YAGEO-RT0603BRE0710K2L_C705802.html" H 9650 5950 50  0001 C CNN "lcsc_url"
F 6 "100" H 9650 5950 50  0001 C CNN "lcsc_min_qty"
F 7 "RT0603BRE0710K2L" H 9650 5950 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 9650 5950 50  0001 C CNN "package"
	1    9650 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5850 9650 5850
Connection ~ 9650 5850
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
$Comp
L Device:R_Small R23
U 1 1 601BD72B
P 10300 5750
F 0 "R23" H 10420 5802 50  0000 C CNN
F 1 "30k9" H 10450 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10300 5750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAF3092T5E_C23022.pdf" H 10300 5750 50  0001 C CNN
F 4 "C23022" H 10300 5750 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAF3092T5E_C23022.html" H 10300 5750 50  0001 C CNN "lcsc_url"
F 6 "100" H 10300 5750 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAF3092T5E" H 10300 5750 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 10300 5750 50  0001 C CNN "package"
	1    10300 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R24
U 1 1 601BD746
P 10300 5950
F 0 "R24" H 10420 6002 50  0000 C CNN
F 1 "10k2" H 10450 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10300 5950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2011091910_YAGEO-RT0603BRE0710K2L_C705802.pdf" H 10300 5950 50  0001 C CNN
F 4 "C705802" H 10300 5950 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_YAGEO-RT0603BRE0710K2L_C705802.html" H 10300 5950 50  0001 C CNN "lcsc_url"
F 6 "100" H 10300 5950 50  0001 C CNN "lcsc_min_qty"
F 7 "RT0603BRE0710K2L" H 10300 5950 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 10300 5950 50  0001 C CNN "package"
	1    10300 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 5850 10300 5850
Connection ~ 10300 5850
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
$EndSCHEMATC
