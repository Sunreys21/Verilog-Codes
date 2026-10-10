// 3-input AND gate module for structural MUX decoding
module and_bh (
    output y,
    input a, b, c
);
    assign y = a & b & c;
endmodule 