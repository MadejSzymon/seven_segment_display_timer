create_clock -name board_clk -period 20.000 [get_ports {board_clk}]
derive_pll_clocks
derive_clock_uncertainty
set_false_path -from [get_ports {reset start_stop}]
set_false_path -to [get_ports {decimals_seg* units_seg*}]
