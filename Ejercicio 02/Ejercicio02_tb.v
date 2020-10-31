    //Laboratorio 09 Electronica General
//Diego Esrada 19264
//Ejercicio 02 Testbench

module testbench();
reg clk, reset, enabled;
wire T;

FlipFlopT T01(clk, reset, enabled, T);

initial begin
    #1
    $display("clk  reset  enabled  | T");
    $monitor("%b  %b  %b  | %b", clk, reset, enabled, T);
    clk = 0; reset = 0; enabled = 0;
    #3 reset = 1;
    #3 reset = 0;
    #5 enabled = 1;
    #5 enabled = 0;
    #5 enabled = 1;

end 

always
    #1 clk = ~clk;

initial  
#30 $finish;

initial begin
    $dumpfile("Ejercicio02_tb.vcd");
    $dumpvars(0, testbench);
end

endmodule 