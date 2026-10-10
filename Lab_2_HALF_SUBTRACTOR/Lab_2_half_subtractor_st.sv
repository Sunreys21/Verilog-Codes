// Structural implementation of a half subtractor using gate primitives
module Lab_2_half_subtractor_st (
    input logic a, b,          // Inputs a, b
    output logic diff, borrow   // Outputs difference, borrow
);
    wire a_not;                // Explicit intermediate net declaration for inverted input 'a'

    xor diff1 (diff, a, b);       // Primitive XOR gate for difference output
    not invert_a (a_not, a);      // Primitive NOT gate to invert input 'a'
    and borrow1 (borrow, a_not, b); // Primitive AND gate for borrow output
endmodule 