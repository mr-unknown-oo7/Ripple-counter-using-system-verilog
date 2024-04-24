`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2024 12:30:29
// Design Name: 
// Module Name: ripple3
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
module ripple3(
input logic clkr,
output logic [0:2]q
);
reg op1,op2,op3,op1bar,op2bar,op3bar;
jk r1(1'b1,1'b1,clkr,op1,op1bar);
jk r2(op1,op1,clkr,op2,op2bar);
jk r3(op2,op2,clkr,op3,op3bar);
assign q[0] = op1;
assign q[1] = op2;
assign q[2] = op3;
endmodule

