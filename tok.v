`timescale 1 ns / 1 ns
`define TABLE_WIDTH 8
`define RAM_WIDTH 8 

// ~ call to addr in A
// { push tc on C_stk for loops
// } pop C_stk to tc
// ? pop C_stk to tc if A != 0
// ( store tc in table, skip until )
// ) if executing, pop C_stk to tc

module TOK(
  input wire clk,
  input wire reset,
  output wire tx,
  input  wire rx
  );


  // uart
  wire uart_rd = uart_rx_valid & T == "'";
  wire uart_wr = !uart_tx_busy & T == "\"";
  wire uart_rx_valid;
  wire uart_tx_busy;
  wire [7:0] uart_rx_data;
  wire uart_error;
  wire uart_stall = (T == "\"" & uart_tx_busy) | (T == "'" & !uart_rx_valid);

  // ram
  wire write_flag = T == "#";    
  wire [7:0] A_low = A[7:0];
  wire [7:0] T;

  // A_stk
  wire [15:0] S;
  reg [1:0] A_stk_delta;
  reg A_stk_write;

  always @* begin
    case({stall, |depth, T})
      {2'b0_0, "("}    : {A_stk_write, A_stk_delta} = {1'b0, 2'b11}; //pop
      {2'b0_0, "+"}    : {A_stk_write, A_stk_delta} = {1'b0, 2'b11}; //pop
      {2'b0_0, "!"}    : {A_stk_write, A_stk_delta} = {1'b0, 2'b11}; //pop
      {2'b0_0, "%"}    : {A_stk_write, A_stk_delta} = {1'b0, 2'b11}; //pop
      {2'b0_0, ")"}    : {A_stk_write, A_stk_delta} = {1'b0, 2'b11}; //pop
      {2'b0_0, "~"}    : {A_stk_write, A_stk_delta} = {1'b0, 2'b11}; //pop
      {2'b0_0, "#"}    : {A_stk_write, A_stk_delta} = {1'b0, 2'b11}; //pop
      {2'b0_0, " "}    : {A_stk_write, A_stk_delta} = {1'b1, 2'b01}; //push
      {2'b0_0, "$"}    : {A_stk_write, A_stk_delta} = {1'b1, 2'b01}; //push
      default          : {A_stk_write, A_stk_delta} = {1'b0, 2'b00}; //hold 
      endcase
    end  

  // C_stk
  reg [1:0] C_stk_delta;
  reg C_stk_write;
  wire [7:0] c_stk_w = T=="~" ? tc_plus_1 : T=="{" ? tc : A[7:0];
  wire [7:0] c_stk_r;

  always @* begin
    case({stall, |depth, T})
      {2'b0_0, "?"}    : {C_stk_write, C_stk_delta} = {1'b0, 2'b11}; //pop (return)
      {2'b0_0, ")"}    : {C_stk_write, C_stk_delta} = {1'b0, 2'b11}; //pop (return)
      {2'b0_0, "}"}    : {C_stk_write, C_stk_delta} = {1'b0, 2'b11}; //pop (return)
      {2'b0_0, "~"}    : {C_stk_write, C_stk_delta} = {1'b1, 2'b01}; //push (call)
      {2'b0_0, "{"}    : {C_stk_write, C_stk_delta} = {1'b1, 2'b01}; //push (call)
      default          : {C_stk_write, C_stk_delta} = {1'b0, 2'b00}; //hold
      endcase
    end 

  // table
  reg [`TABLE_WIDTH-1:0] idx, idx_;
  reg search_clk; 
  reg stall, stall_;

  wire table_search = (T=="!" | T=="@" | T=="~" | T=="(")  ? 1'b1 : 1'b0; 
  wire table_write = (T=="!" | T=="(") ? 1'b1 : 1'b0;
  wire [15:0] table_rd;
  wire [15:0] key_rd; 
  wire found_slot  = stall & (table_write ? (key_rd == A) | (key_rd == 0) 
                                           : (key_rd == A) & (key_rd != 0));

  wire write_slot = (table_write && found_slot && stall) ? 1'b1 : 1'b0;
  wire [15:0] table_wr_data = T == "(" ? tc_plus_1 : S;

  always @* begin
    casez({search_clk, found_slot, table_search, uart_stall, stall})
      5'b?_?_1_0_0: {stall_, idx_} = {1'b1, A[`TABLE_WIDTH-1:0]}; //table stall
      5'b1_0_1_0_1: {stall_, idx_} = {stall, idx + 1'b1};         //table clash, inc
      5'b1_1_1_0_1: {stall_, idx_} = {1'b0, idx};                 //table un-stall      
      5'b?_?_?_1_0: {stall_, idx_} = {1'b1, idx};                 //uart stall
      5'b?_?_?_0_1: {stall_, idx_} = {1'b0, idx};                 //uart un-stall      
      default:      {stall_, idx_} = {stall, idx};                //no change
      endcase
    end        

  // core
  reg [7:0] tc, tc_;
  wire [7:0] tc_plus_1 = tc + 1'b1;
  reg [15:0] A, A_;    

  // A
  always @* begin
    if(depth==0 & T=="(") A_ = S;
    else if(stall | depth_) A_ = A; 
    else begin
      case(T)
        "0","1","2","3","4","5","6","7","8","9" : A_ = (A << 4) | (T - "0");
        "A","B","C","D","E","F" : A_ = (A << 4) | (T - "7");
        "a","b","c","d","e","f","g","h","i","j","k","l","m"
        ,"n","o","p","q","r","s","t","u","v","w","x","y","z" : A_ = ((A<<5)^16'h1505)^T;
        " " : A_ = 16'h0; 
        "+" : A_ = A + S;
        "-" : A_ = S - A;
        "_" : A_ = ~A;
        "=" : A_ = A == S ? -1'b1 : 1'b0;
        "!", "%", "~" : A_ = S;
        "#" : A_ = S + 1'b1;
        "@" : A_ = table_rd;
        "'" : A_ = A << 8 | uart_rx_data;
        "\"": A_ = A >> 8;
        default: A_ = A;
      endcase
    end  
  end

  // depth
  reg [3:0] depth, depth_;
  always @* begin
    case({stall, |depth, T})
      {2'b0_0,"("}     : depth_ = depth+1'b1;
      {2'b0_1,")"}     : depth_ = depth-1'b1;
      default          : depth_ = depth;
      endcase
    end  

  // tc
  always @* begin
    casez({stall_, depth, T})
      13'b1_????_????????  : tc_ <= tc; 
      {1'b0, 4'h0, "~"}    : tc_ <= table_rd[7:0];
      {1'b0, 4'h0, ")"}    : tc_ <= c_stk_r;  
      {1'b0, 4'h0, "}"}    : tc_ <= c_stk_r; 
      {1'b0, 4'h0, "?"}    : tc_ <= A ? c_stk_r : tc_plus_1;      
      default              : tc_ <= tc_plus_1;    
      endcase 
    end


  // clk  
  always @(posedge clk or negedge reset) begin
    if (!reset) begin
      A <= 0;
      tc <= -1; 
      search_clk <= 0;
      depth <= 0;
      stall <= 0;
      idx <= 0;
      end
    else begin
      A <= A_;
      tc <= tc_; 
      depth <= depth_;
      search_clk <= ~search_clk;
      stall <= stall_;
      idx <= idx_;
      end
    end    


RAM ram(
.din(A_low),
.write_en(write_flag),
.waddr(S[`RAM_WIDTH-1:0]),
.wclk(clk),
.raddr(tc_),
.rclk(clk),
.dout(T)
);
defparam ram.addr_width = 8;
defparam ram.data_width = 8;
defparam ram.init_file = "init.hex";

STACK A_stk(
.clk(clk),
.rd(S),
.wd(A),
.we(A_stk_write),
.delta(A_stk_delta)
);
defparam A_stk.DEPTH = 8;
defparam A_stk.WIDTH = 16;

STACK C_stk(
.clk(clk),
.rd(c_stk_r),
.wd(c_stk_w),
.we(C_stk_write),
.delta(C_stk_delta)
);
defparam C_stk.DEPTH = 8;
defparam C_stk.WIDTH = 8;

RAM keys(
.din(A),
.write_en(write_slot),
.waddr(idx),
.wclk(clk),
.raddr(idx),
.rclk(clk),
.dout(key_rd)
);
defparam keys.addr_width = `TABLE_WIDTH;
defparam keys.data_width = 16;
defparam keys.init_file = "blank256.hex"; 

RAM vals(
.din(table_wr_data),
.write_en(write_slot),
.waddr(idx),
.wclk(clk),
.raddr(idx),
.rclk(clk),
.dout(table_rd)
);
defparam vals.addr_width = `TABLE_WIDTH;
defparam vals.data_width = 16;
defparam vals.init_file = "blank256.hex"; 

UART uart(
.clk(clk),
.resetq(reset),
.rx(rx),
.tx(tx),
.rd(uart_rd), 
.wr(uart_wr),
.valid(uart_rx_valid),
.busy(uart_tx_busy),
.tx_data(A_[7:0]),
.rx_data(uart_rx_data),
.error(uart_error)
);



endmodule


    