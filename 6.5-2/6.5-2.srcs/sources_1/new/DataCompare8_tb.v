`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 20:51:25
// Design Name: 
// Module Name: DataCompare8_tb
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


module DataCompare8_tb();
    reg [7:0] iData_a;
    reg [7:0] iData_b;
    wire [2:0] oData;
     DataCompare8 uut (
       .iData_a(iData_a),
       .iData_b(iData_b),
       .oData(oData)
       );
initial
       begin
           iData_a = 8'b1111_1111;
       iData_b = 8'b0111_1111;
   #40 iData_a = 8'b0111_1111;
       iData_b = 8'b1111_1111;
   #40 iData_a = 8'b1111_1111;
       iData_b = 8'b1011_1111;
   #40 iData_a = 8'b1011_1111;
       iData_b = 8'b1111_1111;
   #40 iData_a = 8'b1111_1111;
       iData_b = 8'b1101_1111;
   #40 iData_a = 8'b1101_1111;
       iData_b = 8'b1111_1111;
   #40 iData_a = 8'b1111_1111;
       iData_b = 8'b1110_1111;
   #40 iData_a = 8'b1110_1111;
       iData_b = 8'b1111_1111;
   #40 iData_a = 8'b1111_1111;
       iData_b = 8'b1111_0111;
   #40 iData_a = 8'b1111_0111;
       iData_b = 8'b1111_1111;
   #40 iData_a = 8'b1111_1111;
       iData_b = 8'b1111_1011;
    #40 iData_a = 8'b1111_1011;
        iData_b = 8'b1111_1111;
    #40 iData_a = 8'b1111_1111;
        iData_b = 8'b1111_1101;
    #40 iData_a = 8'b1111_1101;
        iData_b = 8'b1111_1111;
    #40 iData_a = 8'b1111_1111;
        iData_b = 8'b1111_1110;       
    #40 iData_a = 8'b1111_1110;
        iData_b = 8'b1111_1111;       
        #40 iData_a = 8'b1111_1111;
            iData_b = 8'b1111_1111;  
   
       
       end
endmodule
