module Lab_1_not_gate_df ( // Dataflow Style
    input a,              // Declares 'a' as an input port
    output y              // Declares 'y' as an output port (defaults to a 'wire' type)
);

    assign y = ~a;        // Continuously drives the output 'y' with the logical NOT of 'a'.
endmodule                 // Ends the module definition