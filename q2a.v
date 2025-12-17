`timescale 1ns / 1ps


module q2a(
input d,clk,reset,
output reg q
    );
    always @(posedge clk or posedge reset) begin
    if(reset)
    q <= 0;
    else 
    q <= d;
    end
endmodule
