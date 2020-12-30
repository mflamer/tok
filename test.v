`timescale 1 ns / 1 ns

module test;

  /* Make a reset that pulses once. */
  reg reset = 0;
  initial begin
     $dumpfile("wave.vcd");
     $dumpvars(0,test);

     # 1  reset = 1;
     # 512 $finish;
  end

  /* Make a regular pulsing clock. */
  reg clk = 0;
  always #1 clk = !clk;

  wire tx, rx;
  TOK tok(clk, reset, tx, rx);

endmodule // test