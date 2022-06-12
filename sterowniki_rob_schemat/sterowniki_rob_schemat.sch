EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Czujnik parkowania"
Date "2022-05-17"
Rev ""
Comp ""
Comment1 "Michał Mendelak"
Comment2 "Nikodem Iwin"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Buzzer BZ1
U 1 1 62456090
P 8200 2500
F 0 "BZ1" H 8352 2529 50  0000 L CNN
F 1 "Buzzer" H 8352 2438 50  0000 L CNN
F 2 "" V 8175 2600 50  0001 C CNN
F 3 "~" V 8175 2600 50  0001 C CNN
	1    8200 2500
	1    0    0    -1  
$EndComp
$Comp
L bib:HC-SR04 S1
U 1 1 6245762E
P 2100 6100
F 0 "S1" H 2728 6138 50  0000 L CNN
F 1 "HC-SR04" H 2728 6047 50  0000 L CNN
F 2 "" H 1800 6200 50  0001 C CNN
F 3 "" H 1800 6200 50  0001 C CNN
	1    2100 6100
	0    -1   1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 6247C4DD
P 8100 2150
F 0 "R1" V 7893 2150 50  0000 C CNN
F 1 "1K" V 7984 2150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 8030 2150 50  0001 C CNN
F 3 "~" H 8100 2150 50  0001 C CNN
	1    8100 2150
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q1
U 1 1 6247EAF4
P 8000 2900
F 0 "Q1" H 8191 2946 50  0000 L CNN
F 1 "Q_NPN_BCE" H 8191 2855 50  0000 L CNN
F 2 "" H 8200 3000 50  0001 C CNN
F 3 "~" H 8000 2900 50  0001 C CNN
	1    8000 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2300 8100 2400
Wire Wire Line
	8100 2600 8100 2700
Wire Wire Line
	2500 6000 2350 6000
$Comp
L pspice:0 #GND02
U 1 1 624B547D
P 2700 7050
F 0 "#GND02" H 2700 6950 50  0001 C CNN
F 1 "0" H 2700 7139 50  0000 C CNN
F 2 "" H 2700 7050 50  0001 C CNN
F 3 "~" H 2700 7050 50  0001 C CNN
	1    2700 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3100 8100 3250
$Comp
L pspice:0 #GND04
U 1 1 6248567F
P 8100 3250
F 0 "#GND04" H 8100 3150 50  0001 C CNN
F 1 "0" H 8150 3300 50  0000 C CNN
F 2 "" H 8100 3250 50  0001 C CNN
F 3 "~" H 8100 3250 50  0001 C CNN
	1    8100 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2000 8100 1800
$Comp
L Device:C 100n1
U 1 1 6249EA67
P 1300 3900
F 0 "100n1" H 1415 3946 50  0000 L CNN
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
L pspice:0 #GND01
U 1 1 624A30F7
P 1300 7050
F 0 "#GND01" H 1300 6950 50  0001 C CNN
F 1 "0" H 1300 7139 50  0000 C CNN
F 2 "" H 1300 7050 50  0001 C CNN
F 3 "~" H 1300 7050 50  0001 C CNN
	1    1300 7050
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32L4:STM32L476VGTx U1
U 1 1 62459D99
P 6450 3900
F 0 "U1" H 6450 1011 50  0000 C CNN
F 1 "STM32L476VGTx" H 6450 920 50  0000 C CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 5750 1300 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00108832.pdf" H 6450 3900 50  0001 C CNN
	1    6450 3900
	-1   0    0    1   
$EndComp
Text GLabel 6350 6900 3    50   Input ~ 0
5V
Text GLabel 2500 800  1    50   Input ~ 0
5V
Text GLabel 1300 800  1    50   Input ~ 0
5V
Wire Wire Line
	6350 6600 6350 6900
$Comp
L pspice:0 #GND03
U 1 1 625A9E28
P 5850 1100
F 0 "#GND03" H 5850 1000 50  0001 C CNN
F 1 "0" H 5850 1189 50  0000 C CNN
F 2 "" H 5850 1100 50  0001 C CNN
F 3 "~" H 5850 1100 50  0001 C CNN
	1    5850 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1100 6250 1000
Wire Wire Line
	6250 1000 5850 1000
Wire Wire Line
	5850 1000 5850 1100
Text GLabel 8100 1800 1    50   Input ~ 0
5V
Wire Wire Line
	4900 6300 5550 6300
Wire Wire Line
	5200 6100 5550 6100
Wire Wire Line
	7350 2900 7800 2900
$Comp
L bib:HC-SR04 S2
U 1 1 6284FC78
P 2100 4600
F 0 "S2" H 2728 4638 50  0000 L CNN
F 1 "HC-SR04" H 2728 4547 50  0000 L CNN
F 2 "" H 1800 4700 50  0001 C CNN
F 3 "" H 1800 4700 50  0001 C CNN
	1    2100 4600
	0    -1   1    0   
$EndComp
$Comp
L bib:HC-SR04 S3
U 1 1 62851184
P 2100 3050
F 0 "S3" H 2728 3088 50  0000 L CNN
F 1 "HC-SR04" H 2728 2997 50  0000 L CNN
F 2 "" H 1800 3150 50  0001 C CNN
F 3 "" H 1800 3150 50  0001 C CNN
	1    2100 3050
	0    -1   1    0   
$EndComp
Wire Wire Line
	2700 6450 2700 7050
Wire Wire Line
	2350 6450 2700 6450
Connection ~ 2700 6450
Wire Wire Line
	2350 4950 2700 4950
Connection ~ 2700 4950
Wire Wire Line
	2700 4950 2700 6450
Wire Wire Line
	2350 3400 2700 3400
Wire Wire Line
	2700 3400 2700 4950
Wire Wire Line
	2500 4500 2350 4500
Connection ~ 2500 4500
Wire Wire Line
	2500 4500 2500 5550
Wire Wire Line
	2500 2950 2350 2950
Connection ~ 2500 2950
Wire Wire Line
	2500 2950 2500 3450
Wire Wire Line
	2350 4800 3000 4800
Wire Wire Line
	3000 3100 2350 3100
$Comp
L 74xx:74HC4051 U2
U 1 1 628A8AFC
P 3800 2600
F 0 "U2" H 3850 3189 50  0000 C CNN
F 1 "74HC4051" H 3850 3280 50  0000 C CNN
F 2 "" H 3800 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4051.pdf" H 3800 2200 50  0001 C CNN
	1    3800 2600
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HC4051 U3
U 1 1 628A57BB
P 3800 5000
F 0 "U3" H 3850 5589 50  0000 C CNN
F 1 "74HC4051" H 3850 5680 50  0000 C CNN
F 2 "" H 3800 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4051.pdf" H 3800 4600 50  0001 C CNN
	1    3800 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 5000 4500 5000
Wire Wire Line
	4500 5000 4500 3850
Wire Wire Line
	4500 2600 4100 2600
Wire Wire Line
	4100 2700 4400 2700
Wire Wire Line
	4400 5100 4100 5100
Wire Wire Line
	7550 4900 7350 4900
Wire Wire Line
	7550 4800 7350 4800
Wire Wire Line
	4100 2900 5200 2900
Wire Wire Line
	5200 2900 5200 6100
Wire Wire Line
	4900 6300 4900 5300
Wire Wire Line
	4900 5300 4100 5300
Wire Wire Line
	4200 4400 4200 4300
Wire Wire Line
	4200 4300 3800 4300
Wire Wire Line
	3800 4300 3800 4400
Wire Wire Line
	3800 5500 3800 5550
Wire Wire Line
	3800 5550 2500 5550
Connection ~ 2500 5550
Wire Wire Line
	2500 5550 2500 6000
Wire Wire Line
	3800 3100 3800 3450
Wire Wire Line
	3800 3450 2500 3450
Connection ~ 2500 3450
Wire Wire Line
	2500 3450 2500 4500
Text GLabel 4700 3700 2    50   Input ~ 0
PH0
Text GLabel 7550 4900 2    50   Input ~ 0
PH0
Text GLabel 7550 4800 2    50   Input ~ 0
PH1
Text GLabel 4700 3850 2    50   Input ~ 0
PH1
$Comp
L power:GND #PWR01
U 1 1 628E4B62
P 4200 4400
F 0 "#PWR01" H 4200 4150 50  0001 C CNN
F 1 "GND" H 4205 4227 50  0000 C CNN
F 2 "" H 4200 4400 50  0001 C CNN
F 3 "" H 4200 4400 50  0001 C CNN
	1    4200 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 628E6171
P 4250 2050
F 0 "#PWR02" H 4250 1800 50  0001 C CNN
F 1 "GND" H 4255 1877 50  0000 C CNN
F 2 "" H 4250 2050 50  0001 C CNN
F 3 "" H 4250 2050 50  0001 C CNN
	1    4250 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2050 4250 1900
Wire Wire Line
	4250 1900 3800 1900
Wire Wire Line
	3800 1900 3800 2000
Wire Wire Line
	2350 6300 3000 6300
Wire Wire Line
	3400 5200 3000 5200
Wire Wire Line
	3000 5200 3000 4800
Wire Wire Line
	3400 5300 3000 5300
Wire Wire Line
	3000 5300 3000 6300
Wire Wire Line
	3050 3250 3050 5100
Wire Wire Line
	3050 5100 3400 5100
Wire Wire Line
	2350 3250 3050 3250
Wire Wire Line
	3000 3100 3000 2700
Wire Wire Line
	3000 2700 3400 2700
Wire Wire Line
	3200 4650 3200 2800
Wire Wire Line
	3200 2800 3400 2800
Wire Wire Line
	2350 4650 3200 4650
Wire Wire Line
	3400 2900 3250 2900
Wire Wire Line
	3250 2900 3250 6150
Wire Wire Line
	2350 6150 3250 6150
Wire Wire Line
	2500 800  2500 2950
Wire Wire Line
	4400 2700 4400 3700
Connection ~ 4400 3700
Wire Wire Line
	4700 3700 4400 3700
Wire Wire Line
	4400 3700 4400 5100
Wire Wire Line
	4700 3850 4500 3850
Connection ~ 4500 3850
Wire Wire Line
	4500 3850 4500 2600
$EndSCHEMATC
