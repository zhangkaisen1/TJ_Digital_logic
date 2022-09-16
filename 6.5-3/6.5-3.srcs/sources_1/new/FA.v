`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 22:05:43
// Design Name: 
// Module Name: FA
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


module FA(
    input iA,
    input iB,
    input iC,
    output reg oS,
    output reg oC
    );
always@(iA,iB,iC)
begin
      if(iA + iB + iC == 3)
 begin
     oS = 1;
     oC = 1;
 end
 else if(iA + iB +iC == 2)
     begin
     oS = 0;
     oC = 1;
     end
 else if(iA + iB +iC == 1)
         begin
         oS = 1;
         oC = 0;
         end
 else if(iA + iB +iC == 0)
       begin
         oS = 0;
         oC = 0;
        end
end
endmodule
