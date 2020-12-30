create_clock -period 41.67 -name {top|clk} -waveform [list 0.00 20.83] [get_nets clk]
create_clock -period 20.83 -name {clk} [get_nets clk]
