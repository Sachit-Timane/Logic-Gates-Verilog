module logic_gate(
    input A,
    input B,
    input CE,
    input [2:0] LS,
    output reg Y,
    output reg [7:0] SEG,
    output reg [3:0] AN
);

always @(*) begin

    if (CE == 1'b1)
        Y = 1'b0;
    else begin
        case (LS)
            3'b000: Y = ~(A & B);
            3'b001: Y = ~(A | B);
            3'b010: Y = ~A;
            3'b011: Y = ~B;
            3'b100: Y = A & B;
            3'b101: Y = A | B;
            3'b110: Y = A ^ B;
            3'b111: Y = ~(A ^ B);
            default: Y = 1'b0;
        endcase
    end

end

always @(*) begin

    AN = 4'b1110;

    case (LS)
        3'b000: SEG = 8'b11000000;
        3'b001: SEG = 8'b11111001;
        3'b010: SEG = 8'b10100100;
        3'b011: SEG = 8'b10110000;
        3'b100: SEG = 8'b10011001;
        3'b101: SEG = 8'b10010010;
        3'b110: SEG = 8'b10000010;
        3'b111: SEG = 8'b11111000;
        default: SEG = 8'b11111111;
    endcase

end

endmodule