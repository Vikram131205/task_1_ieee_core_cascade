`timescale 1ns / 1ps


module blocking_wt(
input [10:0] a, b ,
input swap,
output reg [10:0] aout, bout
    );

always @(*) begin
aout = a;
bout = b;
if(swap) begin
aout = aout + bout;
bout = aout - bout;
aout = aout - bout;
end
end
    
endmodule
