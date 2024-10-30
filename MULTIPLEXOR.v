module comparacion_multiplexor(S1, S2, f3, f2, resultado);
    input [31:0] S1, S2;
    input f3, f2;
    output [31:0] resultado;

    wire [31:0] R1;   
    wire [31:0] R2; 
    wire f2negado;

    // Si es aritmético
    and(R1[0], f2, S1[0]);
    and(R1[1], f2, S1[1]);
    and(R1[2], f2, S1[2]);
    and(R1[3], f2, S1[3]);
    and(R1[4], f2, S1[4]);
    and(R1[5], f2, S1[5]);
    and(R1[6], f2, S1[6]);
    and(R1[7], f2, S1[7]);
    and(R1[8], f2, S1[8]);
    and(R1[9], f2, S1[9]);
    and(R1[10], f2, S1[10]);
    and(R1[11], f2, S1[11]);
    and(R1[12], f2, S1[12]);
    and(R1[13], f2, S1[13]);
    and(R1[14], f2, S1[14]);
    and(R1[15], f2, S1[15]);
    and(R1[16], f2, S1[16]);
    and(R1[17], f2, S1[17]);
    and(R1[18], f2, S1[18]);
    and(R1[19], f2, S1[19]);
    and(R1[20], f2, S1[20]);
    and(R1[21], f2, S1[21]);
    and(R1[22], f2, S1[22]);
    and(R1[23], f2, S1[23]);
    and(R1[24], f2, S1[24]);
    and(R1[25], f2, S1[25]);
    and(R1[26], f2, S1[26]);
    and(R1[27], f2, S1[27]);
    and(R1[28], f2, S1[28]);
    and(R1[29], f2, S1[29]);
    and(R1[30], f2, S1[30]);
    and(R1[31], f2, S1[31]);

    // Si es booleano
    not(f2negado, f2);
    and(R2[0], f2negado, S2[0]);
    and(R2[1], f2negado, S2[1]);
    and(R2[2], f2negado, S2[2]);
    and(R2[3], f2negado, S2[3]);
    and(R2[4], f2negado, S2[4]);
    and(R2[5], f2negado, S2[5]);
    and(R2[6], f2negado, S2[6]);
    and(R2[7], f2negado, S2[7]);
    and(R2[8], f2negado, S2[8]);
    and(R2[9], f2negado, S2[9]);
    and(R2[10], f2negado, S2[10]);
    and(R2[11], f2negado, S2[11]);
    and(R2[12], f2negado, S2[12]);
    and(R2[13], f2negado, S2[13]);
    and(R2[14], f2negado, S2[14]);
    and(R2[15], f2negado, S2[15]);
    and(R2[16], f2negado, S2[16]);
    and(R2[17], f2negado, S2[17]);
    and(R2[18], f2negado, S2[18]);
    and(R2[19], f2negado, S2[19]);
    and(R2[20], f2negado, S2[20]);
    and(R2[21], f2negado, S2[21]);
    and(R2[22], f2negado, S2[22]);
    and(R2[23], f2negado, S2[23]);
    and(R2[24], f2negado, S2[24]);
    and(R2[25], f2negado, S2[25]);
    and(R2[26], f2negado, S2[26]);
    and(R2[27], f2negado, S2[27]);
    and(R2[28], f2negado, S2[28]);
    and(R2[29], f2negado, S2[29]);
    and(R2[30], f2negado, S2[30]);
    and(R2[31], f2negado, S2[31]);

    // Elige el resultado
    or(resultado[0], R1[0], R2[0]);
    or(resultado[1], R1[1], R2[1]);
    or(resultado[2], R1[2], R2[2]);
    or(resultado[3], R1[3], R2[3]);
    or(resultado[4], R1[4], R2[4]);
    or(resultado[5], R1[5], R2[5]);
    or(resultado[6], R1[6], R2[6]);
    or(resultado[7], R1[7], R2[7]);
    or(resultado[8], R1[8], R2[8]);
    or(resultado[9], R1[9], R2[9]);
    or(resultado[10], R1[10], R2[10]);
    or(resultado[11], R1[11], R2[11]);
    or(resultado[12], R1[12], R2[12]);
    or(resultado[13], R1[13], R2[13]);
    or(resultado[14], R1[14], R2[14]);
    or(resultado[15], R1[15], R2[15]);
    or(resultado[16], R1[16], R2[16]);
    or(resultado[17], R1[17], R2[17]);
    or(resultado[18], R1[18], R2[18]);
    or(resultado[19], R1[19], R2[19]);
    or(resultado[20], R1[20], R2[20]);
    or(resultado[21], R1[21], R2[21]);
    or(resultado[22], R1[22], R2[22]);
    or(resultado[23], R1[23], R2[23]);
    or(resultado[24], R1[24], R2[24]);
    or(resultado[25], R1[25], R2[25]);
    or(resultado[26], R1[26], R2[26]);
    or(resultado[27], R1[27], R2[27]);
    or(resultado[28], R1[28], R2[28]);
    or(resultado[29], R1[29], R2[29]);
    or(resultado[30], R1[30], R2[30]);
    or(resultado[31], R1[31], R2[31]);
endmodule

module testbench;
    reg [31:0] A, B;
    reg f3, f2, f1, f0;

    wire [31:0] S1, S2, S_out;
    wire c_out;
    wire Zero;
    wire Negative;
    wire Overflow;

    Adder32 instanciaA(A, B, f3, f2, f1, f0, S1, c_out, Zero, Negative, Overflow);
    componente_booleano instanciaB(A, B, f3, f2, f1, f0, S2, c_out, Zero, Negative, Overflow);
    comparacion_multiplexor mux(S1, S2, f3, f2, S_out);

    initial begin
        A = 32'h00000001; // Ejemplo de A
        B = 32'h00000001; // Ejemplo de B

        f3 = 1; f2 = 0;
        f1 = 0; f0 = 1;
        #10
        $display("Resultado: ");
        #150; // Esperar un tiempo para la simulación

        $finish;
    end

    initial $monitor("En %2t, Carry = %b, Zero = %b, Negative = %b, Overflow = %b | %b%b%b%b %b%b%b%b %b%b%b%b %b%b%b%b %b%b%b%b %b%b%b%b %b%b%b%b %b%b%b%b",
        $time, c_out, Zero, Negative, Overflow,
        S_out[31], S_out[30], S_out[29], S_out[28], S_out[27], S_out[26], S_out[25], S_out[24], S_out[23], S_out[22],
        S_out[21], S_out[20], S_out[19], S_out[18], S_out[17], S_out[16], S_out[15], S_out[14], S_out[13], S_out[12],
        S_out[11], S_out[10], S_out[9], S_out[8], S_out[7], S_out[6], S_out[5], S_out[4], S_out[3], S_out[2], S_out[1], S_out[0]
    );
endmodule

//    iverilog -o final aritmetico.v booleano.v generador.v multiplexor.v