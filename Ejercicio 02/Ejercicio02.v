//Laboratorio 09 Electronica General
//Diego Esrada 19264
//Ejercicio 02

module FlipFlopD1(
    input wire clk, reset, enabled, I,
    output reg T);

    always @ (posedge clk or posedge reset) begin
        if (reset) 
            T <= 1'b0;
        else if (enabled)
            T <= I;
        end
endmodule

module FlipFlopT(
    input wire clk, reset, enabled,
    output wire T);

    FlipFlopD1 D1(clk, reset, enabled, ~T, T);

endmodule
