//Laboratorio 09 Electronica Digital
//Diego Esrada 19264
//Ejercicio 01

//FlipFlop Tipo D de un bit.
module FlipFlopD1(
    input wire reset, clk, enabled, I1,
    output reg O1);

    always @ (posedge clk or posedge reset) begin
        if (reset) 
            O1 <= 1'b0;
        else if (enabled)
            O1 <= I1;
        end
endmodule

//FlipFlop Tipo D de dos bits.
module FlipFlopD2(
    input wire reset, clk, enabled,
    input wire [1:0]I2,
    output wire [1:0]O2);

    FlipFlopD1 B1(clk, reset, enabled, I2[0], O2[0]);
    FlipFlopD1 B2(clk, reset, enabled, I2[1], O2[1]);
endmodule

//FlipFlop Tipo D de cuatro bits.
module FlipFlopD4(
    input wire reset, clk, enabled,
    input wire [3:0]I3,
    output wire [3:0]O3);

    FlipFlopD2 C1(clk, reset, enabled, I3[1:0], O3[1:0]);
    FlipFlopD2 C2(clk, reset, enabled, I3[3:2], O3[3:2]);
endmodule

