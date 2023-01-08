`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/08 16:45:48
// Design Name: 
// Module Name: selector41_tb
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


module selector41_tb;
reg [3:0] iC0;
reg [3:0] iC1;
reg [3:0] iC2;
reg [3:0] iC3;
reg iS0,iS1;
wire [3:0] oZ;
    selector41 uut(
     .iC0(iC0),
     .iC1(iC1),
     .iC2(iC2),
     .iC3(iC3),
     .iS0(iS0),
     .iS1(iS1),
     .oZ(oZ)
    );

    initial
    begin
    iS1 = 0;
    iS0 = 0;
    end

    always  #80 iS1=~iS1;
    always @(iS1)
      #40 iS0=~iS0;
        
    initial
    begin
        iC0 = 4'h1;
        #10 iC0 = 4'h0;
        #10 iC0 = 4'h0;
        #10 iC0 = 4'h0;
        #10 iC0 = 4'h1;
        #10 iC0 = 4'h0;
        #10 iC0 = 4'h0;
        #10 iC0 = 4'h0;
        #10 iC0 = 4'h1;
        #10 iC0 = 4'h0;
        #10 iC0 = 4'h0;
        #10 iC0 = 4'h0;
        #10 iC0 = 4'h1;
        #10 iC0 = 4'h0;
        #10 iC0 = 4'h0;
        #10 iC0 = 4'h0;
    end
        initial
    begin
        iC1 = 4'h0;
        #10 iC1 = 4'h1;
        #10 iC1 = 4'h0;
        #10 iC1 = 4'h0;
        #10 iC1 = 4'h0;
        #10 iC1 = 4'h1;
        #10 iC1 = 4'h0;
        #10 iC1 = 4'h0;
        #10 iC1 = 4'h0;
        #10 iC1 = 4'h1;
        #10 iC1 = 4'h0;
        #10 iC1 = 4'h0;
        #10 iC1 = 4'h0;
        #10 iC1 = 4'h1;
        #10 iC1 = 4'h0;
        #10 iC1 = 4'h0;
    end
        initial
    begin
        iC2 = 4'h0;
        #10 iC2 = 4'h0;
        #10 iC2 = 4'h1;
        #10 iC2 = 4'h0;
        #10 iC2 = 4'h0;
        #10 iC2 = 4'h0;
        #10 iC2 = 4'h1;
        #10 iC2 = 4'h0;
        #10 iC2 = 4'h0;
        #10 iC2 = 4'h0;
        #10 iC2 = 4'h1;
        #10 iC2 = 4'h0;
        #10 iC2 = 4'h0;
        #10 iC2 = 4'h0;
        #10 iC2 = 4'h1;
        #10 iC2 = 4'h0;
    end
    initial
    begin
        iC3 = 4'h0;
        #10 iC3 = 4'h0;
        #10 iC3 = 4'h0;
        #10 iC3 = 4'h1;
        #10 iC3 = 4'h0;
        #10 iC3 = 4'h0;
        #10 iC3 = 4'h0;
        #10 iC3 = 4'h1;
        #10 iC3 = 4'h0;
        #10 iC3 = 4'h0;
        #10 iC3 = 4'h0;
        #10 iC3 = 4'h1;
        #10 iC3 = 4'h0;
        #10 iC3 = 4'h0;
        #10 iC3 = 4'h0;
        #10 iC3 = 4'h1;
    end
    
endmodule
