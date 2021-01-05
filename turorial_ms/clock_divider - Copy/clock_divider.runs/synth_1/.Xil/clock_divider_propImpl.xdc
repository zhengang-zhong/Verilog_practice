set_property SRC_FILE_INFO {cfile:F:/FPGA/turorial_ms/clock_divider/clock_divider.srcs/constrs_1/new/clock_divider_constraint.xdc rfile:../../../clock_divider.srcs/constrs_1/new/clock_divider_constraint.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -name sys_clk -period 10 (get_ports clk)
set_property src_info {type:XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E3 [get_ports clk]
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN A8 [get_ports key]
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H5 [get_ports led]
