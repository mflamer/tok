


module top(
	input reset,
  	output tx,
  	input  rx
	);

wire clk;

TOK tok(
.clk(clk),
.reset(reset),
.tx(tx),
.rx(rx)	
);

SB_HFOSC OSCInst0 ( 
.CLKHFEN(1'b1), 
.CLKHFPU(1'b1),
.CLKHF(clk) 
);
defparam OSCInst0.CLKHF_DIV = "0b01";

endmodule