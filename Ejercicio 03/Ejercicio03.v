//Laboratorio 09 Electronica Digital
//Diego Esrada 19264
// Ejercicio 03

module FlipFlopD1(
    input wire clk, reset, enabled, I,
    output reg O);

        always @(posedge clk or posedge reset) begin
            if(reset)
                O <= 0;
            else if (enabled)
                O <= I; 
        end
endmodule

module FlipFlopJK1(
    input wire clk, reset, enabled, J, K,
    output wire O);

        wire aJ, aK, nO, nK, h;

        not(nO, O);
        not(nK, K);
        and(aJ, J, nO);
        and(aK, nK, O);
        or(h, aJ, aK);

        FlipFlopD1 JK1(clk, reset, enabled, h, O);
endmodule