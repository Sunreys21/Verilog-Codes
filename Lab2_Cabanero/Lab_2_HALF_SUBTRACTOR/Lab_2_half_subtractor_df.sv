// Dataflow implementation of a half subtractor
module Lab_2_half_subtractor_df (
    input logic a, b,          // Inputs a, b
    output logic diff, borrow   // Outputs difference, borrow
);
    assign diff = a ^ b;       // Difference
    assign borrow = ~a & b;    // Borrow-out
endmodule