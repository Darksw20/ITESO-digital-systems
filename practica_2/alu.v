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


module alu(
    input [3:0] a,b,
    input [2:0] sel,
    output [3:0] z,
    output carry,borrow,overflow,negative,zero,equal
    );
    wire [7:0] mult_z;

    always @* begin
        case(sel)
            //Logic Operations
            3'b000: z = a & b;
            3'b001: z = a | b;
            3'b010: z = ~a;
            3'b011: z = a ^ b;
            //Aritmetic Operations
            3'b100: z = s;
            3'b101: z = s;
            3'b110: z = -a;
            3'b111: z = mult_z[3:0];

        endcase
    end

    mult i_mult(
        .a(a)
        .b(b)
        .z(mult_z)
    );
    assign mult_hi = mult_z[7:4];
    assign borrow;
    assign overflow;
    assign negative = z[3];
    assign zero = ~(|z);
    assign equal = ~|(a^b);

    adder_subs i_adder_subs(
        .a(a),
        .b(b),
        .sel(sel[0]),
        .s(s),
        .co(carry)
    );
    
    
    
endmodule
