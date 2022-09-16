`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/22 21:30:59
// Design Name: 
// Module Name: ram_tb
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


module ram_tb();
reg clk;
reg ena;
reg wena;
reg [4:0] addr;
reg [31:0] data_in;
wire [31:0] data_out;

ram uut(
    .clk(clk),
    .ena(ena),
    .wena(wena),
    .addr(addr),
    .data_in(data_in),
    .data_out(data_out)
    );
initial
begin
clk = 0;
ena = 1;
wena = 0;
data_in = 0;
addr = 0;
#40 ena = 1;
wena = 1;
#40 ena = 1;
wena = 1;
#40 ena = 1;
wena = 0;
end

always
begin

#5 clk = ~clk;
end

always
begin
#10 addr = 100;
data_in = 500;
#10 addr = 200;
data_in = 1000;
#10 addr = 300;
data_in = 1500;
#10 addr = 400;
data_in = 2000;
end


endmodule
