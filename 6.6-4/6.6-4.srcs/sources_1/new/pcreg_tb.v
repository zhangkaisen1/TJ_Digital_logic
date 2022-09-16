`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/28 22:48:31
// Design Name: 
// Module Name: pcreg_tb
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


module pcreg_tb;
    reg clk;
    reg rst;
    reg ena;
    reg [31:0] data_in;
    wire [31:0] data_out;
    pcreg uut(
        .clk(clk),
        .rst(rst),
        .ena(ena),
        .data_in(data_in),
        .data_out(data_out)
        );
       
   

initial
begin
    data_in =  32'b0000_0000_0000_0000_0000_0000_0000_1111; 
    clk = 0;
    #10 clk = ~clk;
    #10 ena = 0;
    clk = ~clk;
    #10 ena = 1;
    clk = ~clk;
    #10 
    ena = 0;
    clk = ~clk;
    #10 
    ena = 1;
    clk = ~clk;
    #10 clk = ~clk;
    #10 ena = 1;
    rst = 0;
    clk = ~clk;
    #10 
    rst = 0;
    clk = ~clk;
    #10 rst = 1;

    clk = ~clk;
    #10 rst = 1; 

    clk = ~clk;
end
endmodule
