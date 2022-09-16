`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/12 20:08:51
// Design Name: 
// Module Name: encoder83_Pri
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


module encoder83_Pri( iData,iEI,oData,oEO);
    input [7:0] iData;
    input iEI;
    output [2:0] oData;
    output oEO;
    reg [1:0]E;
    reg [2:0]oData;
    reg oEO;
    always@(*)
    begin
    case (iEI)
    1'b1: 
    begin
        oData = 3'b111;
        oEO = 1'b0;        
    end
    1'b0: 
    begin
        if(iData == 8'b1111_1111) 
        begin
            oData = 3'b111;
            oEO = 1'b0;
        end
        
                if(~iData[0])
        begin
            oData = 3'b111;
            oEO = 1'b1;
            end
                if(~iData[1])
                                    begin
                                        oData = 3'b110;
                                        oEO = 1'b1;
                                        end
    
                                                        if(~iData[2])
                                begin
                                    oData = 3'b101;
                                    oEO = 1'b1;
                                    end
                                if(~iData[3])
                            begin
                                oData = 3'b100;
                                oEO = 1'b1;
                                end
                             if(~iData[4])
                        begin
                            oData = 3'b011;
                            oEO = 1'b1;
                            end       
                        if(~iData[5])
                    begin
                        oData = 3'b010;
                        oEO = 1'b1;
                        end        
                      if(~iData[6])
                begin
                    oData = 3'b001;
                    oEO = 1'b1;
                    end      
                if(~iData[7])
        begin
            oData = 3'b000;
            oEO = 1'b1;
            end

            end
        endcase
    end
endmodule
