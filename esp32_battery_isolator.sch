EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP32-WROOM-32D U2
U 1 1 5EFC6F57
P 4220 6092
F 0 "U2" H 4220 7673 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 4220 7582 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 4220 4592 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 3920 6142 50  0001 C CNN
F 4 "C473012" H 4220 6092 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/RF-Transceiver-ICs_Espressif-Systems-ESP32-WROOM-32D_C473012.html" H 4220 6092 50  0001 C CNN "lcsc_url"
F 6 "1" H 4220 6092 50  0001 C CNN "lcsc_min_qty"
F 7 "ESP32-WROOM-32D" H 4220 6092 50  0001 C CNN "mfr_part_number"
F 8 "SMD-38" H 4220 6092 50  0001 C CNN "package"
	1    4220 6092
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5EFC8B89
P 5156 5492
F 0 "R7" V 5216 5708 50  0000 C CNN
F 1 "10k" V 5138 5732 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5156 5492 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 5156 5492 50  0001 C CNN
F 4 "C15401" H 5156 5492 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 5156 5492 50  0001 C CNN "lcsc_url"
F 6 "100" H 5156 5492 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 5156 5492 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 5156 5492 50  0001 C CNN "package"
	1    5156 5492
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5EFCF275
P 5256 5492
F 0 "#PWR017" H 5256 5242 50  0001 C CNN
F 1 "GND" H 5396 5358 50  0000 C CNN
F 2 "" H 5256 5492 50  0001 C CNN
F 3 "" H 5256 5492 50  0001 C CNN
	1    5256 5492
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5EFCFB7F
P 4220 7492
F 0 "#PWR012" H 4220 7242 50  0001 C CNN
F 1 "GND" H 4225 7319 50  0000 C CNN
F 2 "" H 4220 7492 50  0001 C CNN
F 3 "" H 4220 7492 50  0001 C CNN
	1    4220 7492
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR011
U 1 1 5F01533D
P 3660 4568
F 0 "#PWR011" H 3660 4418 50  0001 C CNN
F 1 "+3V3" H 3675 4741 50  0000 C CNN
F 2 "" H 3660 4568 50  0001 C CNN
F 3 "" H 3660 4568 50  0001 C CNN
	1    3660 4568
	1    0    0    -1  
$EndComp
Wire Wire Line
	4220 4692 3660 4692
Wire Wire Line
	3660 4692 3660 4570
Connection ~ 3660 4570
Wire Wire Line
	3660 4570 3660 4568
NoConn ~ 3620 6092
NoConn ~ 3620 6192
NoConn ~ 3620 6392
NoConn ~ 3620 6492
NoConn ~ 3620 6592
Wire Wire Line
	2726 4570 2762 4570
$Comp
L power:GND #PWR06
U 1 1 5F032105
P 2426 4970
F 0 "#PWR06" H 2426 4720 50  0001 C CNN
F 1 "GND" H 2431 4797 50  0000 C CNN
F 2 "" H 2426 4970 50  0001 C CNN
F 3 "" H 2426 4970 50  0001 C CNN
	1    2426 4970
	1    0    0    -1  
$EndComp
Wire Wire Line
	2126 4670 2126 4570
$Comp
L Device:C_Small C1
U 1 1 5F03693E
P 1582 4700
F 0 "C1" H 1674 4746 50  0000 L CNN
F 1 "10uF" H 1674 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1582 4700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21A106KAYNNNE_C15850.pdf" H 1582 4700 50  0001 C CNN
F 4 "C15850" H 1582 4700 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL21A106KAYNNNE_10uF-106-10-25V_C15850.html" H 1582 4700 50  0001 C CNN "lcsc_url"
F 6 "20" H 1582 4700 50  0001 C CNN "lcsc_min_qty"
F 7 "CL21A106KAYNNNE" H 1582 4700 50  0001 C CNN "mfr_part_number"
F 8 "0805" H 1582 4700 50  0001 C CNN "package"
	1    1582 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5F03A09F
P 2762 4670
F 0 "C4" H 2748 4904 50  0000 L CNN
F 1 "10uF" H 2754 4826 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2762 4670 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21A106KAYNNNE_C15850.pdf" H 2762 4670 50  0001 C CNN
F 4 "C15850" H 2762 4670 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL21A106KAYNNNE_10uF-106-10-25V_C15850.html" H 2762 4670 50  0001 C CNN "lcsc_url"
F 6 "20" H 2762 4670 50  0001 C CNN "lcsc_min_qty"
F 7 "CL21A106KAYNNNE" H 2762 4670 50  0001 C CNN "mfr_part_number"
F 8 "0805" H 2762 4670 50  0001 C CNN "package"
	1    2762 4670
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5F03B396
P 2762 4770
F 0 "#PWR08" H 2762 4520 50  0001 C CNN
F 1 "GND" H 2767 4597 50  0000 C CNN
F 2 "" H 2762 4770 50  0001 C CNN
F 3 "" H 2762 4770 50  0001 C CNN
	1    2762 4770
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5F0703E1
P 3078 4770
F 0 "#PWR09" H 3078 4520 50  0001 C CNN
F 1 "GND" H 3083 4597 50  0000 C CNN
F 2 "" H 3078 4770 50  0001 C CNN
F 3 "" H 3078 4770 50  0001 C CNN
	1    3078 4770
	1    0    0    -1  
$EndComp
Connection ~ 2762 4570
Connection ~ 3078 4570
Wire Wire Line
	2762 4570 3078 4570
$Comp
L Device:C_Small C6
U 1 1 5F0878E3
P 3338 4994
F 0 "C6" H 3148 4940 50  0000 L CNN
F 1 "100n" H 3050 4870 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3338 4994 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-0805B104K250_C128353.pdf" H 3338 4994 50  0001 C CNN
F 4 "C128353" H 3338 4994 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Walsin-Tech-Corp-0805B104K250_C128353.html" H 3338 4994 50  0001 C CNN "lcsc_url"
F 6 "100" H 3338 4994 50  0001 C CNN "lcsc_min_qty"
F 7 "0805B104K250" H 3338 4994 50  0001 C CNN "mfr_part_number"
F 8 "0805" H 3338 4994 50  0001 C CNN "package"
	1    3338 4994
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5F088CED
P 3338 5094
F 0 "#PWR010" H 3338 4844 50  0001 C CNN
F 1 "GND" H 3343 4921 50  0000 C CNN
F 2 "" H 3338 5094 50  0001 C CNN
F 3 "" H 3338 5094 50  0001 C CNN
	1    3338 5094
	1    0    0    -1  
$EndComp
$Comp
L MAX17260:TACT-SWITCH SW1
U 1 1 5F089A41
P 5120 4892
F 0 "SW1" H 5120 5147 50  0000 C CNN
F 1 "TS-1102W-4316" H 5120 5056 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 5120 5169 60  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1808311432_SOFNG-TS-1102W-4316_C111373.pdf" H 5120 5063 60  0001 C CNN
F 4 "C111373" H 5120 4892 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Tactile-Switches_SOFNG-TS-1102W-4316_C111373.html" H 5120 4892 50  0001 C CNN "lcsc_url"
F 6 "10" H 5120 4892 50  0001 C CNN "lcsc_min_qty"
F 7 "TS-1102W-4316" H 5120 4892 50  0001 C CNN "mfr_part_number"
F 8 "6x6x4.3" H 5120 4892 50  0001 C CNN "package"
	1    5120 4892
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5F08B08D
P 5420 4892
F 0 "#PWR018" H 5420 4642 50  0001 C CNN
F 1 "GND" H 5425 4719 50  0000 C CNN
F 2 "" H 5420 4892 50  0001 C CNN
F 3 "" H 5420 4892 50  0001 C CNN
	1    5420 4892
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5F08C101
P 3338 4670
F 0 "R4" H 3426 4694 50  0000 C CNN
F 1 "10k" H 3446 4626 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3338 4670 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 3338 4670 50  0001 C CNN
F 4 "C15401" H 3338 4670 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 3338 4670 50  0001 C CNN "lcsc_url"
F 6 "100" H 3338 4670 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 3338 4670 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 3338 4670 50  0001 C CNN "package"
	1    3338 4670
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5F06F3AB
P 3078 4670
F 0 "C5" H 3094 4974 50  0000 L CNN
F 1 "100n" H 3096 4906 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3078 4670 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-0805B104K250_C128353.pdf" H 3078 4670 50  0001 C CNN
F 4 "C128353" H 3078 4670 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Walsin-Tech-Corp-0805B104K250_C128353.html" H 3078 4670 50  0001 C CNN "lcsc_url"
F 6 "100" H 3078 4670 50  0001 C CNN "lcsc_min_qty"
F 7 "0805B104K250" H 3078 4670 50  0001 C CNN "mfr_part_number"
F 8 "0805" H 3078 4670 50  0001 C CNN "package"
	1    3078 4670
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J6
U 1 1 5F090735
P 8230 4811
F 0 "J6" H 8258 4787 50  0000 L CNN
F 1 "Conn_01x06_Female" H 8258 4696 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 8230 4811 50  0001 C CNN
F 3 "~" H 8230 4811 50  0001 C CNN
	1    8230 4811
	1    0    0    -1  
$EndComp
Text GLabel 4820 4992 2    50   Output ~ 0
TXD
Text GLabel 4820 5192 2    50   Input ~ 0
RXD
$Comp
L power:+3V3 #PWR028
U 1 1 5F092876
P 8030 4611
F 0 "#PWR028" H 8030 4461 50  0001 C CNN
F 1 "+3V3" H 8045 4784 50  0000 C CNN
F 2 "" H 8030 4611 50  0001 C CNN
F 3 "" H 8030 4611 50  0001 C CNN
	1    8030 4611
	1    0    0    -1  
$EndComp
NoConn ~ 8030 4711
Text GLabel 8030 4811 0    50   Input ~ 0
TXD
Text GLabel 8030 4911 0    50   Input ~ 0
RXD
NoConn ~ 8030 5111
$Comp
L power:GND #PWR025
U 1 1 5F0944D4
P 7850 5011
F 0 "#PWR025" H 7850 4761 50  0001 C CNN
F 1 "GND" H 7855 4838 50  0000 C CNN
F 2 "" H 7850 5011 50  0001 C CNN
F 3 "" H 7850 5011 50  0001 C CNN
	1    7850 5011
	1    0    0    -1  
$EndComp
Wire Wire Line
	8030 5011 7850 5011
Text Notes 7908 4309 0    50   ~ 0
UART Port
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5F0B5543
P 1486 905
F 0 "J1" H 1556 1090 50  0000 C CNN
F 1 "INPUT" H 1266 980 50  0000 C CNN
F 2 "Acea:AMASS_XT90-F_1x02_P11mm_Vertical" H 1486 905 50  0001 C CNN
F 3 "~" H 1486 905 50  0001 C CNN
F 4 "https://www.frontlinehobbies.com.au/g-force-xt60-gold-connector-male-female-2pair-gf-1?gclid=CjwKCAjwrvv3BRAJEiwAhwOdM8-qgWv5jfFefjTFyJOH3A9PPJY-dncYXHNHYDGoyDbJGDFwuET0RRoCcNgQAvD_BwE" H 1486 905 50  0001 C CNN "other_URL"
	1    1486 905 
	1    0    0    1   
$EndComp
Text Notes 1758 591  0    50   ~ 0
Input\n
$Comp
L Sensor_Current:ACS781xLRTR-050B U4
U 1 1 5F000CC7
P 5548 1250
F 0 "U4" H 5938 1150 50  0000 L CNN
F 1 "ACS781LLRTR-050B" H 5943 1070 50  0000 L CNN
F 2 "Sensor_Current:Allegro_PSOF-7_4.8x6.4mm_P1.60mm" H 5548 1250 50  0001 C CNN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS780-Datasheet.ashx?la=en" H 5548 1250 50  0001 C CNN
F 4 "620-1823-1-ND" H 5548 1250 50  0001 C CNN "digi_part_number"
F 5 "https://www.digikey.com.au/product-detail/en/allegro-microsystems/ACS781LLRTR-050B-T/620-1823-1-ND/6189112" H 5548 1250 50  0001 C CNN "digi_url"
F 6 "1" H 5548 1250 50  0001 C CNN "digi_min_qty"
F 7 "ACS781LLRTR-050B-T" H 5548 1250 50  0001 C CNN "mfr_part_number"
F 8 "7-PSOF" H 5548 1250 50  0001 C CNN "package"
	1    5548 1250
	1    0    0    -1  
$EndComp
NoConn ~ 5648 1550
NoConn ~ 5748 1550
$Comp
L power:GND #PWR022
U 1 1 5F000CD3
P 5548 1550
F 0 "#PWR022" H 5548 1300 50  0001 C CNN
F 1 "GND" H 5553 1377 50  0000 C CNN
F 2 "" H 5548 1550 50  0001 C CNN
F 3 "" H 5548 1550 50  0001 C CNN
	1    5548 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR021
U 1 1 5F000CDD
P 5548 950
F 0 "#PWR021" H 5548 800 50  0001 C CNN
F 1 "+3V3" H 5563 1123 50  0000 C CNN
F 2 "" H 5548 950 50  0001 C CNN
F 3 "" H 5548 950 50  0001 C CNN
	1    5548 950 
	1    0    0    -1  
$EndComp
Text Notes 5312 602  0    50   ~ 0
Aux Batt 1
Text Notes 9224 609  0    50   ~ 0
Aux Batt 2
$Comp
L power:GND #PWR03
U 1 1 5F00D6BD
P 1776 1000
F 0 "#PWR03" H 1776 750 50  0001 C CNN
F 1 "GND" H 1781 827 50  0000 C CNN
F 2 "" H 1776 1000 50  0001 C CNN
F 3 "" H 1776 1000 50  0001 C CNN
	1    1776 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1686 905  1776 905 
Text GLabel 2171 805  2    50   Output ~ 0
Alternator
Text GLabel 5078 984  0    50   Input ~ 0
Alternator
Text GLabel 9810 1252 2    50   Output ~ 0
AUX_2_C
Text GLabel 1497 4570 0    50   Input ~ 0
Alternator
$Comp
L Regulator_Linear:TLV70012_SOT23-5 U1
U 1 1 5F01D262
P 2426 4670
F 0 "U1" H 2426 5012 50  0000 C CNN
F 1 "ME6119C33M5G" H 2426 4921 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2426 4995 50  0001 C CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Nanjing-Micro-One-Elec-ME6119C33M5G_C81100.pdf" H 2426 4720 50  0001 C CNN
F 4 "C81100" H 2426 4670 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Low-Dropout-Regulators-LDO_MICRONE-Nanjing-Micro-One-Elec-ME6119C33M5G_C81100.html" H 2426 4670 50  0001 C CNN "lcsc_url"
F 6 "5" H 2426 4670 50  0001 C CNN "lcsc_min_qty"
F 7 "ME6119C33M5G" H 2426 4670 50  0001 C CNN "mfr_part_number"
F 8 "SOT23-5" H 2426 4670 50  0001 C CNN "package"
	1    2426 4670
	1    0    0    -1  
$EndComp
Wire Wire Line
	2127 4570 2126 4570
Wire Wire Line
	1582 4570 1582 4600
Connection ~ 2126 4570
Wire Wire Line
	1776 905  1776 1000
$Comp
L Device:C_Small C2
U 1 1 5F0597D2
P 1947 4700
F 0 "C2" H 2017 4745 50  0000 L CNN
F 1 "100n" H 2017 4650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1947 4700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-0805B104K250_C128353.pdf" H 1947 4700 50  0001 C CNN
F 4 "C128353" H 1947 4700 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Walsin-Tech-Corp-0805B104K250_C128353.html" H 1947 4700 50  0001 C CNN "lcsc_url"
F 6 "100" H 1947 4700 50  0001 C CNN "lcsc_min_qty"
F 7 "0805B104K250" H 1947 4700 50  0001 C CNN "mfr_part_number"
F 8 "0805" H 1947 4700 50  0001 C CNN "package"
	1    1947 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1582 4570 1947 4570
Wire Wire Line
	1947 4570 1947 4600
Wire Wire Line
	1947 4570 2126 4570
Connection ~ 1947 4570
Text GLabel 4820 6892 2    50   Output ~ 0
MAIN_LED
Text GLabel 4820 6692 2    50   Output ~ 0
AUX1_LED
Text GLabel 4820 6792 2    50   Output ~ 0
AUX2_LED
$Comp
L Device:LED D2
U 1 1 5F05CC6B
P 1238 2918
F 0 "D2" V 1277 2801 50  0000 R CNN
F 1 "MAIN LED" V 1186 2801 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1238 2918 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Everlight-Elec-19-217-R6C-AL1M2VY-3T_C72044.pdf" H 1238 2918 50  0001 C CNN
F 4 "C72044" H 1238 2918 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_0603-Red-LED_C72044.html" H 1238 2918 50  0001 C CNN "lcsc_url"
F 6 "20" H 1238 2918 50  0001 C CNN "lcsc_min_qty"
F 7 "19-217/R6C-AL1M2VY/3T" H 1238 2918 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 1238 2918 50  0001 C CNN "package"
	1    1238 2918
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5F06058B
P 1238 3268
F 0 "#PWR01" H 1238 3018 50  0001 C CNN
F 1 "GND" H 1378 3134 50  0000 C CNN
F 2 "" H 1238 3268 50  0001 C CNN
F 3 "" H 1238 3268 50  0001 C CNN
	1    1238 3268
	1    0    0    -1  
$EndComp
Text GLabel 1238 2768 0    50   Input ~ 0
MAIN_LED
$Comp
L Device:LED D1
U 1 1 5F0616FE
P 1870 2920
F 0 "D1" V 1909 2803 50  0000 R CNN
F 1 "AUX1 LED" V 1818 2803 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1870 2920 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Everlight-Elec-19-217-R6C-AL1M2VY-3T_C72044.pdf" H 1870 2920 50  0001 C CNN
F 4 "C72044" H 1870 2920 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_0603-Red-LED_C72044.html" H 1870 2920 50  0001 C CNN "lcsc_url"
F 6 "20" H 1870 2920 50  0001 C CNN "lcsc_min_qty"
F 7 "19-217/R6C-AL1M2VY/3T" H 1870 2920 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 1870 2920 50  0001 C CNN "package"
	1    1870 2920
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5F061708
P 1870 3270
F 0 "#PWR04" H 1870 3020 50  0001 C CNN
F 1 "GND" H 2010 3136 50  0000 C CNN
F 2 "" H 1870 3270 50  0001 C CNN
F 3 "" H 1870 3270 50  0001 C CNN
	1    1870 3270
	1    0    0    -1  
$EndComp
Text GLabel 1870 2770 0    50   Input ~ 0
AUX1_LED
$Comp
L Device:LED D3
U 1 1 5F063619
P 2506 2920
F 0 "D3" V 2545 2803 50  0000 R CNN
F 1 "AUX2 LED" V 2454 2803 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2506 2920 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Everlight-Elec-19-217-R6C-AL1M2VY-3T_C72044.pdf" H 2506 2920 50  0001 C CNN
F 4 "C72044" H 2506 2920 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_0603-Red-LED_C72044.html" H 2506 2920 50  0001 C CNN "lcsc_url"
F 6 "20" H 2506 2920 50  0001 C CNN "lcsc_min_qty"
F 7 "19-217/R6C-AL1M2VY/3T" H 2506 2920 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 2506 2920 50  0001 C CNN "package"
	1    2506 2920
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5F063623
P 2506 3270
F 0 "#PWR07" H 2506 3020 50  0001 C CNN
F 1 "GND" H 2646 3136 50  0000 C CNN
F 2 "" H 2506 3270 50  0001 C CNN
F 3 "" H 2506 3270 50  0001 C CNN
	1    2506 3270
	1    0    0    -1  
$EndComp
Text GLabel 2506 2770 0    50   Input ~ 0
AUX2_LED
Text Notes 1622 2444 0    50   ~ 0
Status LEDS\n
$Comp
L Device:R_Small R1
U 1 1 5F069BC9
P 1238 3168
F 0 "R1" H 1352 3216 50  0000 L CNN
F 1 "2.55K" H 1352 3126 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1238 3168 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Guangdong-Fenghua-Advanced-Tech-RS-03K2551FT_C304726.pdf" H 1238 3168 50  0001 C CNN
F 4 "C304726" H 1238 3168 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_FH-Guangdong-Fenghua-Advanced-Tech-RS-03K2551FT_C304726.html" H 1238 3168 50  0001 C CNN "lcsc_url"
F 6 "50" H 1238 3168 50  0001 C CNN "lcsc_min_qty"
F 7 "RS-03K2551FT" H 1238 3168 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 1238 3168 50  0001 C CNN "package"
	1    1238 3168
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5F06E5B1
P 1870 3170
F 0 "R2" H 1984 3218 50  0000 L CNN
F 1 "2.55K" H 1984 3128 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1870 3170 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Guangdong-Fenghua-Advanced-Tech-RS-03K2551FT_C304726.pdf" H 1870 3170 50  0001 C CNN
F 4 "C304726" H 1870 3170 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_FH-Guangdong-Fenghua-Advanced-Tech-RS-03K2551FT_C304726.html" H 1870 3170 50  0001 C CNN "lcsc_url"
F 6 "50" H 1870 3170 50  0001 C CNN "lcsc_min_qty"
F 7 "RS-03K2551FT" H 1870 3170 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 1870 3170 50  0001 C CNN "package"
	1    1870 3170
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5F06F0C0
P 2506 3170
F 0 "R3" H 2620 3218 50  0000 L CNN
F 1 "2.55K" H 2620 3128 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2506 3170 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Guangdong-Fenghua-Advanced-Tech-RS-03K2551FT_C304726.pdf" H 2506 3170 50  0001 C CNN
F 4 "C304726" H 2506 3170 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_FH-Guangdong-Fenghua-Advanced-Tech-RS-03K2551FT_C304726.html" H 2506 3170 50  0001 C CNN "lcsc_url"
F 6 "50" H 2506 3170 50  0001 C CNN "lcsc_min_qty"
F 7 "RS-03K2551FT" H 2506 3170 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 2506 3170 50  0001 C CNN "package"
	1    2506 3170
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5F000CE8
P 4418 1450
F 0 "J3" H 4553 1625 50  0000 C CNN
F 1 "BATT1" H 4263 1530 50  0000 C CNN
F 2 "Connector_AMASS:AMASS_XT60-F_1x02_P7.20mm_Vertical" H 4418 1450 50  0001 C CNN
F 3 "~" H 4418 1450 50  0001 C CNN
F 4 "https://www.frontlinehobbies.com.au/g-force-xt60-gold-connector-male-female-2pair-gf-1?gclid=CjwKCAjwrvv3BRAJEiwAhwOdM8-qgWv5jfFefjTFyJOH3A9PPJY-dncYXHNHYDGoyDbJGDFwuET0RRoCcNgQAvD_BwE" H 4418 1450 50  0001 C CNN "other_URL"
	1    4418 1450
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:BSC070N10NS3G Q2
U 1 1 5F005AF6
P 4948 1450
F 0 "Q2" V 5290 1450 50  0000 C CNN
F 1 "BSC070N10LS5" V 5199 1450 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TDSON-8-1" H 5148 1375 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BSC070N10NS3-DS-v02_01-en.pdf?fileId=db3a304327b89750012824712c6c6f2f" V 4948 1450 50  0001 L CNN
	1    4948 1450
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5F075546
P 4700 1450
F 0 "#PWR014" H 4700 1200 50  0001 C CNN
F 1 "GND" H 4705 1277 50  0000 C CNN
F 2 "" H 4700 1450 50  0001 C CNN
F 3 "" H 4700 1450 50  0001 C CNN
	1    4700 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4618 1450 4700 1450
Text GLabel 4948 1740 3    50   Output ~ 0
AUX_1
Wire Wire Line
	5148 1150 5128 1150
Wire Wire Line
	5128 1150 5128 984 
Wire Wire Line
	5128 984  5078 984 
$Comp
L Device:R_Small R6
U 1 1 5F079C6C
P 5110 1750
F 0 "R6" H 5198 1774 50  0000 C CNN
F 1 "10k" H 5218 1706 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5110 1750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 5110 1750 50  0001 C CNN
F 4 "C15401" H 5110 1750 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 5110 1750 50  0001 C CNN "lcsc_url"
F 6 "100" H 5110 1750 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 5110 1750 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 5110 1750 50  0001 C CNN "package"
	1    5110 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5110 1650 4948 1650
Wire Wire Line
	4948 1650 4948 1740
Connection ~ 4948 1650
$Comp
L power:GND #PWR016
U 1 1 5F07D241
P 5110 1850
F 0 "#PWR016" H 5110 1600 50  0001 C CNN
F 1 "GND" H 5115 1677 50  0000 C CNN
F 2 "" H 5110 1850 50  0001 C CNN
F 3 "" H 5110 1850 50  0001 C CNN
	1    5110 1850
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Current:ACS781xLRTR-050B U5
U 1 1 5F07EAEE
P 9410 1252
F 0 "U5" H 9800 1152 50  0000 L CNN
F 1 "ACS781LLRTR-050B" H 9805 1072 50  0000 L CNN
F 2 "Sensor_Current:Allegro_PSOF-7_4.8x6.4mm_P1.60mm" H 9410 1252 50  0001 C CNN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS780-Datasheet.ashx?la=en" H 9410 1252 50  0001 C CNN
F 4 "620-1823-1-ND" H 9410 1252 50  0001 C CNN "digi_part_number"
F 5 "https://www.digikey.com.au/product-detail/en/allegro-microsystems/ACS781LLRTR-050B-T/620-1823-1-ND/6189112" H 9410 1252 50  0001 C CNN "digi_url"
F 6 "1" H 9410 1252 50  0001 C CNN "digi_min_qty"
F 7 "ACS781LLRTR-050B-T" H 9410 1252 50  0001 C CNN "mfr_part_number"
F 8 "7-PSOF" H 9410 1252 50  0001 C CNN "package"
	1    9410 1252
	1    0    0    -1  
$EndComp
NoConn ~ 9510 1552
NoConn ~ 9610 1552
$Comp
L power:GND #PWR030
U 1 1 5F07EAFA
P 9410 1552
F 0 "#PWR030" H 9410 1302 50  0001 C CNN
F 1 "GND" H 9415 1379 50  0000 C CNN
F 2 "" H 9410 1552 50  0001 C CNN
F 3 "" H 9410 1552 50  0001 C CNN
	1    9410 1552
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR029
U 1 1 5F07EB04
P 9410 952
F 0 "#PWR029" H 9410 802 50  0001 C CNN
F 1 "+3V3" H 9425 1125 50  0000 C CNN
F 2 "" H 9410 952 50  0001 C CNN
F 3 "" H 9410 952 50  0001 C CNN
	1    9410 952 
	1    0    0    -1  
$EndComp
Text GLabel 8940 986  0    50   Input ~ 0
Alternator
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5F07EB11
P 8280 1452
F 0 "J4" H 8415 1627 50  0000 C CNN
F 1 "BATT2" H 8125 1532 50  0000 C CNN
F 2 "Connector_AMASS:AMASS_XT60-F_1x02_P7.20mm_Vertical" H 8280 1452 50  0001 C CNN
F 3 "~" H 8280 1452 50  0001 C CNN
F 4 "https://www.frontlinehobbies.com.au/g-force-xt60-gold-connector-male-female-2pair-gf-1?gclid=CjwKCAjwrvv3BRAJEiwAhwOdM8-qgWv5jfFefjTFyJOH3A9PPJY-dncYXHNHYDGoyDbJGDFwuET0RRoCcNgQAvD_BwE" H 8280 1452 50  0001 C CNN "other_URL"
	1    8280 1452
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:BSC070N10NS3G Q3
U 1 1 5F07EB1B
P 8810 1452
F 0 "Q3" V 9152 1452 50  0000 C CNN
F 1 "BSC070N10LS5" V 9061 1452 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TDSON-8-1" H 9010 1377 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BSC070N10NS3-DS-v02_01-en.pdf?fileId=db3a304327b89750012824712c6c6f2f" V 8810 1452 50  0001 L CNN
	1    8810 1452
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5F07EB25
P 8562 1452
F 0 "#PWR023" H 8562 1202 50  0001 C CNN
F 1 "GND" H 8567 1279 50  0000 C CNN
F 2 "" H 8562 1452 50  0001 C CNN
F 3 "" H 8562 1452 50  0001 C CNN
	1    8562 1452
	1    0    0    -1  
$EndComp
Wire Wire Line
	8480 1452 8562 1452
Text GLabel 8810 1742 3    50   Output ~ 0
AUX_2
Wire Wire Line
	9010 1152 8990 1152
Wire Wire Line
	8990 1152 8990 986 
Wire Wire Line
	8990 986  8940 986 
$Comp
L Device:R_Small R8
U 1 1 5F07EB3A
P 8972 1752
F 0 "R8" H 9060 1776 50  0000 C CNN
F 1 "10k" H 9080 1708 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8972 1752 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 8972 1752 50  0001 C CNN
F 4 "C15401" H 8972 1752 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 8972 1752 50  0001 C CNN "lcsc_url"
F 6 "100" H 8972 1752 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 8972 1752 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 8972 1752 50  0001 C CNN "package"
	1    8972 1752
	1    0    0    -1  
$EndComp
Wire Wire Line
	8972 1652 8810 1652
Wire Wire Line
	8810 1652 8810 1742
Connection ~ 8810 1652
$Comp
L power:GND #PWR026
U 1 1 5F07EB47
P 8972 1852
F 0 "#PWR026" H 8972 1602 50  0001 C CNN
F 1 "GND" H 8977 1679 50  0000 C CNN
F 2 "" H 8972 1852 50  0001 C CNN
F 3 "" H 8972 1852 50  0001 C CNN
	1    8972 1852
	1    0    0    -1  
$EndComp
Text Notes 3940 4324 0    50   ~ 0
ESP-32
Wire Notes Line
	7306 476  7304 476 
Wire Notes Line
	6970 4334 6970 4336
Wire Notes Line
	11222 5446 11222 5224
Wire Notes Line
	11222 5224 11230 5224
$Comp
L Sensor_Current:ACS781xLRTR-050B U3
U 1 1 5F15CBB6
P 5532 3052
F 0 "U3" H 5922 2952 50  0000 L CNN
F 1 "ACS781LLRTR-050B" H 5927 2872 50  0000 L CNN
F 2 "Sensor_Current:Allegro_PSOF-7_4.8x6.4mm_P1.60mm" H 5532 3052 50  0001 C CNN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS780-Datasheet.ashx?la=en" H 5532 3052 50  0001 C CNN
F 4 "620-1823-1-ND" H 5532 3052 50  0001 C CNN "digi_part_number"
F 5 "https://www.digikey.com.au/product-detail/en/allegro-microsystems/ACS781LLRTR-050B-T/620-1823-1-ND/6189112" H 5532 3052 50  0001 C CNN "digi_url"
F 6 "1" H 5532 3052 50  0001 C CNN "digi_min_qty"
F 7 "ACS781LLRTR-050B-T" H 5532 3052 50  0001 C CNN "mfr_part_number"
F 8 "7-PSOF" H 5532 3052 50  0001 C CNN "package"
	1    5532 3052
	1    0    0    -1  
$EndComp
NoConn ~ 5632 3352
NoConn ~ 5732 3352
$Comp
L power:GND #PWR020
U 1 1 5F15CBC2
P 5532 3352
F 0 "#PWR020" H 5532 3102 50  0001 C CNN
F 1 "GND" H 5537 3179 50  0000 C CNN
F 2 "" H 5532 3352 50  0001 C CNN
F 3 "" H 5532 3352 50  0001 C CNN
	1    5532 3352
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR019
U 1 1 5F15CBCC
P 5532 2752
F 0 "#PWR019" H 5532 2602 50  0001 C CNN
F 1 "+3V3" H 5547 2925 50  0000 C CNN
F 2 "" H 5532 2752 50  0001 C CNN
F 3 "" H 5532 2752 50  0001 C CNN
	1    5532 2752
	1    0    0    -1  
$EndComp
Text Notes 5296 2404 0    50   ~ 0
Load 1
Text GLabel 5062 2786 0    50   Input ~ 0
Alternator
Text GLabel 5932 3052 2    50   Output ~ 0
LOAD_1_C
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5F15CBDA
P 4402 3252
F 0 "J2" H 4537 3427 50  0000 C CNN
F 1 "LOAD1" H 4247 3332 50  0000 C CNN
F 2 "Connector_AMASS:AMASS_XT60-F_1x02_P7.20mm_Vertical" H 4402 3252 50  0001 C CNN
F 3 "~" H 4402 3252 50  0001 C CNN
F 4 "https://www.frontlinehobbies.com.au/g-force-xt60-gold-connector-male-female-2pair-gf-1?gclid=CjwKCAjwrvv3BRAJEiwAhwOdM8-qgWv5jfFefjTFyJOH3A9PPJY-dncYXHNHYDGoyDbJGDFwuET0RRoCcNgQAvD_BwE" H 4402 3252 50  0001 C CNN "other_URL"
	1    4402 3252
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:BSC070N10NS3G Q1
U 1 1 5F15CBE4
P 4932 3252
F 0 "Q1" V 5274 3252 50  0000 C CNN
F 1 "BSC070N10LS5" V 5183 3252 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TDSON-8-1" H 5132 3177 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BSC070N10NS3-DS-v02_01-en.pdf?fileId=db3a304327b89750012824712c6c6f2f" V 4932 3252 50  0001 L CNN
	1    4932 3252
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5F15CBEE
P 4684 3252
F 0 "#PWR013" H 4684 3002 50  0001 C CNN
F 1 "GND" H 4689 3079 50  0000 C CNN
F 2 "" H 4684 3252 50  0001 C CNN
F 3 "" H 4684 3252 50  0001 C CNN
	1    4684 3252
	1    0    0    -1  
$EndComp
Wire Wire Line
	4602 3252 4684 3252
Wire Wire Line
	4602 3152 4732 3152
Text GLabel 4932 3542 3    50   Output ~ 0
LOAD_1
Wire Wire Line
	5132 2952 5112 2952
Wire Wire Line
	5112 2952 5112 2786
Wire Wire Line
	5112 2786 5062 2786
$Comp
L Device:R_Small R5
U 1 1 5F15CC03
P 5094 3552
F 0 "R5" H 5182 3576 50  0000 C CNN
F 1 "10k" H 5202 3508 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5094 3552 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 5094 3552 50  0001 C CNN
F 4 "C15401" H 5094 3552 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 5094 3552 50  0001 C CNN "lcsc_url"
F 6 "100" H 5094 3552 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 5094 3552 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 5094 3552 50  0001 C CNN "package"
	1    5094 3552
	1    0    0    -1  
$EndComp
Wire Wire Line
	5094 3452 4932 3452
Wire Wire Line
	4932 3452 4932 3542
Connection ~ 4932 3452
$Comp
L power:GND #PWR015
U 1 1 5F15CC10
P 5094 3652
F 0 "#PWR015" H 5094 3402 50  0001 C CNN
F 1 "GND" H 5099 3479 50  0000 C CNN
F 2 "" H 5094 3652 50  0001 C CNN
F 3 "" H 5094 3652 50  0001 C CNN
	1    5094 3652
	1    0    0    -1  
$EndComp
Text Notes 9240 2415 0    50   ~ 0
Load 2
Text GLabel 9826 3058 2    50   Output ~ 0
LOAD_2_C
$Comp
L Sensor_Current:ACS781xLRTR-050B U6
U 1 1 5F167DE6
P 9426 3058
F 0 "U6" H 9816 2958 50  0000 L CNN
F 1 "ACS781LLRTR-050B" H 9821 2878 50  0000 L CNN
F 2 "Sensor_Current:Allegro_PSOF-7_4.8x6.4mm_P1.60mm" H 9426 3058 50  0001 C CNN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS780-Datasheet.ashx?la=en" H 9426 3058 50  0001 C CNN
F 4 "620-1823-1-ND" H 9426 3058 50  0001 C CNN "digi_part_number"
F 5 "https://www.digikey.com.au/product-detail/en/allegro-microsystems/ACS781LLRTR-050B-T/620-1823-1-ND/6189112" H 9426 3058 50  0001 C CNN "digi_url"
F 6 "1" H 9426 3058 50  0001 C CNN "digi_min_qty"
F 7 "ACS781LLRTR-050B-T" H 9426 3058 50  0001 C CNN "mfr_part_number"
F 8 "7-PSOF" H 9426 3058 50  0001 C CNN "package"
	1    9426 3058
	1    0    0    -1  
$EndComp
NoConn ~ 9526 3358
NoConn ~ 9626 3358
$Comp
L power:GND #PWR032
U 1 1 5F167DF2
P 9426 3358
F 0 "#PWR032" H 9426 3108 50  0001 C CNN
F 1 "GND" H 9431 3185 50  0000 C CNN
F 2 "" H 9426 3358 50  0001 C CNN
F 3 "" H 9426 3358 50  0001 C CNN
	1    9426 3358
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR031
U 1 1 5F167DFC
P 9426 2758
F 0 "#PWR031" H 9426 2608 50  0001 C CNN
F 1 "+3V3" H 9441 2931 50  0000 C CNN
F 2 "" H 9426 2758 50  0001 C CNN
F 3 "" H 9426 2758 50  0001 C CNN
	1    9426 2758
	1    0    0    -1  
$EndComp
Text GLabel 8956 2792 0    50   Input ~ 0
Alternator
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5F167E08
P 8296 3258
F 0 "J5" H 8431 3433 50  0000 C CNN
F 1 "LOAD2" H 8141 3338 50  0000 C CNN
F 2 "Connector_AMASS:AMASS_XT60-F_1x02_P7.20mm_Vertical" H 8296 3258 50  0001 C CNN
F 3 "~" H 8296 3258 50  0001 C CNN
F 4 "https://www.frontlinehobbies.com.au/g-force-xt60-gold-connector-male-female-2pair-gf-1?gclid=CjwKCAjwrvv3BRAJEiwAhwOdM8-qgWv5jfFefjTFyJOH3A9PPJY-dncYXHNHYDGoyDbJGDFwuET0RRoCcNgQAvD_BwE" H 8296 3258 50  0001 C CNN "other_URL"
	1    8296 3258
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:BSC070N10NS3G Q4
U 1 1 5F167E12
P 8826 3258
F 0 "Q4" V 9168 3258 50  0000 C CNN
F 1 "BSC070N10LS5" V 9077 3258 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TDSON-8-1" H 9026 3183 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BSC070N10NS3-DS-v02_01-en.pdf?fileId=db3a304327b89750012824712c6c6f2f" V 8826 3258 50  0001 L CNN
	1    8826 3258
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5F167E1C
P 8578 3258
F 0 "#PWR024" H 8578 3008 50  0001 C CNN
F 1 "GND" H 8583 3085 50  0000 C CNN
F 2 "" H 8578 3258 50  0001 C CNN
F 3 "" H 8578 3258 50  0001 C CNN
	1    8578 3258
	1    0    0    -1  
$EndComp
Wire Wire Line
	8496 3258 8578 3258
Wire Wire Line
	8496 3158 8626 3158
Text GLabel 8826 3548 3    50   Output ~ 0
LOAD_2
Wire Wire Line
	9026 2958 9006 2958
Wire Wire Line
	9006 2958 9006 2792
Wire Wire Line
	9006 2792 8956 2792
$Comp
L Device:R_Small R9
U 1 1 5F167E31
P 8988 3558
F 0 "R9" H 9076 3582 50  0000 C CNN
F 1 "10k" H 9096 3514 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8988 3558 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-0603WAJ0103T5E_C15401.pdf" H 8988 3558 50  0001 C CNN
F 4 "C15401" H 8988 3558 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0603WAJ0103T5E_C15401.html" H 8988 3558 50  0001 C CNN "lcsc_url"
F 6 "100" H 8988 3558 50  0001 C CNN "lcsc_min_qty"
F 7 "0603WAJ0103T5E" H 8988 3558 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 8988 3558 50  0001 C CNN "package"
	1    8988 3558
	1    0    0    -1  
$EndComp
Wire Wire Line
	8988 3458 8826 3458
Wire Wire Line
	8826 3458 8826 3548
Connection ~ 8826 3458
$Comp
L power:GND #PWR027
U 1 1 5F167E3E
P 8988 3658
F 0 "#PWR027" H 8988 3408 50  0001 C CNN
F 1 "GND" H 8993 3485 50  0000 C CNN
F 2 "" H 8988 3658 50  0001 C CNN
F 3 "" H 8988 3658 50  0001 C CNN
	1    8988 3658
	1    0    0    -1  
$EndComp
Wire Notes Line
	11218 4184 11218 4180
Wire Notes Line
	3372 472  3372 4184
Wire Notes Line
	468  2206 11226 2206
Wire Notes Line
	11226 2206 11226 2214
Wire Notes Line
	6972 6534 6972 4184
Wire Notes Line
	7314 480  7314 4192
Text GLabel 4820 6992 2    50   Input ~ 0
AUX_1_C
Text GLabel 5948 1250 2    50   Output ~ 0
AUX_1_C
Text GLabel 4820 5092 2    50   Input ~ 0
LOAD_1_C
Text GLabel 4820 5592 2    50   Input ~ 0
AUX_2_C
Text GLabel 4820 5292 2    50   Input ~ 0
LOAD_2_C
Text GLabel 4820 6592 2    50   Output ~ 0
AUX_1
Text GLabel 3620 6292 0    50   Output ~ 0
AUX_2
Text GLabel 4820 6192 2    50   Output ~ 0
LOAD_1
Text GLabel 4820 6492 2    50   Output ~ 0
LOAD_2
NoConn ~ 4820 5892
NoConn ~ 4820 5992
NoConn ~ 4820 7192
$Comp
L power:GND #PWR0101
U 1 1 5F1CC227
P 1947 4800
F 0 "#PWR0101" H 1947 4550 50  0001 C CNN
F 1 "GND" H 1952 4627 50  0000 C CNN
F 2 "" H 1947 4800 50  0001 C CNN
F 3 "" H 1947 4800 50  0001 C CNN
	1    1947 4800
	1    0    0    -1  
$EndComp
Connection ~ 1582 4570
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F1D7B08
P 1582 4570
F 0 "#FLG0101" H 1582 4645 50  0001 C CNN
F 1 "PWR_FLAG" H 1582 4743 50  0000 C CNN
F 2 "" H 1582 4570 50  0001 C CNN
F 3 "~" H 1582 4570 50  0001 C CNN
	1    1582 4570
	1    0    0    -1  
$EndComp
Wire Wire Line
	1497 4570 1582 4570
$Comp
L power:GND #PWR0102
U 1 1 5F337A25
P 1582 4800
F 0 "#PWR0102" H 1582 4550 50  0001 C CNN
F 1 "GND" H 1587 4627 50  0000 C CNN
F 2 "" H 1582 4800 50  0001 C CNN
F 3 "" H 1582 4800 50  0001 C CNN
	1    1582 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1686 805  2171 805 
NoConn ~ 4820 6092
NoConn ~ 4820 5792
NoConn ~ 4820 5692
NoConn ~ 4820 5392
Text Notes 3396 1280 0    50   ~ 0
Alternative FETs: \nC148386\nC148396
Text GLabel 3620 5092 0    50   Input ~ 0
MAIN
Wire Wire Line
	3078 4570 3338 4570
Connection ~ 3338 4570
Wire Wire Line
	3338 4570 3660 4570
Wire Wire Line
	3620 4892 3338 4892
Wire Wire Line
	3338 4770 3338 4892
Connection ~ 3338 4892
Wire Wire Line
	3338 4892 3338 4894
Text GLabel 3620 5192 0    50   Input ~ 0
BAT1
Text GLabel 4820 7092 2    50   Input ~ 0
BAT2
$Comp
L Device:R_Small R10
U 1 1 5F046188
P 9630 5252
F 0 "R10" H 9730 5284 50  0000 C CNN
F 1 "100k" H 9766 5210 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9630 5252 50  0001 C CNN
F 3 "" H 9630 5252 50  0001 C CNN
F 4 "C312247" H 9630 5252 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Others_RALEC-RTT031003BTP_C312247.html" H 9630 5252 50  0001 C CNN "lcsc_url"
F 6 "20" H 9630 5252 50  0001 C CNN "lcsc_min_qty"
F 7 "RTT031003BTP" H 9630 5252 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 9630 5252 50  0001 C CNN "package"
	1    9630 5252
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5F04682D
P 9630 5452
F 0 "R11" H 9726 5478 50  0000 C CNN
F 1 "27k" H 9748 5408 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9630 5452 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-RT0603BRE0727KL_C326751.pdf" H 9630 5452 50  0001 C CNN
F 4 "C326751" H 9630 5452 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Others_YAGEO-RT0603BRE0727KL_C326751.html" H 9630 5452 50  0001 C CNN "lcsc_url"
F 6 "20" H 9630 5452 50  0001 C CNN "lcsc_min_qty"
F 7 "RT0603BRE0727KL" H 9630 5452 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 9630 5452 50  0001 C CNN "package"
	1    9630 5452
	1    0    0    -1  
$EndComp
Text GLabel 9630 5152 1    50   Output ~ 0
Alternator
Text GLabel 9522 5350 0    50   Input ~ 0
MAIN
Wire Wire Line
	9522 5350 9630 5350
Wire Wire Line
	9630 5350 9630 5352
Connection ~ 9630 5352
$Comp
L power:GND #PWR02
U 1 1 5F0512DC
P 9630 5552
F 0 "#PWR02" H 9630 5302 50  0001 C CNN
F 1 "GND" H 9635 5379 50  0000 C CNN
F 2 "" H 9630 5552 50  0001 C CNN
F 3 "" H 9630 5552 50  0001 C CNN
	1    9630 5552
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 5F0570CB
P 10240 5258
F 0 "R12" H 10340 5290 50  0000 C CNN
F 1 "100k" H 10376 5216 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10240 5258 50  0001 C CNN
F 3 "" H 10240 5258 50  0001 C CNN
F 4 "C312247" H 10240 5258 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Others_RALEC-RTT031003BTP_C312247.html" H 10240 5258 50  0001 C CNN "lcsc_url"
F 6 "20" H 10240 5258 50  0001 C CNN "lcsc_min_qty"
F 7 "RTT031003BTP" H 10240 5258 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 10240 5258 50  0001 C CNN "package"
	1    10240 5258
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 5F0570DA
P 10240 5458
F 0 "R13" H 10336 5484 50  0000 C CNN
F 1 "27k" H 10358 5414 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10240 5458 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-RT0603BRE0727KL_C326751.pdf" H 10240 5458 50  0001 C CNN
F 4 "C326751" H 10240 5458 50  0001 C CNN "lcsc_part_number"
F 5 "RT0603BRE0727KL" H 10240 5458 50  0001 C CNN "lcsc_url"
F 6 "20" H 10240 5458 50  0001 C CNN "lcsc_min_qty"
F 7 "https://lcsc.com/product-detail/Others_YAGEO-RT0603BRE0727KL_C326751.html" H 10240 5458 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 10240 5458 50  0001 C CNN "package"
	1    10240 5458
	1    0    0    -1  
$EndComp
Text GLabel 10132 5356 0    50   Input ~ 0
BAT1
Wire Wire Line
	10132 5356 10240 5356
Wire Wire Line
	10240 5356 10240 5358
Connection ~ 10240 5358
$Comp
L power:GND #PWR05
U 1 1 5F0570E9
P 10240 5558
F 0 "#PWR05" H 10240 5308 50  0001 C CNN
F 1 "GND" H 10245 5385 50  0000 C CNN
F 2 "" H 10240 5558 50  0001 C CNN
F 3 "" H 10240 5558 50  0001 C CNN
	1    10240 5558
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R14
U 1 1 5F05BCF0
P 10838 5268
F 0 "R14" H 10938 5300 50  0000 C CNN
F 1 "100k" H 10974 5226 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10838 5268 50  0001 C CNN
F 3 "" H 10838 5268 50  0001 C CNN
F 4 "C312247" H 10838 5268 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Others_RALEC-RTT031003BTP_C312247.html" H 10838 5268 50  0001 C CNN "lcsc_url"
F 6 "20" H 10838 5268 50  0001 C CNN "lcsc_min_qty"
F 7 "RTT031003BTP" H 10838 5268 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 10838 5268 50  0001 C CNN "package"
	1    10838 5268
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R15
U 1 1 5F05BCFF
P 10838 5468
F 0 "R15" H 10934 5494 50  0000 C CNN
F 1 "27k" H 10956 5424 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10838 5468 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-RT0603BRE0727KL_C326751.pdf" H 10838 5468 50  0001 C CNN
F 4 "C326751" H 10838 5468 50  0001 C CNN "lcsc_part_number"
F 5 "RT0603BRE0727KL" H 10838 5468 50  0001 C CNN "lcsc_url"
F 6 "20" H 10838 5468 50  0001 C CNN "lcsc_min_qty"
F 7 "https://lcsc.com/product-detail/Others_YAGEO-RT0603BRE0727KL_C326751.html" H 10838 5468 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 10838 5468 50  0001 C CNN "package"
	1    10838 5468
	1    0    0    -1  
$EndComp
Text GLabel 10838 5168 1    50   Output ~ 0
BAT2V
Text GLabel 10730 5366 0    50   Input ~ 0
BAT2
Wire Wire Line
	10730 5366 10838 5366
Wire Wire Line
	10838 5366 10838 5368
Connection ~ 10838 5368
$Comp
L power:GND #PWR033
U 1 1 5F05BD0E
P 10838 5568
F 0 "#PWR033" H 10838 5318 50  0001 C CNN
F 1 "GND" H 10843 5395 50  0000 C CNN
F 2 "" H 10838 5568 50  0001 C CNN
F 3 "" H 10838 5568 50  0001 C CNN
	1    10838 5568
	1    0    0    -1  
$EndComp
Text GLabel 10240 5158 1    50   Input ~ 0
BAT1V
Text GLabel 4572 1142 1    50   Output ~ 0
BAT1V
Text GLabel 8432 1142 1    50   Output ~ 0
BAT2V
Wire Wire Line
	8432 1142 8432 1212
Wire Wire Line
	8432 1212 8480 1212
Wire Wire Line
	8480 1212 8480 1352
Wire Wire Line
	8480 1352 8610 1352
Connection ~ 8480 1352
Wire Wire Line
	4572 1142 4572 1224
Wire Wire Line
	4572 1224 4618 1224
Wire Wire Line
	4618 1224 4618 1350
Wire Wire Line
	4618 1350 4748 1350
Connection ~ 4618 1350
Text GLabel 4820 6292 2    50   Output ~ 0
SDA
Text GLabel 4820 6392 2    50   Output ~ 0
SCL
Wire Notes Line
	9224 6534 9224 4184
Wire Notes Line
	470  4184 11218 4184
Text Notes 10050 4310 0    50   ~ 0
ADCs
Wire Notes Line
	9214 5384 6972 5384
Text Notes 7910 5512 0    50   ~ 0
I2C Port
$Comp
L Connector:Conn_01x04_Female J7
U 1 1 5F0D309D
P 8342 5920
F 0 "J7" H 8370 5896 50  0000 L CNN
F 1 "Conn_01x04_Female" H 8370 5805 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 8342 5920 50  0001 C CNN
F 3 "~" H 8342 5920 50  0001 C CNN
	1    8342 5920
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR034
U 1 1 5F0D4017
P 8142 5920
F 0 "#PWR034" H 8142 5770 50  0001 C CNN
F 1 "+3V3" V 8141 6137 50  0000 C CNN
F 2 "" H 8142 5920 50  0001 C CNN
F 3 "" H 8142 5920 50  0001 C CNN
	1    8142 5920
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR035
U 1 1 5F0D4D77
P 8142 5820
F 0 "#PWR035" H 8142 5570 50  0001 C CNN
F 1 "GND" V 8141 5624 50  0000 C CNN
F 2 "" H 8142 5820 50  0001 C CNN
F 3 "" H 8142 5820 50  0001 C CNN
	1    8142 5820
	0    1    1    0   
$EndComp
Text GLabel 8142 6120 0    50   Input ~ 0
SDA
Text GLabel 8142 6020 0    50   Input ~ 0
SCL
Wire Wire Line
	4820 5492 5056 5492
$Comp
L Device:R_Small R16
U 1 1 5F105614
P 7116 5940
F 0 "R16" H 7212 5966 50  0000 C CNN
F 1 "2.2k" H 7234 5896 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7116 5940 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904031208_Walsin-Tech-Corp-2-2KR-222-5_C384262.pdf" H 7116 5940 50  0001 C CNN
F 4 "C384262" H 7116 5940 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Walsin-Tech-Corp-Walsin-Tech-Corp-2-2KR-222-5_C384262.html" H 7116 5940 50  0001 C CNN "lcsc_url"
F 6 "100" H 7116 5940 50  0001 C CNN "lcsc_min_qty"
F 7 "WR06X222 JTL" H 7116 5940 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 7116 5940 50  0001 C CNN "package"
	1    7116 5940
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR036
U 1 1 5F106EBF
P 7116 5840
F 0 "#PWR036" H 7116 5690 50  0001 C CNN
F 1 "+3V3" H 7131 6013 50  0000 C CNN
F 2 "" H 7116 5840 50  0001 C CNN
F 3 "" H 7116 5840 50  0001 C CNN
	1    7116 5840
	1    0    0    -1  
$EndComp
Text GLabel 7182 6074 2    50   Input ~ 0
SCL
Wire Wire Line
	7182 6074 7116 6074
Wire Wire Line
	7116 6074 7116 6040
$Comp
L Device:R_Small R17
U 1 1 5F10CED6
P 7486 5942
F 0 "R17" H 7582 5968 50  0000 C CNN
F 1 "2.2k" H 7604 5898 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7486 5942 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904031208_Walsin-Tech-Corp-2-2KR-222-5_C384262.pdf" H 7486 5942 50  0001 C CNN
F 4 "C384262" H 7486 5942 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Walsin-Tech-Corp-Walsin-Tech-Corp-2-2KR-222-5_C384262.html" H 7486 5942 50  0001 C CNN "lcsc_url"
F 6 "100" H 7486 5942 50  0001 C CNN "lcsc_min_qty"
F 7 "WR06X222 JTL" H 7486 5942 50  0001 C CNN "mfr_part_number"
F 8 "0603" H 7486 5942 50  0001 C CNN "package"
	1    7486 5942
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR037
U 1 1 5F10CEE0
P 7486 5842
F 0 "#PWR037" H 7486 5692 50  0001 C CNN
F 1 "+3V3" H 7501 6015 50  0000 C CNN
F 2 "" H 7486 5842 50  0001 C CNN
F 3 "" H 7486 5842 50  0001 C CNN
	1    7486 5842
	1    0    0    -1  
$EndComp
Text GLabel 7552 6076 2    50   Input ~ 0
SDA
Wire Wire Line
	7552 6076 7486 6076
Wire Wire Line
	7486 6076 7486 6042
$Comp
L LM75BDP_118:LM75BDP,118 U7
U 1 1 5F03F2E0
P 2162 6306
F 0 "U7" H 2162 6876 50  0000 C CNN
F 1 "LM75BDP,118" H 2162 6785 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 2162 6306 50  0001 L BNN
F 3 "https://datasheet.lcsc.com/szlcsc/NXP-Semicon-LM75BD-118_C34565.pdf" H 2162 6306 50  0001 L BNN
F 4 "C34565" H 2162 6306 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Temperature-Sensors_NXP_LM75BD_LM75BD_C34565.html" H 2162 6306 50  0001 C CNN "lcsc_url"
F 6 "1" H 2162 6306 50  0001 C CNN "lcsc_min_qty"
F 7 "LM75BD,118" H 2162 6306 50  0001 C CNN "mfr_part_number"
F 8 "SOIC-8-150" H 2162 6306 50  0001 C CNN "package"
	1    2162 6306
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5F0420C9
P 902 5816
F 0 "C3" H 972 5861 50  0000 L CNN
F 1 "100n" H 972 5766 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 902 5816 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Huaxin-S-T-0805B104K250_C128353.pdf" H 902 5816 50  0001 C CNN
F 4 "C128353" H 902 5816 50  0001 C CNN "lcsc_part_number"
F 5 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Walsin-Tech-Corp-0805B104K250_C128353.html" H 902 5816 50  0001 C CNN "lcsc_url"
F 6 "100" H 902 5816 50  0001 C CNN "lcsc_min_qty"
F 7 "0805B104K250" H 902 5816 50  0001 C CNN "mfr_part_number"
F 8 "0805" H 902 5816 50  0001 C CNN "package"
	1    902  5816
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 5F042F4F
P 902 5916
F 0 "#PWR039" H 902 5666 50  0001 C CNN
F 1 "GND" H 907 5743 50  0000 C CNN
F 2 "" H 902 5916 50  0001 C CNN
F 3 "" H 902 5916 50  0001 C CNN
	1    902  5916
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR038
U 1 1 5F0443D0
P 902 5698
F 0 "#PWR038" H 902 5548 50  0001 C CNN
F 1 "+3V3" H 917 5871 50  0000 C CNN
F 2 "" H 902 5698 50  0001 C CNN
F 3 "" H 902 5698 50  0001 C CNN
	1    902  5698
	1    0    0    -1  
$EndComp
Wire Wire Line
	1462 6106 1462 5698
Wire Wire Line
	1462 5698 902  5698
Wire Wire Line
	902  5716 902  5698
Connection ~ 902  5698
$Comp
L power:GND #PWR041
U 1 1 5F04A374
P 1462 6806
F 0 "#PWR041" H 1462 6556 50  0001 C CNN
F 1 "GND" H 1467 6633 50  0000 C CNN
F 2 "" H 1462 6806 50  0001 C CNN
F 3 "" H 1462 6806 50  0001 C CNN
	1    1462 6806
	1    0    0    -1  
$EndComp
Text GLabel 2862 6206 2    50   Input ~ 0
SDA
Text GLabel 1462 6606 0    50   Input ~ 0
SCL
$Comp
L power:GND #PWR040
U 1 1 5F04B6AA
P 1096 6506
F 0 "#PWR040" H 1096 6256 50  0001 C CNN
F 1 "GND" H 1101 6333 50  0000 C CNN
F 2 "" H 1096 6506 50  0001 C CNN
F 3 "" H 1096 6506 50  0001 C CNN
	1    1096 6506
	1    0    0    -1  
$EndComp
Wire Wire Line
	1096 6506 1462 6506
Wire Wire Line
	1462 6306 1462 6406
Wire Wire Line
	1462 6406 1462 6506
Connection ~ 1462 6406
Connection ~ 1462 6506
NoConn ~ 2862 6106
NoConn ~ 2532 7558
Text Notes 2090 7148 0    50   ~ 0
Temp
$EndSCHEMATC
