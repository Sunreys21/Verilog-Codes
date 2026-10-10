module mux41_bh (
    input i0, i1, i2, i3,
    input s1, s0,
    output reg y  // Declared as reg because it is assigned inside an always block
);
    // Re-evaluate whenever inputs change
    always@(i0, i1, i2, i3, s1, s0)
    begin
        // Decode 2-bit selection vector to route selected input channel
        if({s1, s0} == 2'b00)
            y = i0;
        else if ({s1, s0} == 2'b01)
            y = i1;
        else if ({s1, s0} == 2'b10)
            y = i2;
        else
            y = i3;
    end
endmodule 