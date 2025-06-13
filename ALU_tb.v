`timescale 1ns / 1ps

module ALU_tb;

    reg [7:0] a, b;
    reg [3:0] operation;
    wire [8:0] z;

    // Instantiate the ALU
    ALU a1 (.a(a), .b(b), .operation(operation), .z(z));

    initial begin
        $display("Time\t a\t b\t op\t z");
        $monitor("%0dns\t %d\t %d\t %b\t %d", $time, a, b, operation, z);

        // Test operation 0000: ADD
        operation = 4'b0000;
        a = 240; b = 15; #50;
        a = 0;   b = 0;  #50;
        a = 255; b = 255; #50;

        // Test operation 0001: SUB
        operation = 4'b0001;
        a = 240; b = 15; #50;
        a = 0;   b = 0;  #50;
        a = 255; b = 255; #50;

        // Test operation 0010: AND
        operation = 4'b0010;
        a = 240; b = 15; #50;
        a = 0;   b = 0;  #50;
        a = 255; b = 255; #50;

        $finish;
    end

endmodule
