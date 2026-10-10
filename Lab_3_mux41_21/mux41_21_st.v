// 4:1 MUX built using 2:1 MUX modules (Structural)
module mux41_21_st (
    input i0, i1, i2, i3,
    input s1, s0,
    output f
);
    wire net1, net2; // Intermediate outputs from Stage 1

    // Stage 1: Route lower and upper input pairs using LSB (s0)
    mux21_df m1 (i0, i1, s0, net1);
    mux21_df m2 (i2, i3, s0, net2);

    // Stage 2: Route Stage 1 outputs to final output f using MSB (s1)
    mux21_df m3 (net1, net2, s1, f);

endmodule 