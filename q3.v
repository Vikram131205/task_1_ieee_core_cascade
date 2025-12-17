`timescale 1ns / 1ps


module q3(
input clk,reset,x,
output reg q,
output reg [2:0] state , next_state 
    );
    parameter a = 3'b000,   
              b = 3'b001,
              c = 3'b010,
              d = 3'b011,
              e = 3'b100,
              f = 3'b101,
              g = 3'b110;
    
    always @(posedge clk) begin
    if(reset)
    state <= a;
    else 
    state <= next_state;
    end
    
    always @(x , state) begin
    
    next_state = state;
    q = 1'b0;
    
    case(state) 
    3'b000 : begin
    if(x) begin
    next_state = b;
    q = 0;
    end
    else begin
    next_state = e;
    q = 0;
    end
    end
    
    3'b001 : begin
    if(x) begin
    next_state = f;
    q = 0;
    end
    else begin
    next_state = c;
    q = 0;
    end
    end
    
    3'b010 : begin
    if(x) begin
    next_state = d;
    q = 0;
    end
    else begin
    next_state = e;
    q = 0;
    end
    end
    
    3'b011 : begin
    if(x) begin
    next_state = f;
    q = 1;
    end
    else begin
    next_state = g;
    q = 1;
    end
    end
    
    3'b100 : begin
    if(x) begin
    next_state = f;
    q = 0;
    end
    else begin
    next_state = e;
    q = 0;
    end
    end
    
    3'b101 : begin
    if(x) begin
    next_state = f;
    q = 0;
    end
    else begin
    next_state = g;
    q = 0;
    end
    end
    
    3'b110 : begin
    if(x) begin
    next_state = d;
    q = 1;
    end
    else begin
    next_state = e;
    q = 0;
    end
    end
    endcase
    end
endmodule