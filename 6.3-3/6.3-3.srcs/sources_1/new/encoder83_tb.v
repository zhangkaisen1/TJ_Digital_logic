`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/09 22:02:42
// Design Name: 
// Module Name: encoder83_tb
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


module encoder83_tb;
    reg  [7:0] iData;
    wire [2:0] oData;
    encoder83 uut(
    .iData(iData),
    .oData(oData)
    );
    initial
    begin
    assign iData = 8'b1000_0000;
    #100   assign iData = 8'b0100_0000;
    #100   assign iData = 8'b0010_0000;
    #100   assign iData = 8'b0001_0000;
    #100   assign iData = 8'b0000_1000;
    #100   assign iData = 8'b0000_0100;
    #100   assign iData = 8'b0000_0010;
    #100   assign iData = 8'b0000_0001;
    end
endmodule
