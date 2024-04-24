`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2024 09:51:00
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
`timescale 1ns / 1ps
module tb();
reg clkr;
wire [0:2]q;
reg [0:5]ip;
ripple3 uut(clkr,ip,q);
initial
begin
clkr = 0;
ip = 6'b101010;#10;
ip = 6'b101011;#10;
ip = 6'b101111;#10;
ip = 6'b101111;#10;
ip = 6'b101111;#10;
ip = 6'b101011;#10;
ip = 6'b101011;#10;
ip = 6'b101011;#10;
ip = 6'b111111;
end
always #5 clkr = ~clkr;
endmodule
