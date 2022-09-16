`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/24 13:11:55
// Design Name: 
// Module Name: Regfiles
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

module Regfiles(
    input clk,
    input rst,
    input we,
    input [4:0] raddr1,
    input [4:0] raddr2,
    input [4:0] waddr,
    input [31:0] wdata,
    output [31:0] rdata1,
    output [31:0] rdata2
    );
    
    wire [31:0] store[31:0];    
    wire [31:0] i;
decoder d(.iData(waddr),.iEna(we),.oData(i));

pcreg r1(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[0]),.w(i[0]));
pcreg r2(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[1]),.w(i[1]));
pcreg r3(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[2]),.w(i[2]));
pcreg r4(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[3]),.w(i[3]));
pcreg r5(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[4]),.w(i[4]));
pcreg r6(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[5]),.w(i[5]));
pcreg r7(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[6]),.w(i[6]));
pcreg r8(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[7]),.w(i[7]));
pcreg r9(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[8]),.w(i[8]));
pcreg r10(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[9]),.w(i[9]));
pcreg r11(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[10]),.w(i[10]));
pcreg r12(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[11]),.w(i[11]));
pcreg r13(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[12]),.w(i[12]));
pcreg r14(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[13]),.w(i[13]));
pcreg r15(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[14]),.w(i[14]));
pcreg r16(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[15]),.w(i[15]));
pcreg r17(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[16]),.w(i[16]));
pcreg r18(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[17]),.w(i[17]));
pcreg r19(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[18]),.w(i[18]));
pcreg r20(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[19]),.w(i[19]));
pcreg r21(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[20]),.w(i[20]));
pcreg r22(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[21]),.w(i[21]));
pcreg r23(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[22]),.w(i[22]));
pcreg r24(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[23]),.w(i[23]));
pcreg r25(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[24]),.w(i[24]));
pcreg r26(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[25]),.w(i[25]));
pcreg r27(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[26]),.w(i[26]));
pcreg r28(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[27]),.w(i[27]));
pcreg r29(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[28]),.w(i[28]));
pcreg r30(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[29]),.w(i[29]));
pcreg r31(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[30]),.w(i[30]));
pcreg r32(.clk(clk),.rst(rst),.ena(we),.data_in(wdata),.data_out(store[31]),.w(i[31]));

       selector321 sel1(.iC0(store[0]),.iC1(store[1]),.iC2(store[2]),.iC3(store[3]),.iC4(store[4]),.iC5(store[5]),
       .iC6(store[6]),.iC7(store[7]),.iC8(store[8]),.iC9(store[9]),.iC10(store[10]),.iC11(store[11]),.iC12(store[12]),
       .iC13(store[13]),.iC14(store[14]),.iC15(store[15]),.iC16(store[16]),.iC17(store[17]),.iC18(store[18]),.iC19(store[19]),
       .iC20(store[20]),.iC21(store[21]),.iC22(store[22]),.iC23(store[23]),.iC24(store[24]),.iC25(store[25]),.iC26(store[26]),
       .iC27(store[27]),.iC28(store[28]),.iC29(store[29]),.iC30(store[30]),.iC31(store[31]),.iEna(we),.iS(raddr1),.oZ(rdata1));   
    
    selector321 sel2(.iC0(store[0]),.iC1(store[1]),.iC2(store[2]),.iC3(store[3]),.iC4(store[4]),.iC5(store[5]),
              .iC6(store[6]),.iC7(store[7]),.iC8(store[8]),.iC9(store[9]),.iC10(store[10]),.iC11(store[11]),.iC12(store[12]),
              .iC13(store[13]),.iC14(store[14]),.iC15(store[15]),.iC16(store[16]),.iC17(store[17]),.iC18(store[18]),.iC19(store[19]),
              .iC20(store[20]),.iC21(store[21]),.iC22(store[22]),.iC23(store[23]),.iC24(store[24]),.iC25(store[25]),.iC26(store[26]),
              .iC27(store[27]),.iC28(store[28]),.iC29(store[29]),.iC30(store[30]),.iC31(store[31]),.iEna(we),.iS(raddr2),.oZ(rdata2));   
endmodule

module decoder(
    input [4:0] iData,
    input iEna,
    output reg [31:0] oData
    );
    
always@(*)
if(iEna)
    begin
    case(iData)
        5'h0:
            oData=32'h00000001;
        5'h1:
            oData=32'h00000002;
        5'h2:
            oData=32'h00000004;
        5'h3:
            oData=32'h00000008;
        5'h4:
            oData=32'h00000010;
        5'h5:
            oData=32'h00000020;
        5'h6:
            oData=32'h00000040;
        5'h7:
            oData=32'h00000080;
        5'h8:
            oData=32'h00000100;
        5'h9:
            oData=32'h00000200;
        5'ha:
            oData=32'h00000400;
        5'hb:
            oData=32'h00000800;
        5'hc:
            oData=32'h00001000;
        5'hd:
            oData=32'h00002000;
        5'he:
            oData=32'h00004000;
        5'hf:
            oData=32'h00008000;
        5'h10:
            oData=32'h00010000;
        5'h11:    
            oData=32'h00020000;
        5'h12:
            oData=32'h00040000;
        5'h13:
            oData=32'h00080000;
        5'h14:
            oData=32'h00100000;
        5'h15:
            oData=32'h00200000;
        5'h16:
            oData=32'h00400000;
        5'h17:
            oData=32'h00800000;
        5'h18:
            oData=32'h01000000;
        5'h19:
            oData=32'h02000000;
        5'h1a:
            oData=32'h04000000;
        5'h1b:
            oData=32'h08000000;
        5'h1c:
            oData=32'h10000000;
        5'h1d:
            oData=32'h20000000;
        5'h1e:
            oData=32'h40000000;
        5'h1f:     
            oData=32'h80000000;
    endcase
    end
endmodule

module pcreg(
    input clk,
    input rst,
    input ena,
    input [31:0] data_in,
    input w,
    output [31:0] data_out
);

Asynchronous_D_FF d1(.CLK(clk),.D(data_in[0]),.RST_n(~rst),.ena(ena),.Q1(data_out[0]),.w(w));
Asynchronous_D_FF d2(.CLK(clk),.D(data_in[1]),.RST_n(~rst),.ena(ena),.Q1(data_out[1]),.w(w));
Asynchronous_D_FF d3(.CLK(clk),.D(data_in[2]),.RST_n(~rst),.ena(ena),.Q1(data_out[2]),.w(w));
Asynchronous_D_FF d4(.CLK(clk),.D(data_in[3]),.RST_n(~rst),.ena(ena),.Q1(data_out[3]),.w(w));
Asynchronous_D_FF d5(.CLK(clk),.D(data_in[4]),.RST_n(~rst),.ena(ena),.Q1(data_out[4]),.w(w));
Asynchronous_D_FF d6(.CLK(clk),.D(data_in[5]),.RST_n(~rst),.ena(ena),.Q1(data_out[5]),.w(w));
Asynchronous_D_FF d7(.CLK(clk),.D(data_in[6]),.RST_n(~rst),.ena(ena),.Q1(data_out[6]),.w(w));
Asynchronous_D_FF d8(.CLK(clk),.D(data_in[7]),.RST_n(~rst),.ena(ena),.Q1(data_out[7]),.w(w));
Asynchronous_D_FF d9(.CLK(clk),.D(data_in[8]),.RST_n(~rst),.ena(ena),.Q1(data_out[8]),.w(w));
Asynchronous_D_FF d10(.CLK(clk),.D(data_in[9]),.RST_n(~rst),.ena(ena),.Q1(data_out[9]),.w(w));
Asynchronous_D_FF d11(.CLK(clk),.D(data_in[10]),.RST_n(~rst),.ena(ena),.Q1(data_out[10]),.w(w));
Asynchronous_D_FF d12(.CLK(clk),.D(data_in[11]),.RST_n(~rst),.ena(ena),.Q1(data_out[11]),.w(w));
Asynchronous_D_FF d13(.CLK(clk),.D(data_in[12]),.RST_n(~rst),.ena(ena),.Q1(data_out[12]),.w(w));
Asynchronous_D_FF d14(.CLK(clk),.D(data_in[13]),.RST_n(~rst),.ena(ena),.Q1(data_out[13]),.w(w));
Asynchronous_D_FF d15(.CLK(clk),.D(data_in[14]),.RST_n(~rst),.ena(ena),.Q1(data_out[14]),.w(w));
Asynchronous_D_FF d16(.CLK(clk),.D(data_in[15]),.RST_n(~rst),.ena(ena),.Q1(data_out[15]),.w(w));
Asynchronous_D_FF d17(.CLK(clk),.D(data_in[16]),.RST_n(~rst),.ena(ena),.Q1(data_out[16]),.w(w));
Asynchronous_D_FF d18(.CLK(clk),.D(data_in[17]),.RST_n(~rst),.ena(ena),.Q1(data_out[17]),.w(w));
Asynchronous_D_FF d19(.CLK(clk),.D(data_in[18]),.RST_n(~rst),.ena(ena),.Q1(data_out[18]),.w(w));
Asynchronous_D_FF d20(.CLK(clk),.D(data_in[19]),.RST_n(~rst),.ena(ena),.Q1(data_out[19]),.w(w));
Asynchronous_D_FF d21(.CLK(clk),.D(data_in[20]),.RST_n(~rst),.ena(ena),.Q1(data_out[20]),.w(w));
Asynchronous_D_FF d22(.CLK(clk),.D(data_in[21]),.RST_n(~rst),.ena(ena),.Q1(data_out[21]),.w(w));
Asynchronous_D_FF d23(.CLK(clk),.D(data_in[22]),.RST_n(~rst),.ena(ena),.Q1(data_out[22]),.w(w));
Asynchronous_D_FF d24(.CLK(clk),.D(data_in[23]),.RST_n(~rst),.ena(ena),.Q1(data_out[23]),.w(w));
Asynchronous_D_FF d25(.CLK(clk),.D(data_in[24]),.RST_n(~rst),.ena(ena),.Q1(data_out[24]),.w(w));
Asynchronous_D_FF d26(.CLK(clk),.D(data_in[25]),.RST_n(~rst),.ena(ena),.Q1(data_out[25]),.w(w));
Asynchronous_D_FF d27(.CLK(clk),.D(data_in[26]),.RST_n(~rst),.ena(ena),.Q1(data_out[26]),.w(w));
Asynchronous_D_FF d28(.CLK(clk),.D(data_in[27]),.RST_n(~rst),.ena(ena),.Q1(data_out[27]),.w(w));
Asynchronous_D_FF d29(.CLK(clk),.D(data_in[28]),.RST_n(~rst),.ena(ena),.Q1(data_out[28]),.w(w));
Asynchronous_D_FF d30(.CLK(clk),.D(data_in[29]),.RST_n(~rst),.ena(ena),.Q1(data_out[29]),.w(w));
Asynchronous_D_FF d31(.CLK(clk),.D(data_in[30]),.RST_n(~rst),.ena(ena),.Q1(data_out[30]),.w(w));
Asynchronous_D_FF d32(.CLK(clk),.D(data_in[31]),.RST_n(~rst),.ena(ena),.Q1(data_out[31]),.w(w));
endmodule

module Asynchronous_D_FF(
    input CLK,
    input D,
    input RST_n,
    input ena,
    input w,
    output reg Q1
);
always@(negedge CLK or negedge RST_n)
begin
    if (~RST_n)
        Q1 <= 0;
    else
        if (ena&&w)
            Q1 <= D;
end
endmodule

module selector321(
    input [31:0] iC0,
    input [31:0] iC1,
    input [31:0] iC2,
    input [31:0] iC3,
    input [31:0] iC4,
    input [31:0] iC5,
    input [31:0] iC6,
    input [31:0] iC7,
    input [31:0] iC8,
    input [31:0] iC9,
    input [31:0] iC10,
    input [31:0] iC11,
    input [31:0] iC12,
    input [31:0] iC13,
    input [31:0] iC14,
    input [31:0] iC15,
    input [31:0] iC16,
    input [31:0] iC17,
    input [31:0] iC18,
    input [31:0] iC19,
    input [31:0] iC20,
    input [31:0] iC21,
    input [31:0] iC22,
    input [31:0] iC23,
    input [31:0] iC24,
    input [31:0] iC25,
    input [31:0] iC26,
    input [31:0] iC27,
    input [31:0] iC28,
    input [31:0] iC29,
    input [31:0] iC30,
    input [31:0] iC31,
    input iEna,
    input [4:0]iS,
    output reg [31:0] oZ
    );
always@(*)
if(~iEna)
    case(iS)
        5'h0:
        oZ=iC0;
        5'h1:
        oZ=iC1;
        5'h2:
        oZ=iC2;
        5'h3:
        oZ=iC3;
        5'h4:
        oZ=iC4;
        5'h5:
        oZ=iC5;
        5'h6:
        oZ=iC6;
        5'h7:
        oZ=iC7;
        5'h8:
        oZ=iC8;
        5'h9:
        oZ=iC9;
        5'ha:
        oZ=iC10;
        5'hb:
        oZ=iC11;
        5'hc:
        oZ=iC12;
        5'hd:
        oZ=iC13;
        5'he:
        oZ=iC14;
        5'hf:
        oZ=iC15;
        5'h10:
        oZ=iC16;
        5'h11:
        oZ=iC17;
        5'h12:
        oZ=iC18;
        5'h13:
        oZ=iC19;
        5'h14:
        oZ=iC20;
        5'h15:
        oZ=iC21;
        5'h16:
        oZ=iC22;
        5'h17:
        oZ=iC23;
        5'h18:
        oZ=iC24;
        5'h19:
        oZ=iC25;
        5'h1a:
        oZ=iC26;
        5'h1b:
        oZ=iC27;
        5'h1c:
        oZ=iC28;
        5'h1d:
        oZ=iC29;
        5'h1e:
        oZ=iC30; 
        5'h1f:       
        oZ=iC31;   
    endcase
else
    oZ = 32'hzzzz_zzzz;
endmodule
