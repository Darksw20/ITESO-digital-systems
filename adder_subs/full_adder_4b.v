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
    output co
    );
    full_adder fa01(.a(a[0]),.b(b[0]),.ci(ci),.s(s[0]),.co(ci));
    full_adder fa02(.a(a[0]),.b(b[0]),.ci(ci));
    full_adder fa03(.a(a[0]),.b(b[0]),.ci(ci));
    full_adder fa04(.a(a[0]),.b(b[0]),.ci(ci));
endmodule
