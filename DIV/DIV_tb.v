`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/29 18:03:40
// Design Name: 
// Module Name: DIV_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DIV_tb(

    );
  reg signed[31:0]  dividend;   //被除数
      reg signed[31:0]  divisor;     //除数
      reg start;              //启动
      reg clock;
      reg reset;
      wire [31:0] q;       //商
      wire [31:0] r;         //余数
      wire busy;   
   DIV uut(
         .dividend(dividend),   //被除数
         .divisor(divisor),     //除数
         .start(start),              //启动
         .clock(clock),
         .reset(reset),
         .q(q),       //商
         .r(r),         //余数
         .busy(busy)          //是否在进行运算
         );
         reg [32:0] shang;
         reg [32:0] yushu;
  parameter clk_period = 10; 
  initial
  begin
  start = 1;
  clock = 0;
  reset = 0;
  end
  always #(clk_period/2) clock = ~clock;      //时钟
  
  initial
  begin
  dividend = 4464;
  divisor = 1;
  shang = dividend / divisor;
  yushu = dividend % divisor;
  #clk_period
  dividend = 4464;
  divisor = 32'h0xffffffff;
  shang = dividend / divisor;
  yushu = dividend % divisor;
  #clk_period
  dividend = 4464;
  divisor = 0;
  shang = dividend / divisor;
  yushu = dividend % divisor;
  #clk_period
  dividend = 0;
  divisor = 32;
  shang = dividend / divisor;
  yushu = dividend % divisor;
  #clk_period
  dividend = 32'h0xaaaaaaaa;
  divisor = 32;
  shang = dividend / divisor;
  yushu = dividend % divisor;
  #clk_period
  dividend = 32'h0xffffffff;
  divisor = 32;
  shang = dividend / divisor;
  yushu = dividend % divisor;
  #clk_period
  dividend = 32'h0x55555555;
  divisor = 32;
  shang = dividend / divisor;
  yushu = dividend % divisor;
  #clk_period
  dividend = 32'h0x7fffffff;
  divisor = 32;
  shang = dividend / divisor;
  yushu = dividend % divisor;
  
    #clk_period
  dividend = 32'h0x8fffffff;
  divisor = -5;
  shang = dividend / divisor;
  yushu = dividend % divisor;
  
  
  
  end
  endmodule

