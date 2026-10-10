// 4-input OR gate module for combining structural MUX outputs
module or_bh (
    output y,
    input a, b, c, d
);
    assign y = a | b | c | d;
endmodule 