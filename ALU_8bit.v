module ALU(
    input [7:0] a, b,
    input [3:0] operation,
    output reg [8:0] z
);

always @(*) begin
    case(operation)
        4'b0000: z = a + b;
        4'b0001: z = a - b;
        4'b0010: z = (b != 0) ? a / b : 9'b0; // handle divide-by-zero
        default: z = 9'b000000000;
    endcase
end

endmodule
