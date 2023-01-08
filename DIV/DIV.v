`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/29 16:53:35
// Design Name: 
// Module Name: DIV
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


module DIV(
    input [31:0] dividend,   //被除数
    input [31:0] divisor,     //除数
    input start,              //启动
    input clock,
    input reset,
    output reg [31:0] q,       //商
    output reg [31:0] r,         //余数
    output reg busy          //是否在进行运算
    );
 reg [63:0] my_dividend; 
 reg flag;
 parameter NEGATIVE=32'b1000_0000_0000_0000_0000_0000_0000_0000;
 reg [31:0] dividend_;
 reg [31:0] divisor_;
      // reg [31:0] temp;
       integer i;
       initial   //初始化
       begin
       //assign my_dividend = dividend;
       busy = 0;
       q = 0;
       r = 0;
       end
       
       always@(posedge clock or posedge reset)
       begin
       flag = 0; // 当相乘符号为负数时，flag = 1；
               if(dividend >= NEGATIVE)
               begin
                   dividend_ = ~dividend  + 1;
                   flag = ~flag;
                   end
               else
                   dividend_ = dividend;
                   
                if(divisor >= NEGATIVE)
                begin
                  divisor_ = ~divisor + 1;
                   flag = ~flag;
                end   
                else
                   divisor_ = divisor;
       
       
       if(reset)
           begin
           busy = 0;
           q = 0;
           r = 0;
           my_dividend = 0;
           end
       else if(start)
           begin
           busy = 1;
           my_dividend = dividend_;
       for(i = 0;i < 32;i = i + 1)
               begin
               my_dividend = my_dividend << 1;
               if(my_dividend[63:32] >= divisor_)
                   begin
                   my_dividend[63:32] = my_dividend[63:32] - divisor_;
                   my_dividend =  my_dividend + 1;
                   end
               end
       
           end
       if(divisor == 0)
           begin
           q = 32'bxxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx;
           r = 32'bxxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx_xxxx;
           end
       else
           begin
           if(flag)   
                q = ~my_dividend[31:0] + 1;
           else
                q = my_dividend[31:0];
           if(dividend >= NEGATIVE)
                r= ~my_dividend[63:32] + 1;
           else
                r = my_dividend[63:32];
           busy = 0;
           end
       end
       
   endmodule
