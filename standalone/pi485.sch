EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:w_rtx
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:ir
LIBS:Lattice
LIBS:logo
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:motor_drivers
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:pi485-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Pi485"
Date "2017-02-21"
Rev "1.1.1"
Comp "Bryan Varner"
Comment1 ""
Comment2 "Size resistor values R1, R3, and R7 appropriately for your LED choices."
Comment3 "Implements half-duplex with TX latched RE/DE"
Comment4 "Raspberry Pi / Arduino UART to RS485"
$EndDescr
$Comp
L GND #PWR01
U 1 1 586E82C6
P 2150 3250
F 0 "#PWR01" H 2150 3000 50  0001 C CNN
F 1 "GND" H 2150 3100 50  0000 C CNN
F 2 "" H 2150 3250 50  0000 C CNN
F 3 "" H 2150 3250 50  0000 C CNN
	1    2150 3250
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 586E8329
P 2150 1700
F 0 "#FLG02" H 2150 1795 50  0001 C CNN
F 1 "PWR_FLAG" H 2150 1880 50  0000 C CNN
F 2 "" H 2150 1700 50  0000 C CNN
F 3 "" H 2150 1700 50  0000 C CNN
	1    2150 1700
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 586E8340
P 2150 3050
F 0 "#FLG03" H 2150 3145 50  0001 C CNN
F 1 "PWR_FLAG" H 2150 3230 50  0000 C CNN
F 2 "" H 2150 3050 50  0000 C CNN
F 3 "" H 2150 3050 50  0000 C CNN
	1    2150 3050
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR04
U 1 1 586E83C6
P 2150 1500
F 0 "#PWR04" H 2150 1350 50  0001 C CNN
F 1 "VCC" H 2150 1650 50  0000 C CNN
F 2 "" H 2150 1500 50  0000 C CNN
F 3 "" H 2150 1500 50  0000 C CNN
	1    2150 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 586E84AD
P 5500 6950
F 0 "#PWR05" H 5500 6700 50  0001 C CNN
F 1 "GND" H 5500 6800 50  0000 C CNN
F 2 "" H 5500 6950 50  0000 C CNN
F 3 "" H 5500 6950 50  0000 C CNN
	1    5500 6950
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 586E84C4
P 7400 4900
F 0 "R1" H 7480 4900 50  0000 C CNN
F 1 "200" V 7400 4900 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" V 7550 4200 50  0001 C CNN
F 3 "" H 7400 4900 50  0000 C CNN
	1    7400 4900
	-1   0    0    1   
$EndComp
$Comp
L LED D1
U 1 1 586E8531
P 7400 5200
F 0 "D1" H 7400 5300 50  0000 C CNN
F 1 "PWR" V 7400 5050 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 7350 5000 50  0001 C CNN
F 3 "" H 7400 5200 50  0000 C CNN
	1    7400 5200
	0    -1   -1   0   
$EndComp
$Comp
L NE555 U1
U 1 1 586E87EA
P 5500 5850
F 0 "U1" H 5100 6200 50  0000 L CNN
F 1 "NE555" H 5100 5500 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 6350 5500 50  0001 C CNN
F 3 "" H 5500 5850 50  0000 C CNN
	1    5500 5850
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 586E88D3
P 6400 5000
F 0 "R2" V 6480 5000 50  0000 C CNN
F 1 "3.9k" V 6400 5000 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" H 5500 5000 50  0001 C CNN
F 3 "" H 6400 5000 50  0000 C CNN
	1    6400 5000
	-1   0    0    1   
$EndComp
$Comp
L C C3
U 1 1 586E89BC
P 6150 6450
F 0 "C3" V 6250 6600 50  0000 C CNN
F 1 "10nF" V 6250 6300 50  0000 C CNN
F 2 "Capacitors_THT:C_Rect_L7_W2.5_P5" V 6350 6150 50  0001 C CNN
F 3 "" H 6150 6450 50  0000 C CNN
	1    6150 6450
	0    1    1    0   
$EndComp
$Comp
L MAX485 U2
U 1 1 586EA024
P 7100 2750
F 0 "U2" H 6700 3250 60  0000 C CNN
F 1 "MAX485" H 6750 3150 60  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 6650 3350 60  0001 C CNN
F 3 "" H 7100 2750 60  0000 C CNN
	1    7100 2750
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 586EB6FC
P 8000 2000
F 0 "R5" V 8080 2000 50  0000 C CNN
F 1 "120" V 8000 2000 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" H 8850 2200 50  0001 C CNN
F 3 "" H 8000 2000 50  0000 C CNN
	1    8000 2000
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 586EB760
P 8200 2250
F 0 "R4" V 8280 2250 50  0000 C CNN
F 1 "20k" V 8200 2250 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" H 9050 2500 50  0001 C CNN
F 3 "" H 8200 2250 50  0000 C CNN
	1    8200 2250
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 586EB7D4
P 8200 3050
F 0 "R6" V 8280 3050 50  0000 C CNN
F 1 "20k" V 8200 3050 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" H 9050 3200 50  0001 C CNN
F 3 "" H 8200 3050 50  0000 C CNN
	1    8200 3050
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x02 J1
U 1 1 586EB814
P 9200 2600
F 0 "J1" H 9200 2850 50  0000 C TNN
F 1 "RS485" V 9050 2600 50  0000 C TNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MPT-2.54mm_2pol" H 9200 2375 50  0001 C CNN
F 3 "" H 9175 2600 50  0001 C CNN
	1    9200 2600
	-1   0    0    1   
$EndComp
Text Label 2800 2150 3    60   ~ 0
(RXDO)_GPIO15
Text Label 2700 2150 3    60   ~ 0
(TXDO)_GPIO14
$Comp
L CONN_02X03 P3
U 1 1 586EFE3A
P 8100 2650
F 0 "P3" H 8100 2800 50  0000 C CNN
F 1 "TERM / BIAS" V 8100 2650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 8750 2900 50  0001 C CNN
F 3 "" H 8100 2650 50  0000 C CNN
	1    8100 2650
	0    1    -1   0   
$EndComp
Text Label 2500 2150 3    60   ~ 0
+5VDC
Text Label 2600 2150 3    60   ~ 0
GND
Text Label 2500 2950 3    60   ~ 0
+5VDC
Text Label 2600 3050 3    60   ~ 0
GND
$Comp
L VCC #PWR06
U 1 1 586F01EA
P 8400 3200
F 0 "#PWR06" H 8400 3050 50  0001 C CNN
F 1 "VCC" H 8400 3350 50  0000 C CNN
F 2 "" H 8400 3200 50  0000 C CNN
F 3 "" H 8400 3200 50  0000 C CNN
	1    8400 3200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P1
U 1 1 586FF005
P 2700 1950
F 0 "P1" V 2710 1712 50  0000 R CNN
F 1 "Rasperry Pi" V 2619 1712 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" V 2528 1712 50  0001 R CNN
F 3 "" H 2700 1950 50  0000 C CNN
	1    2700 1950
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 586FF21D
P 2550 3400
F 0 "P2" V 2377 3262 50  0000 R CNN
F 1 "PWR" V 2468 3262 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" V 2559 3262 50  0001 R CNN
F 3 "" H 2550 3400 50  0000 C CNN
	1    2550 3400
	0    -1   1    0   
$EndComp
$Comp
L Q_NPN_EBC Q1
U 1 1 5876C3F8
P 3100 5200
F 0 "Q1" V 3350 5200 50  0000 C CNN
F 1 "2N3904" V 3450 5100 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" V 3518 5200 50  0001 C CIN
F 3 "" H 3100 5200 50  0000 L CNN
	1    3100 5200
	0    -1   1    0   
$EndComp
$Comp
L Q_NPN_EBC Q2
U 1 1 5876C45D
P 4000 5400
F 0 "Q2" V 4236 5400 50  0000 C CNN
F 1 "2N3904" V 4350 5300 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" V 4418 5400 50  0001 C CIN
F 3 "" H 4000 5400 50  0000 L CNN
	1    4000 5400
	0    -1   1    0   
$EndComp
$Comp
L LED D2
U 1 1 5876C851
P 2850 6000
F 0 "D2" H 2850 6100 50  0000 C CNN
F 1 "TX" V 2850 5900 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 2800 5800 50  0001 C CNN
F 3 "" H 2850 6000 50  0000 C CNN
	1    2850 6000
	0    -1   -1   0   
$EndComp
$Comp
L LED D3
U 1 1 5876C8B2
P 3750 6000
F 0 "D3" H 3750 6100 50  0000 C CNN
F 1 "RX" V 3750 5900 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 3700 5800 50  0001 C CNN
F 3 "" H 3750 6000 50  0000 C CNN
	1    3750 6000
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 5876D49A
P 2650 5500
F 0 "R7" V 2730 5500 50  0000 C CNN
F 1 "200" V 2650 5500 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 2800 4800 50  0001 C CNN
F 3 "" H 2650 5500 50  0000 C CNN
	1    2650 5500
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5876D8BD
P 2650 5300
F 0 "R3" V 2730 5300 50  0000 C CNN
F 1 "200" V 2650 5300 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 2800 4600 50  0001 C CNN
F 3 "" H 2650 5300 50  0000 C CNN
	1    2650 5300
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5876E6B9
P 3100 4850
F 0 "R8" V 3180 4850 50  0000 C CNN
F 1 "270" V 3100 4850 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 3250 4150 50  0001 C CNN
F 3 "" H 3100 4850 50  0000 C CNN
	1    3100 4850
	-1   0    0    1   
$EndComp
$Comp
L R R9
U 1 1 5876E786
P 4000 4850
F 0 "R9" V 4080 4850 50  0000 C CNN
F 1 "270" V 4000 4850 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 4150 4150 50  0001 C CNN
F 3 "" H 4000 4850 50  0000 C CNN
	1    4000 4850
	-1   0    0    1   
$EndComp
$Comp
L C C2
U 1 1 5876F3DF
P 8250 5050
F 0 "C2" V 8350 5200 50  0000 C CNN
F 1 "0.1uF" V 8350 4900 50  0000 C CNN
F 2 "Capacitors_THT:C_Rect_L7_W2.5_P5" V 8450 4750 50  0001 C CNN
F 3 "" H 8250 5050 50  0000 C CNN
	1    8250 5050
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 5876F5F2
P 7800 5050
F 0 "C1" V 7900 5200 50  0000 C CNN
F 1 "10uF" V 7900 4900 50  0000 C CNN
F 2 "Capacitors_THT:C_Radial_D5_L11_P2" V 8000 4750 50  0001 C CNN
F 3 "" H 7800 5050 50  0000 C CNN
	1    7800 5050
	-1   0    0    1   
$EndComp
$Comp
L D D4
U 1 1 5879650D
P 5850 5400
F 0 "D4" H 5850 5665 50  0000 C CNN
F 1 "BAT43" H 5850 5574 50  0000 C CNN
F 2 "Diodes_THT:Diode_DO-35_SOD27_Horizontal_RM10" H 5850 5573 50  0001 C CNN
F 3 "" H 5850 5400 50  0000 C CNN
	1    5850 5400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P4
U 1 1 587D51D9
P 4650 6500
F 0 "P4" H 4650 6650 50  0000 C CNN
F 1 "RO" V 4750 6500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 5300 6750 50  0001 C CNN
F 3 "" H 4650 6500 50  0000 C CNN
	1    4650 6500
	-1   0    0    1   
$EndComp
$Comp
L Q_NPN_EBC Q3
U 1 1 587FCF77
P 4200 3800
F 0 "Q3" H 4250 3600 50  0000 C CNN
F 1 "2N3904" H 4350 3500 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" V 4618 3800 50  0001 C CIN
F 3 "" H 4200 3800 50  0000 L CNN
	1    4200 3800
	1    0    0    -1  
$EndComp
Text Label 2900 2150 3    60   ~ 0
(485PWR)_GPIO18
$Comp
L GND #PWR07
U 1 1 586F0172
P 8450 2100
F 0 "#PWR07" H 8450 1850 50  0001 C CNN
F 1 "GND" H 8450 1950 50  0000 C CNN
F 2 "" H 8450 2100 50  0000 C CNN
F 3 "" H 8450 2100 50  0000 C CNN
	1    8450 2100
	1    0    0    -1  
$EndComp
Connection ~ 2150 1700
Wire Wire Line
	2600 2150 2600 3200
Wire Wire Line
	2600 2900 2150 2900
Wire Wire Line
	5500 4550 5500 5450
Wire Wire Line
	6400 5150 6400 6450
Wire Wire Line
	6400 5850 6000 5850
Wire Wire Line
	6400 6050 6000 6050
Connection ~ 6400 5850
Wire Wire Line
	5150 6450 6000 6450
Connection ~ 5500 6450
Wire Wire Line
	5000 6050 4700 6050
Wire Wire Line
	4700 6050 4700 4550
Wire Wire Line
	2150 2800 5150 2800
Wire Wire Line
	2500 2150 2500 3200
Wire Wire Line
	2150 1500 2150 2800
Wire Wire Line
	2150 2900 2150 3250
Connection ~ 2150 3050
Wire Wire Line
	2700 2150 2700 3100
Wire Wire Line
	4850 3100 4850 5650
Connection ~ 6400 5400
Wire Wire Line
	2800 3000 2800 2150
Wire Wire Line
	2700 3100 6550 3100
Wire Wire Line
	4850 5650 5000 5650
Connection ~ 4850 3100
Connection ~ 4850 5400
Wire Wire Line
	6700 2600 6650 2600
Wire Wire Line
	6650 2600 6650 5650
Wire Wire Line
	6650 2900 6700 2900
Wire Wire Line
	6650 5650 6000 5650
Connection ~ 6650 2900
Connection ~ 8000 1850
Connection ~ 8000 3500
Wire Wire Line
	8100 1850 8100 2400
Wire Wire Line
	8000 2900 8000 3500
Wire Wire Line
	2800 3000 6450 3000
Wire Wire Line
	6450 3000 6450 2500
Wire Wire Line
	6450 2500 6700 2500
Wire Wire Line
	6550 3100 6550 3000
Wire Wire Line
	6550 3000 6700 3000
Wire Wire Line
	8200 3200 8400 3200
Wire Wire Line
	8450 2100 8200 2100
Wire Wire Line
	7100 3200 7100 5950
Wire Wire Line
	7500 2650 7500 1850
Wire Wire Line
	7500 1850 9000 1850
Wire Wire Line
	9000 1850 9000 2500
Wire Wire Line
	7500 2850 7500 3500
Wire Wire Line
	7500 3500 9000 3500
Wire Wire Line
	9000 3500 9000 2700
Connection ~ 2500 2800
Connection ~ 2600 2900
Wire Wire Line
	6400 4550 6400 4850
Wire Wire Line
	5700 5400 4850 5400
Wire Wire Line
	2850 5300 2850 5850
Wire Wire Line
	2850 6150 2850 6400
Wire Wire Line
	2800 5300 2900 5300
Wire Wire Line
	2250 4550 2250 5500
Wire Wire Line
	2250 5500 2500 5500
Wire Wire Line
	2800 5500 3800 5500
Wire Wire Line
	3300 5300 3300 6400
Connection ~ 3300 6400
Wire Wire Line
	3750 6400 3750 6150
Wire Wire Line
	3750 5500 3750 5850
Connection ~ 3750 6400
Wire Wire Line
	3100 4700 3100 3100
Connection ~ 3100 3100
Wire Wire Line
	4000 5200 4000 5000
Wire Wire Line
	4000 4700 4000 3000
Connection ~ 4000 3000
Wire Wire Line
	6000 5400 6400 5400
Connection ~ 6400 6050
Wire Wire Line
	4850 5850 5000 5850
Wire Wire Line
	7400 4550 7400 4750
Wire Wire Line
	8250 5550 8250 5200
Wire Wire Line
	8250 4550 8250 4900
Wire Wire Line
	7800 4550 7800 4900
Connection ~ 7800 4550
Connection ~ 7800 5550
Connection ~ 5500 4550
Wire Wire Line
	6400 6450 6300 6450
Wire Wire Line
	4300 6750 6650 6750
Connection ~ 5500 6750
Wire Wire Line
	5500 6250 5500 6950
Wire Wire Line
	7100 2300 7100 2100
Wire Wire Line
	7100 2100 6200 2100
Wire Wire Line
	6200 2100 6200 4550
Wire Wire Line
	7100 5550 8250 5550
Connection ~ 6200 4550
Connection ~ 7400 4550
Wire Wire Line
	7400 5550 7400 5350
Wire Wire Line
	2900 3800 2900 2150
Wire Wire Line
	2250 4550 8250 4550
$Comp
L R R10
U 1 1 587FCED5
P 3850 3800
F 0 "R10" V 3750 3800 50  0000 C CNN
F 1 "270" V 3850 3800 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 4000 3100 50  0001 C CNN
F 3 "" H 3850 3800 50  0000 C CNN
	1    3850 3800
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 58A0C001
P 4600 3500
F 0 "R11" V 4500 3500 50  0000 C CNN
F 1 "270" V 4600 3500 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 4750 2800 50  0001 C CNN
F 3 "" H 4600 3500 50  0000 C CNN
	1    4600 3500
	0    1    1    0   
$EndComp
$Comp
L Q_PNP_EBC Q4
U 1 1 58A0C163
P 5050 3500
F 0 "Q4" H 5241 3454 50  0000 L CNN
F 1 "2N3906" H 5241 3545 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 5250 3600 50  0001 C CNN
F 3 "" H 5050 3500 50  0000 C CNN
	1    5050 3500
	1    0    0    1   
$EndComp
Wire Wire Line
	2900 3800 3700 3800
Wire Wire Line
	4300 3600 4300 3500
Wire Wire Line
	4300 3500 4450 3500
Wire Wire Line
	4750 3500 4850 3500
Wire Wire Line
	4300 4000 4300 6750
Wire Wire Line
	5150 3700 5150 4550
Connection ~ 5150 4550
Wire Wire Line
	2500 5300 2250 5300
Connection ~ 2250 5300
Connection ~ 2850 5300
Connection ~ 3750 5500
Wire Wire Line
	4200 5500 4300 5500
Connection ~ 4300 5500
Connection ~ 4300 6400
Wire Wire Line
	2850 6400 4300 6400
Wire Wire Line
	6650 6750 6650 5950
Wire Wire Line
	5150 2800 5150 3300
Connection ~ 6400 4550
Connection ~ 4700 4550
Connection ~ 7100 5550
Connection ~ 7400 5550
Wire Wire Line
	6650 5950 7100 5950
Wire Wire Line
	7800 5200 7800 5550
$Comp
L C C4
U 1 1 58AB7251
P 5000 6450
F 0 "C4" V 5100 6600 50  0000 C CNN
F 1 "10nF" V 5100 6300 50  0000 C CNN
F 2 "Capacitors_THT:C_Rect_L4_W2.5_P2.5" V 5200 6150 50  0001 C CNN
F 3 "" H 5000 6450 50  0000 C CNN
	1    5000 6450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 5850 4850 6450
Wire Wire Line
	4850 6550 4850 6750
Connection ~ 4850 6750
$Comp
L R R12
U 1 1 58AB7CF0
P 6650 5800
F 0 "R12" V 6730 5800 50  0000 C CNN
F 1 "10k" V 6650 5800 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" H 5750 5800 50  0001 C CNN
F 3 "" H 6650 5800 50  0000 C CNN
	1    6650 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 2400 8000 2150
Wire Wire Line
	8100 2900 8100 3500
Connection ~ 8100 3500
Connection ~ 8100 1850
$EndSCHEMATC
