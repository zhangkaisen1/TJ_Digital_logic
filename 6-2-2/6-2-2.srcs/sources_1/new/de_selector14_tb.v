`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/08 19:53:36
// Design Name: 
// Module Name: de_selector14_tb
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


module de_selector14_tb;
reg iC,iS0,iS1;
wire oZ0,oZ1,oZ2,oZ3;
    de_selector14 uut(
    .iC(iC),
    .iS0(iS0),
    .iS1(iS1),
    .oZ0(oZ0),
    .oZ1(oZ1),
    .oZ2(oZ2),
    .oZ3(oZ3)
    );
    initial
    begin
    iC = 0;
    iS1 = 0;
    iS0 = 0;
    #40 iS1 = 1;
    #40 iS0 = 1;
    #40 iS1 = 0;
    end
        

endmodule
