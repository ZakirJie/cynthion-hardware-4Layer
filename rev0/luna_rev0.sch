EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 9
Title "LUNA USB Multitool"
Date "2020-12-23"
Rev "r0"
Comp "Copyright 2019-2020 Great Scott Gadgets"
Comment1 "Katherine J. Temkin"
Comment2 ""
Comment3 "Licensed under the CERN-OHL-P v2"
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR05
U 1 1 5DCD8771
P 6300 4850
F 0 "#PWR05" H 6300 4700 50  0001 C CNN
F 1 "+5V" V 6315 4978 50  0000 L CNN
F 2 "" H 6300 4850 50  0001 C CNN
F 3 "" H 6300 4850 50  0001 C CNN
	1    6300 4850
	0    -1   -1   0   
$EndComp
$Sheet
S 4100 6600 1700 1050
U 5DCD9772
F0 "Sideband Section" 50
F1 "sideband_side.sch" 50
F2 "SIDEBAND_PHY_1V8" O L 4100 6900 50 
F3 "SIDEBAND_VBUS" I L 4100 7300 50 
F4 "SIDEBAND_D-" B R 5800 7200 50 
F5 "SIDEBAND_D+" B R 5800 7100 50 
F6 "UC_USB_INHIBIT" B L 4100 7000 50 
F7 "~FPGA_SELF_PROGRAM" O L 4100 6800 50 
F8 "SIDEBAND_CC1" B R 5800 6750 50 
F9 "SIDEBAND_CC2" B R 5800 6850 50 
F10 "SIDEBAND_SBU2" B R 5800 7500 50 
F11 "SIDEBAND_SBU1" B R 5800 7400 50 
$EndSheet
Wire Wire Line
	4100 6900 3100 6900
Wire Wire Line
	4100 7300 3850 7300
Text Label 3850 7300 2    50   ~ 0
SIDEBAND_VBUS
Wire Wire Line
	5800 5300 6800 5300
Connection ~ 6800 5300
Wire Wire Line
	6800 5300 7050 5300
$Comp
L power:GND #PWR01
U 1 1 5DD6A23B
P 1000 5400
F 0 "#PWR01" H 1000 5150 50  0001 C CNN
F 1 "GND" H 1004 5228 50  0000 C CNN
F 2 "" H 1000 5400 50  0001 C CNN
F 3 "" H 1000 5400 50  0001 C CNN
	1    1000 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3700 1700 3700
Wire Wire Line
	1600 4400 1700 4400
Wire Wire Line
	2250 4300 1700 4300
$Comp
L Device:D_Schottky D1
U 1 1 5DDCCE15
P 1900 3550
F 0 "D1" H 1900 3650 50  0000 C CNN
F 1 "PMEG3050EP,115" H 1800 3700 50  0001 C CNN
F 2 "luna:SOD128" H 1900 3550 50  0001 C CNN
F 3 "~" H 1900 3550 50  0001 C CNN
F 4 "Nexperia" H 1900 3550 50  0001 C CNN "Manufacturer"
F 5 "PMEG3050EP,115" H 1900 3550 50  0001 C CNN "Part Number"
F 6 "DIODE SCHOTTKY 30V 5A SOD128" H 1900 3550 50  0001 C CNN "Description"
	1    1900 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 3550 1700 3550
Wire Wire Line
	1700 3550 1700 3700
Connection ~ 1700 3700
Wire Wire Line
	1700 3700 1600 3700
Wire Wire Line
	4100 3500 3700 3500
$Sheet
S 800  6450 1700 950 
U 5DE77FE3
F0 "RAM Section" 50
F1 "ram_section.sch" 50
$EndSheet
Text Notes 1050 6950 0    100  ~ 0
64Mib HyperRAM
Wire Wire Line
	5800 3450 6800 3450
Wire Wire Line
	5800 3550 6900 3550
Connection ~ 6800 3450
Connection ~ 6900 3550
Wire Wire Line
	3100 6900 3100 6000
Wire Wire Line
	4100 5200 3700 5200
Wire Wire Line
	3700 5200 3700 3500
$Comp
L support_hardware:DSC60xx Y1
U 1 1 5E0711AF
P 1050 2400
F 0 "Y1" H 900 2000 50  0000 L CNN
F 1 "Osc60MHz" H 1450 2450 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 1050 2400 50  0001 C CNN
F 3 "" H 1050 2400 50  0001 C CNN
F 4 "MEMS OSC XO 60.0000MHZ H/LV-CMOS" H 1050 2400 50  0001 C CNN "Description"
F 5 "SiTIME" H 1050 2400 50  0001 C CNN "Manufacturer"
F 6 "SIT1602BC-23-33E-60.000000E" H 1050 2400 50  0001 C CNN "Part Number"
	1    1050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2600 800  2600
Wire Wire Line
	800  2600 800  2200
Wire Wire Line
	1300 2200 1300 2300
$Comp
L power:+3V3 #PWR011
U 1 1 5E07C6A8
P 1300 2200
F 0 "#PWR011" H 1300 2050 50  0001 C CNN
F 1 "+3V3" H 1314 2373 50  0000 C CNN
F 2 "" H 1300 2200 50  0001 C CNN
F 3 "" H 1300 2200 50  0001 C CNN
	1    1300 2200
	1    0    0    -1  
$EndComp
Text Label 7000 3450 0    50   ~ 0
TARGET_D-
Wire Wire Line
	4100 6000 3100 6000
$Comp
L Switch:SW_SPST SW1
U 1 1 5E0E6B65
P 2350 5550
F 0 "SW1" H 2100 5600 50  0000 C CNN
F 1 "BTN_DFU" H 2350 5400 50  0000 C CNN
F 2 "luna:SW_Tactile_SPST_Angled_TS-1002N-09526" H 2350 5550 50  0001 C CNN
F 3 "~" H 2350 5550 50  0001 C CNN
F 4 "SWITCH TACTILE SPST-NO 0.05A 12V" H 2350 5550 50  0001 C CNN "Description"
F 5 "XUNPU" H 2350 5550 50  0001 C CNN "Manufacturer"
F 6 "TS-1002N-09526" H 2350 5550 50  0001 C CNN "Part Number"
F 7 "Yuandi TS-1093C-A12B3-D1" H 2350 5550 50  0001 C CNN "Substitution"
	1    2350 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5550 4100 5550
Wire Wire Line
	2000 5550 2150 5550
Text Label 2900 5550 0    50   ~ 0
FORCE_DFU
Wire Wire Line
	4100 7000 3000 7000
Wire Wire Line
	3000 7000 3000 5900
Wire Wire Line
	3000 5900 4100 5900
Text Label 4050 7000 2    50   ~ 0
USB_INHIBIT
Text Label 4050 6900 2    50   ~ 0
SIDEBAND_PHY_1V8
Text Label 3700 4150 1    50   ~ 0
TARGET_PHY_1V8
$Comp
L Switch:SW_SPST SW2
U 1 1 5E2B35A7
P 2350 5900
F 0 "SW2" H 2100 5950 50  0000 C CNN
F 1 "BTN_RESET" H 2350 5800 50  0000 C CNN
F 2 "luna:SW_Tactile_SPST_Angled_TS-1002N-09526" H 2350 5900 50  0001 C CNN
F 3 "~" H 2350 5900 50  0001 C CNN
F 4 "SWITCH TACTILE SPST-NO 0.05A 12V" H 2350 5900 50  0001 C CNN "Description"
F 5 "XUNPU" H 2350 5900 50  0001 C CNN "Manufacturer"
F 6 "TS-1002N-09526" H 2350 5900 50  0001 C CNN "Part Number"
F 7 "Yuandi TS-1093C-A12B3-D1" H 2350 5900 50  0001 C CNN "Substitution"
	1    2350 5900
	1    0    0    -1  
$EndComp
Text Label 2900 5650 0    50   ~ 0
FULL_RESET
Wire Wire Line
	2000 5550 2000 5900
Wire Wire Line
	2000 5900 2150 5900
Connection ~ 2000 5550
Wire Wire Line
	2700 5650 4100 5650
Wire Wire Line
	2550 5900 2700 5900
$Comp
L power:GND #PWR0102
U 1 1 5E2DCA26
P 1800 5550
F 0 "#PWR0102" H 1800 5300 50  0001 C CNN
F 1 "GND" V 1804 5422 50  0000 R CNN
F 2 "" H 1800 5550 50  0001 C CNN
F 3 "" H 1800 5550 50  0001 C CNN
	1    1800 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 5550 2000 5550
$Comp
L power:GND #PWR0104
U 1 1 5E35A664
P 1300 3050
F 0 "#PWR0104" H 1300 2800 50  0001 C CNN
F 1 "GND" H 1450 3000 50  0000 C CNN
F 2 "" H 1300 3050 50  0001 C CNN
F 3 "" H 1300 3050 50  0001 C CNN
	1    1300 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 3050 1300 2950
Wire Wire Line
	5800 6200 5950 6200
Wire Wire Line
	5800 6300 5950 6300
Text Label 5950 6200 0    50   ~ 0
UC_TX_FPGA_RX
Text Label 5950 6300 0    50   ~ 0
UC_RX_FPGA_TX
$Comp
L power:+5V #PWR0113
U 1 1 5E2D79BC
P 2050 3550
F 0 "#PWR0113" H 2050 3400 50  0001 C CNN
F 1 "+5V" V 1950 3500 50  0000 L CNN
F 2 "" H 2050 3550 50  0001 C CNN
F 3 "" H 2050 3550 50  0001 C CNN
	1    2050 3550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5E2A54E0
P 2700 2400
F 0 "#PWR0110" H 2700 2150 50  0001 C CNN
F 1 "GND" V 2700 2200 50  0000 C CNN
F 2 "" H 2700 2400 50  0001 C CNN
F 3 "" H 2700 2400 50  0001 C CNN
	1    2700 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	800  2200 1300 2200
Connection ~ 1300 2200
Wire Notes Line
	3900 500  3900 3200
Wire Notes Line
	3900 3200 500  3200
$Comp
L Connector:TestPoint TP1
U 1 1 5E216C1B
P 2100 2600
F 0 "TP1" H 2158 2718 50  0000 L CNN
F 1 "TestPoint" H 2158 2628 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2300 2600 50  0001 C CNN
F 3 "~" H 2300 2600 50  0001 C CNN
F 4 "DNP" H 2100 2600 50  0001 C CNN "Note"
	1    2100 2600
	0    1    1    0   
$EndComp
Text Notes 4050 850  0    50   ~ 0
All caps ceramic / rated 5 volts or\nhigher unless noted; nominal values\nare post-DC-bias degradation.
Text Notes 4050 1250 0    50   ~ 0
All resistors <=20% and >= 1/16W\nunless noted.
Wire Wire Line
	2700 5650 2700 5900
$Sheet
S 4100 4900 1700 1500
U 5DCAA6D2
F0 "FPGA Configuration and Dev Features" 39
F1 "fpga_configuration.sch" 39
F2 "SIDEBAND_D-" B R 5800 5200 50 
F3 "SIDEBAND_D+" B R 5800 5300 50 
F4 "SIDEBAND_PHY_1V8" I L 4100 6000 50 
F5 "HOST_PHY_1V8" I L 4100 5300 50 
F6 "TARGET_PHY_1V8" I L 4100 5200 50 
F7 "FORCE_DFU" I L 4100 5550 50 
F8 "INHIBIT_UC_USB" B L 4100 5900 50 
F9 "RESET" I L 4100 5650 50 
F10 "UC_TX_FPGA_RX" O R 5800 6200 50 
F11 "UC_RX_FPGA_TX" I R 5800 6300 50 
F12 "~FPGA_SELF_PROGRAM" I L 4100 6100 50 
F13 "TARGET_VBUS_C" I R 5800 5000 50 
$EndSheet
Wire Wire Line
	4100 6800 3200 6800
Wire Wire Line
	3200 6800 3200 6100
Wire Wire Line
	3200 6100 4100 6100
Text Label 4050 6800 2    50   ~ 0
~FPGA_SELF_PROGRAM
$Comp
L Connector:USB_C_Receptacle_USB2.0 J1
U 1 1 5FE4B57F
P 1000 4300
F 0 "J1" H 1107 5167 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 1107 5076 50  0000 C CNN
F 2 "luna:USB_C_Receptacle_HRO_TYPE-C-31-M-12" H 1150 4300 50  0001 C CNN
F 3 "" H 1150 4300 50  0001 C CNN
F 4 "CONN RCPT USB2.0 TYPE-C 16POS" H 1000 4300 50  0001 C CNN "Description"
F 5 "XKB" H 1000 4300 50  0001 C CNN "Manufacturer"
F 6 "U262-161N-4BVC11" H 1000 4300 50  0001 C CNN "Part Number"
F 7 "HRO TYPE-C-31-M-12, GCT USB4105-GF-A, Cvilux USA CU3216SASDLR009-NH" H 1000 4300 50  0001 C CNN "Substitution"
	1    1000 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  5200 700  5300
Wire Wire Line
	700  5300 1000 5300
Wire Wire Line
	1000 5300 1000 5400
Wire Wire Line
	1000 5200 1000 5300
Connection ~ 1000 5300
Wire Wire Line
	1600 4200 1700 4200
Wire Wire Line
	1700 4200 1700 4300
Connection ~ 1700 4300
Wire Wire Line
	1700 4300 1600 4300
Wire Wire Line
	1600 4500 1700 4500
Wire Wire Line
	1700 4500 1700 4400
Connection ~ 1700 4400
Wire Wire Line
	1700 4400 2250 4400
Wire Wire Line
	3450 4850 3450 5300
Wire Wire Line
	3350 4850 3450 4850
Wire Wire Line
	3450 5300 4100 5300
Text Label 3500 5300 0    50   ~ 0
HOST_PHY_1V8
$Comp
L Connector:USB_A J3
U 1 1 5DD6DEF2
P 10450 2250
F 0 "J3" H 10221 2239 50  0000 R CNN
F 1 "USB_A" H 10221 2149 50  0000 R CNN
F 2 "luna:USB_A_Kycon_KUSBXHT-SB-AS1N-B30-NF_Horizontal" H 10600 2200 50  0001 C CNN
F 3 " ~" H 10600 2200 50  0001 C CNN
F 4 "USB A TYPE RECEPTACLE, SHORT BODY" H 10450 2250 50  0001 C CNN "Description"
F 5 "Jing Extension of the Electronic Co." H 10450 2250 50  0001 C CNN "Manufacturer"
F 6 "C42504" H 10450 2250 50  0001 C CNN "Part Number"
F 7 "Kycon KUSBXHT-SB-AS1N-B30-NF, Würth Elektronik 614104150121, Tensility 54-00015, GCT USB1125-GF-B" H 10450 2250 50  0001 C CNN "Substitution"
	1    10450 2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10450 2650 10450 2700
Wire Wire Line
	10450 2700 10500 2700
Wire Wire Line
	10550 2700 10550 2650
$Comp
L power:GND #PWR08
U 1 1 5DD6FDBE
P 10500 2800
F 0 "#PWR08" H 10500 2550 50  0001 C CNN
F 1 "GND" H 10504 2628 50  0000 C CNN
F 2 "" H 10500 2800 50  0001 C CNN
F 3 "" H 10500 2800 50  0001 C CNN
	1    10500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 2800 10500 2700
Connection ~ 10500 2700
Wire Wire Line
	10500 2700 10550 2700
Wire Wire Line
	8500 2050 10150 2050
Wire Wire Line
	6900 3550 7550 3550
Wire Wire Line
	6900 3550 6900 2250
Wire Wire Line
	6800 2350 6800 3450
$Comp
L Graphic:Logo_Open_Hardware_Large #LOGO1
U 1 1 5FCC45F6
P 10700 6100
F 0 "#LOGO1" H 10700 6600 50  0001 C CNN
F 1 "Logo_Open_Hardware_Large" H 10700 5700 50  0001 C CNN
F 2 "" H 10700 6100 50  0001 C CNN
F 3 "~" H 10700 6100 50  0001 C CNN
	1    10700 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2350 10150 2350
Wire Wire Line
	7000 3250 7000 2700
Text Label 7000 3550 0    50   ~ 0
TARGET_D+
$Comp
L Device:D_Schottky D8
U 1 1 5DCD8026
P 6550 4850
F 0 "D8" H 6550 4950 50  0000 C CNN
F 1 "PMEG3050EP,115" H 6450 5000 50  0001 C CNN
F 2 "luna:SOD128" H 6550 4850 50  0001 C CNN
F 3 "~" H 6550 4850 50  0001 C CNN
F 4 "Nexperia" H 6550 4850 50  0001 C CNN "Manufacturer"
F 5 "PMEG3050EP,115" H 6550 4850 50  0001 C CNN "Part Number"
F 6 "DIODE SCHOTTKY 30V 5A SOD128" H 6550 4850 50  0001 C CNN "Description"
	1    6550 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4850 6750 4850
Wire Wire Line
	6300 4850 6400 4850
Wire Wire Line
	6750 4850 6750 4600
Text Label 6100 4600 0    50   ~ 0
SIDEBAND_VBUS
$Comp
L power:GND #PWR0125
U 1 1 60532FEF
P 7750 6300
F 0 "#PWR0125" H 7750 6050 50  0001 C CNN
F 1 "GND" H 7754 6128 50  0000 C CNN
F 2 "" H 7750 6300 50  0001 C CNN
F 3 "" H 7750 6300 50  0001 C CNN
	1    7750 6300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7750 6200 8050 6200
Wire Wire Line
	8050 6200 8050 6100
Wire Wire Line
	7750 6300 7750 6200
Wire Wire Line
	7750 6200 7750 6100
Connection ~ 7750 6200
$Comp
L Connector:USB_C_Receptacle_USB2.0 J2
U 1 1 60532FE5
P 7750 5200
F 0 "J2" H 7800 6100 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 7750 6000 50  0000 C CNN
F 2 "luna:USB_C_Receptacle_HRO_TYPE-C-31-M-12" H 7900 5200 50  0001 C CNN
F 3 "" H 7900 5200 50  0001 C CNN
F 4 "CONN RCPT USB2.0 TYPE-C 16POS" H 7750 5200 50  0001 C CNN "Description"
F 5 "XKB" H 7750 5200 50  0001 C CNN "Manufacturer"
F 6 "U262-161N-4BVC11" H 7750 5200 50  0001 C CNN "Part Number"
F 7 "HRO TYPE-C-31-M-12, GCT USB4105-GF-A, Cvilux USA CU3216SASDLR009-NH" H 7750 5200 50  0001 C CNN "Substitution"
	1    7750 5200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6900 7200 6900 5200
Wire Wire Line
	5800 5200 6900 5200
Wire Wire Line
	6900 5200 7050 5200
Connection ~ 6900 5200
Wire Wire Line
	7050 5200 7050 5100
Wire Wire Line
	7050 5100 7150 5100
Connection ~ 7050 5200
Wire Wire Line
	7050 5200 7150 5200
Wire Wire Line
	6800 7100 6800 5300
Wire Wire Line
	7050 5300 7050 5400
Wire Wire Line
	7050 5400 7150 5400
Connection ~ 7050 5300
Wire Wire Line
	7050 5300 7150 5300
Connection ~ 6750 4600
Wire Wire Line
	6750 4600 7150 4600
Wire Wire Line
	6100 4600 6750 4600
Wire Wire Line
	2250 4000 1600 4000
Wire Wire Line
	1600 3900 2250 3900
$Sheet
S 2250 3500 1100 1500
U 5DD754D4
F0 "Host Section" 50
F1 "host_side.sch" 50
F2 "HOST_D+" B L 2250 4400 50 
F3 "HOST_D-" B L 2250 4300 50 
F4 "HOST_VBUS" I L 2250 3700 50 
F5 "HOST_PHY_1V8" O R 3350 4850 50 
F6 "HOST_CC1" B L 2250 3900 50 
F7 "HOST_CC2" B L 2250 4000 50 
F8 "HOST_SBU1" B L 2250 4600 50 
F9 "HOST_SBU2" B L 2250 4700 50 
$EndSheet
Wire Wire Line
	6900 7200 5800 7200
Wire Wire Line
	6800 7100 5800 7100
Wire Wire Line
	5800 6850 6700 6850
Wire Wire Line
	6700 6850 6700 5100
Wire Wire Line
	6700 5100 6950 5100
Wire Wire Line
	6950 5100 6950 4900
Wire Wire Line
	6950 4900 7150 4900
Wire Wire Line
	5800 6750 6600 6750
Wire Wire Line
	6600 6750 6600 5000
Wire Wire Line
	6600 5000 6850 5000
Wire Wire Line
	6850 5000 6850 4800
Wire Wire Line
	6850 4800 7150 4800
Text Label 8450 5250 0    50   ~ 0
UC_RX_FPGA_TX
Text Label 8450 5350 0    50   ~ 0
UC_TX_FPGA_RX
$Sheet
S 9100 4750 1150 800 
U 5DEF5588
F0 "Right side indicators" 50
F1 "right_side_indicators.sch" 50
F2 "UC_RX_FPGA_TX" O L 9100 5250 50 
F3 "UC_TX_FPGA_RX" I L 9100 5350 50 
F4 "TARGET_CC2" B L 9100 4950 50 
F5 "TARGET_CC1" B L 9100 4850 50 
$EndSheet
Wire Wire Line
	8450 5350 9100 5350
Wire Wire Line
	9100 5250 8450 5250
Wire Wire Line
	6800 3450 7450 3450
Wire Wire Line
	7450 3300 7650 3300
Wire Wire Line
	7550 3400 7650 3400
Wire Wire Line
	7650 3300 7650 3200
Connection ~ 7650 3300
Wire Wire Line
	7650 3400 7650 3500
Connection ~ 7650 3400
Wire Wire Line
	7450 3450 7450 3300
Wire Wire Line
	7550 3550 7550 3400
$Comp
L Connector:USB_C_Receptacle_USB2.0 J4
U 1 1 60048A13
P 9100 3300
F 0 "J4" H 9150 4200 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 9100 4100 50  0000 C CNN
F 2 "luna:USB_C_Receptacle_HRO_TYPE-C-31-M-12" H 9250 3300 50  0001 C CNN
F 3 "" H 9250 3300 50  0001 C CNN
F 4 "CONN RCPT USB2.0 TYPE-C 16POS" H 9100 3300 50  0001 C CNN "Description"
F 5 "XKB" H 9100 3300 50  0001 C CNN "Manufacturer"
F 6 "U262-161N-4BVC11" H 9100 3300 50  0001 C CNN "Part Number"
F 7 "HRO TYPE-C-31-M-12, GCT USB4105-GF-A, Cvilux USA CU3216SASDLR009-NH" H 9100 3300 50  0001 C CNN "Substitution"
	1    9100 3300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5DD6B00F
P 9100 4400
F 0 "#PWR09" H 9100 4150 50  0001 C CNN
F 1 "GND" H 9104 4228 50  0000 C CNN
F 2 "" H 9100 4400 50  0001 C CNN
F 3 "" H 9100 4400 50  0001 C CNN
	1    9100 4400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9100 4300 9400 4300
Wire Wire Line
	9400 4300 9400 4200
Wire Wire Line
	9100 4400 9100 4300
Wire Wire Line
	9100 4300 9100 4200
Connection ~ 9100 4300
Wire Wire Line
	7000 2700 8400 2700
Wire Wire Line
	8500 3400 7650 3400
Wire Wire Line
	7650 3200 8500 3200
Wire Wire Line
	8500 3800 5800 3800
Wire Wire Line
	7650 3500 8500 3500
Wire Wire Line
	8500 3900 5800 3900
Wire Wire Line
	8500 3000 8400 3000
Wire Wire Line
	8400 3000 8400 4950
Wire Wire Line
	8400 4950 9100 4950
Wire Wire Line
	8500 3300 7650 3300
Wire Wire Line
	8500 2900 8300 2900
Wire Wire Line
	8300 2900 8300 4850
Wire Wire Line
	8300 4850 9100 4850
Wire Wire Line
	1600 4800 1950 4800
Wire Wire Line
	1950 4800 1950 4600
Wire Wire Line
	1950 4600 2250 4600
Wire Wire Line
	2250 4700 2050 4700
Wire Wire Line
	2050 4700 2050 4900
Wire Wire Line
	2050 4900 1600 4900
Wire Wire Line
	7150 5700 7000 5700
Wire Wire Line
	7000 5700 7000 7400
Wire Wire Line
	7000 7400 5800 7400
Wire Wire Line
	5800 7500 7100 7500
Wire Wire Line
	7100 7500 7100 5800
Wire Wire Line
	7100 5800 7150 5800
Text Notes 4050 1500 0    50   ~ 0
Maximum input VBUS voltage: 5.5 V
Wire Wire Line
	8400 2700 8400 1750
Connection ~ 8400 2700
Wire Wire Line
	8400 2700 8500 2700
Wire Wire Line
	5800 3250 5900 3250
Wire Wire Line
	8500 2050 8500 1650
Wire Wire Line
	8700 1650 8500 1650
Wire Wire Line
	8400 1750 8700 1750
Text Label 7100 2350 0    50   ~ 0
TARGET_D-
Text Label 7100 2250 0    50   ~ 0
TARGET_D+
$Sheet
S 4100 1850 1700 2200
U 5DDDB747
F0 "Target Section" 50
F1 "target_side.sch" 50
F2 "TARGET_D+" B R 5800 3550 50 
F3 "TARGET_D-" B R 5800 3450 50 
F4 "TARGET_PHY_1V8" O L 4100 3500 50 
F5 "TARGET_SBU1" B R 5800 3800 50 
F6 "TARGET_SBU2" B R 5800 3900 50 
F7 "VBUS_C_TO_A_FAULT" I R 5800 2350 50 
F8 "VBUS_5V_TO_A_FAULT" I R 5800 2050 50 
F9 "TARGET_VBUS_C" I R 5800 3250 50 
F10 "VBUS_A_TO_C_FAULT" I R 5800 2650 50 
F11 "VBUS_5V_TO_A_EN" O R 5800 1950 50 
F12 "VBUS_A_TO_C_EN" O R 5800 2250 50 
F13 "VBUS_C_TO_A_EN" O R 5800 2550 50 
$EndSheet
Wire Wire Line
	5800 1950 5900 1950
Wire Wire Line
	5900 1950 5900 750 
Wire Wire Line
	5900 750  8700 750 
Wire Wire Line
	5800 2050 6000 2050
Wire Wire Line
	6000 2050 6000 850 
Wire Wire Line
	6000 850  8700 850 
Wire Wire Line
	8700 1050 6100 1050
Wire Wire Line
	6100 1050 6100 2250
Wire Wire Line
	6100 2250 5800 2250
Wire Wire Line
	5800 2350 6200 2350
Wire Wire Line
	6200 2350 6200 1150
Wire Wire Line
	6200 1150 8700 1150
Wire Wire Line
	8700 1350 6300 1350
Wire Wire Line
	6300 1350 6300 2550
Wire Wire Line
	6300 2550 5800 2550
Wire Wire Line
	5800 2650 6400 2650
Wire Wire Line
	6400 2650 6400 1450
Wire Wire Line
	6400 1450 8700 1450
$Sheet
S 8700 650  1100 1200
U 5DA7BAF4
F0 "Power Supplies" 50
F1 "power_supplies.sch" 50
F2 "VBUS_A_TO_C_FAULT" O L 8700 1450 50 
F3 "TARGET_VBUS_A" O L 8700 1650 50 
F4 "TARGET_VBUS_C" B L 8700 1750 50 
F5 "VBUS_A_TO_C_EN" I L 8700 1350 50 
F6 "VBUS_C_TO_A_FAULT" O L 8700 1150 50 
F7 "VBUS_C_TO_A_EN" I L 8700 1050 50 
F8 "VBUS_5V_TO_A_FAULT" O L 8700 850 50 
F9 "VBUS_5V_TO_A_EN" I L 8700 750 50 
$EndSheet
Wire Wire Line
	10150 2250 6900 2250
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J7
U 1 1 615ABEB3
P 3000 2200
F 0 "J7" H 3050 2707 50  0000 C CNN
F 1 "PMOD" H 3050 2616 50  0000 C CNN
F 2 "luna:PinSocket_2x06_P2.54mm_PMOD" H 3000 2200 50  0001 C CNN
F 3 "~" H 3000 2200 50  0001 C CNN
F 4 "DNP" H 3050 2525 50  0000 C CNN "Note"
	1    3000 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0120
U 1 1 615BA7DC
P 2700 2500
F 0 "#PWR0120" H 2700 2350 50  0001 C CNN
F 1 "+3V3" V 2715 2628 50  0000 L CNN
F 2 "" H 2700 2500 50  0001 C CNN
F 3 "" H 2700 2500 50  0001 C CNN
	1    2700 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0121
U 1 1 615C2D28
P 3400 2500
F 0 "#PWR0121" H 3400 2350 50  0001 C CNN
F 1 "+3V3" V 3415 2628 50  0000 L CNN
F 2 "" H 3400 2500 50  0001 C CNN
F 3 "" H 3400 2500 50  0001 C CNN
	1    3400 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 2400 3300 2400
Wire Wire Line
	3300 2500 3400 2500
Wire Wire Line
	2800 2400 2700 2400
Wire Wire Line
	2700 2500 2800 2500
$Sheet
S 600  800  1200 1050
U 5DF88884
F0 "Debug & Control Connections" 50
F1 "debug_control_connections.sch" 50
F2 "CLKIN_60MHZ" I R 1800 1750 50 
F3 "PMOD6" B R 1800 1500 50 
F4 "PMOD7" B R 1800 1600 50 
F5 "PMOD0" B R 1800 900 50 
F6 "PMOD1" B R 1800 1000 50 
F7 "PMOD2" B R 1800 1100 50 
F8 "PMOD3" B R 1800 1200 50 
F9 "PMOD4" B R 1800 1300 50 
F10 "PMOD5" B R 1800 1400 50 
$EndSheet
Wire Wire Line
	1700 2600 2000 2600
Wire Wire Line
	1800 1750 2000 1750
Wire Wire Line
	2000 1750 2000 2600
Connection ~ 2000 2600
Wire Wire Line
	2000 2600 2100 2600
Wire Wire Line
	1800 1300 3400 1300
Wire Wire Line
	3400 1300 3400 2000
Wire Wire Line
	3400 2000 3300 2000
Wire Wire Line
	1800 1400 3500 1400
Wire Wire Line
	3500 1400 3500 2100
Wire Wire Line
	3500 2100 3300 2100
Wire Wire Line
	1800 1500 3600 1500
Wire Wire Line
	3600 1500 3600 2200
Wire Wire Line
	3600 2200 3300 2200
Wire Wire Line
	1800 1600 3700 1600
Wire Wire Line
	3700 1600 3700 2300
Wire Wire Line
	3700 2300 3300 2300
Wire Wire Line
	1800 900  2700 900 
Wire Wire Line
	2700 900  2700 2000
Wire Wire Line
	2700 2000 2800 2000
Wire Wire Line
	1800 1000 2600 1000
Wire Wire Line
	2600 1000 2600 2100
Wire Wire Line
	2600 2100 2800 2100
Wire Wire Line
	1800 1100 2500 1100
Wire Wire Line
	2500 1100 2500 2200
Wire Wire Line
	2500 2200 2800 2200
Wire Wire Line
	1800 1200 2400 1200
Wire Wire Line
	2400 1200 2400 2300
Wire Wire Line
	2400 2300 2800 2300
$Comp
L power:GND #PWR0111
U 1 1 61A2BE78
P 3400 2400
F 0 "#PWR0111" H 3400 2150 50  0001 C CNN
F 1 "GND" V 3400 2200 50  0000 C CNN
F 2 "" H 3400 2400 50  0001 C CNN
F 3 "" H 3400 2400 50  0001 C CNN
	1    3400 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 3250 5900 5000
Wire Wire Line
	5900 5000 5800 5000
Connection ~ 5900 3250
Wire Wire Line
	5900 3250 7000 3250
$EndSCHEMATC
