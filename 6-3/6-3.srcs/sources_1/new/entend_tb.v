`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/23 21:23:26
// Design Name: 
// Module Name: entend_tb
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


module entend_tb;
    reg [15:0]a,sext;
//reg sext;
    wire [31:0]b;
    extend uut (.a(a),.sext(sext),.b(b));
    initial
    begin
    
      a = 0;
      sext = 0;
      #100;
      sext = 1;
      a = 16'h0000;
      #100;
      sext = 0;
      a = 16'h8000;
      #100;
      sext = 1;
      a = 16'h8000;
      #100;
      sext = 0;
      a = 16'hffff;
      #100;
      sext = 1;
      a = 16'hffff;
      #100;
    end
      
endmodule
