// 16:1 MUX constructed using five 4:1 MUX sub-modules (Structural)
module mux161_41_st (
    input [15:0] in,       // Inputs in[0] through in[15]
    input s3, s2, s1, s0,  // Select lines (s3 MSB, s0 LSB)
    output y               // Primary output
);
    wire net0, net1, net2, net3; // Intermediate Stage 1 outputs

    // Stage 1: Decode input groups using LSB select lines (s1, s0)
    mux41_df m1 (in[0],  in[1],  in[2],  in[3],  s1, s0, net0);
    mux41_df m2 (in[4],  in[5],  in[6],  in[7],  s1, s0, net1);
    mux41_df m3 (in[8],  in[9],  in[10], in[11], s1, s0, net2);
    mux41_df m4 (in[12], in[13], in[14], in[15], s1, s0, net3);

    // Stage 2: Select Stage 1 output using MSB select lines (s3, s2)
    mux41_df m5 (net0, net1, net2, net3, s3, s2, y);

endmodule 