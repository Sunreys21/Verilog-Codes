// XOR GATE Testbench
`timescale 1ns / 1ps // Sets the reference time unit to 1 ns and precision to 1 ps

module Lab_1_XOR_Gate_tb;

    // 1. Signal Declarations
    reg a, b;                // 'reg' types hold procedural values driven into the DUT inputs
    wire y_df, y_bh, y_st;   // 'wire' types receive output signals driven by each DUT

    // 2. Instantiate all three modeling styles (Design Under Test)
    Lab_1_XOR_Gate_df dut_df (.a(a), .b(b), .y(y_df));
    Lab_1_XOR_Gate_bh dut_bh (.a(a), .b(b), .y(y_bh));
    Lab_1_XOR_Gate_st dut_st (.a(a), .b(b), .y(y_st));

    // 3. Stimulus and Monitoring Block
    initial begin
        // $display prints the header text once at the start of simulation in the Transcript console
        $display("Time\tA B | Y_df Y_bh Y_st");

        // $monitor dynamically prints a line whenever any listed variable (a, b, y_df, etc.) changes state
        $monitor("%0t\t%b %b |   %b    %b    %b", $time, a, b, y_df, y_bh, y_st);

        // Apply truth table test vectors sequentially with 10 ns delays
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        // Explicitly terminates the simulation run
        $finish;
    end

endmodule