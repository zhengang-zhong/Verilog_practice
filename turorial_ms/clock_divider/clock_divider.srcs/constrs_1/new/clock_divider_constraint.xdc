#create_clock -name sys_clk -period 10 (get_ports clk)
## Master Clock: 100 MHz
#set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports {clk}];
#create_clock -name clk -period 10.00 [get_ports {clk}];
#set_property -dict {PACKAGE_PIN E3  IOSTANDARD LVCMOS33} [get_ports {clk}];
#create_clock -add -name sys_clk_pin -period 10.00  -waveform {0 5} [get_ports {clk}];


#set_property PACKAGE_PIN E3 [get_ports clk]
#set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { key }];
#set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { led }];
#set_property PACKAGE_PIN H5 [get_ports led]
#set_property IOSTANDARD LVCMOS33 [get_ports led]
#set_property IOSTANDARD LVCMOS33 [get_ports clk]
#set_property IOSTANDARD LVCMOS33 [get_ports key]
## Arty Board Constraints

## Clock
set_property -dict {PACKAGE_PIN E3  IOSTANDARD LVCMOS33} [get_ports {CLK}];
create_clock -add -name sys_clk_pin -period 10.00 \
    -waveform {0 5} [get_ports {CLK}];

## LEDs
set_property -dict {PACKAGE_PIN H5  IOSTANDARD LVCMOS33} [get_ports {led[0]}]; 
set_property -dict {PACKAGE_PIN J5  IOSTANDARD LVCMOS33} [get_ports {led[1]}];
set_property -dict {PACKAGE_PIN T9  IOSTANDARD LVCMOS33} [get_ports {led[2]}];
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports {led[3]}];

set_property -dict {PACKAGE_PIN D9  IOSTANDARD LVCMOS33} [get_ports {key}]; 