#AES_CORE
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 [get_ports clk]

set_property PACKAGE_PIN D9 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]


#UART NANDLAND
## CLOCK
#set_property PACKAGE_PIN E3 [get_ports clk]
#set_property IOSTANDARD LVCMOS33 [get_ports clk]
#create_clock -period 10.000 [get_ports clk]

### UART RX
#set_property PACKAGE_PIN A9 [get_ports uart_rxd]
#set_property IOSTANDARD LVCMOS33 [get_ports uart_rxd]

### UART TX
#set_property PACKAGE_PIN A9 [get_ports uart_txd]
#set_property IOSTANDARD LVCMOS33 [get_ports uart_txd]