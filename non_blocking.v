`timescale 1ns / 1ps

module non_blocking(
input clk,
input [10:0] a, b ,
input swap,
output reg [10:0] aout, bout
    );
    always @(posedge clk) begin
    aout = a;
    bout = b;
    if(swap) begin
    aout = b;
    bout = a;
    end
    end
endmodule
