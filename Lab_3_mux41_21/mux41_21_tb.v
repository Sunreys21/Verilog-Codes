`timescale 1ns / 1ps

module mux41_21_tb;

    reg i0, i1, i2, i3;
    reg s1, s0;
    wire y;

    // Instantiate Design Under Test (DUT)
    mux41_21_st dut (
        .i0(i0), .i1(i1), .i2(i2), .i3(i3),
        .s1(s1), .s0(s0),
        .f(y)  // Connects DUT output port 'f' to testbench wire 'y'
    );

    initial begin
        // Configure VCD dump for waveform viewing
        $dumpfile("mux41_21_tb.vcd");
        $dumpvars(0, mux41_21_tb);

        $display("Time | s1 s0 | i3 i2 i1 i0 | Output Y");
        $display("---------------------------------");
        $monitor("%4t |  %b  %b |  %b  %b  %b  %b |    %b", $time, s1, s0, i3, i2, i1, i0, y);

        // Test Set 1: Standard input vector
        i3 = 1; i2 = 0; i1 = 1; i0 = 0;

        s1 = 0; s0 = 0; #10; // Expect Y = i0 (0)
        s1 = 0; s0 = 1; #10; // Expect Y = i1 (1)
        s1 = 1; s0 = 0; #10; // Expect Y = i2 (0)
        s1 = 1; s0 = 1; #10; // Expect Y = i3 (1)

        // Test Set 2: Inverted input vector
        i3 = 0; i2 = 1; i1 = 0; i0 = 1;

        s1 = 0; s0 = 0; #10; // Expect Y = i0 (1)
        s1 = 0; s0 = 1; #10; // Expect Y = i1 (0)
        s1 = 1; s0 = 0; #10; // Expect Y = i2 (1)
        s1 = 1; s0 = 1; #10; // Expect Y = i3 (0)

        $finish;
    end

endmodule 