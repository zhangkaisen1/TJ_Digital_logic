`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 19:20:50
// Design Name: 
// Module Name: Counter8
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

////////////////       JK触发器module
module JK_FF(
    input CLK,
    input J,
    input K,
    input RST_n,
    output reg Q1,
    output reg Q2
    );
reg [1:0] x;
always@(posedge CLK or negedge RST_n)
begin
    x = {J,K};
    if(~RST_n)    //复位信号不生效
    begin
    Q1 = 0;
    Q2 = 1;
    end
    else  //生效
        begin
    case(x)
            2'b00:
            begin
                Q1 = Q1;
                Q2 = Q2;
            end
            2'b01:
            begin
                Q1 = 0;
                Q2 = 1;
            end
            2'b10:
            begin
                Q1 = 1;
                Q2 = 0;
            end
            2'b11:
            begin
                Q1 = ~Q1;
                Q2 = ~Q2;
            end
        endcase
        
        end
end
endmodule


////////////          七段数码管module
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


module Counter8(
    input CLK,
    input rst_n,
    output wire [2:0] oQ,
    output wire [6:0] oDisplay
    );
    wire [2:0] oQ2;
begin

    JK_FF JK_1(.CLK(CLK),.J(1'b1),.K(1'b1),.RST_n(rst_n),.Q1(oQ[0]),.Q2(oQ2[0]));
    JK_FF JK_2(.CLK(CLK),.J(oQ[0]),.K(oQ[0]),.RST_n(rst_n),.Q1(oQ[1]),.Q2(oQ2[1]));
    JK_FF JK_3(.CLK(CLK),.J(oQ[0]&&oQ[1]),.K(oQ[0]&&oQ[1]),.RST_n(rst_n),.Q1(oQ[2]),.Q2(oQ2[2]));

    display7 d1(.iData({0,oQ}),.oData(oDisplay));
end
endmodule
