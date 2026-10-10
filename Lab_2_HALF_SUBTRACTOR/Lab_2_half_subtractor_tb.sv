//Half Subtractor Test Bench
`timescale 1ns / 1ps

module Lab_2_half_subtractor_tb; 
    logic a, b;                // Stimulus signals for inputs
    logic diff, borrow;        // Signals for monitoring DUT outputs

    // Wildcard connection
    Lab_2_half_subtractor_df dut(.*);

    initial begin
        // Output waveform generation setup
        $dumpfile("Lab_2_half_subtractor_tb.vcd");
        $dumpvars(0, Lab_2_half_subtractor_tb);

        // Console monitoring setup
        $display("Testing Half Subtractor");
        $monitor("Time=%0t, a=%b, b=%b, diff=%b, borrow=%b", $time, a, b, diff, borrow);

        // Test using a loop
        for (int i = 0; i < 4; i++) begin
            {a, b} = i;          // Assign binary loop index to inputs 'a' and 'b'
            #10;                 // Hold stimulus for 10 time units
        end
        $finish;                 // Terminate simulation
    end
endmodule