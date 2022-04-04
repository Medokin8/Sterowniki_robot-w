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
L Device:Buzzer BZ1
U 1 1 62456090
P 8050 5500
F 0 "BZ1" H 8202 5529 50  0000 L CNN
F 1 "Buzzer" H 8202 5438 50  0000 L CNN
F 2 "" V 8025 5600 50  0001 C CNN
F 3 "~" V 8025 5600 50  0001 C CNN
	1    8050 5500
	1    0    0    -1  
$EndComp
$Comp
L bib:HC-SR04 S1
U 1 1 6245762E
P 2600 6100
F 0 "S1" H 3228 6138 50  0000 L CNN
F 1 "HC-SR04" H 3228 6047 50  0000 L CNN
F 2 "" H 2300 6200 50  0001 C CNN
F 3 "" H 2300 6200 50  0001 C CNN
	1    2600 6100
	0    -1   1    0   
$EndComp
$Comp
L Sensor_Motion:LSM303D U2
U 1 1 6245860E
P 7800 3500
F 0 "U2" H 7800 4381 50  0000 C CNN
F 1 "LSM303D" H 7800 4290 50  0000 C CNN
F 2 "Package_LGA:LGA-16_3x3mm_P0.5mm" H 8050 2900 50  0001 L CNN
F 3 "http://www.st.com/web/en/resource/technical/document/datasheet/DM00057547.pdf" H 7950 4250 50  0001 C CNN
	1    7800 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6247C4DD
P 7950 5150
F 0 "R?" V 7743 5150 50  0000 C CNN
F 1 "1K" V 7834 5150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 7880 5150 50  0001 C CNN
F 3 "~" H 7950 5150 50  0001 C CNN
	1    7950 5150
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q1
U 1 1 6247EAF4
P 7850 5900
F 0 "Q1" H 8041 5946 50  0000 L CNN
F 1 "Q_NPN_BCE" H 8041 5855 50  0000 L CNN
F 2 "" H 8050 6000 50  0001 C CNN
F 3 "~" H 7850 5900 50  0001 C CNN
	1    7850 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 5300 7950 5400
Wire Wire Line
	7950 5600 7950 5700
Wire Wire Line
	2850 6450 3000 6450
Wire Wire Line
	3000 6450 3000 6850
Wire Wire Line
	3000 5650 3000 6000
Wire Wire Line
	3000 6000 2850 6000
$Comp
L bib:HC-SR04 S2
U 1 1 624A82A5
P 2600 4550
F 0 "S2" H 3228 4588 50  0000 L CNN
F 1 "HC-SR04" H 3228 4497 50  0000 L CNN
F 2 "" H 2300 4650 50  0001 C CNN
F 3 "" H 2300 4650 50  0001 C CNN
	1    2600 4550
	0    -1   1    0   
$EndComp
Wire Wire Line
	2850 4900 3000 4900
Wire Wire Line
	3000 4900 3000 5300
Wire Wire Line
	3000 4100 3000 4450
Wire Wire Line
	3000 4450 2850 4450
$Comp
L bib:HC-SR04 S3
U 1 1 624AA316
P 2600 2950
F 0 "S3" H 3228 2988 50  0000 L CNN
F 1 "HC-SR04" H 3228 2897 50  0000 L CNN
F 2 "" H 2300 3050 50  0001 C CNN
F 3 "" H 2300 3050 50  0001 C CNN
	1    2600 2950
	0    -1   1    0   
$EndComp
Wire Wire Line
	2850 3300 3000 3300
Wire Wire Line
	3000 3300 3000 3700
Wire Wire Line
	3000 2500 3000 2850
Wire Wire Line
	3000 2850 2850 2850
$Comp
L bib:HC-SR04 S4
U 1 1 624ABFCB
P 2600 1350
F 0 "S4" H 3228 1388 50  0000 L CNN
F 1 "HC-SR04" H 3228 1297 50  0000 L CNN
F 2 "" H 2300 1450 50  0001 C CNN
F 3 "" H 2300 1450 50  0001 C CNN
	1    2600 1350
	0    -1   1    0   
$EndComp
Wire Wire Line
	2850 1700 3000 1700
Wire Wire Line
	3000 1700 3000 2100
Wire Wire Line
	3000 900  3000 1250
Wire Wire Line
	3000 1250 2850 1250
Wire Wire Line
	1750 900  1750 800 
Connection ~ 1750 900 
Wire Wire Line
	1750 4100 1750 5650
Connection ~ 1750 4100
Connection ~ 1750 2500
Wire Wire Line
	1750 2500 1750 4100
Wire Wire Line
	1750 900  1750 2500
Connection ~ 1800 6850
Wire Wire Line
	1800 5300 1800 6850
Connection ~ 1800 5300
Wire Wire Line
	1800 3700 1800 5300
Wire Wire Line
	1800 3700 1800 2100
Connection ~ 1800 3700
$Comp
L pspice:0 #GND?
U 1 1 624B547D
P 1800 7050
F 0 "#GND?" H 1800 6950 50  0001 C CNN
F 1 "0" H 1800 7139 50  0000 C CNN
F 2 "" H 1800 7050 50  0001 C CNN
F 3 "~" H 1800 7050 50  0001 C CNN
	1    1800 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 6100 7950 6250
$Comp
L pspice:0 #GND?
U 1 1 6248567F
P 7950 6250
F 0 "#GND?" H 7950 6150 50  0001 C CNN
F 1 "0" H 8000 6300 50  0000 C CNN
F 2 "" H 7950 6250 50  0001 C CNN
F 3 "~" H 7950 6250 50  0001 C CNN
	1    7950 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 5000 7950 4800
$Comp
L power:+5V #PWR?
U 1 1 62484485
P 7950 4800
F 0 "#PWR?" H 7950 4650 50  0001 C CNN
F 1 "+5V" H 7965 4973 50  0000 C CNN
F 2 "" H 7950 4800 50  0001 C CNN
F 3 "" H 7950 4800 50  0001 C CNN
	1    7950 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 6850 1800 7050
Wire Wire Line
	1800 3700 3000 3700
Wire Wire Line
	1750 2500 3000 2500
Wire Wire Line
	1800 2100 3000 2100
Wire Wire Line
	1750 900  3000 900 
Wire Wire Line
	1800 5300 3000 5300
Wire Wire Line
	1750 4100 3000 4100
Wire Wire Line
	1800 6850 3000 6850
Wire Wire Line
	1750 5650 3000 5650
$Comp
L Device:C 100n
U 1 1 6249EA67
P 1300 3900
F 0 "100n" H 1415 3946 50  0000 L CNN
F 1 "C1" H 1415 3855 50  0000 L CNN
F 2 "" H 1338 3750 50  0001 C CNN
F 3 "~" H 1300 3900 50  0001 C CNN
	1    1300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4050 1300 7050
Wire Wire Line
	1300 800  1300 3750
$Comp
L pspice:0 #GND?
U 1 1 624A30F7
P 1300 7050
F 0 "#GND?" H 1300 6950 50  0001 C CNN
F 1 "0" H 1300 7139 50  0000 C CNN
F 2 "" H 1300 7050 50  0001 C CNN
F 3 "~" H 1300 7050 50  0001 C CNN
	1    1300 7050
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND?
U 1 1 624A7D1F
P 7600 4450
F 0 "#GND?" H 7600 4350 50  0001 C CNN
F 1 "0" H 7600 4539 50  0000 C CNN
F 2 "" H 7600 4450 50  0001 C CNN
F 3 "~" H 7600 4450 50  0001 C CNN
	1    7600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3400 7100 3400
Wire Wire Line
	7600 4200 7600 4450
Wire Wire Line
	7100 3400 7100 4450
$Comp
L pspice:0 #GND?
U 1 1 624A731D
P 7100 4450
F 0 "#GND?" H 7100 4350 50  0001 C CNN
F 1 "0" H 7100 4539 50  0000 C CNN
F 2 "" H 7100 4450 50  0001 C CNN
F 3 "~" H 7100 4450 50  0001 C CNN
	1    7100 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2200 7700 2800
$Comp
L MCU_ST_STM32L4:STM32L476VGTx U1
U 1 1 62459D99
P 4750 4400
F 0 "U1" H 4750 1511 50  0000 C CNN
F 1 "STM32L476VGTx" H 4750 1420 50  0000 C CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 4050 1800 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00108832.pdf" H 4750 4400 50  0001 C CNN
	1    4750 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 3400 3400 3400
Wire Wire Line
	3400 3400 3400 1550
Wire Wire Line
	3400 1550 2850 1550
Wire Wire Line
	2850 1400 3500 1400
Wire Wire Line
	3500 1400 3500 3300
Wire Wire Line
	3500 3300 3850 3300
Wire Wire Line
	3300 6100 3300 3150
Wire Wire Line
	3300 3150 2850 3150
Wire Wire Line
	3300 6100 3850 6100
Wire Wire Line
	2850 3000 3850 3000
Wire Wire Line
	3850 2900 3700 2900
Wire Wire Line
	3700 2900 3700 4750
Wire Wire Line
	3700 4750 2850 4750
Wire Wire Line
	2850 4600 3650 4600
Wire Wire Line
	3650 4600 3650 3100
Wire Wire Line
	3650 3100 3850 3100
Wire Wire Line
	2850 6300 3200 6300
Text GLabel 3600 4400 0    50   Input ~ 0
buzzer
Text GLabel 7450 5900 0    50   Input ~ 0
buzzer
Wire Wire Line
	7650 5900 7450 5900
Wire Wire Line
	3850 4400 3600 4400
Text GLabel 3600 6200 0    50   Input ~ 0
acc
Wire Wire Line
	3150 6150 3150 4900
Wire Wire Line
	2850 6150 3150 6150
Wire Wire Line
	3150 4900 3850 4900
Wire Wire Line
	3200 6300 3200 5000
Wire Wire Line
	3200 5000 3850 5000
Wire Wire Line
	3850 6200 3600 6200
Text GLabel 7050 3300 0    50   Input ~ 0
acc
Wire Wire Line
	7300 3300 7050 3300
Text GLabel 4450 7350 3    50   Input ~ 0
3V3
Text GLabel 7700 2200 1    50   Input ~ 0
3V3
Text GLabel 4650 7400 3    50   Input ~ 0
5V
Text GLabel 1750 800  1    50   Input ~ 0
5V
Text GLabel 1300 800  1    50   Input ~ 0
5V
Wire Wire Line
	4650 7100 4650 7400
Wire Wire Line
	4450 7100 4450 7350
$Comp
L pspice:0 #GND?
U 1 1 625A9E28
P 4150 1600
F 0 "#GND?" H 4150 1500 50  0001 C CNN
F 1 "0" H 4150 1689 50  0000 C CNN
F 2 "" H 4150 1600 50  0001 C CNN
F 3 "~" H 4150 1600 50  0001 C CNN
	1    4150 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1600 4550 1500
Wire Wire Line
	4550 1500 4150 1500
Wire Wire Line
	4150 1500 4150 1600
$EndSCHEMATC
