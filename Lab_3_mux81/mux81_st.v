module mux81_st (
    input i0, i1, i2, i3, i4, i5, i6, i7,
    input s2, s1, s0,
    output y
);
    wire not_s2, not_s1, not_s0;
    wire net1, net2, net3, net4, net5, net6, net7, net8; // Intermediate wires connecting AND outputs to OR gate
	 
    // Invert select lines
    not_bh inv2 (not_s2, s2);
    not_bh inv1 (not_s1, s1);
    not_bh inv0 (not_s0, s0);
	 
    // Decode input channels
    and_bh d0 (net1, i0, not_s2, not_s1, not_s0);
    and_bh d1 (net2, i1, not_s2, not_s1, s0);
    and_bh d2 (net3, i2, not_s2, s1, not_s0);
    and_bh d3 (net4, i3, not_s2, s1, s0);
    and_bh d4 (net5, i4, s2, not_s1, not_s0);
    and_bh d5 (net6, i5, s2, not_s1, s0);
    and_bh d6 (net7, i6, s2, s1, not_s0);
    and_bh d7 (net8, i7, s2, s1, s0);
    // Combine decoded channels into single output
	 
    or_bh d8 (y, net1, net2, net3, net4, net5, net6, net7, net8);

endmodule 