`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 08:53:12
// Design Name: 
// Module Name: full_adder_8b
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


module full_adder_8b(
    input [7:0] a, b,
    input ci,
    output [7:0] s,
    output co8
    );
    wire co1,co2,co3,co4,co5,co6,co7;
    full_adder fa01(.a(a[0]),.b(b[0]),.ci(ci),.s(s[0]),.co(co1));
    full_adder fa02(.a(a[1]),.b(b[1]),.ci(co1),.s(s[1]),.co(co2));
    full_adder fa03(.a(a[2]),.b(b[2]),.ci(co2),.s(s[2]),.co(co3));
    full_adder fa04(.a(a[3]),.b(b[3]),.ci(co3),.s(s[3]),.co(co4));
    full_adder fa05(.a(a[4]),.b(b[4]),.ci(co4),.s(s[4]),.co(co5));
    full_adder fa06(.a(a[5]),.b(b[5]),.ci(co5),.s(s[5]),.co(co6));
    full_adder fa07(.a(a[6]),.b(b[6]),.ci(co6),.s(s[6]),.co(co7));
    full_adder fa08(.a(a[7]),.b(b[7]),.ci(co7),.s(s[7]),.co(co8));
endmodule
