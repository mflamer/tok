`timescale 1 ns / 1 ns

module RAM(din, write_en, waddr, wclk, raddr, rclk, dout);
    parameter init_file = "init.hex";
    parameter addr_width = 8;
    parameter data_width = 8;
    input wire [addr_width-1:0] waddr, raddr;
    input wire [data_width-1:0] din;
    input wire write_en, wclk, rclk;
    output reg [data_width-1:0] dout;
    reg [data_width-1:0] mem [(1<<addr_width)-1:0];
    always @(posedge wclk) // Write memory.
    begin
        if (write_en)
            mem[waddr] <= din; // Using write address bus.
    end
    always @(posedge rclk) // Read memory.
    begin
        dout <= mem[raddr]; // Using read address bus.
    end

    initial
    begin
        $readmemh(init_file, mem);  
    end 
endmodule



