`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 23:17:59
// Design Name: 
// Module Name: Adder_tb
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


module Adder_tb();
    reg [7:0] iData_a;
    reg [7:0] iData_b;
    reg iC;
    wire [7:0] oData;
    wire oData_C;
    Adder uut(
    .iData_a(iData_a),
    .iData_b(iData_b),
    .iC(iC),
    .oData(oData),
    .oData_C(oData_C)
    );
initial
begin
iC = 0;
#40  iData_a = 8'b0000_0000;
    iData_b = 8'b0011_0001;
#40  iData_a = 8'b0100_0100;
        iData_b = 8'b1010_1011;

#40  iData_a = 8'b1010_1101;
    iData_b = 8'b0101_0101;

#40  iData_a = 8'b0000_1111;
    iData_b = 8'b1111_0001;

#40  iData_a = 8'b0100_0100;
    iData_b = 8'b0001_0001;

#40  iData_a = 8'b0000_0000;
    iData_b = 8'b0000_0001;

#40  iData_a = 8'b1111_1111;
    iData_b = 8'b1111_1111;

#40  iData_a = 8'b1111_1111;
    iData_b = 8'b0000_0001;
end
endmodule
