`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 23:17:59
// Design Name: 
// Module Name: Adder
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

module Adder(
    input [7:0] iData_a,
    input [7:0] iData_b,
    input  iC,
    output wire [7:0] oData,
    output wire oData_C
    );
    wire a_0,a_1,a_2,a_3,a_4,a_5,a_6,a_7;
    FA f1(.iA(iData_a[0]),.iB(iData_b[0]),.iC(iC),.oS(oData[0]),.oC(a_0));
    FA f2(.iA(iData_a[1]),.iB(iData_b[1]),.iC(a_0),.oS(oData[1]),.oC(a_1));
    FA f3(.iA(iData_a[2]),.iB(iData_b[2]),.iC(a_1),.oS(oData[2]),.oC(a_2));
    FA f4(.iA(iData_a[3]),.iB(iData_b[3]),.iC(a_2),.oS(oData[3]),.oC(a_3));
    FA f5(.iA(iData_a[4]),.iB(iData_b[4]),.iC(a_3),.oS(oData[4]),.oC(a_4));
    FA f6(.iA(iData_a[5]),.iB(iData_b[5]),.iC(a_4),.oS(oData[5]),.oC(a_5));
    FA f7(.iA(iData_a[6]),.iB(iData_b[6]),.iC(a_5),.oS(oData[6]),.oC(a_6));
    FA f8(.iA(iData_a[7]),.iB(iData_b[7]),.iC(a_6),.oS(oData[7]),.oC(oData_C));
endmodule
