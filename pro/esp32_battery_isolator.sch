EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ESP-32 Battery Isolator"
Date "2020-09-29"
Rev "C"
Comp "Acea Quigg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R_Small R7
U 1 1 5EFC8B89
P 2700 5500
F 0 "R7" V 2650 5650 50  0000 C CNN
F 1 "10k" V 2550 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2700 5500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 2700 5500 50  0001 C CNN
F 4 "C15401" H 2700 5500 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 2700 5500 50  0001 C CNN "lcsc_url"
F 6 "100" H 2700 5500 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 2700 5500 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 2700 5500 50  0001 C CNN "package"
	1    2700 5500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5EFCF275
P 2800 5500
F 0 "#PWR017" H 2800 5250 50  0001 C CNN
F 1 "GND" H 2950 5450 50  0000 C CNN
F 2 "" H 2800 5500 50  0001 C CNN
F 3 "" H 2800 5500 50  0001 C CNN
	1    2800 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5EFCFB7F
P 2000 7500
F 0 "#PWR012" H 2000 7250 50  0001 C CNN
F 1 "GND" H 2005 7327 50  0000 C CNN
F 2 "" H 2000 7500 50  0001 C CNN
F 3 "" H 2000 7500 50  0001 C CNN
	1    2000 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR011
U 1 1 5F01533D
P 1500 4550
F 0 "#PWR011" H 1500 4400 50  0001 C CNN
F 1 "+3V3" H 1515 4723 50  0000 C CNN
F 2 "" H 1500 4550 50  0001 C CNN
F 3 "" H 1500 4550 50  0001 C CNN
	1    1500 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5F03693E
P 1100 3050
F 0 "C1" H 1192 3096 50  0000 L CNN
F 1 "10uF" H 1192 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1100 3050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21A106KAYNNNE_C15850.pdf" H 1100 3050 50  0001 C CNN
F 4 "C15850" H 1100 3050 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL21A106KAYNNNE_10uF-106-10-25V_C15850.html" H 1100 3050 50  0001 C CNN "lcsc_url"
F 6 "20" H 1100 3050 50  0001 C CNN "lcsc_min_qty"
F 7 "CL21A106KAYNNNE" H 1100 3050 50  0001 C CNN "mfr_part_number"
F 8 "0805" H 1100 3050 50  0001 C CNN "package"
	1    1100 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5F0878E3
P 900 4900
F 0 "C6" H 710 4846 50  0000 L CNN
F 1 "100n" H 612 4776 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 900 4900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-0805B104K250_C128353.pdf" H 900 4900 50  0001 C CNN
F 4 "C128353" H 900 4900 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Walsin-Tech-Corp-0805B104K250_C128353.html" H 900 4900 50  0001 C CNN "lcsc_url"
F 6 "100" H 900 4900 50  0001 C CNN "lcsc_min_qty"
F 7 "0805B104K250" H 900 4900 50  0001 C CNN "mfr_part_number"
F 8 "0805" H 900 4900 50  0001 C CNN "package"
	1    900  4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5F088CED
P 900 5000
F 0 "#PWR010" H 900 4750 50  0001 C CNN
F 1 "GND" H 905 4827 50  0000 C CNN
F 2 "" H 900 5000 50  0001 C CNN
F 3 "" H 900 5000 50  0001 C CNN
	1    900  5000
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:TACT-SWITCH SW1
U 1 1 5F089A41
P 3000 4600
F 0 "SW1" H 3000 4855 50  0000 C CNN
F 1 "TS-1102W-4316" H 3000 4764 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 3000 4877 60  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1808311432_SOFNG-TS-1102W-4316_C111373.pdf" H 3000 4771 60  0001 C CNN
F 4 "C111373" H 3000 4600 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Tactile-Switches_SOFNG-TS-1102W-4316_C111373.html" H 3000 4600 50  0001 C CNN "lcsc_url"
F 6 "10" H 3000 4600 50  0001 C CNN "lcsc_min_qty"
F 7 "TS-1102W-4316" H 3000 4600 50  0001 C CNN "mfr_part_number"
F 8 "6x6x4.3" H 3000 4600 50  0001 C CNN "package"
	1    3000 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5F08B08D
P 3300 4600
F 0 "#PWR018" H 3300 4350 50  0001 C CNN
F 1 "GND" H 3305 4427 50  0000 C CNN
F 2 "" H 3300 4600 50  0001 C CNN
F 3 "" H 3300 4600 50  0001 C CNN
	1    3300 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5F08C101
P 900 4700
F 0 "R4" H 988 4724 50  0000 C CNN
F 1 "10k" H 1008 4656 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 900 4700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 900 4700 50  0001 C CNN
F 4 "C15401" H 900 4700 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 900 4700 50  0001 C CNN "lcsc_url"
F 6 "100" H 900 4700 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 900 4700 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 900 4700 50  0001 C CNN "package"
	1    900  4700
	1    0    0    -1  
$EndComp
Text GLabel 2600 5000 2    50   Output ~ 0
TXD
Text GLabel 2600 5200 2    50   Input ~ 0
RXD
Text GLabel 9950 4650 2    50   Input ~ 0
TXD
Text GLabel 9950 4550 2    50   Input ~ 0
RXD
Text Notes 8374 593  0    50   ~ 0
Batt 2 (AUX)
Text GLabel 9850 1050 2    50   Output ~ 0
B2CM
$Comp
L Device:C_Small C2
U 1 1 5F0597D2
P 1450 3050
F 0 "C2" H 1520 3095 50  0000 L CNN
F 1 "100n" H 1520 3000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1450 3050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-0805B104K250_C128353.pdf" H 1450 3050 50  0001 C CNN
F 4 "C128353" H 1450 3050 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Walsin-Tech-Corp-0805B104K250_C128353.html" H 1450 3050 50  0001 C CNN "lcsc_url"
F 6 "100" H 1450 3050 50  0001 C CNN "lcsc_min_qty"
F 7 "0805B104K250" H 1450 3050 50  0001 C CNN "mfr_part_number"
F 8 "0805" H 1450 3050 50  0001 C CNN "package"
	1    1450 3050
	1    0    0    -1  
$EndComp
Text GLabel 2600 6900 2    50   Output ~ 0
MAIN_LED
Text GLabel 2600 6700 2    50   Output ~ 0
AUX1_LED
Text GLabel 2600 6800 2    50   Output ~ 0
AUX2_LED
$Comp
L Device:LED D2
U 1 1 5F05CC6B
P 1538 1068
F 0 "D2" V 1577 951 50  0000 R CNN
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
L power:GND #PWR01
U 1 1 5F06058B
P 1538 1418
F 0 "#PWR01" H 1538 1168 50  0001 C CNN
F 1 "GND" H 1678 1284 50  0000 C CNN
F 2 "" H 1538 1418 50  0001 C CNN
F 3 "" H 1538 1418 50  0001 C CNN
	1    1538 1418
	1    0    0    -1  
$EndComp
Text GLabel 1538 918  0    50   Input ~ 0
SYS_OK_LED
$Comp
L Device:LED D1
U 1 1 5F0616FE
P 2170 1070
F 0 "D1" V 2209 953 50  0000 R CNN
F 1 "AUX1 LED" V 2118 953 50  0000 R CNN
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
L power:GND #PWR04
U 1 1 5F061708
P 2170 1420
F 0 "#PWR04" H 2170 1170 50  0001 C CNN
F 1 "GND" H 2310 1286 50  0000 C CNN
F 2 "" H 2170 1420 50  0001 C CNN
F 3 "" H 2170 1420 50  0001 C CNN
	1    2170 1420
	1    0    0    -1  
$EndComp
Text GLabel 2170 920  0    50   Input ~ 0
B1_LED
$Comp
L Device:LED D3
U 1 1 5F063619
P 2806 1070
F 0 "D3" V 2845 953 50  0000 R CNN
F 1 "AUX2 LED" V 2754 953 50  0000 R CNN
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
L power:GND #PWR07
U 1 1 5F063623
P 2806 1420
F 0 "#PWR07" H 2806 1170 50  0001 C CNN
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
L Device:R_Small R1
U 1 1 5F069BC9
P 1538 1318
F 0 "R1" H 1652 1366 50  0000 L CNN
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
L Device:R_Small R2
U 1 1 5F06E5B1
P 2170 1320
F 0 "R2" H 2284 1368 50  0000 L CNN
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
L Device:R_Small R3
U 1 1 5F06F0C0
P 2806 1320
F 0 "R3" H 2920 1368 50  0000 L CNN
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
$Comp
L power:GND #PWR030
U 1 1 5F07EAFA
P 9450 1350
F 0 "#PWR030" H 9450 1100 50  0001 C CNN
F 1 "GND" H 9455 1177 50  0000 C CNN
F 2 "" H 9450 1350 50  0001 C CNN
F 3 "" H 9450 1350 50  0001 C CNN
	1    9450 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR029
U 1 1 5F07EB04
P 9450 750
F 0 "#PWR029" H 9450 600 50  0001 C CNN
F 1 "+3V3" H 9465 923 50  0000 C CNN
F 2 "" H 9450 750 50  0001 C CNN
F 3 "" H 9450 750 50  0001 C CNN
	1    9450 750 
	1    0    0    -1  
$EndComp
Text GLabel 8950 850  0    50   Input ~ 0
VCOM
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5F07EB11
P 7500 1250
F 0 "J4" H 7635 1425 50  0000 C CNN
F 1 "BATT2" H 7345 1330 50  0000 C CNN
F 2 "Connector_AMASS:AMASS_XT60-F_1x02_P7.20mm_Vertical" H 7500 1250 50  0001 C CNN
F 3 "~" H 7500 1250 50  0001 C CNN
F 4 "https://www.frontlinehobbies.com.au/g-force-xt60-gold-connector-male-female-2pair-gf-1?gclid=CjwKCAjwrvv3BRAJEiwAhwOdM8-qgWv5jfFefjTFyJOH3A9PPJY-dncYXHNHYDGoyDbJGDFwuET0RRoCcNgQAvD_BwE" H 7500 1250 50  0001 C CNN "other_URL"
	1    7500 1250
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5F07EB25
P 7750 1300
F 0 "#PWR023" H 7750 1050 50  0001 C CNN
F 1 "GND" H 7755 1127 50  0000 C CNN
F 2 "" H 7750 1300 50  0001 C CNN
F 3 "" H 7750 1300 50  0001 C CNN
	1    7750 1300
	1    0    0    -1  
$EndComp
Text GLabel 7900 1650 0    50   Output ~ 0
B2ON
Text Notes 1850 4250 0    50   ~ 0
ESP-32
Wire Notes Line
	7306 476  7304 476 
Text Notes 5900 2300 0    50   ~ 0
Load 1 (FRIDGE)
Text GLabel 6500 2600 2    50   Input ~ 0
VCOM
Wire Notes Line
	11218 4184 11218 4180
Wire Notes Line
	468  2206 11226 2206
Wire Notes Line
	11226 2206 11226 2214
Text GLabel 2600 7000 2    50   Input ~ 0
AUX_1_C
Text GLabel 1400 5100 0    50   Input ~ 0
AUX_2_C
Text GLabel 2600 6600 2    50   Output ~ 0
AUX_1
Text GLabel 2600 5700 2    50   Output ~ 0
AUX_2
Text GLabel 2600 6200 2    50   Output ~ 0
LOAD_1
Text GLabel 2600 6500 2    50   Output ~ 0
LOAD_2
$Comp
L power:GND #PWR0101
U 1 1 5F1CC227
P 1450 3150
F 0 "#PWR0101" H 1450 2900 50  0001 C CNN
F 1 "GND" H 1455 2977 50  0000 C CNN
F 2 "" H 1450 3150 50  0001 C CNN
F 3 "" H 1450 3150 50  0001 C CNN
	1    1450 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F337A25
P 1100 3150
F 0 "#PWR0102" H 1100 2900 50  0001 C CNN
F 1 "GND" H 1105 2977 50  0000 C CNN
F 2 "" H 1100 3150 50  0001 C CNN
F 3 "" H 1100 3150 50  0001 C CNN
	1    1100 3150
	1    0    0    -1  
$EndComp
Text GLabel 1400 5200 0    50   Input ~ 0
BAT1
Text GLabel 2600 7100 2    50   Input ~ 0
BAT2
Text GLabel 10250 5950 0    50   Input ~ 0
B2VD
$Comp
L power:GND #PWR05
U 1 1 5F0570E9
P 10350 6150
F 0 "#PWR05" H 10350 5900 50  0001 C CNN
F 1 "GND" H 10355 5977 50  0000 C CNN
F 2 "" H 10350 6150 50  0001 C CNN
F 3 "" H 10350 6150 50  0001 C CNN
	1    10350 6150
	1    0    0    -1  
$EndComp
Text GLabel 10950 5750 1    50   Output ~ 0
B2VM
Text GLabel 10850 5950 0    50   Input ~ 0
B2VD
$Comp
L power:GND #PWR033
U 1 1 5F05BD0E
P 10950 6150
F 0 "#PWR033" H 10950 5900 50  0001 C CNN
F 1 "GND" H 10955 5977 50  0000 C CNN
F 2 "" H 10950 6150 50  0001 C CNN
F 3 "" H 10950 6150 50  0001 C CNN
	1    10950 6150
	1    0    0    -1  
$EndComp
Text GLabel 10350 5750 1    50   Input ~ 0
B1VM
Text GLabel 2600 6300 2    50   BiDi ~ 0
SDA
Text GLabel 2600 6400 2    50   Output ~ 0
SCL
Text Notes 9550 5300 0    50   ~ 0
ADCs
Text Notes 4600 3850 0    50   ~ 0
I2C Port
$Comp
L Connector:Conn_01x04_Female J7
U 1 1 5F0D309D
P 5292 4170
F 0 "J7" H 5320 4146 50  0000 L CNN
F 1 "Conn_01x04_Female" H 4750 3840 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 5292 4170 50  0001 C CNN
F 3 "~" H 5292 4170 50  0001 C CNN
	1    5292 4170
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR035
U 1 1 5F0D4D77
P 5092 4070
F 0 "#PWR035" H 5092 3820 50  0001 C CNN
F 1 "GND" V 5091 3874 50  0000 C CNN
F 2 "" H 5092 4070 50  0001 C CNN
F 3 "" H 5092 4070 50  0001 C CNN
	1    5092 4070
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR036
U 1 1 5F106EBF
P 4066 4090
F 0 "#PWR036" H 4066 3940 50  0001 C CNN
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
L Device:R_Small R17
U 1 1 5F10CED6
P 4436 4192
F 0 "R17" H 4550 4234 50  0000 C CNN
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
L power:+3V3 #PWR037
U 1 1 5F10CEE0
P 4436 4092
F 0 "#PWR037" H 4436 3942 50  0001 C CNN
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
L Device:C_Small C3
U 1 1 5F0420C9
P 7800 5100
F 0 "C3" H 7870 5145 50  0000 L CNN
F 1 "100n" H 7870 5050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7800 5100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-0805B104K250_C128353.pdf" H 7800 5100 50  0001 C CNN
F 4 "C128353" H 7800 5100 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Walsin-Tech-Corp-0805B104K250_C128353.html" H 7800 5100 50  0001 C CNN "lcsc_url"
F 6 "100" H 7800 5100 50  0001 C CNN "lcsc_min_qty"
F 7 "0805B104K250" H 7800 5100 50  0001 C CNN "mfr_part_number"
F 8 "0805" H 7800 5100 50  0001 C CNN "package"
	1    7800 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 5F042F4F
P 7800 5200
F 0 "#PWR039" H 7800 4950 50  0001 C CNN
F 1 "GND" H 7805 5027 50  0000 C CNN
F 2 "" H 7800 5200 50  0001 C CNN
F 3 "" H 7800 5200 50  0001 C CNN
	1    7800 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR038
U 1 1 5F0443D0
P 7800 5000
F 0 "#PWR038" H 7800 4850 50  0001 C CNN
F 1 "+3V3" H 7815 5173 50  0000 C CNN
F 2 "" H 7800 5000 50  0001 C CNN
F 3 "" H 7800 5000 50  0001 C CNN
	1    7800 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5F04A374
P 7350 6250
F 0 "#PWR041" H 7350 6000 50  0001 C CNN
F 1 "GND" H 7355 6077 50  0000 C CNN
F 2 "" H 7350 6250 50  0001 C CNN
F 3 "" H 7350 6250 50  0001 C CNN
	1    7350 6250
	1    0    0    -1  
$EndComp
Text GLabel 6950 5650 0    50   BiDi ~ 0
SDA
Text GLabel 6950 5750 0    50   Input ~ 0
SCL
Text Notes 7250 4900 0    50   ~ 0
Temp
$Comp
L MAX17260:TACT-SWITCH SW2
U 1 1 5F552A40
P 3000 4050
F 0 "SW2" H 3000 4305 50  0000 C CNN
F 1 "TS-1102W-4316" H 3000 4214 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 3000 4327 60  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1808311432_SOFNG-TS-1102W-4316_C111373.pdf" H 3000 4221 60  0001 C CNN
F 4 "C111373" H 3000 4050 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Tactile-Switches_SOFNG-TS-1102W-4316_C111373.html" H 3000 4050 50  0001 C CNN "lcsc_url"
F 6 "10" H 3000 4050 50  0001 C CNN "lcsc_min_qty"
F 7 "TS-1102W-4316" H 3000 4050 50  0001 C CNN "mfr_part_number"
F 8 "6x6x4.3" H 3000 4050 50  0001 C CNN "package"
	1    3000 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F553B72
P 3300 4050
F 0 "#PWR0103" H 3300 3800 50  0001 C CNN
F 1 "GND" H 3305 3877 50  0000 C CNN
F 2 "" H 3300 4050 50  0001 C CNN
F 3 "" H 3300 4050 50  0001 C CNN
	1    3300 4050
	1    0    0    -1  
$EndComp
Text GLabel 2700 4050 0    50   Input ~ 0
RST
Text GLabel 5092 4370 0    50   Input ~ 0
SDA
Text GLabel 5092 4270 0    50   Input ~ 0
SCL
$Comp
L power:+3V3 #PWR034
U 1 1 5F0D4017
P 5092 4170
F 0 "#PWR034" H 5092 4020 50  0001 C CNN
F 1 "+3V3" V 5091 4387 50  0000 C CNN
F 2 "" H 5092 4170 50  0001 C CNN
F 3 "" H 5092 4170 50  0001 C CNN
	1    5092 4170
	0    -1   -1   0   
$EndComp
Text GLabel 1350 4850 1    50   Input ~ 0
RST
Text GLabel 950  2900 0    50   Input ~ 0
BAT2V
Text Notes 2667 7229 0    50   ~ 0
SPARE ADC
Text GLabel 7750 1100 1    50   Output ~ 0
B2VM
$Comp
L Device:R_Small R8
U 1 1 5F7A59F8
P 8400 1950
F 0 "R8" H 8488 1974 50  0000 C CNN
F 1 "10k" H 8508 1906 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8400 1950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 8400 1950 50  0001 C CNN
F 4 "C15401" H 8400 1950 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 8400 1950 50  0001 C CNN "lcsc_url"
F 6 "100" H 8400 1950 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 8400 1950 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 8400 1950 50  0001 C CNN "package"
	1    8400 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F7A59FE
P 8400 2050
F 0 "#PWR0104" H 8400 1800 50  0001 C CNN
F 1 "GND" H 8227 1975 50  0000 C CNN
F 2 "" H 8400 2050 50  0001 C CNN
F 3 "" H 8400 2050 50  0001 C CNN
	1    8400 2050
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:MOSFET_P_CH Q8
U 1 1 5F7A5A10
P 8400 1250
F 0 "Q8" V 8728 1250 50  0000 C CNN
F 1 "EMF02P02H" V 8638 1411 50  0000 C CNN
F 2 "Package_SO:PowerPAK_SO-8_Single" H 8600 1350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2001132234_EMC-EMF02P02H_C461954.pdf" H 8400 1250 50  0001 C CNN
F 4 "C461954" H 8400 1250 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/MOSFET_EMC-EMF02P02H_C461954.html" H 8400 1250 50  0001 C CNN "lcsc_url"
F 6 "1" H 8400 1250 50  0001 C CNN "lcsc_min_qty"
F 7 "EMF02P02H" H 8400 1250 50  0001 C CNN "mfr_part_number"
F 8 "EDFN5x6" H 8400 1250 50  0001 C CNN "package"
	1    8400 1250
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Small R28
U 1 1 5F7A5A1B
P 8000 1650
F 0 "R28" V 7916 1664 50  0000 C CNN
F 1 "10k" V 7841 1647 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8000 1650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 8000 1650 50  0001 C CNN
F 4 "C15401" H 8000 1650 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 8000 1650 50  0001 C CNN "lcsc_url"
F 6 "100" H 8000 1650 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 8000 1650 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 8000 1650 50  0001 C CNN "package"
	1    8000 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R27
U 1 1 5F7A5A26
P 8000 1300
F 0 "R27" H 8100 1332 50  0000 C CNN
F 1 "100k" H 8136 1258 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8000 1300 50  0001 C CNN
F 3 "" H 8000 1300 50  0001 C CNN
F 4 "C312247" H 8000 1300 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Others_RALEC-RTT031003BTP_C312247.html" H 8000 1300 50  0001 C CNN "lcsc_url"
F 6 "20" H 8000 1300 50  0001 C CNN "lcsc_min_qty"
F 7 "RTT031003BTP" H 8000 1300 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 8000 1300 50  0001 C CNN "package"
	1    8000 1300
	1    0    0    -1  
$EndComp
Wire Notes Line
	6972 2205 6971 2205
$Comp
L C108052_SY8201ABC_1A3v3_switcher:SY8201 U1
U 1 1 5F7FD51F
P 2700 3100
F 0 "U1" H 2450 3650 50  0000 C CNN
F 1 "SY8201" H 2550 3550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2700 2700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Silergy-Corp-SY8201ABC_C108052.pdf" H 2600 3550 50  0001 C CNN
F 4 "C108052" H 2700 3100 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/DC-DC-Converters_Silergy-Corp-SY8201ABC_C108052.html" H 2700 3100 50  0001 C CNN "lcsc_url"
F 6 "1" H 2700 3100 50  0001 C CNN "lcsc_min_qty"
F 7 "SY8201ABC" H 2700 3100 50  0001 C CNN "mfr_part_number"
F 8 "SOT23-6" H 2700 3100 50  0001 C CNN "package"
	1    2700 3100
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F1D7B08
P 1100 2850
F 0 "#FLG0101" H 1100 2925 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 3023 50  0000 C CNN
F 2 "" H 1100 2850 50  0001 C CNN
F 3 "~" H 1100 2850 50  0001 C CNN
	1    1100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2900 1100 2900
Wire Wire Line
	1100 2850 1100 2900
Connection ~ 1100 2900
Wire Wire Line
	1100 2900 1450 2900
Wire Wire Line
	1100 2950 1100 2900
Wire Wire Line
	1450 2950 1450 2900
Connection ~ 1450 2900
Wire Wire Line
	1450 2900 1950 2900
$Comp
L Device:R_Small R18
U 1 1 5F835F6C
P 1950 3050
F 0 "R18" H 2038 3074 50  0000 C CNN
F 1 "10k" H 2058 3006 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1950 3050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 1950 3050 50  0001 C CNN
F 4 "C15401" H 1950 3050 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 1950 3050 50  0001 C CNN "lcsc_url"
F 6 "100" H 1950 3050 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 1950 3050 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 1950 3050 50  0001 C CNN "package"
	1    1950 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2950 1950 2900
Connection ~ 1950 2900
Wire Wire Line
	1950 2900 2300 2900
Wire Wire Line
	1950 3150 1950 3200
Wire Wire Line
	1950 3200 2250 3200
Wire Wire Line
	2250 3200 2250 3000
Wire Wire Line
	2250 3000 2300 3000
$Comp
L power:GND #PWR0105
U 1 1 5F83B5D2
P 2700 3400
F 0 "#PWR0105" H 2700 3150 50  0001 C CNN
F 1 "GND" H 2705 3227 50  0000 C CNN
F 2 "" H 2700 3400 50  0001 C CNN
F 3 "" H 2700 3400 50  0001 C CNN
	1    2700 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5F83F17E
P 2950 2650
F 0 "C4" H 3020 2695 50  0000 L CNN
F 1 "100n" H 3020 2600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2950 2650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-0805B104K250_C128353.pdf" H 2950 2650 50  0001 C CNN
F 4 "C128353" H 2950 2650 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Walsin-Tech-Corp-0805B104K250_C128353.html" H 2950 2650 50  0001 C CNN "lcsc_url"
F 6 "100" H 2950 2650 50  0001 C CNN "lcsc_min_qty"
F 7 "0805B104K250" H 2950 2650 50  0001 C CNN "mfr_part_number"
F 8 "0805" H 2950 2650 50  0001 C CNN "package"
	1    2950 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 2700 2800 2650
Wire Wire Line
	2800 2650 2850 2650
$Comp
L Device:C_Small C8
U 1 1 5F8473AA
P 4250 3050
F 0 "C8" H 4320 3095 50  0000 L CNN
F 1 "22uF" H 4320 3000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4250 3050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Guangdong-Fenghua-Advanced-Tech-0603X226M100NT_C60077.pdf" H 4250 3050 50  0001 C CNN
F 4 "C60077" H 4250 3050 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_FH-Guangdong-Fenghua-Advanced-Tech-0603X226M100NT_C60077.html" H 4250 3050 50  0001 C CNN "lcsc_url"
F 6 "10" H 4250 3050 50  0001 C CNN "lcsc_min_qty"
F 7 "0603X226M100NT" H 4250 3050 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 4250 3050 50  0001 C CNN "package"
	1    4250 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5F84805B
P 3900 3050
F 0 "C5" H 3970 3095 50  0000 L CNN
F 1 "22pF" H 3970 3000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3900 3050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-0603N220J500_C107451.pdf" H 3900 3050 50  0001 C CNN
F 4 "C107451" H 3900 3050 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Walsin-Tech-Corp-0603N220J500_C107451.html" H 3900 3050 50  0001 C CNN "lcsc_url"
F 6 "50" H 3900 3050 50  0001 C CNN "lcsc_min_qty"
F 7 "0603N220J500" H 3900 3050 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 3900 3050 50  0001 C CNN "package"
	1    3900 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L1
U 1 1 5F849C4C
P 3350 2900
F 0 "L1" V 3550 2850 50  0000 C CNN
F 1 "SWPA6020S" V 3450 2850 50  0000 C CNN
F 2 "Inductor_SMD:L_Taiyo-Yuden_NR-60xx" H 3350 2900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Sunlord-SWPA6020S100MT_C96926.pdf" H 3350 2900 50  0001 C CNN
F 4 "C96926" H 3350 2900 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Power-Inductors_Sunlord-SWPA6020S100MT_C96926.html" H 3350 2900 50  0001 C CNN "lcsc_url"
F 6 "5" H 3350 2900 50  0001 C CNN "lcsc_min_qty"
	1    3350 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 2900 3150 2900
Wire Wire Line
	3050 2650 3150 2650
Wire Wire Line
	3150 2650 3150 2900
Connection ~ 3150 2900
Wire Wire Line
	3150 2900 3250 2900
Wire Wire Line
	3900 2900 3900 2950
Wire Wire Line
	3900 2900 4250 2900
Wire Wire Line
	4250 2900 4250 2950
Connection ~ 3900 2900
$Comp
L power:+3V3 #PWR0106
U 1 1 5F85710B
P 4250 2850
F 0 "#PWR0106" H 4250 2700 50  0001 C CNN
F 1 "+3V3" H 4265 3023 50  0000 C CNN
F 2 "" H 4250 2850 50  0001 C CNN
F 3 "" H 4250 2850 50  0001 C CNN
	1    4250 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2850 4250 2900
Connection ~ 4250 2900
$Comp
L power:GND #PWR0107
U 1 1 5F85B83D
P 3900 3150
F 0 "#PWR0107" H 3900 2900 50  0001 C CNN
F 1 "GND" H 3905 2977 50  0000 C CNN
F 2 "" H 3900 3150 50  0001 C CNN
F 3 "" H 3900 3150 50  0001 C CNN
	1    3900 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F85BE6D
P 4250 3150
F 0 "#PWR0108" H 4250 2900 50  0001 C CNN
F 1 "GND" H 4255 2977 50  0000 C CNN
F 2 "" H 4250 3150 50  0001 C CNN
F 3 "" H 4250 3150 50  0001 C CNN
	1    4250 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R19
U 1 1 5F85C1A5
P 3550 3050
F 0 "R19" H 3650 3082 50  0000 C CNN
F 1 "100k" H 3686 3008 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3550 3050 50  0001 C CNN
F 3 "" H 3550 3050 50  0001 C CNN
F 4 "C312247" H 3550 3050 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Others_RALEC-RTT031003BTP_C312247.html" H 3550 3050 50  0001 C CNN "lcsc_url"
F 6 "20" H 3550 3050 50  0001 C CNN "lcsc_min_qty"
F 7 "RTT031003BTP" H 3550 3050 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 3550 3050 50  0001 C CNN "package"
	1    3550 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2950 3550 2900
$Comp
L Device:R_Small R20
U 1 1 5F87053C
P 3550 3250
F 0 "R20" H 3638 3274 50  0000 C CNN
F 1 "22.1k" H 3700 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3550 3250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAF2212T5E_C25961.pdf" H 3550 3250 50  0001 C CNN
F 4 "C25961" H 3550 3250 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAF2212T5E_C25961.html" H 3550 3250 50  0001 C CNN "lcsc_url"
F 6 "100" H 3550 3250 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAF2212T5E" H 3550 3250 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 3550 3250 50  0001 C CNN "package"
	1    3550 3250
	1    0    0    -1  
$EndComp
Connection ~ 3550 3150
$Comp
L power:GND #PWR0109
U 1 1 5F8791C5
P 3550 3350
F 0 "#PWR0109" H 3550 3100 50  0001 C CNN
F 1 "GND" H 3555 3177 50  0000 C CNN
F 2 "" H 3550 3350 50  0001 C CNN
F 3 "" H 3550 3350 50  0001 C CNN
	1    3550 3350
	1    0    0    -1  
$EndComp
Connection ~ 3550 2900
Wire Wire Line
	3550 2900 3900 2900
Wire Wire Line
	3450 2900 3550 2900
Wire Wire Line
	3100 3150 3550 3150
Text Notes 2150 2350 0    50   ~ 0
DC-DC Buck (4.5-27V, 3.3V, 1A)
Wire Notes Line
	3500 2200 3500 500 
Wire Notes Line
	4700 7800 4650 7800
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5F9D1FF4
P 5300 2700
F 0 "J2" H 5435 2875 50  0000 C CNN
F 1 "LOAD1" H 5145 2780 50  0000 C CNN
F 2 "Connector_AMASS:AMASS_XT60-F_1x02_P7.20mm_Vertical" H 5300 2700 50  0001 C CNN
F 3 "~" H 5300 2700 50  0001 C CNN
F 4 "https://www.frontlinehobbies.com.au/g-force-xt60-gold-connector-male-female-2pair-gf-1?gclid=CjwKCAjwrvv3BRAJEiwAhwOdM8-qgWv5jfFefjTFyJOH3A9PPJY-dncYXHNHYDGoyDbJGDFwuET0RRoCcNgQAvD_BwE" H 5300 2700 50  0001 C CNN "other_URL"
	1    5300 2700
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F9D1FFE
P 5600 2750
F 0 "#PWR0110" H 5600 2500 50  0001 C CNN
F 1 "GND" H 5605 2577 50  0000 C CNN
F 2 "" H 5600 2750 50  0001 C CNN
F 3 "" H 5600 2750 50  0001 C CNN
	1    5600 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5F9D200F
P 6200 3400
F 0 "R5" H 6288 3424 50  0000 C CNN
F 1 "10k" H 6308 3356 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6200 3400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 6200 3400 50  0001 C CNN
F 4 "C15401" H 6200 3400 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 6200 3400 50  0001 C CNN "lcsc_url"
F 6 "100" H 6200 3400 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 6200 3400 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 6200 3400 50  0001 C CNN "package"
	1    6200 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5F9D2019
P 6200 3500
F 0 "#PWR0111" H 6200 3250 50  0001 C CNN
F 1 "GND" H 6042 3460 50  0000 C CNN
F 2 "" H 6200 3500 50  0001 C CNN
F 3 "" H 6200 3500 50  0001 C CNN
	1    6200 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q5
U 1 1 5F9D2027
P 6100 3100
F 0 "Q5" H 6291 3146 50  0000 L CNN
F 1 "MMBT3904" H 6291 3055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6300 3200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1907051108_KEXIN-MMBT3904_C382281.pdf" H 6100 3100 50  0001 C CNN
F 4 "C382281" H 6100 3100 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/New-Arrivals_KEXIN-MMBT3904_C382281.html" H 6100 3100 50  0001 C CNN "lcsc_url"
F 6 "50" H 6100 3100 50  0001 C CNN "lcsc_min_qty"
F 7 "MMBT3904" H 6100 3100 50  0001 C CNN "mfr_part_number"
F 8 "SOT-23" H 6100 3100 50  0001 C CNN "package"
	1    6100 3100
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:MOSFET_P_CH Q1
U 1 1 5F9D2036
P 6200 2700
F 0 "Q1" V 6528 2700 50  0000 C CNN
F 1 "EMF02P02H" V 6438 2861 50  0000 C CNN
F 2 "Package_SO:PowerPAK_SO-8_Single" H 6400 2800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2001132234_EMC-EMF02P02H_C461954.pdf" H 6200 2700 50  0001 C CNN
F 4 "C461954" H 6200 2700 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/MOSFET_EMC-EMF02P02H_C461954.html" H 6200 2700 50  0001 C CNN "lcsc_url"
F 6 "1" H 6200 2700 50  0001 C CNN "lcsc_min_qty"
F 7 "EMF02P02H" H 6200 2700 50  0001 C CNN "mfr_part_number"
F 8 "EDFN5x6" H 6200 2700 50  0001 C CNN "package"
	1    6200 2700
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Small R24
U 1 1 5F9D2045
P 5800 3100
F 0 "R24" V 5716 3114 50  0000 C CNN
F 1 "10k" V 5641 3097 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5800 3100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 5800 3100 50  0001 C CNN
F 4 "C15401" H 5800 3100 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 5800 3100 50  0001 C CNN "lcsc_url"
F 6 "100" H 5800 3100 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 5800 3100 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 5800 3100 50  0001 C CNN "package"
	1    5800 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R23
U 1 1 5F9D2054
P 5750 2700
F 0 "R23" H 5850 2732 50  0000 C CNN
F 1 "100k" H 5886 2658 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5750 2700 50  0001 C CNN
F 3 "" H 5750 2700 50  0001 C CNN
F 4 "C312247" H 5750 2700 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Others_RALEC-RTT031003BTP_C312247.html" H 5750 2700 50  0001 C CNN "lcsc_url"
F 6 "20" H 5750 2700 50  0001 C CNN "lcsc_min_qty"
F 7 "RTT031003BTP" H 5750 2700 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 5750 2700 50  0001 C CNN "package"
	1    5750 2700
	1    0    0    -1  
$EndComp
Text GLabel 5700 3100 0    50   Input ~ 0
L1ON
Wire Wire Line
	6400 2600 6500 2600
Wire Wire Line
	5500 2700 5600 2700
Wire Wire Line
	5600 2700 5600 2750
Wire Wire Line
	5500 2600 5750 2600
Wire Wire Line
	5750 2800 5750 2950
Wire Wire Line
	5750 2950 5900 2950
Wire Wire Line
	5900 2950 5900 3100
Connection ~ 5900 3100
Wire Wire Line
	5750 2600 6000 2600
Connection ~ 5750 2600
Text Notes 7950 2300 0    50   ~ 0
Load 2 (FREEZER)
Text GLabel 8650 2600 2    50   Input ~ 0
VCOM
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5FA4785F
P 7450 2700
F 0 "J5" H 7585 2875 50  0000 C CNN
F 1 "LOAD1" H 7295 2780 50  0000 C CNN
F 2 "Connector_AMASS:AMASS_XT60-F_1x02_P7.20mm_Vertical" H 7450 2700 50  0001 C CNN
F 3 "~" H 7450 2700 50  0001 C CNN
F 4 "https://www.frontlinehobbies.com.au/g-force-xt60-gold-connector-male-female-2pair-gf-1?gclid=CjwKCAjwrvv3BRAJEiwAhwOdM8-qgWv5jfFefjTFyJOH3A9PPJY-dncYXHNHYDGoyDbJGDFwuET0RRoCcNgQAvD_BwE" H 7450 2700 50  0001 C CNN "other_URL"
	1    7450 2700
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5FA47869
P 7750 2750
F 0 "#PWR0112" H 7750 2500 50  0001 C CNN
F 1 "GND" H 7755 2577 50  0000 C CNN
F 2 "" H 7750 2750 50  0001 C CNN
F 3 "" H 7750 2750 50  0001 C CNN
	1    7750 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5FA47878
P 8350 3400
F 0 "R9" H 8438 3424 50  0000 C CNN
F 1 "10k" H 8458 3356 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8350 3400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 8350 3400 50  0001 C CNN
F 4 "C15401" H 8350 3400 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 8350 3400 50  0001 C CNN "lcsc_url"
F 6 "100" H 8350 3400 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 8350 3400 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 8350 3400 50  0001 C CNN "package"
	1    8350 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5FA47882
P 8350 3500
F 0 "#PWR0113" H 8350 3250 50  0001 C CNN
F 1 "GND" H 8192 3460 50  0000 C CNN
F 2 "" H 8350 3500 50  0001 C CNN
F 3 "" H 8350 3500 50  0001 C CNN
	1    8350 3500
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:MOSFET_P_CH Q4
U 1 1 5FA4789B
P 8350 2700
F 0 "Q4" V 8678 2700 50  0000 C CNN
F 1 "EMF02P02H" V 8588 2861 50  0000 C CNN
F 2 "Package_SO:PowerPAK_SO-8_Single" H 8550 2800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2001132234_EMC-EMF02P02H_C461954.pdf" H 8350 2700 50  0001 C CNN
F 4 "C461954" H 8350 2700 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/MOSFET_EMC-EMF02P02H_C461954.html" H 8350 2700 50  0001 C CNN "lcsc_url"
F 6 "1" H 8350 2700 50  0001 C CNN "lcsc_min_qty"
F 7 "EMF02P02H" H 8350 2700 50  0001 C CNN "mfr_part_number"
F 8 "EDFN5x6" H 8350 2700 50  0001 C CNN "package"
	1    8350 2700
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Small R26
U 1 1 5FA478AA
P 7950 3100
F 0 "R26" V 7866 3114 50  0000 C CNN
F 1 "10k" V 7791 3097 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7950 3100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 7950 3100 50  0001 C CNN
F 4 "C15401" H 7950 3100 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 7950 3100 50  0001 C CNN "lcsc_url"
F 6 "100" H 7950 3100 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 7950 3100 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 7950 3100 50  0001 C CNN "package"
	1    7950 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R25
U 1 1 5FA478B9
P 7900 2700
F 0 "R25" H 8000 2732 50  0000 C CNN
F 1 "100k" H 8036 2658 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7900 2700 50  0001 C CNN
F 3 "" H 7900 2700 50  0001 C CNN
F 4 "C312247" H 7900 2700 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Others_RALEC-RTT031003BTP_C312247.html" H 7900 2700 50  0001 C CNN "lcsc_url"
F 6 "20" H 7900 2700 50  0001 C CNN "lcsc_min_qty"
F 7 "RTT031003BTP" H 7900 2700 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 7900 2700 50  0001 C CNN "package"
	1    7900 2700
	1    0    0    -1  
$EndComp
Text GLabel 7850 3100 0    50   Input ~ 0
L2ON
Wire Wire Line
	8550 2600 8650 2600
Wire Wire Line
	7650 2700 7750 2700
Wire Wire Line
	7750 2700 7750 2750
Wire Wire Line
	7650 2600 7900 2600
Wire Wire Line
	7900 2800 7900 2950
Wire Wire Line
	7900 2950 8050 2950
Wire Wire Line
	8050 2950 8050 3100
Wire Wire Line
	7900 2600 8150 2600
Connection ~ 7900 2600
Text Notes 10000 2300 0    50   ~ 0
Load 3 (LIGHTS +)
Text GLabel 10850 2600 2    50   Input ~ 0
VCOM
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5FA5261A
P 9650 2700
F 0 "J6" H 9785 2875 50  0000 C CNN
F 1 "LOAD1" H 9495 2780 50  0000 C CNN
F 2 "Connector_AMASS:AMASS_XT60-F_1x02_P7.20mm_Vertical" H 9650 2700 50  0001 C CNN
F 3 "~" H 9650 2700 50  0001 C CNN
F 4 "https://www.frontlinehobbies.com.au/g-force-xt60-gold-connector-male-female-2pair-gf-1?gclid=CjwKCAjwrvv3BRAJEiwAhwOdM8-qgWv5jfFefjTFyJOH3A9PPJY-dncYXHNHYDGoyDbJGDFwuET0RRoCcNgQAvD_BwE" H 9650 2700 50  0001 C CNN "other_URL"
	1    9650 2700
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5FA52624
P 9950 2750
F 0 "#PWR0114" H 9950 2500 50  0001 C CNN
F 1 "GND" H 9955 2577 50  0000 C CNN
F 2 "" H 9950 2750 50  0001 C CNN
F 3 "" H 9950 2750 50  0001 C CNN
	1    9950 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R35
U 1 1 5FA52633
P 10550 3400
F 0 "R35" H 10638 3424 50  0000 C CNN
F 1 "10k" H 10658 3356 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10550 3400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 10550 3400 50  0001 C CNN
F 4 "C15401" H 10550 3400 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 10550 3400 50  0001 C CNN "lcsc_url"
F 6 "100" H 10550 3400 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 10550 3400 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 10550 3400 50  0001 C CNN "package"
	1    10550 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5FA5263D
P 10550 3500
F 0 "#PWR0115" H 10550 3250 50  0001 C CNN
F 1 "GND" H 10392 3460 50  0000 C CNN
F 2 "" H 10550 3500 50  0001 C CNN
F 3 "" H 10550 3500 50  0001 C CNN
	1    10550 3500
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:MOSFET_P_CH Q10
U 1 1 5FA52656
P 10550 2700
F 0 "Q10" V 10878 2700 50  0000 C CNN
F 1 "EMF02P02H" V 10788 2861 50  0000 C CNN
F 2 "Package_SO:PowerPAK_SO-8_Single" H 10750 2800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2001132234_EMC-EMF02P02H_C461954.pdf" H 10550 2700 50  0001 C CNN
F 4 "C461954" H 10550 2700 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/MOSFET_EMC-EMF02P02H_C461954.html" H 10550 2700 50  0001 C CNN "lcsc_url"
F 6 "1" H 10550 2700 50  0001 C CNN "lcsc_min_qty"
F 7 "EMF02P02H" H 10550 2700 50  0001 C CNN "mfr_part_number"
F 8 "EDFN5x6" H 10550 2700 50  0001 C CNN "package"
	1    10550 2700
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Small R34
U 1 1 5FA52665
P 10150 3100
F 0 "R34" V 10066 3114 50  0000 C CNN
F 1 "10k" V 9991 3097 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10150 3100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 10150 3100 50  0001 C CNN
F 4 "C15401" H 10150 3100 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 10150 3100 50  0001 C CNN "lcsc_url"
F 6 "100" H 10150 3100 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 10150 3100 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 10150 3100 50  0001 C CNN "package"
	1    10150 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R33
U 1 1 5FA52674
P 10100 2700
F 0 "R33" H 10200 2732 50  0000 C CNN
F 1 "100k" H 10236 2658 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10100 2700 50  0001 C CNN
F 3 "" H 10100 2700 50  0001 C CNN
F 4 "C312247" H 10100 2700 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Others_RALEC-RTT031003BTP_C312247.html" H 10100 2700 50  0001 C CNN "lcsc_url"
F 6 "20" H 10100 2700 50  0001 C CNN "lcsc_min_qty"
F 7 "RTT031003BTP" H 10100 2700 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 10100 2700 50  0001 C CNN "package"
	1    10100 2700
	1    0    0    -1  
$EndComp
Text GLabel 10050 3100 0    50   Input ~ 0
L3ON
Wire Wire Line
	10750 2600 10850 2600
Wire Wire Line
	9850 2700 9950 2700
Wire Wire Line
	9950 2700 9950 2750
Wire Wire Line
	9850 2600 10100 2600
Wire Wire Line
	10100 2800 10100 2950
Wire Wire Line
	10100 2950 10250 2950
Wire Wire Line
	10250 2950 10250 3100
Wire Wire Line
	10100 2600 10350 2600
Connection ~ 10100 2600
$Comp
L Device:Q_NPN_BCE Q6
U 1 1 5FA677A0
P 8250 3100
F 0 "Q6" H 8441 3146 50  0000 L CNN
F 1 "MMBT3904" H 8441 3055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8450 3200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1907051108_KEXIN-MMBT3904_C382281.pdf" H 8250 3100 50  0001 C CNN
F 4 "C382281" H 8250 3100 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/New-Arrivals_KEXIN-MMBT3904_C382281.html" H 8250 3100 50  0001 C CNN "lcsc_url"
F 6 "50" H 8250 3100 50  0001 C CNN "lcsc_min_qty"
F 7 "MMBT3904" H 8250 3100 50  0001 C CNN "mfr_part_number"
F 8 "SOT-23" H 8250 3100 50  0001 C CNN "package"
	1    8250 3100
	1    0    0    -1  
$EndComp
Connection ~ 8050 3100
$Comp
L Device:Q_NPN_BCE Q9
U 1 1 5FA7416F
P 10450 3100
F 0 "Q9" H 10641 3146 50  0000 L CNN
F 1 "MMBT3904" H 10641 3055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10650 3200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1907051108_KEXIN-MMBT3904_C382281.pdf" H 10450 3100 50  0001 C CNN
F 4 "C382281" H 10450 3100 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/New-Arrivals_KEXIN-MMBT3904_C382281.html" H 10450 3100 50  0001 C CNN "lcsc_url"
F 6 "50" H 10450 3100 50  0001 C CNN "lcsc_min_qty"
F 7 "MMBT3904" H 10450 3100 50  0001 C CNN "mfr_part_number"
F 8 "SOT-23" H 10450 3100 50  0001 C CNN "package"
	1    10450 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q7
U 1 1 5FA7C0D9
P 8300 1650
F 0 "Q7" H 8491 1696 50  0000 L CNN
F 1 "MMBT3904" H 8491 1605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8500 1750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1907051108_KEXIN-MMBT3904_C382281.pdf" H 8300 1650 50  0001 C CNN
F 4 "C382281" H 8300 1650 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/New-Arrivals_KEXIN-MMBT3904_C382281.html" H 8300 1650 50  0001 C CNN "lcsc_url"
F 6 "50" H 8300 1650 50  0001 C CNN "lcsc_min_qty"
F 7 "MMBT3904" H 8300 1650 50  0001 C CNN "mfr_part_number"
F 8 "SOT-23" H 8300 1650 50  0001 C CNN "package"
	1    8300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1150 9050 1150
$Comp
L Sensor_Current:ACS781xLRTR-050B U5
U 1 1 5F07EAEE
P 9450 1050
F 0 "U5" H 9840 950 50  0000 L CNN
F 1 "ACS781LLRTR-050B" H 9845 870 50  0000 L CNN
F 2 "Sensor_Current:Allegro_PSOF-7_4.8x6.4mm_P1.60mm" H 9450 1050 50  0001 C CNN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS780-Datasheet.ashx?la=en" H 9450 1050 50  0001 C CNN
F 4 "620-1823-1-ND" H 9450 1050 50  0001 C CNN "digi_part_number"
F 5 "https://www.digikey.com.au/product-detail/en/allegro-microsystems/ACS781LLRTR-050B-T/620-1823-1-ND/6189112" H 9450 1050 50  0001 C CNN "digi_url"
F 6 "1" H 9450 1050 50  0001 C CNN "digi_min_qty"
F 7 "ACS781LLRTR-050B-T" H 9450 1050 50  0001 C CNN "mfr_part_number"
F 8 "7-PSOF" H 9450 1050 50  0001 C CNN "package"
	1    9450 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 850  9000 850 
Wire Wire Line
	9000 850  9000 950 
Wire Wire Line
	9000 950  9050 950 
NoConn ~ 9550 1350
NoConn ~ 9650 1350
Wire Wire Line
	7700 1250 7750 1250
Wire Wire Line
	7750 1250 7750 1300
Wire Wire Line
	7700 1150 7750 1150
Wire Wire Line
	7750 1150 7750 1100
Wire Wire Line
	7750 1150 8000 1150
Wire Wire Line
	8000 1150 8000 1200
Connection ~ 7750 1150
Wire Wire Line
	8200 1150 8000 1150
Connection ~ 8000 1150
Wire Wire Line
	8000 1400 8000 1500
Wire Wire Line
	8000 1500 8100 1500
Wire Wire Line
	8100 1500 8100 1650
Connection ~ 8100 1650
Text Notes 4724 593  0    50   ~ 0
Batt 1 (MAIN)
Text GLabel 6200 1050 2    50   Output ~ 0
B1CM
$Comp
L power:GND #PWR0116
U 1 1 5FAC6DA8
P 5800 1350
F 0 "#PWR0116" H 5800 1100 50  0001 C CNN
F 1 "GND" H 5805 1177 50  0000 C CNN
F 2 "" H 5800 1350 50  0001 C CNN
F 3 "" H 5800 1350 50  0001 C CNN
	1    5800 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0117
U 1 1 5FAC6DB2
P 5800 750
F 0 "#PWR0117" H 5800 600 50  0001 C CNN
F 1 "+3V3" H 5815 923 50  0000 C CNN
F 2 "" H 5800 750 50  0001 C CNN
F 3 "" H 5800 750 50  0001 C CNN
	1    5800 750 
	1    0    0    -1  
$EndComp
Text GLabel 5300 850  0    50   Input ~ 0
VCOM
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5FAC6DBE
P 3850 1250
F 0 "J1" H 3985 1425 50  0000 C CNN
F 1 "BATT1" H 3695 1330 50  0000 C CNN
F 2 "Connector_AMASS:AMASS_XT60-F_1x02_P7.20mm_Vertical" H 3850 1250 50  0001 C CNN
F 3 "~" H 3850 1250 50  0001 C CNN
F 4 "https://www.frontlinehobbies.com.au/g-force-xt60-gold-connector-male-female-2pair-gf-1?gclid=CjwKCAjwrvv3BRAJEiwAhwOdM8-qgWv5jfFefjTFyJOH3A9PPJY-dncYXHNHYDGoyDbJGDFwuET0RRoCcNgQAvD_BwE" H 3850 1250 50  0001 C CNN "other_URL"
	1    3850 1250
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5FAC6DC8
P 4100 1300
F 0 "#PWR0118" H 4100 1050 50  0001 C CNN
F 1 "GND" H 4105 1127 50  0000 C CNN
F 2 "" H 4100 1300 50  0001 C CNN
F 3 "" H 4100 1300 50  0001 C CNN
	1    4100 1300
	1    0    0    -1  
$EndComp
Text GLabel 4250 1650 0    50   Output ~ 0
B1ON
Wire Notes Line
	3656 476  3654 476 
Text GLabel 4100 1100 1    50   Output ~ 0
B1VM
$Comp
L Device:R_Small R6
U 1 1 5FAC6DDA
P 4750 1950
F 0 "R6" H 4838 1974 50  0000 C CNN
F 1 "10k" H 4858 1906 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4750 1950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 4750 1950 50  0001 C CNN
F 4 "C15401" H 4750 1950 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 4750 1950 50  0001 C CNN "lcsc_url"
F 6 "100" H 4750 1950 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 4750 1950 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 4750 1950 50  0001 C CNN "package"
	1    4750 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5FAC6DE4
P 4750 2050
F 0 "#PWR0119" H 4750 1800 50  0001 C CNN
F 1 "GND" H 4577 1975 50  0000 C CNN
F 2 "" H 4750 2050 50  0001 C CNN
F 3 "" H 4750 2050 50  0001 C CNN
	1    4750 2050
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:MOSFET_P_CH Q2
U 1 1 5FAC6DF3
P 4750 1250
F 0 "Q2" V 5078 1250 50  0000 C CNN
F 1 "EMF02P02H" V 4988 1411 50  0000 C CNN
F 2 "Package_SO:PowerPAK_SO-8_Single" H 4950 1350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2001132234_EMC-EMF02P02H_C461954.pdf" H 4750 1250 50  0001 C CNN
F 4 "C461954" H 4750 1250 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/MOSFET_EMC-EMF02P02H_C461954.html" H 4750 1250 50  0001 C CNN "lcsc_url"
F 6 "1" H 4750 1250 50  0001 C CNN "lcsc_min_qty"
F 7 "EMF02P02H" H 4750 1250 50  0001 C CNN "mfr_part_number"
F 8 "EDFN5x6" H 4750 1250 50  0001 C CNN "package"
	1    4750 1250
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Small R22
U 1 1 5FAC6E02
P 4350 1650
F 0 "R22" V 4266 1664 50  0000 C CNN
F 1 "10k" V 4191 1647 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4350 1650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 4350 1650 50  0001 C CNN
F 4 "C15401" H 4350 1650 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 4350 1650 50  0001 C CNN "lcsc_url"
F 6 "100" H 4350 1650 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 4350 1650 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 4350 1650 50  0001 C CNN "package"
	1    4350 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R21
U 1 1 5FAC6E11
P 4350 1300
F 0 "R21" H 4450 1332 50  0000 C CNN
F 1 "100k" H 4486 1258 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4350 1300 50  0001 C CNN
F 3 "" H 4350 1300 50  0001 C CNN
F 4 "C312247" H 4350 1300 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Others_RALEC-RTT031003BTP_C312247.html" H 4350 1300 50  0001 C CNN "lcsc_url"
F 6 "20" H 4350 1300 50  0001 C CNN "lcsc_min_qty"
F 7 "RTT031003BTP" H 4350 1300 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 4350 1300 50  0001 C CNN "package"
	1    4350 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q3
U 1 1 5FAC6E20
P 4650 1650
F 0 "Q3" H 4841 1696 50  0000 L CNN
F 1 "MMBT3904" H 4841 1605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4850 1750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1907051108_KEXIN-MMBT3904_C382281.pdf" H 4650 1650 50  0001 C CNN
F 4 "C382281" H 4650 1650 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/New-Arrivals_KEXIN-MMBT3904_C382281.html" H 4650 1650 50  0001 C CNN "lcsc_url"
F 6 "50" H 4650 1650 50  0001 C CNN "lcsc_min_qty"
F 7 "MMBT3904" H 4650 1650 50  0001 C CNN "mfr_part_number"
F 8 "SOT-23" H 4650 1650 50  0001 C CNN "package"
	1    4650 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1150 5400 1150
$Comp
L Sensor_Current:ACS781xLRTR-050B U4
U 1 1 5FAC6E30
P 5800 1050
F 0 "U4" H 6190 950 50  0000 L CNN
F 1 "ACS781LLRTR-050B" H 6195 870 50  0000 L CNN
F 2 "Sensor_Current:Allegro_PSOF-7_4.8x6.4mm_P1.60mm" H 5800 1050 50  0001 C CNN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS780-Datasheet.ashx?la=en" H 5800 1050 50  0001 C CNN
F 4 "620-1823-1-ND" H 5800 1050 50  0001 C CNN "digi_part_number"
F 5 "https://www.digikey.com.au/product-detail/en/allegro-microsystems/ACS781LLRTR-050B-T/620-1823-1-ND/6189112" H 5800 1050 50  0001 C CNN "digi_url"
F 6 "1" H 5800 1050 50  0001 C CNN "digi_min_qty"
F 7 "ACS781LLRTR-050B-T" H 5800 1050 50  0001 C CNN "mfr_part_number"
F 8 "7-PSOF" H 5800 1050 50  0001 C CNN "package"
	1    5800 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 850  5350 850 
Wire Wire Line
	5350 850  5350 950 
Wire Wire Line
	5350 950  5400 950 
NoConn ~ 5900 1350
NoConn ~ 6000 1350
Wire Wire Line
	4050 1250 4100 1250
Wire Wire Line
	4100 1250 4100 1300
Wire Wire Line
	4050 1150 4100 1150
Wire Wire Line
	4100 1150 4100 1100
Wire Wire Line
	4100 1150 4350 1150
Wire Wire Line
	4350 1150 4350 1200
Connection ~ 4100 1150
Wire Wire Line
	4550 1150 4350 1150
Connection ~ 4350 1150
Wire Wire Line
	4350 1400 4350 1500
Wire Wire Line
	4350 1500 4450 1500
Wire Wire Line
	4450 1500 4450 1650
Connection ~ 4450 1650
Text GLabel 2600 4900 2    50   Input ~ 0
BOOT
Text GLabel 2700 4600 0    50   Input ~ 0
BOOT
NoConn ~ 2600 5100
NoConn ~ 2600 5300
NoConn ~ 2600 5400
NoConn ~ 2600 5600
NoConn ~ 2600 5800
NoConn ~ 2600 5900
NoConn ~ 2600 6000
NoConn ~ 2600 6100
NoConn ~ 2600 7200
NoConn ~ 1400 6100
NoConn ~ 1400 6200
NoConn ~ 1400 6300
NoConn ~ 1400 6400
NoConn ~ 1400 6500
NoConn ~ 1400 6600
Wire Wire Line
	1350 4850 1350 4900
Wire Wire Line
	1350 4900 1400 4900
$Comp
L RF_Module:ESP32-WROOM-32D U2
U 1 1 5EFC6F57
P 2000 6100
F 0 "U2" H 2000 7681 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 2000 7590 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2000 4600 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 1700 6150 50  0001 C CNN
F 4 "C473012" H 2000 6100 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/RF-Transceiver-ICs_Espressif-Systems-ESP32-WROOM-32D_C473012.html" H 2000 6100 50  0001 C CNN "lcsc_url"
F 6 "1" H 2000 6100 50  0001 C CNN "lcsc_min_qty"
F 7 "ESP32-WROOM-32D" H 2000 6100 50  0001 C CNN "mfr_part_number"
F 8 "SMD-38" H 2000 6100 50  0001 C CNN "package"
	1    2000 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4700 1500 4700
Wire Wire Line
	1500 4700 1500 4550
Wire Wire Line
	900  4600 900  4550
Wire Wire Line
	900  4550 1500 4550
Connection ~ 1500 4550
Wire Notes Line
	3700 3700 3700 7800
Connection ~ 10250 3100
Text GLabel 5800 5700 2    50   BiDi ~ 0
SDA
Text GLabel 5800 5800 2    50   Input ~ 0
SCL
$Comp
L Device:C_Small C10
U 1 1 5FC12A78
P 5850 5250
F 0 "C10" H 5920 5295 50  0000 L CNN
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
L power:GND #PWR0120
U 1 1 5FC13706
P 5850 5350
F 0 "#PWR0120" H 5850 5100 50  0001 C CNN
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
L power:GND #PWR0121
U 1 1 5FC2C598
P 5300 7100
F 0 "#PWR0121" H 5300 6850 50  0001 C CNN
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
L Device:C_Small C11
U 1 1 5FC3EF7C
P 6200 5250
F 0 "C11" H 6270 5295 50  0000 L CNN
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
L power:GND #PWR0122
U 1 1 5FC3F826
P 6200 5350
F 0 "#PWR0122" H 6200 5100 50  0001 C CNN
F 1 "GND" H 6205 5177 50  0000 C CNN
F 2 "" H 6200 5350 50  0001 C CNN
F 3 "" H 6200 5350 50  0001 C CNN
	1    6200 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5150 6200 5150
Connection ~ 5850 5150
Text Notes 3900 6200 0    50   ~ 0
2.56V full-range
$Comp
L power:GND #PWR0123
U 1 1 5FC44893
P 4750 7000
F 0 "#PWR0123" H 4750 6750 50  0001 C CNN
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
L Device:C_Small C9
U 1 1 5FC52926
P 4450 6750
F 0 "C9" H 4520 6795 50  0000 L CNN
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
L power:GND #PWR0124
U 1 1 5FC52930
P 4100 6850
F 0 "#PWR0124" H 4100 6600 50  0001 C CNN
F 1 "GND" H 4105 6677 50  0000 C CNN
F 2 "" H 4100 6850 50  0001 C CNN
F 3 "" H 4100 6850 50  0001 C CNN
	1    4100 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5FC5293F
P 4100 6750
F 0 "C7" H 4170 6795 50  0000 L CNN
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
L power:GND #PWR0125
U 1 1 5FC52949
P 4450 6850
F 0 "#PWR0125" H 4450 6600 50  0001 C CNN
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
Wire Notes Line
	6600 4700 6600 7800
Text Notes 5200 4950 0    50   ~ 0
ADC
Wire Notes Line
	5600 3700 5600 4700
Wire Notes Line
	4850 3700 4850 2200
$Comp
L Interface_USB:CH330N U6
U 1 1 5F737302
P 9550 4650
F 0 "U6" H 9195 5150 50  0000 C CNN
F 1 "CH330N" H 9300 5055 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9400 5400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811151442_WCH-Jiangsu-Qin-Heng-CH330N_C108996.pdf" H 9450 4850 50  0001 C CNN
F 4 "C108996" H 9550 4650 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/USB-ICs_WCH-Jiangsu-Qin-Heng-CH330N_C108996.html" H 9550 4650 50  0001 C CNN "lcsc_url"
F 6 "1" H 9550 4650 50  0001 C CNN "lcsc_min_qty"
F 7 "CH330N" H 9550 4650 50  0001 C CNN "mfr_part_number"
F 8 "SOP-8" H 9550 4650 50  0001 C CNN "package"
	1    9550 4650
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:GND #PWR0126
U 1 1 5F737308
P 9550 5050
F 0 "#PWR0126" H 9550 5050 30  0001 C CNN
F 1 "GND" H 9550 4980 30  0001 C CNN
F 2 "" H 9550 5050 60  0000 C CNN
F 3 "" H 9550 5050 60  0000 C CNN
	1    9550 5050
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:GND #PWR0127
U 1 1 5F73730F
P 8750 4750
F 0 "#PWR0127" H 8750 4750 30  0001 C CNN
F 1 "GND" H 8750 4680 30  0001 C CNN
F 2 "" H 8750 4750 60  0000 C CNN
F 3 "" H 8750 4750 60  0000 C CNN
	1    8750 4750
	1    0    0    -1  
$EndComp
Text GLabel 9150 4750 0    50   Input ~ 0
D+
Text GLabel 9150 4850 0    50   Input ~ 0
D-
$Comp
L Device:C_Small C13
U 1 1 5F73731C
P 9850 4200
F 0 "C13" H 9650 4450 50  0000 L CNN
F 1 "100n" H 9600 4350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9850 4200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1910111742_YAGEO-AC0603KRX7R0BB104_C408909.pdf" H 9850 4200 50  0001 C CNN
F 4 "C408909" H 9850 4200 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_YAGEO-AC0603KRX7R0BB104_C408909.html" H 9850 4200 50  0001 C CNN "lcsc_url"
F 6 "20" H 9850 4200 50  0001 C CNN "lcsc_min_qty"
F 7 "AC0603KRX7R0BB104" H 9850 4200 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 9850 4200 50  0001 C CNN "package"
	1    9850 4200
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:GND #PWR0128
U 1 1 5F737323
P 9850 4300
F 0 "#PWR0128" H 9850 4300 30  0001 C CNN
F 1 "GND" H 9850 4230 30  0001 C CNN
F 2 "" H 9850 4300 60  0000 C CNN
F 3 "" H 9850 4300 60  0000 C CNN
	1    9850 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5F737332
P 8750 4650
F 0 "C12" H 8600 4955 50  0000 L CNN
F 1 "100n" H 8605 4875 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8750 4650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1910111742_YAGEO-AC0603KRX7R0BB104_C408909.pdf" H 8750 4650 50  0001 C CNN
F 4 "C408909" H 8750 4650 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_YAGEO-AC0603KRX7R0BB104_C408909.html" H 8750 4650 50  0001 C CNN "lcsc_url"
F 6 "20" H 8750 4650 50  0001 C CNN "lcsc_min_qty"
F 7 "AC0603KRX7R0BB104" H 8750 4650 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 8750 4650 50  0001 C CNN "package"
	1    8750 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4550 9150 4550
$Comp
L power:+3V3 #PWR0129
U 1 1 5F77B761
P 9950 4050
F 0 "#PWR0129" H 9950 3900 50  0001 C CNN
F 1 "+3V3" H 9965 4223 50  0000 C CNN
F 2 "" H 9950 4050 50  0001 C CNN
F 3 "" H 9950 4050 50  0001 C CNN
	1    9950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 4350 9550 4100
Wire Wire Line
	9550 4100 9850 4100
Wire Wire Line
	9850 4100 9950 4100
Wire Wire Line
	9950 4100 9950 4050
Connection ~ 9850 4100
NoConn ~ 9950 4850
$Comp
L MAX17260:GND #PWR0130
U 1 1 5F7D6D14
P 6960 4615
F 0 "#PWR0130" H 6960 4615 30  0001 C CNN
F 1 "GND" H 6960 4545 30  0001 C CNN
F 2 "" H 6960 4615 60  0000 C CNN
F 3 "" H 6960 4615 60  0000 C CNN
	1    6960 4615
	1    0    0    -1  
$EndComp
Text GLabel 7260 4215 2    50   Input ~ 0
D+
Text GLabel 7260 4315 2    50   Input ~ 0
D-
Text GLabel 7260 4015 2    50   Input ~ 0
5V
NoConn ~ 7260 4415
NoConn ~ 6860 4615
$Comp
L esp32_battery_isolator-rescue:USB_B_Micro-Connector J3
U 1 1 5F7D6D24
P 6960 4215
F 0 "J3" H 7017 4682 50  0000 C CNN
F 1 "USB_B_Micro" H 7017 4591 50  0000 C CNN
F 2 "Acea:USB_Micro-B_XKB_4BH89_SMT" H 7110 4165 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2002271812_XKB-Enterprise-U253-051T-4BH89-F1B_C319172.pdf" H 7110 4165 50  0001 C CNN
F 4 "C319172" H 6960 4215 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/USB-Connectors_XKB-Enterprise-U253-051T-4BH89-F1B_C319172.html" H 6960 4215 50  0001 C CNN "lcsc_url"
F 6 "10" H 6960 4215 50  0001 C CNN "lcsc_min_qty"
F 7 "U253-051T-4BH89-F1B" H 6960 4215 50  0001 C CNN "mfr_part_number"
F 8 "micro_usb" H 6960 4215 50  0001 C CNN "package"
	1    6960 4215
	1    0    0    -1  
$EndComp
Wire Notes Line
	500  3700 11200 3700
Text Notes 6550 3850 0    50   ~ 0
USB
Wire Wire Line
	7350 5250 7350 5000
Wire Wire Line
	7350 5000 7800 5000
Connection ~ 7800 5000
$Comp
L power:GND #PWR0131
U 1 1 5F81C30F
P 7850 5850
F 0 "#PWR0131" H 7850 5600 50  0001 C CNN
F 1 "GND" H 7855 5677 50  0000 C CNN
F 2 "" H 7850 5850 50  0001 C CNN
F 3 "" H 7850 5850 50  0001 C CNN
	1    7850 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 5650 7800 5650
Wire Wire Line
	7800 5650 7800 5750
Wire Wire Line
	7800 5850 7850 5850
Wire Wire Line
	7750 5750 7800 5750
Connection ~ 7800 5750
Wire Wire Line
	7800 5750 7800 5850
Wire Wire Line
	7750 5850 7800 5850
Connection ~ 7800 5850
$Comp
L Sensor_Temperature:LM75B U7
U 1 1 5F80D757
P 7350 5750
F 0 "U7" H 7100 6450 50  0000 C CNN
F 1 "LM75B" H 7100 6300 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 7350 5750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/NXP-Semicon-LM75BD-118_C34565.pdf" H 7350 5750 50  0001 C CNN
F 4 "C34565" H 7350 5750 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Temperature-Sensors_NXP_LM75BD_LM75BD_C34565.html" H 7350 5750 50  0001 C CNN "lcsc_url"
F 6 "LM75BD,118" H 7350 5750 50  0001 C CNN "mfr_part_number"
F 7 "SOIC-8-150" H 7350 5750 50  0001 C CNN "package"
	1    7350 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 5F8521DC
P 10350 5850
F 0 "R12" H 10470 5902 50  0000 C CNN
F 1 "105k" H 10486 5808 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10350 5850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2004071109_PANASONIC-ERA3AEB1053V_C491109.pdf" H 10350 5850 50  0001 C CNN
F 4 "C491109" H 10350 5850 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/New-Arrivals_PANASONIC-ERA3AEB1053V_C491109.html" H 10350 5850 50  0001 C CNN "lcsc_url"
F 6 "5" H 10350 5850 50  0001 C CNN "lcsc_min_qty"
F 7 "ERA3AEB1053V" H 10350 5850 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 10350 5850 50  0001 C CNN "package"
	1    10350 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 5F852B2F
P 10350 6050
F 0 "R13" H 10470 6102 50  0000 C CNN
F 1 "20k" H 10468 6006 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10350 6050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Viking-Tech-AR03BTCX2002_C319766.pdf" H 10350 6050 50  0001 C CNN
F 4 "C319766" H 10350 6050 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Others_Viking-Tech-AR03BTCX2002_C319766.html" H 10350 6050 50  0001 C CNN "lcsc_url"
F 6 "20" H 10350 6050 50  0001 C CNN "lcsc_min_qty"
F 7 "AR03BTCX2002" H 10350 6050 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 10350 6050 50  0001 C CNN "package"
	1    10350 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 5950 10350 5950
Connection ~ 10350 5950
$Comp
L Device:R_Small R14
U 1 1 5F86FB99
P 10950 5850
F 0 "R14" H 11070 5902 50  0000 C CNN
F 1 "105k" H 11086 5808 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10950 5850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2004071109_PANASONIC-ERA3AEB1053V_C491109.pdf" H 10950 5850 50  0001 C CNN
F 4 "C491109" H 10950 5850 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/New-Arrivals_PANASONIC-ERA3AEB1053V_C491109.html" H 10950 5850 50  0001 C CNN "lcsc_url"
F 6 "5" H 10950 5850 50  0001 C CNN "lcsc_min_qty"
F 7 "ERA3AEB1053V" H 10950 5850 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 10950 5850 50  0001 C CNN "package"
	1    10950 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R15
U 1 1 5F87046E
P 10950 6050
F 0 "R15" H 11070 6102 50  0000 C CNN
F 1 "20k" H 11068 6006 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10950 6050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Viking-Tech-AR03BTCX2002_C319766.pdf" H 10950 6050 50  0001 C CNN
F 4 "C319766" H 10950 6050 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Others_Viking-Tech-AR03BTCX2002_C319766.html" H 10950 6050 50  0001 C CNN "lcsc_url"
F 6 "20" H 10950 6050 50  0001 C CNN "lcsc_min_qty"
F 7 "AR03BTCX2002" H 10950 6050 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 10950 6050 50  0001 C CNN "package"
	1    10950 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 5950 10950 5950
Connection ~ 10950 5950
$Comp
L power:GND #PWR02
U 1 1 5F0512DC
P 9750 6150
F 0 "#PWR02" H 9750 5900 50  0001 C CNN
F 1 "GND" H 9755 5977 50  0000 C CNN
F 2 "" H 9750 6150 50  0001 C CNN
F 3 "" H 9750 6150 50  0001 C CNN
	1    9750 6150
	1    0    0    -1  
$EndComp
Text GLabel 9650 5950 0    50   Input ~ 0
3v3D
$Comp
L Device:R_Small R11
U 1 1 5F04682D
P 9750 6050
F 0 "R11" H 9870 6102 50  0000 C CNN
F 1 "30.9k" H 9900 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9750 6050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1909272007_Uniroyal-Elec-TC0350B3092T5E_C425420.pdf" H 9750 6050 50  0001 C CNN
F 4 "C425420" H 9750 6050 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/High-Precision-Low-TCR-SMD-Resistors_UNI-ROYAL-Uniroyal-Elec-TC0350B3092T5E_C425420.html" H 9750 6050 50  0001 C CNN "lcsc_url"
F 6 "20" H 9750 6050 50  0001 C CNN "lcsc_min_qty"
F 7 "TC0350B3092T5E" H 9750 6050 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 9750 6050 50  0001 C CNN "package"
	1    9750 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5F046188
P 9750 5850
F 0 "R10" H 9870 5902 50  0000 C CNN
F 1 "10.2k" H 9900 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9750 5850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2004071109_PANASONIC-ERA3AEB1022V_C491108.pdf" H 9750 5850 50  0001 C CNN
F 4 "C491108" H 9750 5850 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/New-Arrivals_PANASONIC-ERA3AEB1022V_C491108.html" H 9750 5850 50  0001 C CNN "lcsc_url"
F 6 "5" H 9750 5850 50  0001 C CNN "lcsc_min_qty"
F 7 "ERA3AEB1022V" H 9750 5850 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 9750 5850 50  0001 C CNN "package"
	1    9750 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0132
U 1 1 5F881070
P 9750 5750
F 0 "#PWR0132" H 9750 5600 50  0001 C CNN
F 1 "+3V3" H 9765 5923 50  0000 C CNN
F 2 "" H 9750 5750 50  0001 C CNN
F 3 "" H 9750 5750 50  0001 C CNN
	1    9750 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5950 9750 5950
Connection ~ 9750 5950
Wire Notes Line
	8150 5200 11200 5200
Wire Notes Line
	9200 2200 9200 3700
Wire Notes Line
	8150 3700 8150 6550
Text Notes 9350 3850 0    50   ~ 0
UART-USB
Text GLabel 9150 5750 1    50   Output ~ 0
B2CM
$Comp
L Device:R_Small R31
U 1 1 5F8D4780
P 9150 5850
F 0 "R31" H 9270 5902 50  0000 C CNN
F 1 "10.2k" H 9300 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9150 5850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2004071109_PANASONIC-ERA3AEB1022V_C491108.pdf" H 9150 5850 50  0001 C CNN
F 4 "C491108" H 9150 5850 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/New-Arrivals_PANASONIC-ERA3AEB1022V_C491108.html" H 9150 5850 50  0001 C CNN "lcsc_url"
F 6 "5" H 9150 5850 50  0001 C CNN "lcsc_min_qty"
F 7 "ERA3AEB1022V" H 9150 5850 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 9150 5850 50  0001 C CNN "package"
	1    9150 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R32
U 1 1 5F8D4E25
P 9150 6050
F 0 "R32" H 9270 6102 50  0000 C CNN
F 1 "30.9k" H 9300 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9150 6050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1909272007_Uniroyal-Elec-TC0350B3092T5E_C425420.pdf" H 9150 6050 50  0001 C CNN
F 4 "C425420" H 9150 6050 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/High-Precision-Low-TCR-SMD-Resistors_UNI-ROYAL-Uniroyal-Elec-TC0350B3092T5E_C425420.html" H 9150 6050 50  0001 C CNN "lcsc_url"
F 6 "20" H 9150 6050 50  0001 C CNN "lcsc_min_qty"
F 7 "TC0350B3092T5E" H 9150 6050 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 9150 6050 50  0001 C CNN "package"
	1    9150 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5F8D522D
P 9150 6150
F 0 "#PWR0133" H 9150 5900 50  0001 C CNN
F 1 "GND" H 9155 5977 50  0000 C CNN
F 2 "" H 9150 6150 50  0001 C CNN
F 3 "" H 9150 6150 50  0001 C CNN
	1    9150 6150
	1    0    0    -1  
$EndComp
Text GLabel 9100 5950 0    50   Output ~ 0
B2CD
Wire Wire Line
	9100 5950 9150 5950
Connection ~ 9150 5950
Text GLabel 8600 5750 1    50   Output ~ 0
B1CM
$Comp
L Device:R_Small R29
U 1 1 5F8E0D66
P 8600 5850
F 0 "R29" H 8720 5902 50  0000 C CNN
F 1 "10.2k" H 8750 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8600 5850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/2004071109_PANASONIC-ERA3AEB1022V_C491108.pdf" H 8600 5850 50  0001 C CNN
F 4 "C491108" H 8600 5850 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/New-Arrivals_PANASONIC-ERA3AEB1022V_C491108.html" H 8600 5850 50  0001 C CNN "lcsc_url"
F 6 "5" H 8600 5850 50  0001 C CNN "lcsc_min_qty"
F 7 "ERA3AEB1022V" H 8600 5850 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 8600 5850 50  0001 C CNN "package"
	1    8600 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R30
U 1 1 5F8E0D71
P 8600 6050
F 0 "R30" H 8720 6102 50  0000 C CNN
F 1 "30.9k" H 8750 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8600 6050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1909272007_Uniroyal-Elec-TC0350B3092T5E_C425420.pdf" H 8600 6050 50  0001 C CNN
F 4 "C425420" H 8600 6050 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/High-Precision-Low-TCR-SMD-Resistors_UNI-ROYAL-Uniroyal-Elec-TC0350B3092T5E_C425420.html" H 8600 6050 50  0001 C CNN "lcsc_url"
F 6 "20" H 8600 6050 50  0001 C CNN "lcsc_min_qty"
F 7 "TC0350B3092T5E" H 8600 6050 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 8600 6050 50  0001 C CNN "package"
	1    8600 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 5F8E0D77
P 8600 6150
F 0 "#PWR0134" H 8600 5900 50  0001 C CNN
F 1 "GND" H 8605 5977 50  0000 C CNN
F 2 "" H 8600 6150 50  0001 C CNN
F 3 "" H 8600 6150 50  0001 C CNN
	1    8600 6150
	1    0    0    -1  
$EndComp
Text GLabel 8550 5950 0    50   Output ~ 0
B1CD
Wire Wire Line
	8550 5950 8600 5950
Connection ~ 8600 5950
Wire Notes Line
	3700 4700 8150 4700
$Comp
L Device:R_Small R16
U 1 1 5F105614
P 4066 4190
F 0 "R16" H 4200 4230 50  0000 C CNN
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
$EndSCHEMATC