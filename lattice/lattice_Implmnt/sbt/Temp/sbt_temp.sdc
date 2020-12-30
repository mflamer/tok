####---- CreateClock list ----2
create_clock  -period 41.67 -waveform {0.00 20.83} -name {top|clk} [get_nets {clk}] 
create_clock  -period 20.83 -name {clk} [get_nets {clk}] 

