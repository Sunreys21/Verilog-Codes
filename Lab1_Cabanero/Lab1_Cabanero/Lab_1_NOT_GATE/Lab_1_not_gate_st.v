module Lab_1_not_gate_st ( // Structural Style
    input a,              // Declares 'a' as an input port
    output y              // Declares 'y' as an output port
);

    not not1 (y, a);      // Pre-defined NOT gate into the module.

endmodule                 // Ends the module definition