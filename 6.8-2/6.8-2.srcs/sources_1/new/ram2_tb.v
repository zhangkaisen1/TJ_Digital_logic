`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/22 23:07:04
// Design Name: 
// Module Name: ram2_tb
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


module ram2_tb(

    );
    reg clk;
    reg ena;
    reg wena;
    reg [4:0] addr;
    wire [31:0] data;
    
    ram2 uut(
        .clk(clk),
        .ena(ena),
        .wena(wena),
        .addr(addr),
        .data(data)
        );
    assign data = 0;
    initial
    begin
    clk = 0;
    ena = 0;
    wena = 0;

    addr = 0;
    #40 ena = 0;
    wena = 1;
    #40 ena = 1;
    wena = 0;
    #40 ena = 1;
    wena = 1;
    end
    
    always
    begin
    
    #5 clk = ~clk;
    end
assign data = 500;
    initial
    begin
    #10 addr = 100;
    end
assign data = 1000;
    initial
    begin
    #10 addr = 200;
end
    assign data = 1500;
initial
begin
    #10 addr = 300;
    end
assign data = 2000;
initial
begin
    #10 addr = 400;
end


endmodule
