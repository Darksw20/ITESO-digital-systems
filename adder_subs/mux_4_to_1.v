`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 08:26:23
// Design Name: 
// Module Name: mux_4_to_1
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


module mux_4_to_1(
    input a, b, c, d,
    input [1:0] sel,
    output z
    );
    wire m,n;
    
    mux_2_to_1 mux_i0(.a(a),.b(b),.sel(sel[0]),.z(m));
    mux_2_to_1 mux_i1(.a(c),.b(d),.sel(sel[0]),.z(n));
    mux_2_to_1 mux_i2(.a(m),.b(n),.sel(sel[1]),.z(z));
endmodule
