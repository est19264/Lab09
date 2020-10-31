//Laboratorio 09 Electronica Digital
//Diego Esrada 19264
// Ejercicio 05 Testbench

module testbench();

reg enabled;
reg [6:0]I;
wire [12:0]O;

ROML U01(enabled, I, O);

initial begin
    #1
    $display("Enable  Input | Output ");
    $monitor("%b       %b  |   %b   ", enabled, I, O);
    enabled = 0; I = 7'b0101010;
    #3 enabled = 1; I = 7'b0101010;
    #5 I = 7'b0000101;
    #5 I = 7'bxxxxxx0;
    #5 I = 7'b0000111;
    #5 I = 7'b0000011;
    #5 I = 7'b0001111;
    #5 I = 7'b0001011;
    #5 I = 7'b0010111;
    #5 I = 7'b0011111;
    #5 I = 7'b0100111;
    #5 I = 7'b0101111;
    #5 I = 7'b0110111;
    #5 I = 7'b0111xx1;
    #5 I = 7'b1000x11;
    #5 I = 7'b1000x01;
    #5 I = 7'b1001x11;
    #5 I = 7'b1001x01;
    #5 I = 7'b1010xx1;
    #5 I = 7'b1011xx1;
    #5 I = 7'b1100xx1;
    #5 I = 7'b1101xx1;
    #5 I = 7'b1110xx1;
    #5 enabled = 0; I = 7'b1110xx1;
    #5 enabled = 1; I = 7'b1101011;
    #5 I = 7'b1101001;
    #5 I = 7'b1001001;
    #5 I = 7'b1010001;
    #5 I = 7'b1001001;
    #5 I = 7'b0010001;
    #5 I = 7'b0000001;
    #5 I = 7'b0000100;
    #5 I = 7'b0110001;
    #5 I = 7'b0010001;

end

initial
    #160 $finish;

initial begin
    $dumpfile("Ejercicio05_tb.vcd");
    $dumpvars(0, testbench); 
end

endmodule