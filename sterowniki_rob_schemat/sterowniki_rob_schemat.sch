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
P 6500 3000
F 0 "BZ1" H 6652 3029 50  0000 L CNN
F 1 "Buzzer" H 6652 2938 50  0000 L CNN
F 2 "" V 6475 3100 50  0001 C CNN
F 3 "~" V 6475 3100 50  0001 C CNN
	1    6500 3000
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
L Device:R R1
U 1 1 6247C4DD
P 6400 2650
F 0 "R1" V 6193 2650 50  0000 C CNN
F 1 "1K" V 6284 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 6330 2650 50  0001 C CNN
F 3 "~" H 6400 2650 50  0001 C CNN
	1    6400 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q1
U 1 1 6247EAF4
P 6300 3400
F 0 "Q1" H 6491 3446 50  0000 L CNN
F 1 "Q_NPN_BCE" H 6491 3355 50  0000 L CNN
F 2 "" H 6500 3500 50  0001 C CNN
F 3 "~" H 6300 3400 50  0001 C CNN
	1    6300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2800 6400 2900
Wire Wire Line
	6400 3100 6400 3200
Wire Wire Line
	2850 6450 3000 6450
Wire Wire Line
	3000 6450 3000 6850
Wire Wire Line
	3000 5650 3000 6000
Wire Wire Line
	3000 6000 2850 6000
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
	6400 3600 6400 3750
$Comp
L pspice:0 #GND?
U 1 1 6248567F
P 6400 3750
F 0 "#GND?" H 6400 3650 50  0001 C CNN
F 1 "0" H 6450 3800 50  0000 C CNN
F 2 "" H 6400 3750 50  0001 C CNN
F 3 "~" H 6400 3750 50  0001 C CNN
	1    6400 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2500 6400 2300
Wire Wire Line
	1800 6850 1800 7050
Wire Wire Line
	1800 6850 3000 6850
Wire Wire Line
	1800 5650 3000 5650
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
	2850 6300 3200 6300
Text GLabel 4650 7400 3    50   Input ~ 0
5V
Text GLabel 1800 800  1    50   Input ~ 0
5V
Text GLabel 1300 800  1    50   Input ~ 0
5V
Wire Wire Line
	4650 7100 4650 7400
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
Text GLabel 6400 2300 1    50   Input ~ 0
5V
Wire Wire Line
	1800 800  1800 5650
Wire Wire Line
	3200 6300 3200 6800
Wire Wire Line
	3200 6800 3850 6800
Wire Wire Line
	3500 6150 3500 6600
Wire Wire Line
	3500 6600 3850 6600
Wire Wire Line
	2850 6150 3500 6150
Wire Wire Line
	5650 3400 6100 3400
$EndSCHEMATC
