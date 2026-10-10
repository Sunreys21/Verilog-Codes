// 4:1 MUX sub-module (Dataflow)
module mux41_df (
    input i0, i1, i2, i3,
    input s1, s0,
    output y
);
    // Continuous assignment using Boolean logic
    assign y = (~s1 & ~s0 & i0) |
               (~s1 &  s0 & i1) |
               ( s1 & ~s0 & i2) |
               ( s1 &  s0 & i3);
endmodule 