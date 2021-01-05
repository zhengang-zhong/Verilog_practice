create_clock -name sys_clk -period 10 (get_ports clk)


set_property PACKAGE_PIN E3 [get_ports clk]
set_property PACKAGE_PIN A8 [get_ports key]
set_property PACKAGE_PIN H5 [get_ports led]
set_property IOSTANDARD LVCMOS33 [get_ports led]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports key]
