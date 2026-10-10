module mux41_st (
    input i0, i1, i2, i3,
    input s1, s0,
    output y
);
    wire not_s1, not_s0;
    wire net1, net2, net3, net4; // Intermediate wires connecting AND outputs to OR gate

    // Invert select lines
    not_bh inv1 (not_s1, s1);
    not_bh inv0 (not_s0, s0);

    // Decode input channels
    and_bh g1 (net1, i0, not_s1, not_s0);
    and_bh g2 (net2, i1, not_s1, s0);
    and_bh g3 (net3, i2, s1, not_s0);
    and_bh g4 (net4, i3, s1, s0);

    // Combine decoded channels into single output
    or_bh g5 (y, net1, net2, net3, net4);

endmodule 