`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/22 23:02:28
// Design Name: 
// Module Name: ram2
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


module ram2(
    input clk,
    input ena,
    input wena,
    input [4:0] addr,
    inout [31:0] data
    );
    reg [31:0] bram[31:0];     
    reg [31:0] data_temp;
always @(posedge clk)
begin 
    if (ena)   
    begin
        if(wena)
            bram[addr] <= data;
        else 
            data_temp <= bram[addr];
    end
    else 
        data_temp <= 32'bz;     
    end
        
assign data = wena ? 32'bz : data_temp; 

endmodule
