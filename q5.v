`timescale 1ns / 1ps


module sr(
input clk,ena,load,areset,
input [3:0] data_in,
output reg [3:0] q
    );
    always @(posedge clk or posedge areset) begin
    if(areset) 
    q <= 4'd0;
    else begin
    if(load) begin
    q <= data_in;
    end
    else if(ena) begin
    q <= {1'b0,q[3:1]};
    end
    else begin
    q <= q;
    end
    end
    end
endmodule
