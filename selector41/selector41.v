`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/08 16:23:12
// Design Name: 
// Module Name: selector41
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


module selector41(
input [3:0] iC0,      
input [3:0] iC1,
input [3:0] iC2,
input [3:0] iC3,
input iS1,
input iS0,              
output reg [3:0] oZ  
    );
reg [1:0] Num;
always @(*)
    begin
            Num = {iS1,iS0};
            case(Num)
            0: oZ = iC0;
            1: oZ = iC1;
            2: oZ = iC2;
            3: oZ = iC3;
            default: oZ = 0;
            endcase
     end
endmodule

    