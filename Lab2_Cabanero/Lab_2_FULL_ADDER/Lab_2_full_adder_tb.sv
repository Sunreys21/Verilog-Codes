// Testbench for Full Adder
`timescale 1ns / 1ps
module Lab_2_full_adder_tb;
    logic a, b, cin;       
    logic sum, cout;        

    // Wildcard connection
    Lab_2_full_adder_df dut(.*);

    // Main stimulus block
    initial begin
        // Configure VCD dump for waveform viewer
        $dumpfile("lab_2_full_adder_tb.vcd");
        $dumpvars(0, Lab_2_full_adder_tb);  

        // Display console logs
        $display("Testing Full Adder");
        $monitor("Time=%0t, a=%b, b=%b, cin=%b, sum=%b, cout=%b", $time, a, b, cin, sum, cout);

        // Test using a loop
        for (int i = 0; i < 8; i++) begin // Sweeps all 8 binary combinations
            {a, b, cin} = i[2:0];          // Assigns 3-bit pattern to inputs
            #10;                          
        end

        $finish;                         
    end

endmodule