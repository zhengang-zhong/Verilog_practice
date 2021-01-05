# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a35ticsg324-1L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir F:/FPGA/turorial_ms/clock_divider/clock_divider.cache/wt [current_project]
set_property parent.project_path F:/FPGA/turorial_ms/clock_divider/clock_divider.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:arty-a7-35:part0:1.0 [current_project]
read_verilog -library xil_defaultlib F:/FPGA/turorial_ms/clock_divider/clock_divider.srcs/sources_1/new/clock_divider.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc F:/FPGA/turorial_ms/clock_divider/clock_divider.srcs/constrs_1/new/clock_divider_constraint.xdc
set_property used_in_implementation false [get_files F:/FPGA/turorial_ms/clock_divider/clock_divider.srcs/constrs_1/new/clock_divider_constraint.xdc]


synth_design -top clock_divider -part xc7a35ticsg324-1L


write_checkpoint -force -noxdef clock_divider.dcp

catch { report_utilization -file clock_divider_utilization_synth.rpt -pb clock_divider_utilization_synth.pb }
