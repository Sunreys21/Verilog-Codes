module Lab_1_NAND_Gate_bh ( // Behavioral Style
    input a,                // Declares input port 'a'
    input b,                // Declares input port 'b'
    output reg y            // Declares 'y' as an output port. 'reg' is required here because it is assigned inside an 'always' block.
);
    always @(*) begin       // 'always' block that triggers whenever any of its input signals (*) change state.
        y = ~(a & b);       // Performs a bitwise NAND operation on inputs 'a' and 'b', assigning the result to 'y'.
    end
endmodule                   // Ends the module definition