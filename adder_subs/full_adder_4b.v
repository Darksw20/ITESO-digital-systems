`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 08:53:12
// Design Name: 
// Module Name: full_adder_4b
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


module full_adder_4b(
    input [3:0] a, b,
    input ci,
    output [3:0] s,
    output co4
    );
    wire co1,co2,co3;
    full_adder fa01(.a(a[0]),.b(b[0]),.ci(ci),.s(s[0]),.co(co1));
    full_adder fa02(.a(a[1]),.b(b[1]),.ci(co1),.s(s[1]),.co(co2));
    full_adder fa03(.a(a[2]),.b(b[2]),.ci(co2),.s(s[2]),.co(co3));
    full_adder fa04(.a(a[3]),.b(b[3]),.ci(co3),.s(s[3]),.co(co4));
endmodule
