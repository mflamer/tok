`timescale 1 ns / 1 ns

module STACK #(
  parameter DEPTH = 8,
  parameter WIDTH = 8)(
  input wire clk,
  output wire [WIDTH-1:0] rd,
  input wire we,
  input wire [1:0] delta,   //[1=pop,0=push|1=move]
  input wire [WIDTH-1:0] wd);
  localparam BITS = (WIDTH * DEPTH) - 1;
  
  wire move = delta[0];

  reg [WIDTH-1:0] head;
  reg [BITS:0] tail;
  wire [WIDTH-1:0] headN;
  wire [BITS:0] tailN;

  assign headN = we ? wd : tail[WIDTH-1:0];
  assign tailN = delta[1] ? {{WIDTH{1'b0}}, tail[BITS:WIDTH]} : {tail[BITS-WIDTH:0], head};
  //                                  pop                             push

  always @(posedge clk) begin
    if (we | move)
      head <= headN;
    if (move)
      tail <= tailN;
  end

  assign rd = head;

endmodule

