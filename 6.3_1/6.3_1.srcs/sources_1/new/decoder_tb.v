`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/09 20:19:09
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb;
    reg [2:0] iData;
    reg [1:0] iEna;
    wire[7:0] oData;
    decoder uut(
        .iData(iData),
        .iEna(iEna),
        .oData(oData)
        );
    initial 
        begin
        assign iEna = 2'b00;
        # 100 assign iEna = 2'b01;
        # 100 assign iEna = 2'b11;
        # 100 assign iEna = 2'b10;
        
            iData <= 3'b000;
        #100
            iData <= 3'b001; 
        #100
            iData <= 3'b010;
        #100
            iData <= 3'b011;       
        #100
            iData <= 3'b100;           
        #100
            iData <= 3'b101;  
        #100
            iData <= 3'b110; 
        #100
            iData <= 3'b111;   
        end
        
        
      
endmodule
