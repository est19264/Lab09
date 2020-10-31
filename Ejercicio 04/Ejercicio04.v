//Laboratorio 09 Electronica General
//Diego Esrada 19264
// Ejercicio 04

module BufferTri(
    input wire enabled,
    input wire [3:0]inputs,
    output wire [3:0]outputs);

        assign outputs = (enabled) ? inputs:4'bz;
endmodule
