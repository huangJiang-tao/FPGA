# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param tcl.collectionResultDisplayLimit 0
set_param xicom.use_bs_reader 1
set_param synth.incrementalSynthesisCache F:/FILE/FPGA/ZYNQ/TEST/CH04_OV5640_DEMO/OV5640_TS_DATA/MIG_OV_PRG/.Xil/Vivado-5000-LAPTOP-8E6RLG3I/incrSyn
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
set_param project.vivado.isBlockSynthRun true
create_project -in_memory -part xc7z035ffg676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir F:/FILE/FPGA/ZYNQ/TEST/CH04_OV5640_DEMO/OV5640_TS_DATA/MIG_OV_PRG/MIG_OV_PRG.cache/wt [current_project]
set_property parent.project_path F:/FILE/FPGA/ZYNQ/TEST/CH04_OV5640_DEMO/OV5640_TS_DATA/MIG_OV_PRG/MIG_OV_PRG.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  f:/FILE/FPGA/ZYNQ/TEST/CH04_OV5640_DEMO/mia_ip_lib/HDMI_FPGA_ML_A7/HDMI_FPGA_ML
  f:/FILE/FPGA/ZYNQ/TEST/CH04_OV5640_DEMO/mia_ip_lib/HDMI_FPGA_ML_A7
} [current_project]
set_property ip_output_repo f:/FILE/FPGA/ZYNQ/TEST/CH04_OV5640_DEMO/OV5640_TS_DATA/MIG_OV_PRG/MIG_OV_PRG.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet f:/FILE/Xilinx/Miz7035/My_ip_lib/HDMI_FPGA_ML_A7_0/HDMI_FPGA_ML_A7_0.xci

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir F:/FILE/FPGA/ZYNQ/TEST/CH04_OV5640_DEMO/OV5640_TS_DATA/MIG_OV_PRG/MIG_OV_PRG.runs/HDMI_FPGA_ML_A7_0_synth_1 -new_name HDMI_FPGA_ML_A7_0 -ip [get_ips HDMI_FPGA_ML_A7_0]]

if { $cached_ip eq {} } {

synth_design -top HDMI_FPGA_ML_A7_0 -part xc7z035ffg676-2 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
# disable binary constraint mode for IPCache checkpoints
set_param constraints.enableBinaryConstraints false

catch {
 write_checkpoint -force -noxdef -rename_prefix HDMI_FPGA_ML_A7_0_ HDMI_FPGA_ML_A7_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ HDMI_FPGA_ML_A7_0_stub.v
 lappend ipCachedFiles HDMI_FPGA_ML_A7_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ HDMI_FPGA_ML_A7_0_stub.vhdl
 lappend ipCachedFiles HDMI_FPGA_ML_A7_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ HDMI_FPGA_ML_A7_0_sim_netlist.v
 lappend ipCachedFiles HDMI_FPGA_ML_A7_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ HDMI_FPGA_ML_A7_0_sim_netlist.vhdl
 lappend ipCachedFiles HDMI_FPGA_ML_A7_0_sim_netlist.vhdl

 config_ip_cache -add -dcp HDMI_FPGA_ML_A7_0.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips HDMI_FPGA_ML_A7_0]
}

rename_ref -prefix_all HDMI_FPGA_ML_A7_0_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef HDMI_FPGA_ML_A7_0.dcp
create_report "HDMI_FPGA_ML_A7_0_synth_1_synth_report_utilization_0" "report_utilization -file HDMI_FPGA_ML_A7_0_utilization_synth.rpt -pb HDMI_FPGA_ML_A7_0_utilization_synth.pb"

if { [catch {
  file copy -force F:/FILE/FPGA/ZYNQ/TEST/CH04_OV5640_DEMO/OV5640_TS_DATA/MIG_OV_PRG/MIG_OV_PRG.runs/HDMI_FPGA_ML_A7_0_synth_1/HDMI_FPGA_ML_A7_0.dcp f:/FILE/Xilinx/Miz7035/My_ip_lib/HDMI_FPGA_ML_A7_0/HDMI_FPGA_ML_A7_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub f:/FILE/Xilinx/Miz7035/My_ip_lib/HDMI_FPGA_ML_A7_0/HDMI_FPGA_ML_A7_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub f:/FILE/Xilinx/Miz7035/My_ip_lib/HDMI_FPGA_ML_A7_0/HDMI_FPGA_ML_A7_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim f:/FILE/Xilinx/Miz7035/My_ip_lib/HDMI_FPGA_ML_A7_0/HDMI_FPGA_ML_A7_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim f:/FILE/Xilinx/Miz7035/My_ip_lib/HDMI_FPGA_ML_A7_0/HDMI_FPGA_ML_A7_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force F:/FILE/FPGA/ZYNQ/TEST/CH04_OV5640_DEMO/OV5640_TS_DATA/MIG_OV_PRG/MIG_OV_PRG.runs/HDMI_FPGA_ML_A7_0_synth_1/HDMI_FPGA_ML_A7_0.dcp f:/FILE/Xilinx/Miz7035/My_ip_lib/HDMI_FPGA_ML_A7_0/HDMI_FPGA_ML_A7_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force F:/FILE/FPGA/ZYNQ/TEST/CH04_OV5640_DEMO/OV5640_TS_DATA/MIG_OV_PRG/MIG_OV_PRG.runs/HDMI_FPGA_ML_A7_0_synth_1/HDMI_FPGA_ML_A7_0_stub.v f:/FILE/Xilinx/Miz7035/My_ip_lib/HDMI_FPGA_ML_A7_0/HDMI_FPGA_ML_A7_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force F:/FILE/FPGA/ZYNQ/TEST/CH04_OV5640_DEMO/OV5640_TS_DATA/MIG_OV_PRG/MIG_OV_PRG.runs/HDMI_FPGA_ML_A7_0_synth_1/HDMI_FPGA_ML_A7_0_stub.vhdl f:/FILE/Xilinx/Miz7035/My_ip_lib/HDMI_FPGA_ML_A7_0/HDMI_FPGA_ML_A7_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force F:/FILE/FPGA/ZYNQ/TEST/CH04_OV5640_DEMO/OV5640_TS_DATA/MIG_OV_PRG/MIG_OV_PRG.runs/HDMI_FPGA_ML_A7_0_synth_1/HDMI_FPGA_ML_A7_0_sim_netlist.v f:/FILE/Xilinx/Miz7035/My_ip_lib/HDMI_FPGA_ML_A7_0/HDMI_FPGA_ML_A7_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force F:/FILE/FPGA/ZYNQ/TEST/CH04_OV5640_DEMO/OV5640_TS_DATA/MIG_OV_PRG/MIG_OV_PRG.runs/HDMI_FPGA_ML_A7_0_synth_1/HDMI_FPGA_ML_A7_0_sim_netlist.vhdl f:/FILE/Xilinx/Miz7035/My_ip_lib/HDMI_FPGA_ML_A7_0/HDMI_FPGA_ML_A7_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir F:/FILE/FPGA/ZYNQ/TEST/CH04_OV5640_DEMO/OV5640_TS_DATA/MIG_OV_PRG/MIG_OV_PRG.ip_user_files/ip/HDMI_FPGA_ML_A7_0]} {
  catch { 
    file copy -force f:/FILE/Xilinx/Miz7035/My_ip_lib/HDMI_FPGA_ML_A7_0/HDMI_FPGA_ML_A7_0_stub.v F:/FILE/FPGA/ZYNQ/TEST/CH04_OV5640_DEMO/OV5640_TS_DATA/MIG_OV_PRG/MIG_OV_PRG.ip_user_files/ip/HDMI_FPGA_ML_A7_0
  }
}

if {[file isdir F:/FILE/FPGA/ZYNQ/TEST/CH04_OV5640_DEMO/OV5640_TS_DATA/MIG_OV_PRG/MIG_OV_PRG.ip_user_files/ip/HDMI_FPGA_ML_A7_0]} {
  catch { 
    file copy -force f:/FILE/Xilinx/Miz7035/My_ip_lib/HDMI_FPGA_ML_A7_0/HDMI_FPGA_ML_A7_0_stub.vhdl F:/FILE/FPGA/ZYNQ/TEST/CH04_OV5640_DEMO/OV5640_TS_DATA/MIG_OV_PRG/MIG_OV_PRG.ip_user_files/ip/HDMI_FPGA_ML_A7_0
  }
}
