`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 19:08:57
// Design Name: 
// Module Name: Divider
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
//27'b101_1111_0101_1110_0001_0000_0000

module Divider(
    input I_CLK,
    input rst,
    output reg O_CLK
    );
    integer Time;
    parameter STOP_TIME = 20 ;
    
initial
begin
    O_CLK = 0;
end


always@(posedge I_CLK)
begin
    if(rst)    //复位信号生效
    begin
        O_CLK = 1'b0;
        Time = 1;
        end
    
    else if(Time < STOP_TIME / 2)
        begin
            O_CLK = 1'b0;
            Time = Time + 1;
            end
    else if(Time >= STOP_TIME / 2 && Time < STOP_TIME )
        begin
            Time = Time + 1;
            O_CLK = 1'b1;
        end
    else
        begin
            Time = 1;
            O_CLK = 1'b0;     
        end
end    
endmodule
