##################################################################################################
## 
##  Xilinx, Inc. 2010            www.xilinx.com 
##  ���� 9�� 23 16:12:21 2017
##  Generated by MIG Version 4.0
##  
##################################################################################################
##  File name :       example_top.xdc
##  Details :     Constraints file
##                    FPGA Family:       ARTIX7
##                    FPGA Part:         XC7A100T-FGG484
##                    Speedgrade:        -2
##                    Design Entry:      VERILOG
##                    Frequency:         0 MHz
##                    Time Period:       2500 ps
##################################################################################################

##################################################################################################
## Controller 0
## Memory Device: DDR3_SDRAM->Components->MT41K128M16XX-15E
## Data Width: 32
## Time Period: 2500
## Data Mask: 1
##################################################################################################
############## NET - IOSTANDARD ##################


set_property PACKAGE_PIN L19 [get_ports clk50m_i]
set_property IOSTANDARD LVCMOS33 [get_ports clk50m_i]

set_property PACKAGE_PIN M16 [get_ports rst_key]
set_property IOSTANDARD LVCMOS33 [get_ports rst_key]

set_property PACKAGE_PIN J16 [get_ports init_calib_complete]
set_property IOSTANDARD LVCMOS33 [get_ports init_calib_complete]

set_property PACKAGE_PIN K16 [get_ports tg_compare_error]
set_property IOSTANDARD LVCMOS33 [get_ports tg_compare_error]
