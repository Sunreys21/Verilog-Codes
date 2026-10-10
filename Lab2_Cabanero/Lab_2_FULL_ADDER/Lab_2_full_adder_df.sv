// Dataflow modeling of a Full Adder
module Lab_2_full_adder_df (
    input logic a, b, cin,      // Input bits and carry-in
    output logic sum, cout      // Output sum and carry-out bits
);

    // Continuous assignments
    assign sum  = a ^ b ^ cin;               // Sum bitwise XOR assignment
    assign cout = (a & b) | (cin & (a ^ b)); // Carry-out bitwise Boolean expression

endmodule