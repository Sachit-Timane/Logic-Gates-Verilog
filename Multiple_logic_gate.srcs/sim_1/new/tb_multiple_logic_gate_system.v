`timescale 1ns / 1ps

module logic_gate_tb;

reg A;
reg B;
reg CE;
reg [2:0] LS;

wire Y;
wire [7:0] SEG;
wire [3:0] AN;

logic_gate uut (
    .A(A),
    .B(B),
    .CE(CE),
    .LS(LS),
    .Y(Y),
    .SEG(SEG),
    .AN(AN)
);

initial begin

    CE = 1'b1;
    A = 1'b0;
    B = 1'b0;
    LS = 3'b000;

    #10;

    CE = 1'b0;

    A = 1'b1;
    B = 1'b1;
    LS = 3'b000;

    #10;

    A = 1'b0;
    B = 1'b0;
    LS = 3'b001;

    #10;

    A = 1'b0;
    B = 1'b0;
    LS = 3'b010;

    #10;

    A = 1'b0;
    B = 1'b1;
    LS = 3'b011;

    #10;

    A = 1'b1;
    B = 1'b1;
    LS = 3'b100;

    #10;

    A = 1'b0;
    B = 1'b1;
    LS = 3'b101;

    #10;

    A = 1'b0;
    B = 1'b1;
    LS = 3'b110;

    #10;

    A = 1'b1;
    B = 1'b1;
    LS = 3'b111;

    #10;

    $finish;

end

endmodule