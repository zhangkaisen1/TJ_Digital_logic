`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/23 21:04:12
// Design Name: 
// Module Name: three_state_gates
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


module three_state_gates(
    input iA,
    input iEna,
    output oTri
    );
    assign oTri = (iEna == 1) ? iA :'bz;
    
endmodule
