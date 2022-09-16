`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/08 21:11:24
// Design Name: 
// Module Name: transmission8_tb
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


module transmission8_tb;
    reg [7:0] iData;
    reg A,B,C;
    wire [7:0] oData;
    transmission8 uut(
    .iData(iData),
    .A(A),
    .B(B),
    .C(C),
    .oData(oData)
    );
    initial
    begin
    iData = 8'b0000_0000;
    A = 0;
    B = 0;
    C = 0;           //000
    #40 C = 1;        //001
    #40 B = 1;          //010
    C = 0;
    #40 C = 1;           //011
    #40 A = 1;           //100
    B = 0;
    C = 0;
    #40 C = 1;             //101    
    #40 C = 0;
    B = 1;                 //110
    #40 C = 1;            //111
    end
    
endmodule
