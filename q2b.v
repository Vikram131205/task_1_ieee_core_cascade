`timescale 1ns / 1ps


module q2b(
input d , clk , reset ,
output q
    );
    wire w1,w2;
    
    assign w1 = ~d;
    q2a uut(.d(w1),.clk(clk),.reset(reset),.q(w2));
    assign q = ~w2;
    
endmodule
