`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 19:41:58
// Design Name: 
// Module Name: Counter8_tb
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


module Counter8_tb(

    );
reg CLK;
reg rst_n;
wire [2:0] oQ;
wire [6:0] oDisplay;
    Counter8 uut(
        .CLK(CLK),
        .rst_n(rst_n),
        .oQ(oQ),
        .oDisplay(oDisplay)
        );
        
initial
begin
rst_n = 0;
#40 CLK = 0;
#40 CLK = ~CLK;
rst_n = 1;
#40 CLK = ~CLK;
#40 CLK = ~CLK;
#40 CLK = ~CLK;
#40 CLK = ~CLK;
#40 CLK = ~CLK;
#40 CLK = ~CLK;
#40 CLK = ~CLK;

#40 CLK = ~CLK;
#40 CLK = ~CLK;
#40 CLK = ~CLK;
#40 CLK = ~CLK;
#40 CLK = ~CLK;
#40 CLK = ~CLK;
#40 CLK = ~CLK;
#40 CLK = ~CLK;#40 CLK = ~CLK;
#40 CLK = ~CLK;
#40 CLK = ~CLK;






end
    
endmodule
