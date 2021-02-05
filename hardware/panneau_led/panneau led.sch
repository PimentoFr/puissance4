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
L Device:C_Small C1
U 1 1 5FF9F7DA
P 1450 1200
F 0 "C1" H 1542 1246 50  0000 L CNN
F 1 "100nF" H 1542 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1450 1200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL05B104KO5NNNC_C1525.pdf" H 1450 1200 50  0001 C CNN
F 4 "C1525" H 1450 1200 50  0001 C CNN "lcsc"
	1    1450 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1100 1450 1050
Wire Wire Line
	1450 1050 1950 1050
Wire Wire Line
	1950 1050 1950 1350
$Comp
L power:GND #PWR011
U 1 1 5FFA45F4
P 1950 2000
F 0 "#PWR011" H 1950 1750 50  0001 C CNN
F 1 "GND" H 1955 1827 50  0000 C CNN
F 2 "" H 1950 2000 50  0001 C CNN
F 3 "" H 1950 2000 50  0001 C CNN
	1    1950 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2000 1950 1950
$Comp
L LED:WS2812B D1
U 1 1 5FF9DCF5
P 1950 1650
F 0 "D1" H 2294 1696 50  0000 L CNN
F 1 "WS2812B" H 2294 1605 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 2000 1350 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 2050 1275 50  0001 L TNN
F 4 "C114586" H 1950 1650 50  0001 C CNN "lcsc"
	1    1950 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FFA60DA
P 1450 1350
F 0 "#PWR04" H 1450 1100 50  0001 C CNN
F 1 "GND" H 1455 1177 50  0000 C CNN
F 2 "" H 1450 1350 50  0001 C CNN
F 3 "" H 1450 1350 50  0001 C CNN
	1    1450 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1300 1450 1350
$Comp
L power:+5V #PWR01
U 1 1 5FFA6C21
P 1950 1000
F 0 "#PWR01" H 1950 850 50  0001 C CNN
F 1 "+5V" H 1965 1173 50  0000 C CNN
F 2 "" H 1950 1000 50  0001 C CNN
F 3 "" H 1950 1000 50  0001 C CNN
	1    1950 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1000 1950 1050
Connection ~ 1950 1050
$Comp
L Device:C_Small C2
U 1 1 5FFAA50F
P 2900 1200
F 0 "C2" H 2992 1246 50  0000 L CNN
F 1 "100nF" H 2992 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2900 1200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL05B104KO5NNNC_C1525.pdf" H 2900 1200 50  0001 C CNN
F 4 "C1525" H 2900 1200 50  0001 C CNN "lcsc"
	1    2900 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1100 2900 1050
Wire Wire Line
	2900 1050 3400 1050
Wire Wire Line
	3400 1050 3400 1350
$Comp
L power:GND #PWR012
U 1 1 5FFAA518
P 3400 2000
F 0 "#PWR012" H 3400 1750 50  0001 C CNN
F 1 "GND" H 3405 1827 50  0000 C CNN
F 2 "" H 3400 2000 50  0001 C CNN
F 3 "" H 3400 2000 50  0001 C CNN
	1    3400 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2000 3400 1950
$Comp
L LED:WS2812B D2
U 1 1 5FFAA51F
P 3400 1650
F 0 "D2" H 3744 1696 50  0000 L CNN
F 1 "WS2812B" H 3744 1605 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 3450 1350 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 3500 1275 50  0001 L TNN
F 4 "C114586" H 3400 1650 50  0001 C CNN "lcsc"
	1    3400 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5FFAA525
P 2900 1350
F 0 "#PWR05" H 2900 1100 50  0001 C CNN
F 1 "GND" H 2905 1177 50  0000 C CNN
F 2 "" H 2900 1350 50  0001 C CNN
F 3 "" H 2900 1350 50  0001 C CNN
	1    2900 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1300 2900 1350
$Comp
L power:+5V #PWR02
U 1 1 5FFAA52C
P 3400 1000
F 0 "#PWR02" H 3400 850 50  0001 C CNN
F 1 "+5V" H 3415 1173 50  0000 C CNN
F 2 "" H 3400 1000 50  0001 C CNN
F 3 "" H 3400 1000 50  0001 C CNN
	1    3400 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1000 3400 1050
Connection ~ 3400 1050
$Comp
L Device:C_Small C3
U 1 1 5FFADE5D
P 4250 1200
F 0 "C3" H 4342 1246 50  0000 L CNN
F 1 "100nF" H 4342 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4250 1200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL05B104KO5NNNC_C1525.pdf" H 4250 1200 50  0001 C CNN
F 4 "C1525" H 4250 1200 50  0001 C CNN "lcsc"
	1    4250 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1100 4250 1050
Wire Wire Line
	4250 1050 4750 1050
Wire Wire Line
	4750 1050 4750 1350
$Comp
L power:GND #PWR013
U 1 1 5FFADE66
P 4750 2000
F 0 "#PWR013" H 4750 1750 50  0001 C CNN
F 1 "GND" H 4755 1827 50  0000 C CNN
F 2 "" H 4750 2000 50  0001 C CNN
F 3 "" H 4750 2000 50  0001 C CNN
	1    4750 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2000 4750 1950
$Comp
L LED:WS2812B D3
U 1 1 5FFADE6D
P 4750 1650
F 0 "D3" H 5094 1696 50  0000 L CNN
F 1 "WS2812B" H 5094 1605 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 4800 1350 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 4850 1275 50  0001 L TNN
F 4 "C114586" H 4750 1650 50  0001 C CNN "lcsc"
	1    4750 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5FFADE73
P 4250 1350
F 0 "#PWR06" H 4250 1100 50  0001 C CNN
F 1 "GND" H 4255 1177 50  0000 C CNN
F 2 "" H 4250 1350 50  0001 C CNN
F 3 "" H 4250 1350 50  0001 C CNN
	1    4250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1300 4250 1350
$Comp
L power:+5V #PWR03
U 1 1 5FFADE7A
P 4750 1000
F 0 "#PWR03" H 4750 850 50  0001 C CNN
F 1 "+5V" H 4765 1173 50  0000 C CNN
F 2 "" H 4750 1000 50  0001 C CNN
F 3 "" H 4750 1000 50  0001 C CNN
	1    4750 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1000 4750 1050
Connection ~ 4750 1050
Wire Wire Line
	3700 1650 4450 1650
Wire Wire Line
	3100 1650 2250 1650
$Comp
L Device:C_Small C4
U 1 1 5FFBAB3B
P 1450 2850
F 0 "C4" H 1542 2896 50  0000 L CNN
F 1 "100nF" H 1542 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1450 2850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL05B104KO5NNNC_C1525.pdf" H 1450 2850 50  0001 C CNN
F 4 "C1525" H 1450 2850 50  0001 C CNN "lcsc"
	1    1450 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2750 1450 2700
Wire Wire Line
	1450 2700 1950 2700
Wire Wire Line
	1950 2700 1950 3000
$Comp
L power:GND #PWR024
U 1 1 5FFBAB44
P 1950 3650
F 0 "#PWR024" H 1950 3400 50  0001 C CNN
F 1 "GND" H 1955 3477 50  0000 C CNN
F 2 "" H 1950 3650 50  0001 C CNN
F 3 "" H 1950 3650 50  0001 C CNN
	1    1950 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3650 1950 3600
$Comp
L LED:WS2812B D4
U 1 1 5FFBAB4B
P 1950 3300
F 0 "D4" H 2294 3346 50  0000 L CNN
F 1 "WS2812B" H 2294 3255 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 2000 3000 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 2050 2925 50  0001 L TNN
F 4 "C114586" H 1950 3300 50  0001 C CNN "lcsc"
	1    1950 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5FFBAB51
P 1450 3000
F 0 "#PWR021" H 1450 2750 50  0001 C CNN
F 1 "GND" H 1455 2827 50  0000 C CNN
F 2 "" H 1450 3000 50  0001 C CNN
F 3 "" H 1450 3000 50  0001 C CNN
	1    1450 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2950 1450 3000
$Comp
L power:+5V #PWR018
U 1 1 5FFBAB58
P 1950 2650
F 0 "#PWR018" H 1950 2500 50  0001 C CNN
F 1 "+5V" H 1965 2823 50  0000 C CNN
F 2 "" H 1950 2650 50  0001 C CNN
F 3 "" H 1950 2650 50  0001 C CNN
	1    1950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2650 1950 2700
Connection ~ 1950 2700
$Comp
L Device:C_Small C5
U 1 1 5FFBAB61
P 2900 2850
F 0 "C5" H 2992 2896 50  0000 L CNN
F 1 "100nF" H 2992 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2900 2850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL05B104KO5NNNC_C1525.pdf" H 2900 2850 50  0001 C CNN
F 4 "C1525" H 2900 2850 50  0001 C CNN "lcsc"
	1    2900 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2750 2900 2700
Wire Wire Line
	2900 2700 3400 2700
Wire Wire Line
	3400 2700 3400 3000
$Comp
L power:GND #PWR025
U 1 1 5FFBAB6A
P 3400 3650
F 0 "#PWR025" H 3400 3400 50  0001 C CNN
F 1 "GND" H 3405 3477 50  0000 C CNN
F 2 "" H 3400 3650 50  0001 C CNN
F 3 "" H 3400 3650 50  0001 C CNN
	1    3400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3650 3400 3600
$Comp
L LED:WS2812B D5
U 1 1 5FFBAB71
P 3400 3300
F 0 "D5" H 3744 3346 50  0000 L CNN
F 1 "WS2812B" H 3744 3255 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 3450 3000 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 3500 2925 50  0001 L TNN
F 4 "C114586" H 3400 3300 50  0001 C CNN "lcsc"
	1    3400 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5FFBAB77
P 2900 3000
F 0 "#PWR022" H 2900 2750 50  0001 C CNN
F 1 "GND" H 2905 2827 50  0000 C CNN
F 2 "" H 2900 3000 50  0001 C CNN
F 3 "" H 2900 3000 50  0001 C CNN
	1    2900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2950 2900 3000
$Comp
L power:+5V #PWR019
U 1 1 5FFBAB7E
P 3400 2650
F 0 "#PWR019" H 3400 2500 50  0001 C CNN
F 1 "+5V" H 3415 2823 50  0000 C CNN
F 2 "" H 3400 2650 50  0001 C CNN
F 3 "" H 3400 2650 50  0001 C CNN
	1    3400 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2650 3400 2700
Connection ~ 3400 2700
$Comp
L Device:C_Small C6
U 1 1 5FFBAB87
P 4250 2850
F 0 "C6" H 4342 2896 50  0000 L CNN
F 1 "100nF" H 4342 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4250 2850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL05B104KO5NNNC_C1525.pdf" H 4250 2850 50  0001 C CNN
F 4 "C1525" H 4250 2850 50  0001 C CNN "lcsc"
	1    4250 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2750 4250 2700
Wire Wire Line
	4250 2700 4750 2700
Wire Wire Line
	4750 2700 4750 3000
$Comp
L power:GND #PWR026
U 1 1 5FFBAB90
P 4750 3650
F 0 "#PWR026" H 4750 3400 50  0001 C CNN
F 1 "GND" H 4755 3477 50  0000 C CNN
F 2 "" H 4750 3650 50  0001 C CNN
F 3 "" H 4750 3650 50  0001 C CNN
	1    4750 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3650 4750 3600
$Comp
L LED:WS2812B D6
U 1 1 5FFBAB97
P 4750 3300
F 0 "D6" H 5094 3346 50  0000 L CNN
F 1 "WS2812B" H 5094 3255 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 4800 3000 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 4850 2925 50  0001 L TNN
F 4 "C114586" H 4750 3300 50  0001 C CNN "lcsc"
	1    4750 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5FFBAB9D
P 4250 3000
F 0 "#PWR023" H 4250 2750 50  0001 C CNN
F 1 "GND" H 4255 2827 50  0000 C CNN
F 2 "" H 4250 3000 50  0001 C CNN
F 3 "" H 4250 3000 50  0001 C CNN
	1    4250 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2950 4250 3000
$Comp
L power:+5V #PWR020
U 1 1 5FFBABA4
P 4750 2650
F 0 "#PWR020" H 4750 2500 50  0001 C CNN
F 1 "+5V" H 4765 2823 50  0000 C CNN
F 2 "" H 4750 2650 50  0001 C CNN
F 3 "" H 4750 2650 50  0001 C CNN
	1    4750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2650 4750 2700
Connection ~ 4750 2700
Wire Wire Line
	3700 3300 4450 3300
Wire Wire Line
	3100 3300 2250 3300
Wire Wire Line
	5050 1650 5250 1650
Wire Wire Line
	1650 3300 1350 3300
Text Label 5250 1650 0    50   ~ 0
OUT_LINE_1
Text Label 1350 3300 2    50   ~ 0
OUT_LINE_1
Wire Wire Line
	5050 3300 5250 3300
Text Label 5250 3300 0    50   ~ 0
OUT_LINE_2
$Comp
L Device:C_Small C7
U 1 1 5FFCC59A
P 1450 4450
F 0 "C7" H 1542 4496 50  0000 L CNN
F 1 "100nF" H 1542 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1450 4450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL05B104KO5NNNC_C1525.pdf" H 1450 4450 50  0001 C CNN
F 4 "C1525" H 1450 4450 50  0001 C CNN "lcsc"
	1    1450 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4350 1450 4300
Wire Wire Line
	1450 4300 1950 4300
Wire Wire Line
	1950 4300 1950 4600
$Comp
L power:GND #PWR033
U 1 1 5FFCC5A3
P 1950 5250
F 0 "#PWR033" H 1950 5000 50  0001 C CNN
F 1 "GND" H 1955 5077 50  0000 C CNN
F 2 "" H 1950 5250 50  0001 C CNN
F 3 "" H 1950 5250 50  0001 C CNN
	1    1950 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5250 1950 5200
$Comp
L LED:WS2812B D7
U 1 1 5FFCC5AA
P 1950 4900
F 0 "D7" H 2294 4946 50  0000 L CNN
F 1 "WS2812B" H 2294 4855 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 2000 4600 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 2050 4525 50  0001 L TNN
F 4 "C114586" H 1950 4900 50  0001 C CNN "lcsc"
	1    1950 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5FFCC5B0
P 1450 4600
F 0 "#PWR030" H 1450 4350 50  0001 C CNN
F 1 "GND" H 1455 4427 50  0000 C CNN
F 2 "" H 1450 4600 50  0001 C CNN
F 3 "" H 1450 4600 50  0001 C CNN
	1    1450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4550 1450 4600
$Comp
L power:+5V #PWR027
U 1 1 5FFCC5B7
P 1950 4250
F 0 "#PWR027" H 1950 4100 50  0001 C CNN
F 1 "+5V" H 1965 4423 50  0000 C CNN
F 2 "" H 1950 4250 50  0001 C CNN
F 3 "" H 1950 4250 50  0001 C CNN
	1    1950 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4250 1950 4300
Connection ~ 1950 4300
$Comp
L Device:C_Small C8
U 1 1 5FFCC5C0
P 2900 4450
F 0 "C8" H 2992 4496 50  0000 L CNN
F 1 "100nF" H 2992 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2900 4450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL05B104KO5NNNC_C1525.pdf" H 2900 4450 50  0001 C CNN
F 4 "C1525" H 2900 4450 50  0001 C CNN "lcsc"
	1    2900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4350 2900 4300
Wire Wire Line
	2900 4300 3400 4300
Wire Wire Line
	3400 4300 3400 4600
$Comp
L power:GND #PWR034
U 1 1 5FFCC5C9
P 3400 5250
F 0 "#PWR034" H 3400 5000 50  0001 C CNN
F 1 "GND" H 3405 5077 50  0000 C CNN
F 2 "" H 3400 5250 50  0001 C CNN
F 3 "" H 3400 5250 50  0001 C CNN
	1    3400 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5250 3400 5200
$Comp
L LED:WS2812B D8
U 1 1 5FFCC5D0
P 3400 4900
F 0 "D8" H 3744 4946 50  0000 L CNN
F 1 "WS2812B" H 3744 4855 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 3450 4600 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 3500 4525 50  0001 L TNN
F 4 "C114586" H 3400 4900 50  0001 C CNN "lcsc"
	1    3400 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5FFCC5D6
P 2900 4600
F 0 "#PWR031" H 2900 4350 50  0001 C CNN
F 1 "GND" H 2905 4427 50  0000 C CNN
F 2 "" H 2900 4600 50  0001 C CNN
F 3 "" H 2900 4600 50  0001 C CNN
	1    2900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4550 2900 4600
$Comp
L power:+5V #PWR028
U 1 1 5FFCC5DD
P 3400 4250
F 0 "#PWR028" H 3400 4100 50  0001 C CNN
F 1 "+5V" H 3415 4423 50  0000 C CNN
F 2 "" H 3400 4250 50  0001 C CNN
F 3 "" H 3400 4250 50  0001 C CNN
	1    3400 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4250 3400 4300
Connection ~ 3400 4300
$Comp
L Device:C_Small C9
U 1 1 5FFCC5E6
P 4250 4450
F 0 "C9" H 4342 4496 50  0000 L CNN
F 1 "100nF" H 4342 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4250 4450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL05B104KO5NNNC_C1525.pdf" H 4250 4450 50  0001 C CNN
F 4 "C1525" H 4250 4450 50  0001 C CNN "lcsc"
	1    4250 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4350 4250 4300
Wire Wire Line
	4250 4300 4750 4300
Wire Wire Line
	4750 4300 4750 4600
$Comp
L power:GND #PWR035
U 1 1 5FFCC5EF
P 4750 5250
F 0 "#PWR035" H 4750 5000 50  0001 C CNN
F 1 "GND" H 4755 5077 50  0000 C CNN
F 2 "" H 4750 5250 50  0001 C CNN
F 3 "" H 4750 5250 50  0001 C CNN
	1    4750 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5250 4750 5200
$Comp
L LED:WS2812B D9
U 1 1 5FFCC5F6
P 4750 4900
F 0 "D9" H 5094 4946 50  0000 L CNN
F 1 "WS2812B" H 5094 4855 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 4800 4600 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 4850 4525 50  0001 L TNN
F 4 "C114586" H 4750 4900 50  0001 C CNN "lcsc"
	1    4750 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5FFCC5FC
P 4250 4600
F 0 "#PWR032" H 4250 4350 50  0001 C CNN
F 1 "GND" H 4255 4427 50  0000 C CNN
F 2 "" H 4250 4600 50  0001 C CNN
F 3 "" H 4250 4600 50  0001 C CNN
	1    4250 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4550 4250 4600
$Comp
L power:+5V #PWR029
U 1 1 5FFCC603
P 4750 4250
F 0 "#PWR029" H 4750 4100 50  0001 C CNN
F 1 "+5V" H 4765 4423 50  0000 C CNN
F 2 "" H 4750 4250 50  0001 C CNN
F 3 "" H 4750 4250 50  0001 C CNN
	1    4750 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4250 4750 4300
Connection ~ 4750 4300
Wire Wire Line
	3700 4900 4450 4900
Wire Wire Line
	3100 4900 2250 4900
Wire Wire Line
	1650 4900 1350 4900
Text Label 1350 4900 2    50   ~ 0
OUT_LINE_2
Wire Wire Line
	5050 4900 5250 4900
Text Label 5250 4900 0    50   ~ 0
DOUT
$Comp
L panneau_led:CONNECT_POWER J1
U 1 1 5FFD66CC
P 7300 1850
F 0 "J1" H 7478 1901 50  0000 L CNN
F 1 "CONNECT_POWER" H 7478 1810 50  0000 L CNN
F 2 "panneau led:CONNECT_POWER" H 7200 1900 50  0001 C CNN
F 3 "" H 7200 1900 50  0001 C CNN
F 4 "NA" H 7300 1850 50  0001 C CNN "lcsc"
	1    7300 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5FFDA49D
P 6900 1800
F 0 "#PWR09" H 6900 1550 50  0001 C CNN
F 1 "GND" H 6905 1627 50  0000 C CNN
F 2 "" H 6900 1800 50  0001 C CNN
F 3 "" H 6900 1800 50  0001 C CNN
	1    6900 1800
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 5FFE0DEC
P 6900 1650
F 0 "#PWR07" H 6900 1500 50  0001 C CNN
F 1 "+5V" H 6915 1823 50  0000 C CNN
F 2 "" H 6900 1650 50  0001 C CNN
F 3 "" H 6900 1650 50  0001 C CNN
	1    6900 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1700 6900 1650
Wire Wire Line
	6900 1700 7050 1700
Wire Wire Line
	7050 1800 6900 1800
Wire Wire Line
	7050 1900 6900 1900
Wire Wire Line
	7050 2000 6900 2000
Text Label 6900 1900 0    50   ~ 0
DIN
Text Label 6900 2000 0    50   ~ 0
DOUT
Wire Wire Line
	1650 1650 1350 1650
Text Label 1350 1650 0    50   ~ 0
DIN
$Comp
L panneau_led:CONNECT_POWER J2
U 1 1 5FFEE2AB
P 8750 1850
F 0 "J2" H 8928 1901 50  0000 L CNN
F 1 "CONNECT_POWER" H 8928 1810 50  0000 L CNN
F 2 "panneau led:CONNECT_POWER" H 8650 1900 50  0001 C CNN
F 3 "" H 8650 1900 50  0001 C CNN
F 4 "NA" H 8750 1850 50  0001 C CNN "lcsc"
	1    8750 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5FFEE2B1
P 8350 1800
F 0 "#PWR010" H 8350 1550 50  0001 C CNN
F 1 "GND" H 8355 1627 50  0000 C CNN
F 2 "" H 8350 1800 50  0001 C CNN
F 3 "" H 8350 1800 50  0001 C CNN
	1    8350 1800
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5FFEE2B7
P 8350 1650
F 0 "#PWR08" H 8350 1500 50  0001 C CNN
F 1 "+5V" H 8365 1823 50  0000 C CNN
F 2 "" H 8350 1650 50  0001 C CNN
F 3 "" H 8350 1650 50  0001 C CNN
	1    8350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1700 8350 1650
Wire Wire Line
	8350 1700 8500 1700
Wire Wire Line
	8500 1800 8350 1800
Wire Wire Line
	8500 1900 8350 1900
Wire Wire Line
	8500 2000 8350 2000
Text Label 8350 2000 0    50   ~ 0
DIN
Text Label 8350 1900 0    50   ~ 0
DOUT
$Comp
L panneau_led:CONNECT_POWER J3
U 1 1 5FFF054B
P 7300 2500
F 0 "J3" H 7478 2551 50  0000 L CNN
F 1 "CONNECT_POWER" H 7478 2460 50  0000 L CNN
F 2 "panneau led:CONNECT_POWER" H 7200 2550 50  0001 C CNN
F 3 "" H 7200 2550 50  0001 C CNN
F 4 "NA" H 7300 2500 50  0001 C CNN "lcsc"
	1    7300 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5FFF0551
P 6900 2450
F 0 "#PWR016" H 6900 2200 50  0001 C CNN
F 1 "GND" H 6905 2277 50  0000 C CNN
F 2 "" H 6900 2450 50  0001 C CNN
F 3 "" H 6900 2450 50  0001 C CNN
	1    6900 2450
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 5FFF0557
P 6900 2300
F 0 "#PWR014" H 6900 2150 50  0001 C CNN
F 1 "+5V" H 6915 2473 50  0000 C CNN
F 2 "" H 6900 2300 50  0001 C CNN
F 3 "" H 6900 2300 50  0001 C CNN
	1    6900 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2350 6900 2300
Wire Wire Line
	6900 2350 7050 2350
Wire Wire Line
	7050 2450 6900 2450
Wire Wire Line
	7050 2550 6900 2550
Wire Wire Line
	7050 2650 6900 2650
$Comp
L panneau_led:CONNECT_POWER J4
U 1 1 5FFF3075
P 8750 2500
F 0 "J4" H 8928 2551 50  0000 L CNN
F 1 "CONNECT_POWER" H 8928 2460 50  0000 L CNN
F 2 "panneau led:CONNECT_POWER" H 8650 2550 50  0001 C CNN
F 3 "" H 8650 2550 50  0001 C CNN
F 4 "NA" H 8750 2500 50  0001 C CNN "lcsc"
	1    8750 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5FFF307B
P 8350 2450
F 0 "#PWR017" H 8350 2200 50  0001 C CNN
F 1 "GND" H 8355 2277 50  0000 C CNN
F 2 "" H 8350 2450 50  0001 C CNN
F 3 "" H 8350 2450 50  0001 C CNN
	1    8350 2450
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 5FFF3081
P 8350 2300
F 0 "#PWR015" H 8350 2150 50  0001 C CNN
F 1 "+5V" H 8365 2473 50  0000 C CNN
F 2 "" H 8350 2300 50  0001 C CNN
F 3 "" H 8350 2300 50  0001 C CNN
	1    8350 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2350 8350 2300
Wire Wire Line
	8350 2350 8500 2350
Wire Wire Line
	8500 2450 8350 2450
Wire Wire Line
	8500 2550 8350 2550
Wire Wire Line
	8500 2650 8350 2650
$Comp
L Mechanical:MountingHole H1
U 1 1 6002048B
P 8650 3450
F 0 "H1" H 8750 3496 50  0000 L CNN
F 1 "M2.5" H 8750 3405 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 8650 3450 50  0001 C CNN
F 3 "~" H 8650 3450 50  0001 C CNN
F 4 "NA" H 8650 3450 50  0001 C CNN "lcsc"
	1    8650 3450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60027EE4
P 9100 3450
F 0 "H2" H 9200 3496 50  0000 L CNN
F 1 "M2.5" H 9200 3405 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 9100 3450 50  0001 C CNN
F 3 "~" H 9100 3450 50  0001 C CNN
F 4 "NA" H 9100 3450 50  0001 C CNN "lcsc"
	1    9100 3450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 60029DA1
P 8650 3750
F 0 "H3" H 8750 3796 50  0000 L CNN
F 1 "M2.5" H 8750 3705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 8650 3750 50  0001 C CNN
F 3 "~" H 8650 3750 50  0001 C CNN
F 4 "NA" H 8650 3750 50  0001 C CNN "lcsc"
	1    8650 3750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6002BC4A
P 9100 3750
F 0 "H4" H 9200 3796 50  0000 L CNN
F 1 "M2.5" H 9200 3705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 9100 3750 50  0001 C CNN
F 3 "~" H 9100 3750 50  0001 C CNN
F 4 "NA" H 9100 3750 50  0001 C CNN "lcsc"
	1    9100 3750
	1    0    0    -1  
$EndComp
Text Notes 7250 1350 0    50   ~ 0
Haut
Text Notes 8700 1350 0    50   ~ 0
Bas
Text Notes 7200 2250 0    50   ~ 0
Gauche
Text Notes 8650 2200 0    50   ~ 0
Droite
Text Label 8350 2550 0    50   ~ 0
DOUT
Text Label 8350 2650 0    50   ~ 0
DIN
Text Label 6900 2650 0    50   ~ 0
DOUT
Text Label 6900 2550 0    50   ~ 0
DIN
Wire Notes Line
	8050 3100 9900 3100
Wire Notes Line
	9900 3100 9900 4250
Wire Notes Line
	9900 4250 8050 4250
Wire Notes Line
	8050 4250 8050 3100
Text Notes 8100 3200 0    50   ~ 0
Trou de fixation
Wire Notes Line
	8050 4350 9900 4350
Wire Notes Line
	9900 4350 9900 5500
Wire Notes Line
	9900 5500 8050 5500
Wire Notes Line
	8050 5500 8050 4350
Text Notes 8100 4450 0    50   ~ 0
Trou maintien croissillion
$Comp
L Mechanical:MountingHole H5
U 1 1 6004C758
P 8650 4700
F 0 "H5" H 8750 4746 50  0000 L CNN
F 1 "M2.5" H 8750 4655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 8650 4700 50  0001 C CNN
F 3 "~" H 8650 4700 50  0001 C CNN
F 4 "NA" H 8650 4700 50  0001 C CNN "lcsc"
	1    8650 4700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 6004C75F
P 9100 4700
F 0 "H6" H 9200 4746 50  0000 L CNN
F 1 "M2.5" H 9200 4655 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 9100 4700 50  0001 C CNN
F 3 "~" H 9100 4700 50  0001 C CNN
F 4 "NA" H 9100 4700 50  0001 C CNN "lcsc"
	1    9100 4700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 6004C766
P 8650 5000
F 0 "H7" H 8750 5046 50  0000 L CNN
F 1 "M2.5" H 8750 4955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 8650 5000 50  0001 C CNN
F 3 "~" H 8650 5000 50  0001 C CNN
F 4 "NA" H 8650 5000 50  0001 C CNN "lcsc"
	1    8650 5000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H8
U 1 1 6004C76D
P 9100 5000
F 0 "H8" H 9200 5046 50  0000 L CNN
F 1 "M2.5" H 9200 4955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 9100 5000 50  0001 C CNN
F 3 "~" H 9100 5000 50  0001 C CNN
F 4 "NA" H 9100 5000 50  0001 C CNN "lcsc"
	1    9100 5000
	1    0    0    -1  
$EndComp
$EndSCHEMATC