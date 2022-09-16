`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/28 20:49:22
// Design Name: 
// Module Name: JK_FF_tb
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


module JK_FF_tb;

reg CLK;
reg J;
reg K;
reg RST_n;
wire Q1;
wire Q2;

JK_FF uut (
    .CLK(CLK),
    .J(J),
    .K(K),
    .RST_n(RST_n),
    .Q1(Q1),
    .Q2(Q2)
    );
initial
begin
    CLK = 0;
    RST_n = 0;
    #10 CLK = ~CLK;
    #20 J = 0;
    K = 0;
       // #10 CLK = ~CLK;
    #20 J = 0;
    K = 1;
        #10 CLK = ~CLK;
    #20 J = 1;
    K = 0;
        #10 CLK = ~CLK;
    #20 J = 1;
    K = 1;
       #10  RST_n = ~RST_n;
    #80 CLK = ~CLK;
    #20 J = 0;
    K = 0;
        #10 CLK = ~CLK;
    #20 J = 0;
    K = 1;
        #10 CLK = ~CLK;
    #20 J = 1;
    K = 0;
        #10 CLK = ~CLK;
   #10  RST_n = ~RST_n;
    #20 J = 1;
    K = 1;
       #10  RST_n = ~RST_n;
    

    #80 CLK = ~CLK;
    #20 J = 0;
    K = 0;
        #10 CLK = ~CLK;
    #20 J = 0;
    K = 1;
        #10 CLK = ~CLK;
    #20 J = 1;
    K = 0;
        #10 CLK = ~CLK;
    #20 J = 1;
    K = 1;
    #80 CLK = ~CLK;
    #20 J = 0;
    K = 0;
        #10 CLK = ~CLK;
    #20 J = 0;
    K = 1;
        #10 CLK = ~CLK;
    #20 J = 1;
    K = 0;
       #10  RST_n = ~RST_n;
        #10 CLK = ~CLK;
    #20 J = 1;
    K = 1;
    
end
endmodule
