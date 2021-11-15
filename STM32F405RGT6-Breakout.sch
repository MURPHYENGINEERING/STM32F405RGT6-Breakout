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
L MCU_ST_STM32F4:STM32F405RGTx U?
U 1 1 61902656
P 6250 4300
F 0 "U?" H 6800 6050 50  0000 C CNN
F 1 "STM32F405RGT6" H 6800 2550 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 5650 2600 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00037051.pdf" H 6250 4300 50  0001 C CNN
	1    6250 4300
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U?
U 1 1 6192F648
P 3800 1350
F 0 "U?" H 3800 1592 50  0000 C CNN
F 1 "AMS1117-3.3" H 3800 1501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3800 1550 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 3900 1100 50  0001 C CNN
	1    3800 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 619351E4
P 3000 1350
F 0 "FB?" V 2763 1350 50  0000 C CNN
F 1 "100 @ 100 MHz" V 2854 1350 50  0000 C CNN
F 2 "" V 2930 1350 50  0001 C CNN
F 3 "~" H 3000 1350 50  0001 C CNN
	1    3000 1350
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse_Small F?
U 1 1 61935A18
P 2450 1350
F 0 "F?" H 2450 1535 50  0000 C CNN
F 1 "500mA" H 2450 1444 50  0000 C CNN
F 2 "" H 2450 1350 50  0001 C CNN
F 3 "~" H 2450 1350 50  0001 C CNN
	1    2450 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener_Small D?
U 1 1 61943D90
P 2000 1500
F 0 "D?" V 1954 1570 50  0000 L CNN
F 1 "ZMM5V6" V 2045 1570 50  0000 L CNN
F 2 "" V 2000 1500 50  0001 C CNN
F 3 "~" V 2000 1500 50  0001 C CNN
	1    2000 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61945077
P 1600 1900
F 0 "R?" H 1670 1946 50  0000 L CNN
F 1 "100" H 1670 1855 50  0000 L CNN
F 2 "" V 1530 1900 50  0001 C CNN
F 3 "~" H 1600 1900 50  0001 C CNN
	1    1600 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1650 1600 1750
Wire Wire Line
	2000 1650 2000 1600
Wire Wire Line
	2000 1400 2000 1350
Wire Wire Line
	2500 1350 2550 1350
Wire Wire Line
	3100 1350 3350 1350
$Comp
L power:GND #PWR?
U 1 1 6194D181
P 1600 2050
F 0 "#PWR?" H 1600 1800 50  0001 C CNN
F 1 "GND" H 1605 1877 50  0000 C CNN
F 2 "" H 1600 2050 50  0001 C CNN
F 3 "" H 1600 2050 50  0001 C CNN
	1    1600 2050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 6195256A
P 950 1350
F 0 "#PWR?" H 950 1200 50  0001 C CNN
F 1 "VCC" H 965 1523 50  0000 C CNN
F 2 "" H 950 1350 50  0001 C CNN
F 3 "" H 950 1350 50  0001 C CNN
	1    950  1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  1350 1400 1350
Text Notes 1750 2200 0    50   ~ 0
Throttle current through\nthe zener if polarity is reversed\n
Wire Wire Line
	2000 1350 1800 1350
Wire Wire Line
	2000 1350 2350 1350
Text Notes 1900 1850 0    50   ~ 0
Bleed off gate voltage \nif it goes near Vgs
Text Notes 700  1750 0    50   ~ 0
Off when gate is high,\ni.e. supply polarity \nis reversed
$Comp
L power:GND #PWR?
U 1 1 6194DC8B
P 3800 1800
F 0 "#PWR?" H 3800 1550 50  0001 C CNN
F 1 "GND" H 3805 1627 50  0000 C CNN
F 2 "" H 3800 1800 50  0001 C CNN
F 3 "" H 3800 1800 50  0001 C CNN
	1    3800 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6195B580
P 3350 1550
F 0 "C?" H 3442 1596 50  0000 L CNN
F 1 "10u" H 3442 1505 50  0000 L CNN
F 2 "" H 3350 1550 50  0001 C CNN
F 3 "~" H 3350 1550 50  0001 C CNN
	1    3350 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6195E545
P 4200 1550
F 0 "C?" H 4292 1596 50  0000 L CNN
F 1 "10u" H 4292 1505 50  0000 L CNN
F 2 "" H 4200 1550 50  0001 C CNN
F 3 "~" H 4200 1550 50  0001 C CNN
	1    4200 1550
	1    0    0    -1  
$EndComp
Connection ~ 3350 1350
Wire Wire Line
	3350 1350 3500 1350
Wire Wire Line
	3350 1750 3800 1750
Wire Wire Line
	4200 1750 4200 1650
Connection ~ 3800 1750
Wire Wire Line
	3800 1750 4200 1750
Wire Wire Line
	3800 1750 3800 1800
Wire Wire Line
	4350 1350 4200 1350
$Comp
L power:+3V3 #PWR?
U 1 1 61961ED5
P 4350 1350
F 0 "#PWR?" H 4350 1200 50  0001 C CNN
F 1 "+3V3" H 4365 1523 50  0000 C CNN
F 2 "" H 4350 1350 50  0001 C CNN
F 3 "" H 4350 1350 50  0001 C CNN
	1    4350 1350
	1    0    0    -1  
$EndComp
Connection ~ 4200 1350
Wire Wire Line
	4200 1350 4100 1350
Connection ~ 2550 1350
Wire Wire Line
	2550 1350 2900 1350
Text Notes 3950 1850 0    50   ~ 0
Caps for stability\n
Text Notes 2800 1000 0    50   ~ 0
High frequency \nnoise filter\n
Connection ~ 2000 1350
$Comp
L Device:Q_PMOS_SGD Q?
U 1 1 61942650
P 1600 1450
F 0 "Q?" V 1942 1450 50  0000 C CNN
F 1 "Si2301CDS" V 1851 1450 50  0000 C CNN
F 2 "" H 1800 1550 50  0001 C CNN
F 3 "~" H 1600 1450 50  0001 C CNN
	1    1600 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 1650 1600 1650
Connection ~ 1600 1650
Text Notes 2050 1100 0    50   ~ 0
Fuse\n(does this go \nbefore or \nafter pch?)
Text Notes 3650 1000 0    50   ~ 0
3.3V LDO
Wire Wire Line
	3350 1650 3350 1750
Wire Wire Line
	3800 1650 3800 1750
Wire Wire Line
	3350 1350 3350 1450
Wire Wire Line
	4200 1350 4200 1450
Wire Notes Line
	650  750  650  2350
Wire Notes Line
	650  2350 4650 2350
Wire Notes Line
	4650 2350 4650 750 
Wire Notes Line
	650  750  4650 750 
Text Notes 700  700  0    50   ~ 0
Input voltage regulator
$Comp
L power:+3V3 #PWR?
U 1 1 61974FD8
P 6050 2400
F 0 "#PWR?" H 6050 2250 50  0001 C CNN
F 1 "+3V3" H 6065 2573 50  0000 C CNN
F 2 "" H 6050 2400 50  0001 C CNN
F 3 "" H 6050 2400 50  0001 C CNN
	1    6050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2500 6450 2450
Wire Wire Line
	6450 2450 6350 2450
Wire Wire Line
	6350 2450 6350 2500
Wire Wire Line
	6350 2450 6250 2450
Wire Wire Line
	6050 2450 6050 2500
Connection ~ 6350 2450
Wire Wire Line
	6150 2450 6150 2500
Connection ~ 6150 2450
Wire Wire Line
	6150 2450 6050 2450
Wire Wire Line
	6250 2450 6250 2500
Connection ~ 6250 2450
Wire Wire Line
	6250 2450 6150 2450
Wire Wire Line
	6050 2450 6050 2400
Connection ~ 6050 2450
$Comp
L power:+3V3 #PWR?
U 1 1 6197E4D1
P 7250 950
F 0 "#PWR?" H 7250 800 50  0001 C CNN
F 1 "+3V3" H 7265 1123 50  0000 C CNN
F 2 "" H 7250 950 50  0001 C CNN
F 3 "" H 7250 950 50  0001 C CNN
	1    7250 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 6197F29F
P 7700 1100
F 0 "FB?" V 7463 1100 50  0000 C CNN
F 1 "100 @ 100 MHz" V 7554 1100 50  0000 C CNN
F 2 "" V 7630 1100 50  0001 C CNN
F 3 "~" H 7700 1100 50  0001 C CNN
	1    7700 1100
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6197FBF2
P 7950 1300
F 0 "C?" H 8042 1346 50  0000 L CNN
F 1 "100n" H 8042 1255 50  0000 L CNN
F 2 "" H 7950 1300 50  0001 C CNN
F 3 "~" H 7950 1300 50  0001 C CNN
	1    7950 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61980239
P 8350 1300
F 0 "C?" H 8442 1346 50  0000 L CNN
F 1 "10n" H 8442 1255 50  0000 L CNN
F 2 "" H 8350 1300 50  0001 C CNN
F 3 "~" H 8350 1300 50  0001 C CNN
	1    8350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1200 8350 1100
Wire Wire Line
	8350 1100 7950 1100
Wire Wire Line
	7950 1200 7950 1100
Connection ~ 7950 1100
Wire Wire Line
	7950 1100 7800 1100
Wire Wire Line
	7250 950  7250 1100
Wire Wire Line
	7250 1100 7600 1100
$Comp
L power:+3.3VA #PWR?
U 1 1 61983E43
P 6550 2400
F 0 "#PWR?" H 6550 2250 50  0001 C CNN
F 1 "+3.3VA" H 6565 2573 50  0000 C CNN
F 2 "" H 6550 2400 50  0001 C CNN
F 3 "" H 6550 2400 50  0001 C CNN
	1    6550 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2400 6550 2500
$Comp
L power:+3.3VA #PWR?
U 1 1 61985D6F
P 8350 950
F 0 "#PWR?" H 8350 800 50  0001 C CNN
F 1 "+3.3VA" H 8365 1123 50  0000 C CNN
F 2 "" H 8350 950 50  0001 C CNN
F 3 "" H 8350 950 50  0001 C CNN
	1    8350 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 950  8350 1100
Connection ~ 8350 1100
$Comp
L power:GND #PWR?
U 1 1 6198711A
P 7950 1400
F 0 "#PWR?" H 7950 1150 50  0001 C CNN
F 1 "GND" H 7955 1227 50  0000 C CNN
F 2 "" H 7950 1400 50  0001 C CNN
F 3 "" H 7950 1400 50  0001 C CNN
	1    7950 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61987910
P 8350 1400
F 0 "#PWR?" H 8350 1150 50  0001 C CNN
F 1 "GND" H 8355 1227 50  0000 C CNN
F 2 "" H 8350 1400 50  0001 C CNN
F 3 "" H 8350 1400 50  0001 C CNN
	1    8350 1400
	1    0    0    -1  
$EndComp
Wire Notes Line
	8600 700  8600 1700
Wire Notes Line
	8600 1700 7150 1700
Wire Notes Line
	7150 1700 7150 700 
Wire Notes Line
	7150 700  8600 700 
Text Notes 7150 650  0    50   ~ 0
ADC reference voltage filter\n
$EndSCHEMATC
