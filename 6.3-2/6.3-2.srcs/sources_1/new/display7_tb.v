`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/09 21:22:41
// Design Name: 
// Module Name: display7_tb
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


module display7_tb;
    reg [3:0] iData;
    wire[6:0] oData;
    display7 uut(
        .iData(iData),
        .oData(oData)
        );
    initial
    begin
             assign iData = 4'b0000;
    #100     assign iData = 4'b0001;
    #100     assign iData = 4'b0010;
    #100     assign iData = 4'b0011;
    #100     assign iData = 4'b0100;
    #100     assign iData = 4'b0101;
    #100     assign iData = 4'b0110;
    #100     assign iData = 4'b0111;
    #100     assign iData = 4'b1000;
    #100     assign iData = 4'b1001;
            
    end
endmodule
