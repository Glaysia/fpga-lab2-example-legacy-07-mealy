set_property -dict {PACKAGE_PIN K4 IOSTANDARD LVCMOS33} [get_ports rst]
set_property -dict {PACKAGE_PIN N8 IOSTANDARD LVCMOS33} [get_ports x]
set_property -dict {PACKAGE_PIN L4 IOSTANDARD LVCMOS33} [get_ports y[1]]
set_property -dict {PACKAGE_PIN M4 IOSTANDARD LVCMOS33} [get_ports y[0]]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets x_IBUF]


