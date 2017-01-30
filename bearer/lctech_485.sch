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
LIBS:pi485carrier-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "Pi485"
Date "2017-01-18"
Rev "1.1.0"
Comp "Bryan Varner"
Comment1 ""
Comment2 "Size resistor values R1, R3, and R7 appropriately for your LED choices."
Comment3 "Implements half-duplex with TX latched RE/DE"
Comment4 "Raspberry Pi / Arduino UART to RS485"
$EndDescr
Text HLabel 2700 1100 2    60   Input ~ 0
VCIN
Text HLabel 1200 1150 0    60   Output ~ 0
RO
Text HLabel 1200 1250 0    60   Input ~ 0
RE
Text HLabel 1200 1350 0    60   Input ~ 0
DE
Text HLabel 1200 1450 0    60   Input ~ 0
DI
Text HLabel 2700 1400 2    60   Input ~ 0
GND
Text HLabel 2700 1300 2    60   BiDi ~ 0
A
Text HLabel 2700 1200 2    60   BiDi ~ 0
B
$Comp
L GND #PWR09
U 1 1 588218CD
P 2600 1400
F 0 "#PWR09" H 2600 1150 50  0001 C CNN
F 1 "GND" H 2605 1227 50  0000 C CNN
F 2 "" H 2600 1400 50  0000 C CNN
F 3 "" H 2600 1400 50  0000 C CNN
	1    2600 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1300 2600 1300
Wire Wire Line
	2600 1200 2700 1200
Wire Wire Line
	2700 1100 2600 1100
Wire Wire Line
	1200 1150 1300 1150
Wire Wire Line
	1200 1250 1300 1250
Wire Wire Line
	1200 1350 1300 1350
Wire Wire Line
	1200 1450 1300 1450
$Comp
L CONN_01X04 P5
U 1 1 5881780E
P 1500 1300
F 0 "P5" H 1578 1341 50  0000 L CNN
F 1 "CONN_01X04" H 1578 1250 50  0000 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04" H 1500 1300 50  0000 C CNN
F 3 "" H 1500 1300 50  0000 C CNN
	1    1500 1300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P6
U 1 1 5881786B
P 2400 1250
F 0 "P6" H 2319 875 50  0000 C CNN
F 1 "CONN_01X04" H 2319 966 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04" H 2400 1250 50  0000 C CNN
F 3 "" H 2400 1250 50  0000 C CNN
	1    2400 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 1400 2600 1400
$EndSCHEMATC
