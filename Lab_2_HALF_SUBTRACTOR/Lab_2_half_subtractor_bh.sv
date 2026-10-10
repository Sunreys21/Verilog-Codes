// Behavioral implementation of a half subtractor
module Lab_2_half_subtractor_bh (
    input logic a, b,          // Inputs a, b
    output logic diff, borrow   // Outputs difference, borrow
);
    always_comb begin
        diff = a ^ b;          // Procedural assignment for difference logic
        borrow = ~a & b;       // Procedural assignment for borrow-out logic
    end
endmodule