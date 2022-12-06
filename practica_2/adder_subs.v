`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2022 08:41:39
// Design Name: 
// Module Name: adder_subs
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


module adder_subs(
    input [3:0] a,b,
    input sel,
    output [3:0] s,
    output co
    );
    wire b_in;
    mux_4_1_4b mux(.a(b),.b(~b),.sel(sel),.z(b_in));
    
    full_adder_4b fa(.a(a),.b(b_in),.ci(sel),.s(s));
    
    
    
endmodule
