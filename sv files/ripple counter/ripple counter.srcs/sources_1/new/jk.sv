`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2024 09:47:14
// Design Name: 
// Module Name: jk
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
module jk(
input logic j,k,clk,
output logic q,qbar
    );
   always_ff@(posedge clk)
       if(j==0 & k ==0) q = q;
       else if (j==1 & k==0) q = 0;
       else if (j==0 & k==1) q = 1;
       else q = ~q;
   assign qbar = ~q;
endmodule