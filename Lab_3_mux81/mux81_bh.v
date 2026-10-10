module mux81_bh (
    input i0, i1, i2, i3, i4, i5, i6, i7,
    input s2, s1, s0,
    output reg y  // Declared as reg because it is assigned inside an always block
);
    // Re-evaluate whenever any input changes
    always@(i0, i1, i2, i3, i4, i5, i6, i7, s2, s1, s0)
    begin
        // Decode 3-bit selection vector to route selected input channel
        case ({s2, s1, s0})
            3'b000: y = i0;
            3'b001: y = i1;
            3'b010: y = i2;
            3'b011: y = i3;
            3'b100: y = i4;
            3'b101: y = i5;
            3'b110: y = i6;
            3'b111: y = i7;
            default: y = 1'b0;
        endcase
    end
endmodule 