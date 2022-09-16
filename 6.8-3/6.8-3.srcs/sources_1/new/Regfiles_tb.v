`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/24 22:48:30
// Design Name: 
// Module Name: Regfiles_tb
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


module Regfiles_tb(

    );
reg clk;
reg rst;
reg we;
reg [4:0] raddr1;
reg [4:0] raddr2;
reg [4:0] waddr;
reg [31:0] wdata;
wire [31:0] rdata1;
wire [31:0] rdata2;
Regfiles R1(
    .clk(clk),
    .rst(rst),
    .we(we),
    .raddr1(raddr1),
    .raddr2(raddr2),
    .waddr(waddr),
    .wdata(wdata),
    .rdata1(rdata1),
    .rdata2(rdata2)
    );
initial 
begin
clk = 0;
rst = 0;
we = 0;
raddr1 = 3;
raddr2 = 4;
waddr = 5;
wdata = 32'hffffffff;
end
always
begin
#5 clk = ~clk;
#20 we = ~we;
#20 rst = ~rst;
end
always
begin
# 40 rst = 0;
we = 0;
raddr1 = 3;
raddr2 = 4;
waddr = 5;
wdata = 32'hffffffff;

#80 raddr1 = 5;
raddr2 = 6;
waddr = 7;
end


endmodule
