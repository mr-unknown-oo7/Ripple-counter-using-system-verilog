`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2024 06:42:36
// Design Name: 
// Module Name: tb
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


module tb();
reg a,b,c;
wire y;
testspace dut(a,b,c,y);

initial 
begin
a=0;b=0;c=0;#20;
a=0;b=0;c=1;#20;
a=0;b=1;c=0;#20;
a=0;b=1;c=1;#20;
a=1;b=0;c=0;#20;
a=1;b=0;c=1;#20;
a=1;b=1;c=0;#20;
a=1;b=1;c=1;#20;
$finish;
end
endmodule
