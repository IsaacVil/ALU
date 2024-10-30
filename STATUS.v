module Generador_status(S, Zero, Negative, Overflow);
    input [31:0] S;
    output Zero;
    output Negative;
    output Overflow;

    // Señal Zero
    nor (Zero, S[0], S[1], S[2], S[3], S[4], S[5], S[6], S[7], 
        S[8], S[9], S[10], S[11], S[12], S[13], S[14], S[15], 
        S[16], S[17], S[18], S[19], S[20], S[21], S[22], S[23], 
        S[24], S[25], S[26], S[27], S[28], S[29], S[30], S[31]);

    // Señal Negative
    and (Negative, S[31], 1'b1);

    // Señal Overflow (ejemplo simple, puede necesitar ajustes según la lógica de tu diseño)
    xor (Overflow, S[31], S[30]);
endmodule