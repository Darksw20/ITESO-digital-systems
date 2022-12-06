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


module mux_4_1_4b(
    input [3:0] a,b,c,d,
    input [1:0]sel,
    output [3:0] z
    );
    wire m,n;
    mux_2_1_4b mux_i0(.a(a),.b(b),.sel(sel[0]),.z(m));
    mux_2_1_4b mux_i1(.a(c),.b(d),.sel(sel[0]),.z(n));
    mux_2_1_4b mux_i2(.a(m),.b(n),.sel(sel[1]),.z(z));
endmodule
