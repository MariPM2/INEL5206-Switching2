#set_property IOSTANDARD LVCMOS33 [get_ports clk_100MHz]
# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk_100MHz]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk_100MHz]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_100MHz]
	
set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cols[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cols[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cols[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {cols[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rows[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rows[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rows[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rows[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {status[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {status[0]}]
#set_property PACKAGE_PIN W5 [get_ports clk_100MHz]
set_property PACKAGE_PIN W4 [get_ports {an[3]}]
set_property PACKAGE_PIN V4 [get_ports {an[2]}]
set_property PACKAGE_PIN U4 [get_ports {an[1]}]
set_property PACKAGE_PIN U2 [get_ports {an[0]}]
set_property PACKAGE_PIN B16 [get_ports {cols[3]}]
set_property PACKAGE_PIN B15 [get_ports {cols[2]}]
set_property PACKAGE_PIN A16 [get_ports {cols[1]}]
set_property PACKAGE_PIN A14 [get_ports {cols[0]}]
set_property PACKAGE_PIN C16 [get_ports {rows[3]}]
set_property PACKAGE_PIN C15 [get_ports {rows[2]}]
set_property PACKAGE_PIN A17 [get_ports {rows[1]}]
set_property PACKAGE_PIN A15 [get_ports {rows[0]}]
set_property PACKAGE_PIN U7 [get_ports {seg[6]}]
set_property PACKAGE_PIN V5 [get_ports {seg[5]}]
set_property PACKAGE_PIN U5 [get_ports {seg[4]}]
set_property PACKAGE_PIN V8 [get_ports {seg[3]}]
set_property PACKAGE_PIN U8 [get_ports {seg[2]}]
set_property PACKAGE_PIN W6 [get_ports {seg[1]}]
set_property PACKAGE_PIN W7 [get_ports {seg[0]}]
set_property PACKAGE_PIN L1 [get_ports {status[1]}]
set_property PACKAGE_PIN U16 [get_ports {status[0]}]
