# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a35ticsg324-1L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir F:/FPGA/Projekte/project_0731/project_0731.cache/wt [current_project]
set_property parent.project_path F:/FPGA/Projekte/project_0731/project_0731.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:arty-a7-35:part0:1.0 [current_project]
read_verilog -library xil_defaultlib F:/FPGA/Projekte/project_0731/project_0731.srcs/sources_1/new/led_helloworld.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc F:/FPGA/Projekte/project_0731/project_0731.srcs/constrs_1/new/led_helloworld_constraint.xdc
set_property used_in_implementation false [get_files F:/FPGA/Projekte/project_0731/project_0731.srcs/constrs_1/new/led_helloworld_constraint.xdc]


synth_design -top led_helloworld -part xc7a35ticsg324-1L


write_checkpoint -force -noxdef led_helloworld.dcp

catch { report_utilization -file led_helloworld_utilization_synth.rpt -pb led_helloworld_utilization_synth.pb }