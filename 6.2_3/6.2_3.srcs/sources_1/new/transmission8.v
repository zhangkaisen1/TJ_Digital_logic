`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/08 20:20:50
// Design Name: 
// Module Name: transmission8
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


module transmission8(
    input [7:0] iData,
    input A,
    input B,
    input C,
    output [7:0] oData
    );
    not not_insta(A_,A);
    not not_instb(B_,B);
    not not_instc(C_,C);
  //  assign oData = 8'b1111_1111;
    and and_inst0(f0,A_,B_,C_,iData[0]);
  //  and and_inst0(f0,A_,B_,C_,iData[0]);
    or or_inst0(oData[0],A,B,C,f0);
    and and_inst1(f1,A_,B_,C,iData[1]);
    or or_inst1(oData[1],A,B,C_,f1);
    and and_inst2(f2,A_,B,C_,iData[2]);
    or or_inst2(oData[2],A,B_,C,f2);
    and and_inst3(f3,A_,B,C,iData[3]);
    or or_inst3(oData[3],A,B_,C_,f3);
    and and_inst4(f4,A,B_,C_,iData[4]);
    or or_inst4(oData[4],A_,B,C,f4);
    and and_inst5(f5,A,B_,C,iData[5]);
    or or_inst5(oData[5],A_,B,C_,f5);
    and and_inst6(f6,A,B,C_,iData[6]);
    or or_inst6(oData[6],A_,B_,C,f6);
    and and_inst7(f7,A,B,C,iData[7]);
    or or_inst7(oData[7],A_,B_,C_,f7);
endmodule
