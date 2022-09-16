`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/09 19:18:49
// Design Name: 
// Module Name: decoder
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


module decoder(iData,iEna,oData);
    input [2:0] iData;
    input [1:0] iEna;
    output [7:0] oData;
      reg [7:0] oData;
    always @(*)
    begin
    if(iEna == 2'b10)
        case(iData)
            3'b000: oData = 8'b1111_1110;
            3'b001: oData = 8'b1111_1101;
            3'b010: oData = 8'b1111_1011;
            3'b011: oData = 8'b1111_0111;
            3'b100: oData = 8'b1110_1111;
            3'b101: oData = 8'b1101_1111;
            3'b110: oData = 8'b1011_1111;
            3'b111: oData = 8'b0111_1111;
            default: oData = 8'b1111_1111;
        endcase
    else
            oData = 8'b1111_1111;
    
    end
endmodule
