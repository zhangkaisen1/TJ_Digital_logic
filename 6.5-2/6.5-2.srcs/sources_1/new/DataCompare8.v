`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/21 20:02:12
// Design Name: 
// Module Name: DataCompare8
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
module DataCompare4(iData_a,iData_b,iData,oData);
    input  [3:0] iData_a;
    input [3:0] iData_b;
    input [2:0] iData;
    output reg [2:0] oData;
always@(iData_a,iData_b,iData)
begin
    if(iData_a > iData_b || iData_a == iData_b && iData == 3'b100)
        oData = 3'b100;
    if(iData_a < iData_b || iData_a == iData_b && iData == 3'b010)
        oData = 3'b010;
    if(iData_a == iData_b && iData == 3'b001)
        oData = 3'b001;
end
endmodule

module DataCompare8(
    input [7:0] iData_a,
    input [7:0] iData_b,
    output [2:0] oData
    );
    wire [2:0] iData;
    wire [3:0] iData_1;
    wire [3:0] iData_2;
    wire [3:0] iData_3;
    wire [3:0] iData_4;
    wire [2:0] oData_1;
    assign iData = 3'b001;

    assign  iData_1 ={iData_a[3],iData_a[2],iData_a[1],iData_a[0]};
    assign  iData_2 = {iData_b[3],iData_b[2],iData_b[1],iData_b[0]};
    assign  iData_3 = {iData_a[7],iData_a[6],iData_a[5],iData_a[4]};
    assign  iData_4 = {iData_b[7],iData_b[6],iData_b[5],iData_b[4]};



   DataCompare4 d1(
    .iData_a(iData_1),
    .iData_b(iData_2),
    .iData(iData),
    .oData(oData_1)
    );
  DataCompare4 d2 (
    .iData_a(iData_3),
    .iData_b(iData_4),
    .iData(oData_1),
    .oData(oData)
    );
    


endmodule
