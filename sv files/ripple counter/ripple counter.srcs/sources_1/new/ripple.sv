`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2024 09:47:35
// Design Name: 
// Module Name: ripple
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
input logic clkr,[0:5]ip,
output logic [0:2]q
);
reg op1,op2,op3,op1bar,op2bar,op3bar;
jk r1(ip[4],ip[5],clkr,op1,op1bar);
jk r2(ip[2],ip[3],op1bar,op2,op2bar);
jk r3(ip[0],ip[1],op2bar,op3,op3bar);
assign q[0] = op3;
assign q[1] = op2;
assign q[2] = op1;
endmodule
