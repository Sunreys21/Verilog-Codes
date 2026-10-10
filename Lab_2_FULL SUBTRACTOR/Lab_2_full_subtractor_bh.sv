//Behavioral Implementation of Full Subtractor
module Lab_2_full_subtractor_bh (
    input logic a, b, c,
    output logic diff, borrow
);
    always_comb begin
        // Behavioral logic
        diff = a ^ b ^ c;
        borrow = ~a&b | b&c | ~a&c;
    end
endmodule 