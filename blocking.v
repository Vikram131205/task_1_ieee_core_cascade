`timescale 1ns / 1ps


module blocking(
input [10:0] a, b ,
input swap,
output reg [10:0] aout, bout
    );
reg [10:0] t;
always @(*) begin
aout = a;
bout = b;
if(swap) begin
t = bout;
bout = aout;
aout = t;
end
end
    
endmodule
