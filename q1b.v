module tff(
    input  clk,
    input  reset,
    input  T,
    output reg Q
);
    wire d;   
    mux uut(
        .a(Q),
        .b(~Q),
        .s(T),
        .y(d)
    );

    // Flip-flop
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 1'b0;
        else
            Q <= d;
    end
endmodule