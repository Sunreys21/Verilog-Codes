//Testbench for full adder subtractor
`timescale 1ns / 1ps
module Lab_2_full_adder_subtractor_tb;
    logic [3:0] A, B;
    logic Cin, Control;
    logic [3:0] result;
    logic Cout;

    // Instantiate structural model
    Lab_2_full_adder_subtractor_st dut(.*);

    initial begin
        $dumpfile("Lab_2_full_adder_subtractor_tb.vcd");
        $dumpvars(0, Lab_2_full_adder_subtractor_tb);

        $display("Testing 4-bit Adder-Subtractor (Structural)");
        $monitor("Time=%0t | Control=%b Cin=%b | A=%d B=%d | result=%d Cout=%b",
                 $time, Control, Cin, A, B, result, Cout);

        // Addition Tests (Control = 0)
        Control = 0; Cin = 0;
        A = 4'd5;  B = 4'd3;  #10; // 5 + 3 = 8
        A = 4'd10; B = 4'd5;  #10; // 10 + 5 = 15
        Cin = 1;
        A = 4'd4;  B = 4'd2;  #10; // 4 + 2 + 1 = 7

        // Subtraction Tests (Control = 1)
        Control = 1; Cin = 0;
        A = 4'd8;  B = 4'd3;  #10; // 8 - 3 = 5
        A = 4'd5;  B = 4'd5;  #10; // 5 - 5 = 0
        Cin = 1;
        A = 4'd6;  B = 4'd2;  #10; // 6 - 2 - 1 = 3

        $finish;
    end
endmodule 