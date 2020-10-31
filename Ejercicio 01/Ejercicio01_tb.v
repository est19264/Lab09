//Laboratorio 09 Electronica Digital
//Diego Esrada 19264
//Ejercicio 01 Testbench

module testbench();
    wire O1;
    wire [1:0]O2;
    wire [3:0]O3;
    reg clk, reset, enabled, I1;
    reg [1:0]I2;
    reg [3:0]I3;

    FlipFlopD1 R1(clk, reset, enabled, I1, O1);
    FlipFlopD2 R2(clk, reset, enabled, I2, O2);
    FlipFlopD4 R3(clk, reset, enabled, I3, O3);

    initial begin
        $display("clk   reset   enable  I1  I2  I3   |   O1   O2   O3");
        $monitor("%b   %b   %b   %b   %b   %b   |   %b   %b   %b", clk, reset, enabled, I1, I2, I3, O1, O2, O3);
        clk=0; reset=0; enabled=0; I1=0; I2=2'b00; I3=4'b0000;
        #3 reset = 1;
        #3 reset = 0;
        #5 enabled = 1;
        #5 I1 = 1; I2 = 2'b01; I3 = 4'b0001;
        #5 I2 = 2'b11; I3 = 4'b0101;
        #5 I2 = 2'b10; I3 = 4'b1001;
        #5 I1 = 0;
    end

    always
        #1 clk = ~clk;

    initial 
    #35 $finish;

    initial begin
        $dumpfile("Ejercicio01_tb.vcd");
        $dumpvars(0, testbench);
    end

endmodule 