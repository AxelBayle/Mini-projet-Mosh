EESchema Schematic File Version 4
LIBS:PCB_nano-cache
EELAYER 26 0
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
L Connector:Conn_01x04_Male J1
U 1 1 5BE28B85
P 4150 2600
F 0 "J1" H 4256 2878 50  0000 C CNN
F 1 "Conn_01x04_Male" H 4256 2787 50  0000 C CNN
F 2 "Connector:NS-Tech_Grove_1x04_P2mm_Vertical" H 4150 2600 50  0001 C CNN
F 3 "~" H 4150 2600 50  0001 C CNN
	1    4150 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2500 4650 2500
Text Label 4800 2500 0    50   ~ 0
GND
Text Label 5100 2550 0    50   ~ 0
5V
Wire Wire Line
	4350 2700 4600 2700
Wire Wire Line
	4350 2800 4600 2800
Text Label 4600 2800 0    50   ~ 0
Out
Text Label 4600 2700 0    50   ~ 0
reset
$Comp
L Device:R R1
U 1 1 5BE1450D
P 4350 3550
F 0 "R1" H 4420 3596 50  0000 L CNN
F 1 "10K" H 4420 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4280 3550 50  0001 C CNN
F 3 "~" H 4350 3550 50  0001 C CNN
	1    4350 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BE1454B
P 4700 3550
F 0 "R2" H 4770 3596 50  0000 L CNN
F 1 "10K" H 4770 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4630 3550 50  0001 C CNN
F 3 "~" H 4700 3550 50  0001 C CNN
	1    4700 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5BE1459C
P 4700 3950
F 0 "D1" V 4738 3833 50  0000 R CNN
F 1 "LED" V 4647 3833 50  0000 R CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 4700 3950 50  0001 C CNN
F 3 "~" H 4700 3950 50  0001 C CNN
	1    4700 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 3700 4700 3800
Wire Wire Line
	4350 3700 4350 4100
Wire Wire Line
	4350 4100 4550 4100
Wire Wire Line
	4550 4100 4550 4200
Connection ~ 4550 4100
Wire Wire Line
	4550 4100 4700 4100
Text Label 4550 4200 0    50   ~ 0
GND
Wire Wire Line
	4350 3400 4700 3400
Wire Wire Line
	4700 3400 5200 3400
Connection ~ 4700 3400
$Comp
L Transistor_FET:IRF540N Q1
U 1 1 5BE14A2B
P 5400 3400
F 0 "Q1" H 5605 3446 50  0000 L CNN
F 1 "IRF540N" H 5605 3355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5650 3325 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 5400 3400 50  0001 L CNN
	1    5400 3400
	1    0    0    -1  
$EndComp
Text Label 5500 3600 3    50   ~ 0
GND
$Comp
L Capteur_Gaz_SB-rescue:Capteur_TO-5-LTC1050 U1
U 1 1 5BE14C8C
P 8000 2800
F 0 "U1" H 9450 3200 50  0000 R CNN
F 1 "Capteur_TO-5-LTC1050" H 9500 3300 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-5-4" H 9250 2650 50  0001 C CNN
F 3 "" H 9250 2650 50  0001 C CNN
	1    8000 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 3200 5500 3050
Wire Wire Line
	5500 3050 6000 3050
Text Label 6300 2600 1    50   ~ 0
5V
Wire Wire Line
	6300 2600 6300 2750
$Comp
L Device:R R3
U 1 1 5BE151A5
P 6300 3550
F 0 "R3" H 6370 3596 50  0000 L CNN
F 1 "10K" H 6370 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6230 3550 50  0001 C CNN
F 3 "~" H 6300 3550 50  0001 C CNN
	1    6300 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3350 6300 3400
$Comp
L Device:C C1
U 1 1 5BE1529A
P 6200 4300
F 0 "C1" H 6315 4346 50  0000 L CNN
F 1 "100n" H 6315 4255 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 6238 4150 50  0001 C CNN
F 3 "~" H 6200 4300 50  0001 C CNN
	1    6200 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5BE15479
P 6550 4300
F 0 "R4" H 6620 4346 50  0000 L CNN
F 1 "100K" H 6620 4255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6480 4300 50  0001 C CNN
F 3 "~" H 6550 4300 50  0001 C CNN
	1    6550 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4150 6200 4150
Wire Wire Line
	6300 3700 6300 3950
Wire Wire Line
	6550 4150 6300 4150
Connection ~ 6300 4150
Wire Wire Line
	6200 4450 6350 4450
Wire Wire Line
	6350 4450 6350 4600
Connection ~ 6350 4450
Wire Wire Line
	6350 4450 6550 4450
Text Label 6350 4600 3    50   ~ 0
GND
$Comp
L Connector:Conn_01x02_Female J2
U 1 1 5BE15C49
P 7150 2750
F 0 "J2" V 7090 2562 50  0000 R CNN
F 1 "entrée alim 12V" V 6999 2562 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 7150 2750 50  0001 C CNN
F 3 "~" H 7150 2750 50  0001 C CNN
	1    7150 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7250 2950 7250 3050
$Comp
L power:GND #PWR01
U 1 1 5BE16091
P 7250 3050
F 0 "#PWR01" H 7250 2800 50  0001 C CNN
F 1 "GND" H 7255 2877 50  0000 C CNN
F 2 "" H 7250 3050 50  0001 C CNN
F 3 "" H 7250 3050 50  0001 C CNN
	1    7250 3050
	1    0    0    -1  
$EndComp
$Comp
L Capteur_Gaz_SB-rescue:LTC1050-LTC1050 U2
U 1 1 5BE16371
P 8100 3850
F 0 "U2" H 8791 3896 50  0000 L CNN
F 1 "LTC1050-LTC1050" H 8791 3805 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 7050 3600 50  0001 C CNN
F 3 "" H 7050 3600 50  0001 C CNN
	1    8100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3950 6300 3950
Connection ~ 6300 3950
Wire Wire Line
	6300 3950 6300 4150
Wire Wire Line
	8050 3600 8050 3200
Text Label 8050 3150 1    50   ~ 0
5V
$Comp
L Device:C C2
U 1 1 5BE16F59
P 8400 3200
F 0 "C2" V 8148 3200 50  0000 C CNN
F 1 "C" V 8239 3200 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 8438 3050 50  0001 C CNN
F 3 "~" H 8400 3200 50  0001 C CNN
	1    8400 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 3200 8050 3200
Connection ~ 8050 3200
Wire Wire Line
	8050 3200 8050 3150
Text Label 8550 3200 0    50   ~ 0
GND
Text Label 8050 4200 3    50   ~ 0
GND
Wire Wire Line
	8050 4200 8050 4100
$Comp
L Device:R R5
U 1 1 5BE18175
P 7700 4400
F 0 "R5" H 7770 4446 50  0000 L CNN
F 1 "Rcal" H 7770 4355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7630 4400 50  0001 C CNN
F 3 "~" H 7700 4400 50  0001 C CNN
	1    7700 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5BE181B9
P 7700 4850
F 0 "R6" H 7770 4896 50  0000 L CNN
F 1 "Rcal_bis" H 7770 4805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7630 4850 50  0001 C CNN
F 3 "~" H 7700 4850 50  0001 C CNN
	1    7700 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5BE181EF
P 9650 4000
F 0 "R7" H 9500 3950 50  0000 L CNN
F 1 "100k" H 9450 3850 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 9580 4000 50  0001 C CNN
F 3 "~" H 9650 4000 50  0001 C CNN
	1    9650 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5BE1822B
P 9950 4000
F 0 "C3" H 10065 4046 50  0000 L CNN
F 1 "1u" H 10065 3955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 9988 3850 50  0001 C CNN
F 3 "~" H 9950 4000 50  0001 C CNN
	1    9950 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5BE1861A
P 10300 3850
F 0 "R8" V 10093 3850 50  0000 C CNN
F 1 "1K" V 10184 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 10230 3850 50  0001 C CNN
F 3 "~" H 10300 3850 50  0001 C CNN
	1    10300 3850
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5BE18674
P 10550 4000
F 0 "C4" H 10665 4046 50  0000 L CNN
F 1 "100n" H 10665 3955 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 10588 3850 50  0001 C CNN
F 3 "~" H 10550 4000 50  0001 C CNN
	1    10550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3750 7700 3750
Wire Wire Line
	7700 3750 7700 4250
Wire Wire Line
	7700 4550 7700 4650
Wire Wire Line
	7700 5000 7700 5200
Wire Wire Line
	8750 3850 9650 3850
Wire Wire Line
	9950 3850 9650 3850
Connection ~ 9650 3850
Wire Wire Line
	10150 3850 9950 3850
Connection ~ 9950 3850
Wire Wire Line
	10450 3850 10550 3850
Wire Wire Line
	10550 3850 10750 3850
Connection ~ 10550 3850
Wire Wire Line
	9950 4150 9800 4150
Wire Wire Line
	9800 4150 9800 4650
Wire Wire Line
	9800 4650 7700 4650
Connection ~ 9800 4150
Wire Wire Line
	9800 4150 9650 4150
Connection ~ 7700 4650
Wire Wire Line
	7700 4650 7700 4700
Wire Wire Line
	10550 4150 10550 4350
Text Label 7700 5200 3    50   ~ 0
GND
Text Label 10550 4350 3    50   ~ 0
GND
Text Label 10750 3850 0    50   ~ 0
Out
Text Label 4150 3400 2    50   ~ 0
reset
Wire Wire Line
	4150 3400 4350 3400
Connection ~ 4350 3400
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5BE1E5EA
P 4700 2300
F 0 "#FLG0101" H 4700 2375 50  0001 C CNN
F 1 "PWR_FLAG" V 4700 2428 50  0000 L CNN
F 2 "" H 4700 2300 50  0001 C CNN
F 3 "~" H 4700 2300 50  0001 C CNN
	1    4700 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 2500 4650 2300
Wire Wire Line
	4650 2300 4700 2300
Connection ~ 4650 2500
Wire Wire Line
	4650 2500 4800 2500
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5BE1FCA9
P 5100 2600
F 0 "#FLG0102" H 5100 2675 50  0001 C CNN
F 1 "PWR_FLAG" V 5100 2728 50  0000 L CNN
F 2 "" H 5100 2600 50  0001 C CNN
F 3 "~" H 5100 2600 50  0001 C CNN
	1    5100 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 2600 5100 2600
Wire Wire Line
	5100 2600 5100 2550
Connection ~ 5100 2600
NoConn ~ 8250 4050
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5BE21FB8
P 7000 2950
F 0 "#FLG0103" H 7000 3025 50  0001 C CNN
F 1 "PWR_FLAG" H 7000 3124 50  0000 C CNN
F 2 "" H 7000 2950 50  0001 C CNN
F 3 "~" H 7000 2950 50  0001 C CNN
	1    7000 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2950 7150 3050
Wire Wire Line
	6600 3050 7000 3050
Wire Wire Line
	7000 2950 7000 3050
Connection ~ 7000 3050
Wire Wire Line
	7000 3050 7150 3050
$EndSCHEMATC
