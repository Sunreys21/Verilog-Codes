//Dataflow Implementation of Full Subtractor
module Lab_2_full_subtractor_df (
    input logic a, b, c,
    output logic diff, borrow
);
    // Dataflow assignments
    assign diff = a ^ b ^ c;
    assign borrow = ~a&b | b&c | ~a&c;
endmodule 