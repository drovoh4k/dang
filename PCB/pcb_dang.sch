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
L Connector_Generic:Conn_01x10 J?
U 1 1 627AB894
P 1650 3500
AR Path="/601C5A9D/627AB894" Ref="J?"  Part="1" 
AR Path="/627AB894" Ref="J2"  Part="1" 
F 0 "J2" V 1750 2975 50  0000 C CNN
F 1 "Digital" V 1750 3825 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 1650 3500 50  0001 C CNN
F 3 "~" H 1650 3500 50  0001 C CNN
	1    1650 3500
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 627AB89A
P 2600 4150
AR Path="/601C5A9D/627AB89A" Ref="J?"  Part="1" 
AR Path="/627AB89A" Ref="J4"  Part="1" 
F 0 "J4" V 2700 4400 50  0000 R CNN
F 1 "Analog IN" V 2700 4175 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2600 4150 50  0001 C CNN
F 3 "~" H 2600 4150 50  0001 C CNN
	1    2600 4150
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 627AB8A0
P 1450 4150
AR Path="/601C5A9D/627AB8A0" Ref="J?"  Part="1" 
AR Path="/627AB8A0" Ref="J1"  Part="1" 
F 0 "J1" V 1550 4500 50  0000 R CNN
F 1 "POWER" V 1550 3950 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1450 4150 50  0001 C CNN
F 3 "~" H 1450 4150 50  0001 C CNN
	1    1450 4150
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 627AB88E
P 2600 3500
AR Path="/601C5A9D/627AB88E" Ref="J?"  Part="1" 
AR Path="/627AB88E" Ref="J3"  Part="1" 
F 0 "J3" V 2700 3050 50  0000 L CNN
F 1 "Digital" V 2700 3625 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2600 3500 50  0001 C CNN
F 3 "~" H 2600 3500 50  0001 C CNN
	1    2600 3500
	0    1    1    0   
$EndComp
$Comp
L pcb_dang:ESP-01 U2
U 1 1 627B2B83
P 5400 1550
F 0 "U2" H 5400 2065 50  0000 C CNN
F 1 "ESP-01" H 5400 1974 50  0000 C CNN
F 2 "pcb_dang:ESP-01" H 5400 1550 50  0001 C CNN
F 3 "" H 5400 1550 50  0001 C CNN
	1    5400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1250 1550 1250
Wire Wire Line
	2800 1350 2750 1350
Wire Wire Line
	1600 1450 1550 1450
Wire Wire Line
	1550 1450 1550 1250
Connection ~ 1550 1250
Wire Wire Line
	1550 1250 1500 1250
Wire Wire Line
	2750 1350 2750 1650
Wire Wire Line
	2750 1650 1550 1650
Wire Wire Line
	1550 1650 1550 1450
Connection ~ 2750 1350
Wire Wire Line
	2750 1350 2700 1350
Connection ~ 1550 1450
Wire Wire Line
	1550 1650 1550 1750
Connection ~ 1550 1650
$Comp
L power:GND #PWR0101
U 1 1 627ECD55
P 1550 1750
F 0 "#PWR0101" H 1550 1500 50  0001 C CNN
F 1 "GND" H 1555 1577 50  0000 C CNN
F 2 "" H 1550 1750 50  0001 C CNN
F 3 "" H 1550 1750 50  0001 C CNN
	1    1550 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1250 1000 1250
Wire Wire Line
	1000 1250 1000 1150
$Comp
L power:+3V3 #PWR0103
U 1 1 627EF724
P 3300 1250
F 0 "#PWR0103" H 3300 1100 50  0001 C CNN
F 1 "+3V3" H 3315 1423 50  0000 C CNN
F 2 "" H 3300 1250 50  0001 C CNN
F 3 "" H 3300 1250 50  0001 C CNN
	1    3300 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1250 3300 1350
Wire Wire Line
	3100 1350 3300 1350
Wire Notes Line
	600  650  3700 650 
Wire Notes Line
	3700 650  3700 2100
Wire Notes Line
	3700 2100 600  2100
Wire Notes Line
	600  2100 600  650 
$Comp
L pcb_dang:R R1
U 1 1 627FADBC
P 4450 1600
F 0 "R1" V 4550 1600 50  0000 C CNN
F 1 "220" V 4350 1600 50  0000 C CNN
F 2 "pcb_dang:R_0603_1608Metric" V 4380 1600 50  0001 C CNN
F 3 "~" H 4450 1600 50  0001 C CNN
	1    4450 1600
	0    -1   -1   0   
$EndComp
$Comp
L pcb_dang:C C1
U 1 1 627FC063
P 1350 1250
F 0 "C1" V 1098 1250 50  0000 C CNN
F 1 "100nF" V 1189 1250 50  0000 C CNN
F 2 "pcb_dang:C_0603_1608Metric" H 1388 1100 50  0001 C CNN
F 3 "~" H 1350 1250 50  0001 C CNN
	1    1350 1250
	0    1    1    0   
$EndComp
$Comp
L pcb_dang:C C2
U 1 1 627FD11B
P 2950 1350
F 0 "C2" V 2698 1350 50  0000 C CNN
F 1 "10uF" V 2789 1350 50  0000 C CNN
F 2 "pcb_dang:C_0603_1608Metric" H 2988 1200 50  0001 C CNN
F 3 "~" H 2950 1350 50  0001 C CNN
	1    2950 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 1600 4600 1600
$Comp
L power:+3V3 #PWR0104
U 1 1 62801B15
P 4200 1150
F 0 "#PWR0104" H 4200 1000 50  0001 C CNN
F 1 "+3V3" H 4215 1323 50  0000 C CNN
F 2 "" H 4200 1150 50  0001 C CNN
F 3 "" H 4200 1150 50  0001 C CNN
	1    4200 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1300 4700 1300
Wire Wire Line
	4200 1300 4200 1150
Wire Wire Line
	4300 1600 4200 1600
Wire Wire Line
	4200 1600 4200 1300
Connection ~ 4200 1300
Wire Wire Line
	4800 1400 4700 1400
Wire Wire Line
	4700 1400 4700 1300
Connection ~ 4700 1300
Wire Wire Line
	4700 1300 4200 1300
NoConn ~ 4800 1500
$Comp
L power:GND #PWR0105
U 1 1 62803F41
P 6100 1700
F 0 "#PWR0105" H 6100 1450 50  0001 C CNN
F 1 "GND" H 6105 1527 50  0000 C CNN
F 2 "" H 6100 1700 50  0001 C CNN
F 3 "" H 6100 1700 50  0001 C CNN
	1    6100 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6280C376
P 6100 3200
F 0 "#PWR0102" H 6100 2950 50  0001 C CNN
F 1 "GND" H 6105 3027 50  0000 C CNN
F 2 "" H 6100 3200 50  0001 C CNN
F 3 "" H 6100 3200 50  0001 C CNN
	1    6100 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3200 6100 3100
Wire Wire Line
	6100 3100 6200 3100
$Comp
L power:+3V3 #PWR0106
U 1 1 6280D8D8
P 6100 2700
F 0 "#PWR0106" H 6100 2550 50  0001 C CNN
F 1 "+3V3" H 6115 2873 50  0000 C CNN
F 2 "" H 6100 2700 50  0001 C CNN
F 3 "" H 6100 2700 50  0001 C CNN
	1    6100 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2800 6100 2800
Wire Wire Line
	6100 2800 6100 2700
Text GLabel 6050 2900 0    50   Input ~ 0
SCL
Text GLabel 6050 3000 0    50   Input ~ 0
SDA
Wire Wire Line
	6050 2900 6200 2900
Wire Wire Line
	6050 3000 6200 3000
Text GLabel 1150 3200 1    50   Input ~ 0
SCL
Text GLabel 1250 3200 1    50   Input ~ 0
SDA
Wire Wire Line
	1150 3300 1150 3200
Wire Wire Line
	1250 3300 1250 3200
NoConn ~ 1150 4350
$Comp
L power:+6V #PWR0107
U 1 1 627E9678
P 1000 1150
F 0 "#PWR0107" H 1000 1000 50  0001 C CNN
F 1 "+6V" H 1015 1323 50  0000 C CNN
F 2 "" H 1000 1150 50  0001 C CNN
F 3 "" H 1000 1150 50  0001 C CNN
	1    1000 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+6V #PWR0108
U 1 1 627EB961
P 1850 4450
F 0 "#PWR0108" H 1850 4300 50  0001 C CNN
F 1 "+6V" H 1865 4623 50  0000 C CNN
F 2 "" H 1850 4450 50  0001 C CNN
F 3 "" H 1850 4450 50  0001 C CNN
	1    1850 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 4450 1850 4350
Text Notes 800  900  0    31   Italic 0
(Dos pilas 18650)
Text GLabel 6100 1400 2    50   Input ~ 0
ESP_RX
Wire Wire Line
	6100 1400 6000 1400
$Comp
L pcb_dang:R R2
U 1 1 627EFE01
P 6700 1500
F 0 "R2" V 6800 1500 50  0000 C CNN
F 1 "10k" V 6600 1500 50  0000 C CNN
F 2 "pcb_dang:R_0603_1608Metric" V 6630 1500 50  0001 C CNN
F 3 "~" H 6700 1500 50  0001 C CNN
	1    6700 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0109
U 1 1 627F3EBD
P 6950 1400
F 0 "#PWR0109" H 6950 1250 50  0001 C CNN
F 1 "+3V3" H 6965 1573 50  0000 C CNN
F 2 "" H 6950 1400 50  0001 C CNN
F 3 "" H 6950 1400 50  0001 C CNN
	1    6950 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1400 6950 1500
Wire Wire Line
	6950 1500 6850 1500
Wire Wire Line
	6550 1500 6000 1500
Wire Notes Line
	3850 2100 3850 650 
Wire Notes Line
	3850 650  7250 650 
Wire Notes Line
	7250 650  7250 2100
Wire Notes Line
	7250 2100 3850 2100
Text Notes 650  650  0    50   ~ 0
6V to +3V3
Text Notes 650  2350 0    50   ~ 0
Arduino Pins
Text Notes 3900 650  0    50   ~ 0
ESP-01
Wire Notes Line
	600  2350 3700 2350
Text Notes 5750 2350 0    50   ~ 0
SSD1306
$Comp
L power:+3V3 #PWR0111
U 1 1 62812237
P 4500 2700
F 0 "#PWR0111" H 4500 2550 50  0001 C CNN
F 1 "+3V3" H 4515 2873 50  0000 C CNN
F 2 "" H 4500 2700 50  0001 C CNN
F 3 "" H 4500 2700 50  0001 C CNN
	1    4500 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2750 4500 2700
Text GLabel 5100 2950 2    50   Input ~ 0
SDA
Text GLabel 5100 3050 2    50   Input ~ 0
SCL
Wire Wire Line
	5000 2950 5100 2950
Wire Wire Line
	5100 3050 5000 3050
NoConn ~ 4000 3000
NoConn ~ 4000 3100
NoConn ~ 4000 3200
NoConn ~ 4000 3300
Text Notes 3900 2350 0    50   ~ 0
PN532
$Comp
L pcb_dang:LD1117V33 U1
U 1 1 6282CA75
P 1600 1250
F 0 "U1" H 2150 1515 50  0000 C CNN
F 1 "LD1117V33" H 2150 1424 50  0000 C CNN
F 2 "pcb_dang:LD1117V33" H 2550 1350 50  0001 L CNN
F 3 "http://www.st.com/web/en/resource/technical/document/datasheet/CD00000544.pdf" H 2600 -50 50  0001 L CNN
	1    1600 1250
	1    0    0    -1  
$EndComp
$Comp
L pcb_dang:SSD1306 U4
U 1 1 6282F1CD
P 6400 2950
F 0 "U4" H 6828 2996 50  0000 L CNN
F 1 "SSD1306" H 6828 2905 50  0000 L CNN
F 2 "pcb_dang:SSD1306" V 6300 2950 50  0001 C CNN
F 3 "" V 6300 2950 50  0001 C CNN
	1    6400 2950
	1    0    0    -1  
$EndComp
$Comp
L pcb_dang:PN532 U3
U 1 1 6282D9F9
P 4500 3150
F 0 "U3" H 4850 3500 50  0000 C CNN
F 1 "PN532" H 4200 3500 50  0000 C CNN
F 2 "pcb_dang:PN532" H 4500 3100 50  0001 C CNN
F 3 "" H 4500 3100 50  0001 C CNN
	1    4500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1300 6000 1300
Text GLabel 6100 1300 2    50   Input ~ 0
ESP_TX
Wire Wire Line
	6000 1600 6100 1600
Wire Wire Line
	6100 1600 6100 1700
$Comp
L power:GND #PWR0110
U 1 1 6282DAD8
P 4500 3600
F 0 "#PWR0110" H 4500 3350 50  0001 C CNN
F 1 "GND" H 4505 3427 50  0000 C CNN
F 2 "" H 4500 3600 50  0001 C CNN
F 3 "" H 4500 3600 50  0001 C CNN
	1    4500 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3550 4500 3600
Text GLabel 2050 3250 1    50   Input ~ 0
ESP_RX
NoConn ~ 2900 4350
NoConn ~ 2800 4350
NoConn ~ 2700 4350
NoConn ~ 2600 4350
NoConn ~ 2500 4350
NoConn ~ 2400 4350
NoConn ~ 1750 4350
NoConn ~ 1650 4350
NoConn ~ 1550 4350
NoConn ~ 1450 4350
NoConn ~ 1350 4350
NoConn ~ 1250 4350
NoConn ~ 1350 3300
NoConn ~ 1450 3300
NoConn ~ 1750 3300
NoConn ~ 1850 3300
NoConn ~ 2200 3300
NoConn ~ 2300 3300
NoConn ~ 2400 3300
NoConn ~ 2500 3300
NoConn ~ 2600 3300
NoConn ~ 2700 3300
NoConn ~ 2900 3300
$Comp
L pcb_dang:R R3
U 1 1 62843D82
P 2600 2750
F 0 "R3" V 2700 2750 50  0000 C CNN
F 1 "510" V 2500 2750 50  0000 C CNN
F 2 "pcb_dang:R_0603_1608Metric" V 2530 2750 50  0001 C CNN
F 3 "~" H 2600 2750 50  0001 C CNN
	1    2600 2750
	0    -1   -1   0   
$EndComp
$Comp
L pcb_dang:R R4
U 1 1 62844DA0
P 2200 2750
F 0 "R4" V 2300 2750 50  0000 C CNN
F 1 "270" V 2100 2750 50  0000 C CNN
F 2 "pcb_dang:R_0603_1608Metric" V 2130 2750 50  0001 C CNN
F 3 "~" H 2200 2750 50  0001 C CNN
	1    2200 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 3300 2050 3250
Wire Notes Line
	600  4750 3700 4750
$Comp
L power:GND #PWR0112
U 1 1 62855B9D
P 2800 2800
F 0 "#PWR0112" H 2800 2550 50  0001 C CNN
F 1 "GND" H 2805 2627 50  0000 C CNN
F 2 "" H 2800 2800 50  0001 C CNN
F 3 "" H 2800 2800 50  0001 C CNN
	1    2800 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2750 2800 2750
Wire Wire Line
	2800 2750 2800 2800
Wire Wire Line
	2050 2750 1950 2750
Wire Wire Line
	1950 2750 1950 3300
Text GLabel 2400 2900 3    50   Input ~ 0
ESP_TX
Wire Wire Line
	2350 2750 2400 2750
Wire Wire Line
	2400 2900 2400 2750
Connection ~ 2400 2750
Wire Wire Line
	2400 2750 2450 2750
Text GLabel 2900 3100 2    50   Input ~ 0
PN532_IRQ
Wire Wire Line
	2900 3100 2800 3100
Wire Wire Line
	2800 3100 2800 3300
Text GLabel 5100 3250 2    50   Input ~ 0
PN532_IRQ
Wire Notes Line
	7250 3500 5700 3500
Wire Notes Line
	5700 3500 5700 2350
Wire Notes Line
	5700 2350 7250 2350
Wire Notes Line
	7250 2350 7250 3500
Wire Notes Line
	3850 2350 5600 2350
Wire Notes Line
	5600 2350 5600 3850
Wire Notes Line
	5600 3850 3850 3850
Wire Notes Line
	3850 3850 3850 2350
Wire Wire Line
	5100 3250 5000 3250
NoConn ~ 5000 3350
Wire Wire Line
	1650 3300 1650 3200
Wire Wire Line
	1550 3300 1550 2800
Wire Wire Line
	1650 2900 1650 2850
Wire Wire Line
	1650 2850 1850 2850
Wire Wire Line
	1850 2850 1850 2450
Wire Wire Line
	1850 2450 1550 2450
Wire Wire Line
	1550 2450 1550 2500
$Comp
L power:GND #PWR?
U 1 1 6293CBC2
P 1250 2600
F 0 "#PWR?" H 1250 2350 50  0001 C CNN
F 1 "GND" H 1255 2427 50  0000 C CNN
F 2 "" H 1250 2600 50  0001 C CNN
F 3 "" H 1250 2600 50  0001 C CNN
	1    1250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2600 1250 2450
Wire Wire Line
	1250 2450 1550 2450
Connection ~ 1550 2450
$Comp
L pcb_dang:LED LED1
U 1 1 62940978
P 1550 2500
F 0 "LED1" V 1647 2588 50  0000 L CNN
F 1 "LED" V 1738 2588 50  0000 L CNN
F 2 "pcb_dang:L1RXGRN1000000000" H 1850 2600 50  0001 L BNN
F 3 "" H 2050 2550 50  0001 L BNN
	1    1550 2500
	0    1    1    0   
$EndComp
$Comp
L pcb_dang:LED LED2
U 1 1 62942031
P 1650 2900
F 0 "LED2" V 1747 2988 50  0000 L CNN
F 1 "LED" V 1838 2988 50  0000 L CNN
F 2 "pcb_dang:L1RXRED1000000000" H 1950 3000 50  0001 L BNN
F 3 "" H 2150 2950 50  0001 L BNN
	1    1650 2900
	0    1    1    0   
$EndComp
Wire Notes Line
	3700 2350 3700 4750
Wire Notes Line
	600  2350 600  4750
$EndSCHEMATC
