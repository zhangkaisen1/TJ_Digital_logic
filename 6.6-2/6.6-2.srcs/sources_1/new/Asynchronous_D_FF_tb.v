`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/28 20:17:01
// Design Name: 
// Module Name: Asynchronous_D_FF_tb
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


module Asynchronous_D_FF_tb(

    );
    
     reg CLK;
    reg D;
    reg RST_n;
    wire Q1;
    wire Q2;
       Asynchronous_D_FF uut(
       .Q2(Q2),
       .Q1(Q1),
       .RST_n(RST_n),
       .D(D),
       .CLK(CLK)
       );
       
 initial
       begin
            CLK = 0;
            RST_n = 0;
             D = 1;
           #40 CLK = ~CLK;
           #80 D = 1;
           #10 RST_n = 0;
           #10 RST_n = 1;
           #40 CLK = ~CLK;
           #10 RST_n = 0;
           #10 RST_n = 1;
           
           #40 CLK = ~CLK;
           #80 D = 0;
           #10 RST_n = 0;
           #10 RST_n = 1;
           #40 CLK = ~CLK;
           #10 RST_n = 0;
           #10 RST_n = 1;
end
endmodule
