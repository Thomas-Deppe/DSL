# 100MHZ Clock signal
set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports CLK]

# Reset Button
set_property -dict { PACKAGE_PIN u18   IOSTANDARD LVCMOS33 } [get_ports RESET]

# IR Led
set_property -dict { PACKAGE_PIN G2   IOSTANDARD LVCMOS33 } [get_ports IR_LED]