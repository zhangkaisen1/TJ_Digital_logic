`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 22:05:43
// Design Name: 
// Module Name: FA_tb
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


module FA_tb();
    
   reg iA;
   reg iB;
   reg iC;
   wire oS;
   wire oC;
   FA uut(
       .oS(oS),
       .oC(oC),
       .iA(iA),
       .iB(iB),
       .iC(iC)
       );

initial 
begin
    iA = 1'b0;
    iB = 1'b0;
    iC = 1'b0;
#40 iA = 1'b0;
    iB = 1'b0;
    iC = 1'b1;
#40 iA = 1'b0;
    iB = 1'b1;
    iC = 1'b0;
#40 iA = 1'b0;
    iB = 1'b1;
    iC = 1'b1;
#40 iA = 1'b1;
    iB = 1'b0;
    iC = 1'b0;
#40 iA = 1'b1;
    iB = 1'b0;
    iC = 1'b1;
#40 iA = 1'b1;
    iB = 1'b1;
    iC = 1'b0;   
#40 iA = 1'b1;
    iB = 1'b1;
    iC = 1'b1;   

end
endmodule
