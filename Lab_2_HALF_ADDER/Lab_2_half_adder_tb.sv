`timescale 1ns / 1ps
module Lab_2_half_adder_tb;
	logic a, b;       // Test stimuli inputs
   logic sum, cout; // Observed outputs;
	
	// Wildcard connection
	Lab_2_half_adder_df dut(.*);
	
	initial begin
		// Configure VCD dump for waveform viewer
		$dumpfile("Lab_2_half_adder_tb.vcd");
		$dumpvars(0, Lab_2_half_adder_tb);
		
		// Display console logs
		$display("Testing Half Adder");
		$monitor("Time=%0t, a=%b, b=%b, sum=%b, cout=%b", $time, a, b, sum, cout);
		
	// Test using a loop
	for (int i = 0; i < 4; i++) begin
			{a, b} = i; // Assign bit patterns to a and b
			#10;        // Wait 10 ns per test vector
		end
	
		$finish;
	end
endmodule