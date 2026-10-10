//Structural Implementation of Full Subtractor using gate primitives
module Lab_2_full_subtractor_st (
    input logic a, b, c,
    output logic diff, borrow
);
    // Intermediate wires
    wire xor1, not_a, not_xor1, and1, and2;

    // Gate primitives
    not invert_a (not_a, a);

    xor g1 (xor1, a, b);
    and g2 (and1, not_a, b);

    not invert_xor1 (not_xor1, xor1);

    xor g3 (diff, xor1, c);
    and g4 (and2, not_xor1, c);
    or  g5 (borrow, and2, and1);
endmodule 