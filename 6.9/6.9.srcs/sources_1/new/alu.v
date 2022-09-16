`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 19:26:50
// Design Name: 
// Module Name: alu
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


module alu(
    input [31:0] a,
    input [31:0] b,
    input [3:0] aluc,
    output reg [31:0] r,
    output reg zero,
    output reg carry,
    output reg negative,
    output reg overflow
    );
wire [31:0]ADDU ;
wire signed [31:0]ADD;
wire [31:0]SUBU;
wire signed [31:0]SUB;
wire [31:0]AND;
wire [31:0]OR;
wire [31:0]XOR;
wire [31:0]NOR;
wire [31:0]LUI;
wire signed [31:0]SLT;
wire [31:0]SLTU;
wire [31:0]SRA;
wire [31:0]SLL_SLA;
wire [31:0]SRL;

assign ADDU =  $unsigned(a) +  $unsigned(b);
assign ADD = $signed(a) +  $signed(b);
assign SUBU = $unsigned(a) -  $unsigned(b);
assign SUB = $signed(a) -  $signed(b);
assign AND = a & b;
assign OR = a | b;
assign XOR = a ^ b;
assign NOR = ~(a | b);
assign LUI = {b[15:0],16'b0};
assign SLT =(  $signed(a) <  $signed(b) ) ? 1 : 0 ;
assign SLTU =( $unsigned(a) <  $unsigned(b) ) ? 1 : 0;
assign SRA =$signed(b) >>> a ;
assign SLL_SLA =  $signed(b)<<a;
assign SRL =  $unsigned(b)>>a; 

always@(*)
begin
case(aluc)
        4'b0000:
        begin
         r = ADDU;
        if( $unsigned(a) + $unsigned(b) >= 33'b1_0000_0000_0000_0000_0000_0000_0000_0000)
        carry  = 1;
        else
        carry = 0;
        end
        4'b0010: 
        begin 
        r = ADD;
         if(a[31] == 0 && b[31] == 0 &&   $signed(r) < 0 ||a[31] == 1 && b[31] == 1 &&  $signed(r) > 0)
             overflow = 1;
         else
             overflow = 0;
        end
        4'b0001: 
        begin
        r = SUBU;
        if($unsigned(a) < $unsigned(b)  )
            carry = 1;
        else
            carry = 0;
        end
        4'b0011:
        begin
         r = SUB;      
         if(a[31] == 0 && b[31] == 1 &&$signed(r) < 0  ||a[31] == 1 && b[31] == 0 &&$signed(r)  > 0)
              overflow = 1;
         else
              overflow = 0;
         end
        4'b0100: r = AND;
        4'b0101: r = OR;
        4'b0110: r = XOR;
        4'b0111: r = NOR;
        4'b1000:r = LUI;
        4'b1001:r = LUI;
        4'b1011:r = SLT;
        4'b1010:
        begin
        r = SLTU;
        if($unsigned(a) < $unsigned(b) )
        carry = 1;
        else
        carry = 0;
        end
        4'b1100:
        begin
        if(a == 0)
            carry = 0;
        else
            carry = b[a - 1];
        r = SRA;
        end
        4'b1110:
        begin
       if(a == 0)
            carry = 0;
        else
            carry = b[32 - a ];
        r = SLL_SLA;
        end
        4'b1111:
        begin
        if(a == 0)
            carry = 0;
        else
            carry = b[32 - a];
        r = SLL_SLA;
        end
        4'b1101:       
        begin
        if(a == 0)
            carry = 0;
        else
            carry = b[a - 1];
        r = SRL;
        end
            endcase
    if(aluc != 4'b1011 &&  aluc != 4'b1010 && r == 0)
        zero = 1;
    else if(aluc == 4'b1011 && a == b || aluc == 4'b1010 && a == b )
        zero = 1;
    else 
        zero = 0;
    if(r < 0 || r[31] == 1 || aluc == 4'b1011 &&($signed(a) - $signed(b))< 0)
        negative = 1;
    else
        negative = 0;



end
endmodule
