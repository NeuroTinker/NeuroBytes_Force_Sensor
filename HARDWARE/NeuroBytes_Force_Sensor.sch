EESchema Schematic File Version 2
LIBS:NeuroBytes_Force_Sensor-rescue
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
LIBS:NeuroTinker_schematic_symbols
LIBS:NeuroBytes_Force_Sensor-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 1
Title "NeuroBytes Force Sensor"
Date "2018-02-12"
Rev "D"
Comp "NeuroTinker, LLC"
Comment1 "(C) 2018 Zach Fredin"
Comment2 "License: CC-BY-SA 4.0"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR01
U 1 1 58B4A894
P 6200 3850
F 0 "#PWR01" H 6200 3600 50  0001 C CNN
F 1 "GND" H 6200 3700 50  0000 C CNN
F 2 "" H 6200 3850 50  0000 C CNN
F 3 "" H 6200 3850 50  0000 C CNN
	1    6200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3150 6200 3150
Wire Wire Line
	5200 3300 6200 3300
$Comp
L GND #PWR02
U 1 1 58B4A9A5
P 1750 5850
F 0 "#PWR02" H 1750 5600 50  0001 C CNN
F 1 "GND" H 1750 5700 50  0000 C CNN
F 2 "" H 1750 5850 50  0000 C CNN
F 3 "" H 1750 5850 50  0000 C CNN
	1    1750 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5050 1750 5300
Wire Wire Line
	1750 5600 1750 5850
Text GLabel 1650 1950 0    60   Input ~ 0
RESET
Wire Wire Line
	1650 1950 2800 1950
Text GLabel 5400 2400 2    60   Input ~ 0
SWCLK
Wire Wire Line
	6200 3150 6200 1050
Wire Wire Line
	5400 2400 5200 2400
Text GLabel 5400 2550 2    60   Input ~ 0
SWDIO
Wire Wire Line
	5400 2550 5200 2550
Text GLabel 2600 2550 0    60   Input ~ 0
LED_B
Text GLabel 2600 2250 0    60   Input ~ 0
LED_G
Text GLabel 2600 2400 0    60   Input ~ 0
LED_R
Text GLabel 5400 3450 2    60   Input ~ 0
D1EX
Wire Wire Line
	6200 3300 6200 3850
Wire Wire Line
	5200 3450 5400 3450
Text GLabel 2600 2850 0    60   Input ~ 0
A1IN
Text GLabel 2600 3000 0    60   Input ~ 0
A1EX
$Comp
L LED_RABG D1
U 1 1 58B4B5D1
P 11100 3150
F 0 "D1" H 11100 3520 50  0000 C CNN
F 1 "LED_RABG" H 11100 2800 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_LED_RGB_SunLED_XZMDKCBDDG45S-9_cast" H 11400 3600 50  0000 C CNN
F 3 "" H 11100 3100 50  0000 C CNN
F 4 "SunLED" H 11100 3150 60  0001 C CNN "Mfr"
F 5 "XZMDKCBDDG45S-9" H 11100 3150 60  0001 C CNN "Mfr Part #"
F 6 "SMT" H 11100 3150 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/sunled/XZMDKCBDDG45S-9/1497-1257-2-ND/4902045" H 11100 3150 60  0001 C CNN "Link"
F 8 "No" H 11100 3150 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 11100 3150 60  0001 C CNN "RoHS"
	1    11100 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	11800 2200 11800 3150
Wire Wire Line
	11800 3150 11300 3150
Wire Wire Line
	10700 2950 10900 2950
Wire Wire Line
	10700 3150 10900 3150
Wire Wire Line
	10700 3350 10900 3350
Text GLabel 8300 3450 0    60   Input ~ 0
LED_B
Text GLabel 8300 2750 0    60   Input ~ 0
LED_G
Text GLabel 8300 2050 0    60   Input ~ 0
LED_R
$Comp
L +5V #PWR03
U 1 1 58B59B55
P 11800 2200
F 0 "#PWR03" H 11800 2050 50  0001 C CNN
F 1 "+5V" H 11800 2340 50  0000 C CNN
F 2 "" H 11800 2200 50  0000 C CNN
F 3 "" H 11800 2200 50  0000 C CNN
	1    11800 2200
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 P6
U 1 1 58B5B32F
P 14400 1850
F 0 "P6" H 14400 2100 50  0000 C CNN
F 1 "CONN_01X04" V 14500 1850 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_CONN_JST_GH" H 14400 2200 50  0000 C CNN
F 3 "" H 14400 1850 50  0000 C CNN
F 4 "JST" H 14400 1850 60  0001 C CNN "Mfr"
F 5 "SM04B-GHS-TB(LF)(SN)" H 14400 1850 60  0001 C CNN "Mfr Part #"
F 6 "SMT" H 14400 1850 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/SM04B-GHS-TB-LF-SN/455-1566-2-ND/807788" H 14400 1850 60  0001 C CNN "Link"
F 8 "No" H 14400 1850 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 14400 1850 60  0001 C CNN "RoHS"
	1    14400 1850
	1    0    0    -1  
$EndComp
Text GLabel 13100 2050 0    60   Input ~ 0
A1EX
Text GLabel 13100 1850 0    60   Input ~ 0
A1IN
Wire Wire Line
	13100 2050 14200 2050
Wire Wire Line
	13600 1950 14200 1950
Wire Wire Line
	13100 1850 13600 1850
Wire Wire Line
	13600 2500 14200 2500
Wire Wire Line
	13800 2400 14200 2400
Wire Wire Line
	13800 1400 13800 2400
Wire Wire Line
	13800 1850 14200 1850
Wire Wire Line
	14200 2300 14000 2300
Wire Wire Line
	14000 1750 14000 2900
Wire Wire Line
	14000 1750 14200 1750
Wire Wire Line
	13100 2600 14200 2600
$Comp
L STM32L011Gx U1
U 1 1 58B5C156
P 4000 2400
F 0 "U1" H 4000 1975 60  0000 C CNN
F 1 "STM32L011Gx" H 4000 2850 60  0000 C CNN
F 2 "KiCad_Footprints:ZF_IC_UFQFPN28-050" H 4000 1150 60  0000 C CNN
F 3 "" H 4000 2400 60  0001 C CNN
F 4 "ST Microelectronics" H 4000 2400 60  0001 C CNN "Mfr"
F 5 "STM32L011G4U6" H 4000 2400 60  0001 C CNN "Mfr Part #"
F 6 "28-UFQFN" H 4000 2400 60  0001 C CNN "Package"
F 7 "http://www.mouser.com/ProductDetail/STMicroelectronics/STM32L011G4U6/?qs=sGAEpiMZZMuoKKEcg8mMKFZaGHZhaFFC%252b5Ex1OjcSxhBnExI6VEL3Q%3d%3d" H 4000 2400 60  0001 C CNN "Link"
F 8 "No" H 4000 2400 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 4000 2400 60  0001 C CNN "RoHS"
	1    4000 2400
	1    0    0    -1  
$EndComp
$Comp
L TLV71333PDBV U2
U 1 1 58B5C9D0
P 13650 6000
F 0 "U2" H 13400 6200 50  0000 C CNN
F 1 "3v3 LDO" H 13850 6200 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SOT23-5L" H 13650 6300 50  0000 C CNN
F 3 "" H 13650 6000 50  0000 C CNN
F 4 "ON Semiconductor" H 13650 6000 60  0001 C CNN "Mfr"
F 5 "NCP114BSN330T1G" H 13650 6000 60  0001 C CNN "Mfr Part #"
F 6 "SOT-23-5" H 13650 6000 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/on-semiconductor/NCP114BSN330T1G/NCP114BSN330T1GOSTR-ND/6560606" H 13650 6000 60  0001 C CNN "Link"
F 8 "Yes" H 13650 6000 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 13650 6000 60  0001 C CNN "RoHS"
	1    13650 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 5900 12800 6050
Wire Wire Line
	12800 6350 12800 6550
Wire Wire Line
	12800 6550 13650 6550
Wire Wire Line
	13650 6300 13650 7000
$Comp
L +5V #PWR04
U 1 1 58B5CCCF
P 12500 5750
F 0 "#PWR04" H 12500 5600 50  0001 C CNN
F 1 "+5V" H 12500 5890 50  0000 C CNN
F 2 "" H 12500 5750 50  0000 C CNN
F 3 "" H 12500 5750 50  0000 C CNN
	1    12500 5750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 58B5CECC
P 13800 1400
F 0 "#PWR05" H 13800 1250 50  0001 C CNN
F 1 "+5V" H 13800 1540 50  0000 C CNN
F 2 "" H 13800 1400 50  0000 C CNN
F 3 "" H 13800 1400 50  0000 C CNN
	1    13800 1400
	1    0    0    -1  
$EndComp
Connection ~ 13800 1850
$Comp
L GND #PWR06
U 1 1 58B5CF99
P 14000 2900
F 0 "#PWR06" H 14000 2650 50  0001 C CNN
F 1 "GND" H 14000 2750 50  0000 C CNN
F 2 "" H 14000 2900 50  0000 C CNN
F 3 "" H 14000 2900 50  0000 C CNN
	1    14000 2900
	1    0    0    -1  
$EndComp
Connection ~ 14000 2300
$Comp
L GND #PWR07
U 1 1 58B5D12A
P 13650 7000
F 0 "#PWR07" H 13650 6750 50  0001 C CNN
F 1 "GND" H 13650 6850 50  0000 C CNN
F 2 "" H 13650 7000 50  0000 C CNN
F 3 "" H 13650 7000 50  0000 C CNN
	1    13650 7000
	1    0    0    -1  
$EndComp
Connection ~ 13650 6550
$Comp
L C C4
U 1 1 58B5D1F9
P 14450 6200
F 0 "C4" H 14475 6300 50  0000 L CNN
F 1 "1u" H 14475 6100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 14488 6050 50  0001 C CNN
F 3 "" H 14450 6200 50  0000 C CNN
F 4 "Taiyo Yuden" H 14450 6200 60  0001 C CNN "Mfr"
F 5 "LMK107B7105KA-T" H 14450 6200 60  0001 C CNN "Mfr Part #"
F 6 "C0603" H 14450 6200 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/taiyo-yuden/LMK107B7105KA-T/587-1242-2-ND/930594" H 14450 6200 60  0001 C CNN "Link"
F 8 "Yes" H 14450 6200 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 14450 6200 60  0001 C CNN "RoHS"
	1    14450 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 5900 14450 6050
Wire Wire Line
	14450 6350 14450 6450
Wire Wire Line
	14450 6450 13650 6450
Connection ~ 13650 6450
$Comp
L +3.3V #PWR08
U 1 1 58B5D373
P 14700 5750
F 0 "#PWR08" H 14700 5600 50  0001 C CNN
F 1 "+3.3V" H 14700 5890 50  0000 C CNN
F 2 "" H 14700 5750 50  0000 C CNN
F 3 "" H 14700 5750 50  0000 C CNN
	1    14700 5750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 58B5D4CD
P 1750 5050
F 0 "#PWR09" H 1750 4900 50  0001 C CNN
F 1 "+3.3V" H 1750 5190 50  0000 C CNN
F 2 "" H 1750 5050 50  0000 C CNN
F 3 "" H 1750 5050 50  0000 C CNN
	1    1750 5050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR010
U 1 1 58B5D568
P 2000 1000
F 0 "#PWR010" H 2000 850 50  0001 C CNN
F 1 "+3.3V" H 2000 1140 50  0000 C CNN
F 2 "" H 2000 1000 50  0000 C CNN
F 3 "" H 2000 1000 50  0000 C CNN
	1    2000 1000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR011
U 1 1 58B5D5B2
P 6200 1050
F 0 "#PWR011" H 6200 900 50  0001 C CNN
F 1 "+3.3V" H 6200 1190 50  0000 C CNN
F 2 "" H 6200 1050 50  0000 C CNN
F 3 "" H 6200 1050 50  0000 C CNN
	1    6200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5700 1450 5700
Wire Wire Line
	1450 5700 1450 5600
Connection ~ 1750 5700
Wire Wire Line
	1450 5300 1450 5200
Wire Wire Line
	1450 5200 1750 5200
Connection ~ 1750 5200
$Comp
L GND #PWR012
U 1 1 58B5E0E3
P 10100 6700
F 0 "#PWR012" H 10100 6450 50  0001 C CNN
F 1 "GND" H 10100 6550 50  0000 C CNN
F 2 "" H 10100 6700 50  0000 C CNN
F 3 "" H 10100 6700 50  0000 C CNN
	1    10100 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 6700 10100 5650
Wire Wire Line
	10100 5650 10350 5650
$Comp
L +5V #PWR013
U 1 1 58B5E2AE
P 9900 5150
F 0 "#PWR013" H 9900 5000 50  0001 C CNN
F 1 "+5V" H 9900 5290 50  0000 C CNN
F 2 "" H 9900 5150 50  0000 C CNN
F 3 "" H 9900 5150 50  0000 C CNN
	1    9900 5150
	1    0    0    -1  
$EndComp
Text GLabel 9300 5750 0    60   Input ~ 0
RESET
Wire Wire Line
	9300 5750 10350 5750
Text GLabel 9300 6150 0    60   Input ~ 0
SWCLK
Text GLabel 9300 5950 0    60   Input ~ 0
SWDIO
Wire Wire Line
	9300 6150 9500 6150
Wire Wire Line
	9500 6150 9500 5950
Wire Wire Line
	9500 5950 10350 5950
Wire Wire Line
	9300 5950 9400 5950
Wire Wire Line
	9400 5950 9400 5850
Wire Wire Line
	9400 5850 10350 5850
$Comp
L SW_PUSH SW1
U 1 1 58B5A249
P 4200 5400
F 0 "SW1" H 4350 5510 50  0000 C CNN
F 1 "SW_PUSH" H 4200 5320 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SW_Momentary_SideMtg" H 4500 5250 50  0000 C CNN
F 3 "" H 4200 5400 50  0000 C CNN
F 4 "E-Switch" H 4200 5400 60  0001 C CNN "Mfr"
F 5 "TL3330AF130QG" H 4200 5400 60  0001 C CNN "Mfr Part #"
F 6 "SMT" H 4200 5400 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/e-switch/TL3330AF130QG/EG4388TR-ND/1426835" H 4200 5400 60  0001 C CNN "Link"
F 8 "No" H 4200 5400 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 4200 5400 60  0001 C CNN "RoHS"
	1    4200 5400
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 58B5C233
P 10550 2950
F 0 "R1" V 10630 2950 50  0000 C CNN
F 1 "150" V 10550 2950 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 10750 2350 50  0001 C CNN
F 3 "" H 10550 2950 50  0000 C CNN
F 4 "Yageo" H 10550 2950 60  0001 C CNN "Mfr"
F 5 "RC0402FR-07150RL" H 10550 2950 60  0001 C CNN "Mfr Part #"
F 6 "R0402" H 10550 2950 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC0402FR-07150RL/311-150LRCT-ND/729490" H 10550 2950 60  0001 C CNN "Link"
F 8 "Yes" H 10550 2950 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 10550 2950 60  0001 C CNN "RoHS"
	1    10550 2950
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 58B5C2BE
P 10550 3150
F 0 "R2" V 10630 3150 50  0000 C CNN
F 1 "100" V 10550 3150 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 10750 2550 50  0001 C CNN
F 3 "" H 10550 3150 50  0000 C CNN
F 4 "Yageo" H 10550 3150 60  0001 C CNN "Mfr"
F 5 "RC0402FR-07100RL" H 10550 3150 60  0001 C CNN "Mfr Part #"
F 6 "R0402" H 10550 3150 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC0402FR-07100RL/311-100LRTR-ND/726527" H 10550 3150 60  0001 C CNN "Link"
F 8 "Yes" H 10550 3150 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 10550 3150 60  0001 C CNN "RoHS"
	1    10550 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 1000 2000 2100
Wire Wire Line
	2000 2100 2800 2100
Wire Wire Line
	3650 5400 3900 5400
Text GLabel 4700 5400 2    60   Input ~ 0
IDENTIFY
Wire Wire Line
	4700 5400 4500 5400
Text GLabel 5550 4600 2    60   Input ~ 0
IDENTIFY
$Comp
L GND #PWR014
U 1 1 58B73CAC
P 1800 2650
F 0 "#PWR014" H 1800 2400 50  0001 C CNN
F 1 "GND" H 1800 2500 50  0000 C CNN
F 2 "" H 1800 2650 50  0000 C CNN
F 3 "" H 1800 2650 50  0000 C CNN
	1    1800 2650
	1    0    0    -1  
$EndComp
Connection ~ 1800 1950
$Comp
L C C5
U 1 1 58B73F8A
P 1800 2300
F 0 "C5" H 1825 2400 50  0000 L CNN
F 1 "0u1" H 1825 2200 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402_cap" H 1838 2150 50  0001 C CNN
F 3 "" H 1800 2300 50  0000 C CNN
F 4 "Taiyo Yuden" H 1800 2300 60  0001 C CNN "Mfr"
F 5 "LMK105BJ104KV-F" H 1800 2300 60  0001 C CNN "Mfr Part #"
F 6 "C0402" H 1800 2300 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/taiyo-yuden/LMK105BJ104KV-F/587-1227-2-ND/930579" H 1800 2300 60  0001 C CNN "Link"
F 8 "Yes" H 1800 2300 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 1800 2300 60  0001 C CNN "RoHS"
	1    1800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2650 1800 2450
Wire Wire Line
	1800 2150 1800 1950
Text GLabel 2500 4200 0    60   Input ~ 0
SENSE
$Comp
L R R4
U 1 1 58D1B582
P 2450 1500
F 0 "R4" V 2530 1500 50  0000 C CNN
F 1 "JMP" V 2450 1500 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 2380 1500 50  0001 C CNN
F 3 "" H 2450 1500 50  0000 C CNN
F 4 "Yageo" H 2450 1500 60  0001 C CNN "Mfr"
F 5 "RC0402JR-070RL" H 2450 1500 60  0001 C CNN "Mfr Part #"
F 6 "R0402" H 2450 1500 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC0402JR-070RL/311-0.0JRTR-ND/726406" H 2450 1500 60  0001 C CNN "Link"
F 8 "Yes" H 2450 1500 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 2450 1500 60  0001 C CNN "RoHS"
	1    2450 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 1500 2600 1500
$Comp
L GND #PWR015
U 1 1 58D1B6E2
P 950 2650
F 0 "#PWR015" H 950 2400 50  0001 C CNN
F 1 "GND" H 950 2500 50  0000 C CNN
F 2 "" H 950 2650 50  0000 C CNN
F 3 "" H 950 2650 50  0000 C CNN
	1    950  2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2650 950  1500
Wire Wire Line
	950  1500 2300 1500
Wire Wire Line
	3650 5400 3650 6650
$Comp
L GND #PWR016
U 1 1 58DA7837
P 3650 6650
F 0 "#PWR016" H 3650 6400 50  0001 C CNN
F 1 "GND" H 3650 6500 50  0000 C CNN
F 2 "" H 3650 6650 50  0000 C CNN
F 3 "" H 3650 6650 50  0000 C CNN
	1    3650 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2950 10400 2950
Wire Wire Line
	9600 3150 10400 3150
Text GLabel 2200 8450 2    60   Input ~ 0
SENSE
$Comp
L +3.3V #PWR017
U 1 1 590540C8
P 1550 7500
F 0 "#PWR017" H 1550 7350 50  0001 C CNN
F 1 "+3.3V" H 1550 7640 50  0000 C CNN
F 2 "" H 1550 7500 50  0000 C CNN
F 3 "" H 1550 7500 50  0000 C CNN
	1    1550 7500
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 59054199
P 1550 8800
F 0 "R8" V 1630 8800 50  0000 C CNN
F 1 "10k" V 1550 8800 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" H 1480 8800 50  0001 C CNN
F 3 "" H 1550 8800 50  0000 C CNN
F 4 "Yageo" H 1550 8800 60  0001 C CNN "Mfr"
F 5 "RC0402FR-0710KL" H 1550 8800 60  0001 C CNN "Mfr Part #"
F 6 "R0402" H 1550 8800 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC0402FR-0710KL/311-10.0KLRTR-ND/726523" H 1550 8800 60  0001 C CNN "Link"
F 8 "Yes" H 1550 8800 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 1550 8800 60  0001 C CNN "RoHS"
	1    1550 8800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 59054274
P 1550 9200
F 0 "#PWR018" H 1550 8950 50  0001 C CNN
F 1 "GND" H 1550 9050 50  0000 C CNN
F 2 "" H 1550 9200 50  0000 C CNN
F 3 "" H 1550 9200 50  0000 C CNN
	1    1550 9200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 8200 1550 8650
Wire Wire Line
	1550 8950 1550 9200
Wire Wire Line
	13600 1850 13600 1950
Wire Wire Line
	13600 2500 13600 2400
Wire Wire Line
	13600 2400 13100 2400
Text GLabel 13100 2400 0    60   Input ~ 0
A2IN
Text GLabel 13100 2600 0    60   Input ~ 0
A2EX
Text GLabel 2600 3300 0    60   Input ~ 0
A2EX
Text GLabel 2600 3150 0    60   Input ~ 0
A2IN
Wire Wire Line
	2200 8450 1550 8450
Connection ~ 1550 8450
$Comp
L R_Variable R9
U 1 1 591CC414
P 1550 8050
F 0 "R9" V 1650 7950 50  0000 L CNN
F 1 "R_Variable" V 1450 8000 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SENSOR_FSR_34-00015" V 1480 8050 50  0001 C CNN
F 3 "" H 1550 8050 50  0000 C CNN
F 4 "Interlink Electronics" H 1550 8050 60  0001 C CNN "Mfr"
F 5 "34-00015" H 1550 8050 60  0001 C CNN "Mfr Part #"
F 6 "SMT" H 1550 8050 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/interlink-electronics/34-00015/1027-1018-ND/5416350" H 1550 8050 60  0001 C CNN "Link"
F 8 "No" H 1550 8050 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 1550 8050 60  0001 C CNN "RoHS"
	1    1550 8050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 7900 1550 7500
Wire Wire Line
	2600 2250 2800 2250
Wire Wire Line
	2600 2550 2800 2550
Wire Wire Line
	2600 2400 2800 2400
Wire Wire Line
	2600 2850 2800 2850
Wire Wire Line
	2800 3000 2600 3000
Wire Wire Line
	2600 3150 2800 3150
Wire Wire Line
	2800 3300 2600 3300
Wire Wire Line
	10350 6050 9900 6050
Wire Wire Line
	9900 6050 9900 5150
$Comp
L Conn_01x05 P1
U 1 1 598E106F
P 10550 5850
F 0 "P1" H 10550 6150 50  0000 C CNN
F 1 "JST_GH_5-pos" V 10650 5850 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_CONN_JST_GH_5POS" H 10650 5500 50  0000 C CNN
F 3 "" H 10550 5850 50  0000 C CNN
F 4 "JST" H 10550 5850 60  0001 C CNN "Mfr"
F 5 "SM05B-GHS-TB(LF)(SN)" H 10550 5850 60  0001 C CNN "Mfr Part #"
F 6 "SMT" H 10550 5850 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/SM05B-GHS-TB-LF-SN/455-1567-2-ND/807789" H 10550 5850 60  0001 C CNN "Link"
F 8 "No" H 10550 5850 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 10550 5850 60  0001 C CNN "RoHS"
	1    10550 5850
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 59C5A958
P 1750 5450
F 0 "C3" H 1775 5550 50  0000 L CNN
F 1 "0u1" H 1775 5350 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402_cap" H 1788 5300 50  0001 C CNN
F 3 "" H 1750 5450 50  0000 C CNN
F 4 "Taiyo Yuden" H 1750 5450 60  0001 C CNN "Mfr"
F 5 "LMK105BJ104KV-F" H 1750 5450 60  0001 C CNN "Mfr Part #"
F 6 "C0402" H 1750 5450 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/taiyo-yuden/LMK105BJ104KV-F/587-1227-2-ND/930579" H 1750 5450 60  0001 C CNN "Link"
F 8 "Yes" H 1750 5450 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 1750 5450 60  0001 C CNN "RoHS"
	1    1750 5450
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 59C5AAD4
P 1450 5450
F 0 "C2" H 1475 5550 50  0000 L CNN
F 1 "10u" H 1475 5350 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_nonpol_1206" H 1488 5300 50  0001 C CNN
F 3 "" H 1450 5450 50  0001 C CNN
F 4 "Taiyo Yuden" H 1450 5450 60  0001 C CNN "Mfr"
F 5 "EMK316B7106KL-TD " H 1450 5450 60  0001 C CNN "Mfr Part #"
F 6 "C1206" H 1450 5450 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/taiyo-yuden/EMK316B7106KL-TD/587-2395-2-ND/2178914" H 1450 5450 60  0001 C CNN "Link"
F 8 "Yes" H 1450 5450 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 1450 5450 60  0001 C CNN "RoHS"
	1    1450 5450
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 59C5B00F
P 10550 3350
F 0 "R3" V 10630 3350 50  0000 C CNN
F 1 "100" V 10550 3350 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 10750 2750 50  0001 C CNN
F 3 "" H 10550 3350 50  0000 C CNN
F 4 "Yageo" H 10550 3350 60  0001 C CNN "Mfr"
F 5 "RC0402FR-07100RL" H 10550 3350 60  0001 C CNN "Mfr Part #"
F 6 "R0402" H 10550 3350 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC0402FR-07100RL/311-100LRTR-ND/726527" H 10550 3350 60  0001 C CNN "Link"
F 8 "Yes" H 10550 3350 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 10550 3350 60  0001 C CNN "RoHS"
	1    10550 3350
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 59C5B541
P 12800 6200
F 0 "C1" H 12825 6300 50  0000 L CNN
F 1 "1u" H 12825 6100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 12838 6050 50  0001 C CNN
F 3 "" H 12800 6200 50  0000 C CNN
F 4 "Taiyo Yuden" H 12800 6200 60  0001 C CNN "Mfr"
F 5 "LMK107B7105KA-T" H 12800 6200 60  0001 C CNN "Mfr Part #"
F 6 "C0603" H 12800 6200 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/taiyo-yuden/LMK107B7105KA-T/587-1242-2-ND/930594" H 12800 6200 60  0001 C CNN "Link"
F 8 "Yes" H 12800 6200 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 12800 6200 60  0001 C CNN "RoHS"
	1    12800 6200
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 P7
U 1 1 59C5B780
P 14400 2400
F 0 "P7" H 14400 2650 50  0000 C CNN
F 1 "CONN_01X04" V 14500 2400 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_CONN_JST_GH" H 14400 2750 50  0000 C CNN
F 3 "" H 14400 2400 50  0000 C CNN
F 4 "JST" H 14400 2400 60  0001 C CNN "Mfr"
F 5 "SM04B-GHS-TB(LF)(SN)" H 14400 2400 60  0001 C CNN "Mfr Part #"
F 6 "SMT" H 14400 2400 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/jst-sales-america-inc/SM04B-GHS-TB-LF-SN/455-1566-2-ND/807788" H 14400 2400 60  0001 C CNN "Link"
F 8 "No" H 14400 2400 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 14400 2400 60  0001 C CNN "RoHS"
	1    14400 2400
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BEC Q1
U 1 1 59C6AB49
P 9400 2350
F 0 "Q1" V 9600 2400 50  0000 L CNN
F 1 "MMBT3904" V 9350 2500 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SOT23-3L" H 9600 2450 50  0001 C CNN
F 3 "" H 9400 2350 50  0001 C CNN
F 4 "Micro Commercial Co" H 9400 2350 60  0001 C CNN "Mfr"
F 5 "MMBT3904-TP" H 9400 2350 60  0001 C CNN "Mfr Part #"
F 6 "SOT23-3" H 9400 2350 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/micro-commercial-co/MMBT3904-TP/MMBT3904TPMSTR-ND/717280" H 9400 2350 60  0001 C CNN "Link"
F 8 "Yes" H 9400 2350 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 9400 2350 60  0001 C CNN "RoHS"
	1    9400 2350
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 59C6ADF1
P 8750 2050
F 0 "R5" V 8830 2050 50  0000 C CNN
F 1 "1k" V 8750 2050 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 8950 1450 50  0001 C CNN
F 3 "" H 8750 2050 50  0000 C CNN
F 4 "Yageo" H 8750 2050 60  0001 C CNN "Mfr"
F 5 "RC0402FR-071KL" H 8750 2050 60  0001 C CNN "Mfr Part #"
F 6 "R0402" H 8750 2050 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC0402FR-071KL/311-1.00KLRTR-ND/726513" H 8750 2050 60  0001 C CNN "Link"
F 8 "Yes" H 8750 2050 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 8750 2050 60  0001 C CNN "RoHS"
	1    8750 2050
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 59C6AEFB
P 8750 2750
F 0 "R6" V 8830 2750 50  0000 C CNN
F 1 "1k" V 8750 2750 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 8950 2150 50  0001 C CNN
F 3 "" H 8750 2750 50  0000 C CNN
F 4 "Yageo" H 8750 2750 60  0001 C CNN "Mfr"
F 5 "RC0402FR-071KL" H 8750 2750 60  0001 C CNN "Mfr Part #"
F 6 "R0402" H 8750 2750 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC0402FR-071KL/311-1.00KLRTR-ND/726513" H 8750 2750 60  0001 C CNN "Link"
F 8 "Yes" H 8750 2750 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 8750 2750 60  0001 C CNN "RoHS"
	1    8750 2750
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 59C6AF70
P 8750 3450
F 0 "R7" V 8830 3450 50  0000 C CNN
F 1 "1k" V 8750 3450 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 8950 2850 50  0001 C CNN
F 3 "" H 8750 3450 50  0000 C CNN
F 4 "Yageo" H 8750 3450 60  0001 C CNN "Mfr"
F 5 "RC0402FR-071KL" H 8750 3450 60  0001 C CNN "Mfr Part #"
F 6 "R0402" H 8750 3450 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/yageo/RC0402FR-071KL/311-1.00KLRTR-ND/726513" H 8750 3450 60  0001 C CNN "Link"
F 8 "Yes" H 8750 3450 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 8750 3450 60  0001 C CNN "RoHS"
	1    8750 3450
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_BEC Q2
U 1 1 59C6B0FD
P 9400 3050
F 0 "Q2" V 9600 3100 50  0000 L CNN
F 1 "MMBT3904" V 9350 3200 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SOT23-3L" H 9600 3150 50  0001 C CNN
F 3 "" H 9400 3050 50  0001 C CNN
F 4 "Micro Commercial Co" H 9400 3050 60  0001 C CNN "Mfr"
F 5 "MMBT3904-TP" H 9400 3050 60  0001 C CNN "Mfr Part #"
F 6 "SOT23-3" H 9400 3050 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/micro-commercial-co/MMBT3904-TP/MMBT3904TPMSTR-ND/717280" H 9400 3050 60  0001 C CNN "Link"
F 8 "Yes" H 9400 3050 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 9400 3050 60  0001 C CNN "RoHS"
	1    9400 3050
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_BEC Q3
U 1 1 59C6B174
P 9400 3750
F 0 "Q3" V 9600 3800 50  0000 L CNN
F 1 "MMBT3904" V 9350 3850 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SOT23-3L" H 9600 3850 50  0001 C CNN
F 3 "" H 9400 3750 50  0001 C CNN
F 4 "Micro Commercial Co" H 9400 3750 60  0001 C CNN "Mfr"
F 5 "MMBT3904-TP" H 9400 3750 60  0001 C CNN "Mfr Part #"
F 6 "SOT23-3" H 9400 3750 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/micro-commercial-co/MMBT3904-TP/MMBT3904TPMSTR-ND/717280" H 9400 3750 60  0001 C CNN "Link"
F 8 "Yes" H 9400 3750 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 9400 3750 60  0001 C CNN "RoHS"
	1    9400 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 2950 9900 2450
Wire Wire Line
	9900 2450 9600 2450
Wire Wire Line
	10400 3350 9900 3350
Wire Wire Line
	9900 3350 9900 3850
Wire Wire Line
	9900 3850 9600 3850
Wire Wire Line
	9400 3550 9400 3450
Wire Wire Line
	9400 3450 8900 3450
Wire Wire Line
	8600 3450 8300 3450
Wire Wire Line
	8300 2750 8600 2750
Wire Wire Line
	8900 2750 9400 2750
Wire Wire Line
	9400 2750 9400 2850
Wire Wire Line
	9400 2150 9400 2050
Wire Wire Line
	9400 2050 8900 2050
Wire Wire Line
	8600 2050 8300 2050
Wire Wire Line
	9200 2450 9000 2450
Wire Wire Line
	9000 2450 9000 4150
Wire Wire Line
	9000 3150 9200 3150
Wire Wire Line
	9000 3850 9200 3850
Connection ~ 9000 3150
$Comp
L GND #PWR019
U 1 1 59C6B81A
P 9000 4150
F 0 "#PWR019" H 9000 3900 50  0001 C CNN
F 1 "GND" H 9000 4000 50  0000 C CNN
F 2 "" H 9000 4150 50  0001 C CNN
F 3 "" H 9000 4150 50  0001 C CNN
	1    9000 4150
	1    0    0    -1  
$EndComp
Connection ~ 9000 3850
Text Notes 3600 1150 0    60   ~ 0
MICROCONTROLLER
Text Notes 1350 6300 0    60   ~ 0
BYPASS CAPS
Text Notes 4200 6000 0    60   ~ 0
IDENTIFY SWITCH
Text Notes 1350 9650 0    60   ~ 0
FORCE SENSITIVE RESISTOR
Text Notes 9300 7200 0    60   ~ 0
POWER/PROGRAMMING PORT
Text Notes 13350 7400 0    60   ~ 0
POWER SUPPLY
Text Notes 13650 3400 0    60   ~ 0
AXON TERMINAL
Text Notes 10450 3850 0    60   ~ 0
LED
$Comp
L RClamp0503F U3
U 1 1 5A81F7FE
P 3950 4400
F 0 "U3" H 3950 4000 60  0000 C CNN
F 1 "RClamp0503F" H 3950 4800 60  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_SOT-353" H 4100 4250 60  0001 C CNN
F 3 "" H 4100 4250 60  0001 C CNN
F 4 "Semtec Corporation" H 3950 4400 60  0001 C CNN "Mfr"
F 5 "RCLAMP0503F.TCT" H 3950 4400 60  0001 C CNN "Mfr Part #"
F 6 "5-TSSOP" H 3950 4400 60  0001 C CNN "Package"
F 7 "https://www.digikey.com/product-detail/en/semtech-corporation/RCLAMP0503F.TCT/RCLAMP0503F.TCTTR-ND/5113629" H 3950 4400 60  0001 C CNN "Link"
F 8 "No" H 3950 4400 60  0001 C CNN "Subs Allowed"
F 9 "Yes" H 3950 4400 60  0001 C CNN "RoHS"
	1    3950 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 2700 5350 4600
Wire Wire Line
	5350 2700 5200 2700
$Comp
L GND #PWR020
U 1 1 5A81FD69
P 4700 4950
F 0 "#PWR020" H 4700 4700 50  0001 C CNN
F 1 "GND" H 4700 4800 50  0000 C CNN
F 2 "" H 4700 4950 50  0001 C CNN
F 3 "" H 4700 4950 50  0001 C CNN
	1    4700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4950 4700 4400
Wire Wire Line
	4700 4400 4400 4400
$Comp
L +3.3V #PWR021
U 1 1 5A81FE70
P 3350 3950
F 0 "#PWR021" H 3350 3800 50  0001 C CNN
F 1 "+3.3V" H 3350 4090 50  0000 C CNN
F 2 "" H 3350 3950 50  0001 C CNN
F 3 "" H 3350 3950 50  0001 C CNN
	1    3350 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3950 3350 4600
Wire Wire Line
	3350 4600 3500 4600
Wire Wire Line
	2700 2700 2700 4200
Wire Wire Line
	2500 4200 3500 4200
Wire Wire Line
	2800 2700 2700 2700
Connection ~ 2700 4200
Wire Wire Line
	4400 4600 5550 4600
Connection ~ 5350 4600
Wire Wire Line
	13950 5900 14700 5900
Wire Wire Line
	14700 5900 14700 5750
Connection ~ 14450 5900
Wire Wire Line
	13350 5900 12500 5900
Wire Wire Line
	12500 5900 12500 5750
Connection ~ 12800 5900
Wire Wire Line
	13350 6000 13150 6000
Wire Wire Line
	13150 6000 13150 5900
Connection ~ 13150 5900
$EndSCHEMATC
