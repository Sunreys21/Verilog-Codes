module Lab_1_NAND_Gate_st ( // Structural Style
    input a,                // Declares 'a' as an input port
    input b,                // Declares 'b' as an input port
    output y                // Declares 'y' as an output port
);

    nand nand1 (y, a, b);   // Pre-defined NAND gate into the module.

endmodule                   // Ends the module definition