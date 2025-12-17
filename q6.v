`timescale 1ns / 1ps

module overflow(
input [7:0] a,b,
output overflow,
output [7:0] s
    );
    assign s = a + b;
    assign overflow = (~a[7]&~b[7]&s[7])|(a[7]&b[7]&~s[7]);
endmodule
