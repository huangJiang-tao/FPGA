##################################################################################################
##
##  Xilinx, Inc. 2010            www.xilinx.com
##  ���� 8�� 27 17:58:45 2017
##  Generated by MIG Version 4.0
##
##################################################################################################
##  File name :       example_top.xdc
##  Details :     Constraints file
##                    FPGA Family:       ZYNQ
##                    FPGA Part:         XC7Z035-FFG676
##                    Speedgrade:        -2
##                    Design Entry:      VERILOG
##                    Frequency:         0 MHz
##                    Time Period:       1250 ps
##################################################################################################

##################################################################################################
## Controller 0
## Memory Device: DDR3_SDRAM->Components->MT41K256M16XX-125
## Data Width: 32
## Time Period: 1250
## Data Mask: 1
##################################################################################################
############## NET - IOSTANDARD ##################
set_property VCCAUX_IO DONTCARE [get_ports clk100m_i]
set_property IOSTANDARD SSTL15 [get_ports clk100m_i]
set_property PACKAGE_PIN C8 [get_ports clk100m_i]


set_property PACKAGE_PIN H7 [get_ports rst_key]
set_property IOSTANDARD SSTL15 [get_ports rst_key]

set_property PACKAGE_PIN B9 [get_ports tg_compare_error]
set_property IOSTANDARD SSTL15 [get_ports tg_compare_error]
set_property PACKAGE_PIN K10 [get_ports init_calib_complete]
set_property IOSTANDARD SSTL15 [get_ports init_calib_complete]



connect_debug_port u_ila_0/probe4 [get_nets [list {app_rd_data_tem[0]} {app_rd_data_tem[1]} {app_rd_data_tem[2]} {app_rd_data_tem[3]} {app_rd_data_tem[4]} {app_rd_data_tem[5]} {app_rd_data_tem[6]} {app_rd_data_tem[7]} {app_rd_data_tem[8]} {app_rd_data_tem[9]} {app_rd_data_tem[10]} {app_rd_data_tem[11]} {app_rd_data_tem[12]} {app_rd_data_tem[13]} {app_rd_data_tem[14]} {app_rd_data_tem[15]} {app_rd_data_tem[16]} {app_rd_data_tem[17]} {app_rd_data_tem[18]} {app_rd_data_tem[19]} {app_rd_data_tem[20]} {app_rd_data_tem[21]} {app_rd_data_tem[22]} {app_rd_data_tem[23]}]]

connect_debug_port u_ila_0/probe0 [get_nets [list {cmp_data_r[0]} {cmp_data_r[1]} {cmp_data_r[2]} {cmp_data_r[3]} {cmp_data_r[4]} {cmp_data_r[5]} {cmp_data_r[6]} {cmp_data_r[7]} {cmp_data_r[8]} {cmp_data_r[9]} {cmp_data_r[10]} {cmp_data_r[11]} {cmp_data_r[12]} {cmp_data_r[13]} {cmp_data_r[14]} {cmp_data_r[15]} {cmp_data_r[16]} {cmp_data_r[17]} {cmp_data_r[18]} {cmp_data_r[19]} {cmp_data_r[20]} {cmp_data_r[21]} {cmp_data_r[22]} {cmp_data_r[23]} {cmp_data_r[24]} {cmp_data_r[25]} {cmp_data_r[26]} {cmp_data_r[27]} {cmp_data_r[28]} {cmp_data_r[29]} {cmp_data_r[30]} {cmp_data_r[31]} {cmp_data_r[32]} {cmp_data_r[33]} {cmp_data_r[34]} {cmp_data_r[35]} {cmp_data_r[36]} {cmp_data_r[37]} {cmp_data_r[38]} {cmp_data_r[39]} {cmp_data_r[40]} {cmp_data_r[41]} {cmp_data_r[42]} {cmp_data_r[43]} {cmp_data_r[44]} {cmp_data_r[45]} {cmp_data_r[46]} {cmp_data_r[47]} {cmp_data_r[48]} {cmp_data_r[49]} {cmp_data_r[50]} {cmp_data_r[51]} {cmp_data_r[52]} {cmp_data_r[53]} {cmp_data_r[54]} {cmp_data_r[55]} {cmp_data_r[56]} {cmp_data_r[57]} {cmp_data_r[58]} {cmp_data_r[59]} {cmp_data_r[60]} {cmp_data_r[61]} {cmp_data_r[62]} {cmp_data_r[63]}]]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 4096 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list u_mig_7series_0/u_mig_7series_0_mig/u_ddr3_infrastructure/CLK]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 24 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {cmp_data_r1[0]} {cmp_data_r1[1]} {cmp_data_r1[2]} {cmp_data_r1[3]} {cmp_data_r1[4]} {cmp_data_r1[5]} {cmp_data_r1[6]} {cmp_data_r1[7]} {cmp_data_r1[8]} {cmp_data_r1[9]} {cmp_data_r1[10]} {cmp_data_r1[11]} {cmp_data_r1[12]} {cmp_data_r1[13]} {cmp_data_r1[14]} {cmp_data_r1[15]} {cmp_data_r1[16]} {cmp_data_r1[17]} {cmp_data_r1[18]} {cmp_data_r1[19]} {cmp_data_r1[20]} {cmp_data_r1[21]} {cmp_data_r1[22]} {cmp_data_r1[23]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 30 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {CountWrite[0]} {CountWrite[1]} {CountWrite[2]} {CountWrite[3]} {CountWrite[4]} {CountWrite[5]} {CountWrite[6]} {CountWrite[7]} {CountWrite[8]} {CountWrite[9]} {CountWrite[10]} {CountWrite[11]} {CountWrite[12]} {CountWrite[13]} {CountWrite[14]} {CountWrite[15]} {CountWrite[16]} {CountWrite[17]} {CountWrite[18]} {CountWrite[19]} {CountWrite[20]} {CountWrite[21]} {CountWrite[22]} {CountWrite[23]} {CountWrite[24]} {CountWrite[25]} {CountWrite[26]} {CountWrite[27]} {CountWrite[28]} {CountWrite[29]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 24 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {app_rd_data_tem[0]} {app_rd_data_tem[1]} {app_rd_data_tem[2]} {app_rd_data_tem[3]} {app_rd_data_tem[4]} {app_rd_data_tem[5]} {app_rd_data_tem[6]} {app_rd_data_tem[7]} {app_rd_data_tem[8]} {app_rd_data_tem[9]} {app_rd_data_tem[10]} {app_rd_data_tem[11]} {app_rd_data_tem[12]} {app_rd_data_tem[13]} {app_rd_data_tem[14]} {app_rd_data_tem[15]} {app_rd_data_tem[16]} {app_rd_data_tem[17]} {app_rd_data_tem[18]} {app_rd_data_tem[19]} {app_rd_data_tem[20]} {app_rd_data_tem[21]} {app_rd_data_tem[22]} {app_rd_data_tem[23]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 4 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {state[0]} {state[1]} {state[2]} {state[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 4 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {state1[0]} {state1[1]} {state1[2]} {state1[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 24 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {Count_64_1[0]} {Count_64_1[1]} {Count_64_1[2]} {Count_64_1[3]} {Count_64_1[4]} {Count_64_1[5]} {Count_64_1[6]} {Count_64_1[7]} {Count_64_1[8]} {Count_64_1[9]} {Count_64_1[10]} {Count_64_1[11]} {Count_64_1[12]} {Count_64_1[13]} {Count_64_1[14]} {Count_64_1[15]} {Count_64_1[16]} {Count_64_1[17]} {Count_64_1[18]} {Count_64_1[19]} {Count_64_1[20]} {Count_64_1[21]} {Count_64_1[22]} {Count_64_1[23]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 24 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {Count_64[0]} {Count_64[1]} {Count_64[2]} {Count_64[3]} {Count_64[4]} {Count_64[5]} {Count_64[6]} {Count_64[7]} {Count_64[8]} {Count_64[9]} {Count_64[10]} {Count_64[11]} {Count_64[12]} {Count_64[13]} {Count_64[14]} {Count_64[15]} {Count_64[16]} {Count_64[17]} {Count_64[18]} {Count_64[19]} {Count_64[20]} {Count_64[21]} {Count_64[22]} {Count_64[23]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 30 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {CountRead[0]} {CountRead[1]} {CountRead[2]} {CountRead[3]} {CountRead[4]} {CountRead[5]} {CountRead[6]} {CountRead[7]} {CountRead[8]} {CountRead[9]} {CountRead[10]} {CountRead[11]} {CountRead[12]} {CountRead[13]} {CountRead[14]} {CountRead[15]} {CountRead[16]} {CountRead[17]} {CountRead[18]} {CountRead[19]} {CountRead[20]} {CountRead[21]} {CountRead[22]} {CountRead[23]} {CountRead[24]} {CountRead[25]} {CountRead[26]} {CountRead[27]} {CountRead[28]} {CountRead[29]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list error_rddata]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list init_calib_complete_OBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list ProsessIn]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list ProsessIn1]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list WriteSign]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
