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
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir F:/FPGA/turorial_ms/temp3/temp3.cache/wt [current_project]
set_property parent.project_path F:/FPGA/turorial_ms/temp3/temp3.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:arty-a7-35:part0:1.0 [current_project]
add_files F:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/design_1_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/design_1_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_lmb_bram_0/design_1_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_0_100M_0/design_1_rst_clk_wiz_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_0_100M_0/design_1_rst_clk_wiz_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_0_100M_0/design_1_rst_clk_wiz_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all F:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files F:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/design_1.bd]

read_verilog -library xil_defaultlib F:/FPGA/turorial_ms/temp3/temp3.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top design_1_wrapper -part xc7a35ticsg324-1L


write_checkpoint -force -noxdef design_1_wrapper.dcp

catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }
