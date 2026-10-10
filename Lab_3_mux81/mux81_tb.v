`timescale 1ns / 1ps

module mux81_tb;

    reg i0, i1, i2, i3, i4, i5, i6, i7;
    reg s2, s1, s0;
    wire y;
    // Instantiate Design Under Test (DUT)
    mux81_st dut (
        .i0(i0), .i1(i1), .i2(i2), .i3(i3),
        .i4(i4), .i5(i5), .i6(i6), .i7(i7),
        .s2(s2), .s1(s1), .s0(s0),
        .y(y)
    );

    initial begin
        // Configure VCD dump for GTKWave/ModelSim waveform tracking
        $dumpfile("mux81_tb.vcd");
        $dumpvars(0, mux81_tb);

        $display("Time | s2 s1 s0 | i7 i6 i5 i4 i3 i2 i1 i0 | Output Y");
        $display("-------------------------------------------------");
        $monitor("%4t |  %b  %b  %b |  %b  %b  %b  %b  %b  %b  %b  %b |    %b", 
                 $time, s2, s1, s0, i7, i6, i5, i4, i3, i2, i1, i0, y);

        // Set alternating input vector (i7..i0 = 10101010)
        i7 = 1; i6 = 0; i5 = 1; i4 = 0;
        i3 = 1; i2 = 0; i1 = 1; i0 = 0;

        // Sequence through select combinations 000 to 111
        s2 = 0; s1 = 0; s0 = 0; #10; // Expect Y = i0 (0)
        s2 = 0; s1 = 0; s0 = 1; #10; // Expect Y = i1 (1)
        s2 = 0; s1 = 1; s0 = 0; #10; // Expect Y = i2 (0)
        s2 = 0; s1 = 1; s0 = 1; #10; // Expect Y = i3 (1)
        s2 = 1; s1 = 0; s0 = 0; #10; // Expect Y = i4 (0)
        s2 = 1; s1 = 0; s0 = 1; #10; // Expect Y = i5 (1)
        s2 = 1; s1 = 1; s0 = 0; #10; // Expect Y = i6 (0)
        s2 = 1; s1 = 1; s0 = 1; #10; // Expect Y = i7 (1)

        $finish;
    end

endmodule 