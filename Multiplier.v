`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2025 14:42:08
// Design Name: 
// Module Name: Multiplier
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


module Multiplier(a, b, result);
input[3:0] a,b;
output [7:0] result;
assign r0 = a[0]&b[0];
wire r1;
assign r1 = (a[1]&b[0])|(a[0]&b[1]);
wire AC1Carrry, AC1Sum, AC1X1, AC1X2, AC1X3;
assign AC1X1 = a[2]&b[0];
assign AC1X2 = a[1]&b[1];
assign AC1X3 = a[0]&b[2];
assign AC1Sum = ((~AC1X1)&AC1X2)|((~AC1X1)&AC1X3)|((AC1X1&(~AC1X2))&(~AC1X3));
assign AC1Carry = (AC1X1&AC1X2)|(AC1X1&AC1X3);
wire AFSum, AFCarry;
assign p30 = (a[3]&b[0])|(a[0]&b[3]);
assign p21 = (a[2]&b[1])|(a[1]&b[2]);
assign AFSum = p30|p21|AC1Carry;
assign AFCarry = AC1Carry;
wire[2:0] Exact1;
wire[1:0] Exact2;
wire Eaxct3;
assign Exact1 = {(a[3]&b[3]),(a[3]&b[2]),(a[3]&b[1])};
assign Exact2 = {(a[2]&b[3]),(a[2]&b[2])};
assign Exact3 = (a[1]&b[3]);

assign result = {(Exact3+Exact2+Exact1+AFCarry),AFSum,AC1Sum,r1,r0};
endmodule
