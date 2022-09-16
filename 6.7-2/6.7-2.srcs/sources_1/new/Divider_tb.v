`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 20:34:46
// Design Name: 
// Module Name: Divider_tb
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


module Divider_tb();
reg CLK;
reg rst_n;
wire O_CLK;

Divider uut(
    .I_CLK(CLK),
    .rst(rst_n),
    .O_CLK(O_CLK)
    );
initial
begin
rst_n = 0;
#5 CLK = 0;
#5 CLK = ~CLK;
rst_n = 0;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;

#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;

#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;

#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;

#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
rst_n = 1;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;#5 CLK = ~CLK;
#5 CLK = ~CLK;
rst_n = 0;
#5 CLK = ~CLK;#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;

#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;

#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;

#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;#5 CLK = ~CLK;
#5 CLK = ~CLK;
#5 CLK = ~CLK;

end
    
endmodule
