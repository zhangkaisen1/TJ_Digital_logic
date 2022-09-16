`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/12 21:13:44
// Design Name: 
// Module Name: encoder83_Pri_tb
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


module encoder83_Pri_tb;
reg [7:0]iData;
reg iEI;
wire oEO;
wire [2:0]oData; 
    encoder83_Pri uut(
        .iData(iData),
        .iEI(iEI),
        .oEO(oEO),
        .oData(oData)
        );
    initial 
    begin
        iData = 8'b0000_0000;
    iEI = 1;
    #10 iData[0] = 1;
    #10 iData[1] = 1;
    #10 iData[2] = 1;
    #10 iData[3] = 1;
    #10 iData[4] = 1;
    #10 iData[5] = 1;
    #10 iData[6] = 1;
    #10 iData[7] = 1;
    #10 iData = 8'b0000_0000;
      #10  iEI = 0;
    #10 iData[0] = 1;
    #10 iData[1] = 1;
    #10 iData[2] = 1;
    #10 iData[3] = 1;
    #10 iData[4] = 1;
    #10 iData[5] = 1;
    #10 iData[6] = 1;
    #10 iData[7] = 1;
       #10 iData = 8'b0000_0000;
    #10 iEI = 0;
    #10 iData[7] = 1;
    #10 iData[6] = 1;
    #10 iData[5] = 1;
    #10 iData[4] = 1;
    #10 iData[3] = 1;
    #10 iData[2] = 1;
    #10 iData[1] = 1;
    #10 iData[0] = 1;
    end
endmodule
