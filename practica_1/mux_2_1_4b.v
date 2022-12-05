`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2022 06:39:55
// Design Name: 
// Module Name: mux_4_1_4b
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


module mux_2_1_4b(
    input [3:0] a,
    input [3:0] b,
    input sel,
    output [3:0] z
    );
    assign z = (sel) ? b: a;
endmodule
