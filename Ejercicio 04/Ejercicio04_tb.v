//Laboratorio 09 Electronica Digital
//Diego Esrada 19264
// Ejercicio 04 Testbench

module testbench();

reg enabled;
reg [3:0]inputs;
wire [3:0]outputs;

BufferTri CON(enabled, inputs, outputs);

initial begin
    #1
    $display("enabled   inputs  | outputs");
    $monitor("%b    %b  |    %b", enabled, inputs, outputs);
    enabled = 0; inputs = 4'b0000;
    #5 enabled = 0; inputs = 4'b0101;
    #5 enabled = 1; inputs = 4'b1010;
    #5 enabled = 1; inputs = 4'b0110;
    #5 enabled = 1; inputs = 4'b1001;
    #5 enabled = 0; inputs = 4'b0111;
    #5 enabled = 1; inputs = 4'b1111;
    #5 enabled = 1; inputs = 4'b1000;
end

initial 
    #40 $finish;

initial begin
    $dumpfile("Ejercicio04_tb.vcd");
    $dumpvars(0, testbench); 
end

endmodule