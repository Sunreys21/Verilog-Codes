`timescale 1ns / 1ps
module Lab_2_full_subtractor_tb;
    logic a, b, c;
    logic diff, borrow;

    // Wildcard connection
    Lab_2_full_subtractor_df dut(.*);

    initial begin
        $dumpfile("Lab_2_full_subtractor_tb.vcd");
        $dumpvars(0, Lab_2_full_subtractor_tb);

        $display("Testing Full Subtractor");
        $monitor("Time=%0t, a=%b, b=%b, c=%b, diff=%b, borrow=%b", $time, a, b, c, diff, borrow);

        // Test using a loop
        for (int i = 0; i < 8; i++) begin
            {a, b, c} = i;
            #10;
        end
        $finish;
    end
endmodule 