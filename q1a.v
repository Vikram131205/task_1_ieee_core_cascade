`timescale 1ns / 1ps

module mux (
    input  a,
    input  b,
    input  s,
    output y
);
    assign y = (s) ? b : a;
endmodule