`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2022 13:09:00
// Design Name: 
// Module Name: multi_2
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

module multi_2(
    input [2:0]a,
    input [2:0]b,//Extra para signo
    input c_in,
    output reg s0,s1,
    output reg c_out1, c_out2,
    output reg signo,
    output reg [4:0]array,
    output reg [7:0]siono
);
wire out0,out1,out2,out3;
and and0(out0,a[0],b[0]);
and and1(out1,a[0],b[1]);
and and2(out2,a[1],b[0]);
and and3(out3,a[1],b[1]);
    always @(out1,out2,c_in)
        begin
            s0 <= out1 ^ out2 ^ c_in;
            c_out1 <= (out1 & c_in )|(out2 & c_in )|(out1 & out2 );
        end
    always @(c_out1,out3,c_in)
        begin
            s1 <= c_out1 ^ out3 ^ c_in;
            c_out2 <= (c_out1 & c_in )|(out3 & c_in )|(c_out1 & out3);
        end
    always @(a,b)
        begin
            if(~a[2] & ~b[2]) signo = 1'b1;//positivo 0
            else if(a[2] & b[2]) signo = 4'b1;//positivo 0
            else if(a[2]|b[2]) signo = 1'b0;//negativo 1
        end
    always @(signo/*A4*/, c_out2 /*A3*/, s1/*A2*/, s0/*A1*/, out0 /*A0*/)
        begin
            if (signo & ~c_out2 & ~s1 & ~s0 & ~out0) array = 5'b00000;
            else if(signo & ~c_out2 & ~s1 & ~s0 & out0) array = 5'b00001;
            else if(signo & ~c_out2 & ~s1 & s0 & ~out0) array = 5'b00010;
            else if(signo & ~c_out2 & ~s1 & s0 & out0) array = 5'b00011;
            else if(signo & ~c_out2 & s1 & ~s0 & ~out0) array = 5'b00100;
            else if(signo & ~c_out2 & s1 & ~s0 & out0) array = 5'b00101;
            else if(signo & ~c_out2 & s1 & s0 & ~out0) array = 5'b00110;
            else if(signo & ~c_out2 & s1 & s0 & out0) array = 5'b00111;
            else if(signo & c_out2 & ~s1 & ~s0 & ~out0) array = 5'b01000;
            else if(signo & c_out2 & ~s1 & ~s0 & out0) array = 5'b01001;
            else if(signo & c_out2 & ~s1 & s0 & ~out0) array = 5'b01010;
            else if(signo & c_out2 & ~s1 & s0 & out0) array = 5'b01011;
            else if(signo & c_out2 & s1 & ~s0 & ~out0) array = 5'b01100;
            else if(signo & c_out2 & s1 & ~s0 & out0) array = 5'b01101;
            else if(signo & c_out2 & s1 & s0 & ~out0) array = 5'b01110;
            else if(signo & c_out2 & s1 & s0 & out0) array = 5'b01111;
            else if(~signo & ~c_out2 & ~s1 & ~s0 & ~out0) array = 5'b00000;
            else if(~signo & ~c_out2 & ~s1 & ~s0 & out0) array = 5'b11111;
            else if(~signo & ~c_out2 & ~s1 & s0 & ~out0) array = 5'b11110;
            else if(~signo & ~c_out2 & ~s1 & s0 & out0) array = 5'b11101;
            else if(~signo & ~c_out2 & s1 & ~s0 & ~out0) array = 5'b11100;
            else if(~signo & ~c_out2 & s1 & ~s0 & out0) array = 5'b11011;
            else if(~signo & ~c_out2 & s1 & s0 & ~out0) array = 5'b11010;
            else if(~signo & ~c_out2 & s1 & s0 & out0) array = 5'b11001;
            else if(~signo & c_out2 & ~s1 & ~s0 & ~out0) array = 5'b11000;
            else if(~signo & c_out2 & ~s1 & ~s0 & out0) array = 5'b10111;
            else if(~signo & c_out2 & ~s1 & s0 & ~out0) array = 5'b10110;
            else if(~signo & c_out2 & ~s1 & s0 & out0) array = 5'b10101;
            else if(~signo & c_out2 & s1 & ~s0 & ~out0) array = 5'b10100;
            else if(~signo & c_out2 & s1 & ~s0 & out0) array = 5'b10011;
            else if(~signo & c_out2 & s1 & s0 & ~out0) array = 5'b10010;
            else if(~signo & c_out2 & s1 & s0 & out0) array = 5'b10001;
            else array=5'bX;
        end
    always @(array[4])
        begin
            if(array[4]) siono = 8'bXXXXXXX0;
            else if (~array[4]) siono = 8'bXXXXXXX1;
            else array[4]=8'bX;
        end
    always @(array[3])
        begin
            if(array[3]) siono = 8'bX00XXXXX;
            else if (~array[3]) siono = 8'b0000000X;
            else array[3]=8'bX;
        end
    always @(array[2])
        begin
            if(array[2]) siono = 8'bX00XXXXX;
            else if (~array[2]) siono = 8'b0000000X;
            else array[2]=8'bX;
        end
    always @(array[1])
        begin
            if(array[1]) siono = 8'bX00XXXXX;
            else if (~array[1]) siono = 8'b0000000X;
            else array[1]=8'bX;
        end
    always @(array[0])
        begin
            if(array[0]) siono = 8'bX00XXXXX;
            else if (~array[0]) siono = 8'b0000000X;
            else array[0]=8'bX;
        end


endmodule


