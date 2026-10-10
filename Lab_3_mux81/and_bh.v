// 4-input AND gate module for structural 8:1 MUX decoding
module and_bh (
    output y,
    input a, b, c, d
);
    assign y = a & b & c & d;
endmodule 