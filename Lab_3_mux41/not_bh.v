// Custom gate definition (replaces built-in primitives)
module not_bh (
    output y,
    input a
);
    assign y = ~a;
endmodule 