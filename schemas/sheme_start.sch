EESchema Schematic File Version 4
LIBS:sheme_start-cache
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
L MCU_Module:Arduino_UNO_R3 A?
U 1 1 5DF8DB7E
P 5100 3050
F 0 "A?" H 5100 4228 50  0001 C CNN
F 1 "Arduino UNO" H 5100 4136 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 5250 2000 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 4900 4100 50  0001 C CNN
	1    5100 3050
	1    0    0    -1  
$EndComp
$Comp
L Sensor:SHT1x U?
U 1 1 5DF8E476
P 6800 3950
F 0 "U?" H 6570 3996 50  0001 R CNN
F 1 "SHT" H 6570 3950 50  0000 R CNN
F 2 "" H 6950 4200 50  0001 C CNN
F 3 "https://www.sensirion.com/fileadmin/user_upload/customers/sensirion/Dokumente/2_Humidity_Sensors/Sensirion_Humidity_Sensors_SHT1x_Datasheet.pdf" H 6950 4200 50  0001 C CNN
	1    6800 3950
	0    -1   -1   0   
$EndComp
$Comp
L SEN-11574:SEN-11574 P?
U 1 1 5DF8EA71
P 7750 3000
F 0 "P?" H 8280 3046 50  0001 L CNN
F 1 "Pulse Sensor" H 8280 3000 50  0000 L CNN
F 2 "XDCR_SEN-11574" H 7750 3000 50  0001 L BNN
F 3 "SEN-11574" H 7750 3000 50  0001 L BNN
F 4 "SparkFun" H 7750 3000 50  0001 L BNN "Field4"
F 5 "None" H 7750 3000 50  0001 L BNN "Field5"
F 6 "None" H 7750 3000 50  0001 L BNN "Field6"
F 7 "Unavailable" H 7750 3000 50  0001 L BNN "Field7"
F 8 "Pulse Sensor For Arduino" H 7750 3000 50  0001 L BNN "Field8"
	1    7750 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DF8F020
P 3350 4300
F 0 "R?" H 3420 4346 50  0001 L CNN
F 1 "R" H 3420 4300 50  0000 L CNN
F 2 "" V 3280 4300 50  0001 C CNN
F 3 "~" H 3350 4300 50  0001 C CNN
	1    3350 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF8F0EE
P 3350 4100
F 0 "R?" H 3420 4146 50  0001 L CNN
F 1 "R" H 3420 4100 50  0000 L CNN
F 2 "" V 3280 4100 50  0001 C CNN
F 3 "~" H 3350 4100 50  0001 C CNN
	1    3350 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF8F10B
P 3350 3900
F 0 "R?" H 3420 3946 50  0001 L CNN
F 1 "R" H 3420 3900 50  0000 L CNN
F 2 "" V 3280 3900 50  0001 C CNN
F 3 "~" H 3350 3900 50  0001 C CNN
	1    3350 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_CRGB D?
U 1 1 5DF8FD60
P 2800 4100
F 0 "D?" V 2754 4460 50  0001 L CNN
F 1 "RGB LED" V 2800 4460 50  0000 L CNN
F 2 "" H 2800 4050 50  0001 C CNN
F 3 "~" H 2800 4050 50  0001 C CNN
	1    2800 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4300 3200 4300
Wire Wire Line
	3000 4100 3200 4100
Wire Wire Line
	3000 3900 3200 3900
Wire Wire Line
	6700 3650 6700 3450
Wire Wire Line
	6700 3450 5600 3450
Wire Wire Line
	7100 4050 7100 4450
Wire Wire Line
	7100 4450 5200 4450
Wire Wire Line
	5200 4450 5200 4150
Wire Wire Line
	6500 4050 6000 4050
Wire Wire Line
	6000 4050 6000 1800
Wire Wire Line
	6000 1800 5200 1800
Wire Wire Line
	5200 1800 5200 2050
Wire Wire Line
	6900 3650 6900 3550
Wire Wire Line
	6900 3550 5600 3550
Wire Wire Line
	7550 3100 5700 3100
Wire Wire Line
	5700 3100 5700 3050
Wire Wire Line
	5700 3050 5600 3050
Wire Wire Line
	7550 3000 6150 3000
Wire Wire Line
	6150 3000 6150 1900
Wire Wire Line
	6150 1900 5300 1900
Wire Wire Line
	7550 2900 7200 2900
Wire Wire Line
	7200 2900 7200 4650
Wire Wire Line
	7200 4650 5100 4650
Wire Wire Line
	5100 4650 5100 4150
Wire Wire Line
	5300 1900 5300 2050
Wire Wire Line
	3500 3900 4300 3900
Wire Wire Line
	4300 3900 4300 3350
Wire Wire Line
	4300 3350 4600 3350
Wire Wire Line
	3500 4100 4400 4100
Wire Wire Line
	4400 4100 4400 3450
Wire Wire Line
	4400 3450 4600 3450
Wire Wire Line
	3500 4300 4500 4300
Wire Wire Line
	4500 4300 4500 3550
Wire Wire Line
	4500 3550 4600 3550
Wire Wire Line
	2600 4100 2500 4100
Wire Wire Line
	2500 4100 2500 4600
Wire Wire Line
	2500 4600 5000 4600
Wire Wire Line
	5000 4150 5000 4600
$EndSCHEMATC
