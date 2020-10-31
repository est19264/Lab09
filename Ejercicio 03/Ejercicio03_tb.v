//Laboratorio 09 Electronica General
//Diego Esrada 19264
// Ejercicio 03 Testbench

module testbench();

reg clk, reset, enabled, J, K;
wire O;

FlipFlopJK1 JK01(clk, reset, enabled, J, K, O);

initial begin
    #1
    $display("clk   reset   enabled   J   K  | O");
    $monitor("%b   %b   %b   %b   %b  | %b ", clk, reset, enabled, J, K, O);
    clk = 0; reset = 0; enabled = 0; J = 0; K = 0;
    #3 reset = 0;
    #3 reset = 1;
    #3 reset = 0;
    #5 enabled = 1; J = 1;
    #5 enabled = 0;
    #5 enabled = 1; J = 0;
    #5 K = 1;
    #5 J = 1; K = 0;
    #5 K = 1;
end

always
    #1 clk = ~clk;

initial
    #45 $finish;

initial begin
    $dumpfile("Ejercicio03_tb.vcd");
    $dumpvars(0, testbench);   
end

endmodule