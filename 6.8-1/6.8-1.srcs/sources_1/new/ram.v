`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 18:47:50
// Design Name: 
// Module Name: ram
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


module ram(
    input clk,
    input ena,
    input wena,
    input [4:0] addr,
    input [31:0] data_in,
    output [31:0] data_out
    );

reg [31:0] bram[255:0]; 
reg [31:0] data;

always@(posedge clk)
begin
    if(ena)  //高电平才运行
    begin
        if(wena)  //wirte 高电平有效写入
            bram[addr] <= data_in;       
        else   //read 低电平有效只读
            data <= bram[addr];
    end
    else
        data <= 32'bz;
    
end
    
    assign data_out = (~wena && ena) ? bram[addr] : 32'bz ;
endmodule
