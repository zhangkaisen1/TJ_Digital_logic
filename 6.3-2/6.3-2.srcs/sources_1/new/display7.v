`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/09 21:09:57
// Design Name: 
// Module Name: display7
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


module display7( iData, oData);
    input [3:0] iData;
    output [6:0] oData;
    reg [6:0] oData;
    always@(*)
    begin
        case(iData)
            4'b0000:oData = 7'b100_0000;
            4'b0001:oData = 7'b111_1001;
            4'b0010:oData = 7'b010_0100;
            4'b0011:oData = 7'B011_0000;
            4'b0100:oData = 7'b001_1001;
            4'b0101:oData = 7'b001_0010;
            4'b0110:oData = 7'b000_0010;
            4'b0111:oData = 7'b111_1000;
            4'b1000:oData = 7'b000_0000;
            4'b1001:oData = 7'b001_0000;
            default:oData = 7'b111_1111;
            endcase
        end
endmodule
