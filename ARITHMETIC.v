module Adder32(A, B, f3, f2, f1, f0, S, C, Zero, Negative, Overflow);
    input [31:0] A, B;
    input f3, f2, f1, f0;
    output [31:0] S;
    output C;

    //Señales
    output Zero;  
    output Negative; 
    output Overflow; 

    //Aritmetico
    wire [31:0] Amodif, Bmodif;
    wire f1negado;
    
    //Multiplexor
    wire[31:0]R1, R2
    wire f2negado;  
    //output [31:0] Resultado;


    wire c_in;
    wire
    c30,c29,c28,c27,c26,c25,c24,c23,c22,c21,c20,c19,c18,c17,c16,
    c15,c14,c13,c12,c11,c10,c09,c08,c07,c06,c05,c04,c03,c02,c01,c00;

    or(c_in, f1, f0); //EL C IN ES EL RESULTADO DE UN OR ENTRE F0 Y F1
    //AQUI NEGAMOS F1 PARA PODER MANEJAR EL BIT A SIENDO QUE EN EL CASO QUE NEGADO DE 0 TODO A SERA 0
    not(f1negado, f1);
    and(Amodif[0], A[0], f1negado);
    and(Amodif[1], A[1], f1negado);
    and(Amodif[2], A[2], f1negado);
    and(Amodif[3], A[3], f1negado);
    and(Amodif[4], A[4], f1negado);
    and(Amodif[5], A[5], f1negado);
    and(Amodif[6], A[6], f1negado);
    and(Amodif[7], A[7], f1negado);
    and(Amodif[8], A[8], f1negado);
    and(Amodif[9], A[9], f1negado);
    and(Amodif[10], A[10], f1negado);
    and(Amodif[11], A[11], f1negado);
    and(Amodif[12], A[12], f1negado);
    and(Amodif[13], A[13], f1negado);
    and(Amodif[14], A[14], f1negado);
    and(Amodif[15], A[15], f1negado);
    and(Amodif[16], A[16], f1negado);
    and(Amodif[17], A[17], f1negado);
    and(Amodif[18], A[18], f1negado);
    and(Amodif[19], A[19], f1negado);
    and(Amodif[20], A[20], f1negado);
    and(Amodif[21], A[21], f1negado);
    and(Amodif[22], A[22], f1negado);
    and(Amodif[23], A[23], f1negado);
    and(Amodif[24], A[24], f1negado);
    and(Amodif[25], A[25], f1negado);
    and(Amodif[26], A[26], f1negado);
    and(Amodif[27], A[27], f1negado);
    and(Amodif[28], A[28], f1negado);
    and(Amodif[29], A[29], f1negado);
    and(Amodif[30], A[30], f1negado);
    and(Amodif[31], A[31], f1negado);

    //B usando XOR entre f0, f1 y B
    xor(Bmodif[0], B[0], f0, f1);
    xor(Bmodif[1], B[1], f0, f1);
    xor(Bmodif[2], B[2], f0, f1);
    xor(Bmodif[3], B[3], f0, f1);
    xor(Bmodif[4], B[4], f0, f1);
    xor(Bmodif[5], B[5], f0, f1);
    xor(Bmodif[6], B[6], f0, f1);
    xor(Bmodif[7], B[7], f0, f1);
    xor(Bmodif[8], B[8], f0, f1);
    xor(Bmodif[9], B[9], f0, f1);
    xor(Bmodif[10], B[10], f0, f1);
    xor(Bmodif[11], B[11], f0, f1);
    xor(Bmodif[12], B[12], f0, f1);
    xor(Bmodif[13], B[13], f0, f1);
    xor(Bmodif[14], B[14], f0, f1);
    xor(Bmodif[15], B[15], f0, f1);
    xor(Bmodif[16], B[16], f0, f1);
    xor(Bmodif[17], B[17], f0, f1);
    xor(Bmodif[18], B[18], f0, f1);
    xor(Bmodif[19], B[19], f0, f1);
    xor(Bmodif[20], B[20], f0, f1);
    xor(Bmodif[21], B[21], f0, f1);
    xor(Bmodif[22], B[22], f0, f1);
    xor(Bmodif[23], B[23], f0, f1);
    xor(Bmodif[24], B[24], f0, f1);
    xor(Bmodif[25], B[25], f0, f1);
    xor(Bmodif[26], B[26], f0, f1);
    xor(Bmodif[27], B[27], f0, f1);
    xor(Bmodif[28], B[28], f0, f1);
    xor(Bmodif[29], B[29], f0, f1);
    xor(Bmodif[30], B[30], f0, f1);
    xor(Bmodif[31], B[31], f0, f1);

    Full_Adder F00(Amodif[0], Bmodif[0], c_in, c00, S[0]);
    Full_Adder F01(Amodif[1], Bmodif[1], c00, c01, S[1]);
    Full_Adder F02(Amodif[2], Bmodif[2], c01, c02, S[2]);
    Full_Adder F03(Amodif[3], Bmodif[3], c02, c03, S[3]);
    Full_Adder F04(Amodif[4], Bmodif[4], c03, c04, S[4]);
    Full_Adder F05(Amodif[5], Bmodif[5], c04, c05, S[5]);
    Full_Adder F06(Amodif[6], Bmodif[6], c05, c06, S[6]);
    Full_Adder F07(Amodif[7], Bmodif[7], c06, c07, S[7]);
    Full_Adder F08(Amodif[8], Bmodif[8], c07, c08, S[8]);
    Full_Adder F09(Amodif[9], Bmodif[9], c08, c09, S[9]);
    Full_Adder F10(Amodif[10], Bmodif[10], c09, c10, S[10]);
    Full_Adder F11(Amodif[11], Bmodif[11], c10, c11, S[11]);
    Full_Adder F12(Amodif[12], Bmodif[12], c11, c12, S[12]);
    Full_Adder F13(Amodif[13], Bmodif[13], c12, c13, S[13]);
    Full_Adder F14(Amodif[14], Bmodif[14], c13, c14, S[14]);
    Full_Adder F15(Amodif[15], Bmodif[15], c14, c15, S[15]);
    Full_Adder F16(Amodif[16], Bmodif[16], c15, c16, S[16]);
    Full_Adder F17(Amodif[17], Bmodif[17], c16, c17, S[17]);
    Full_Adder F18(Amodif[18], Bmodif[18], c17, c18, S[18]);
    Full_Adder F19(Amodif[19], Bmodif[19], c18, c19, S[19]);
    Full_Adder F20(Amodif[20], Bmodif[20], c19, c20, S[20]);
    Full_Adder F21(Amodif[21], Bmodif[21], c20, c21, S[21]);
    Full_Adder F22(Amodif[22], Bmodif[22], c21, c22, S[22]);
    Full_Adder F23(Amodif[23], Bmodif[23], c22, c23, S[23]);
    Full_Adder F24(Amodif[24], Bmodif[24], c23, c24, S[24]);
    Full_Adder F25(Amodif[25], Bmodif[25], c24, c25, S[25]);
    Full_Adder F26(Amodif[26], Bmodif[26], c25, c26, S[26]);
    Full_Adder F27(Amodif[27], Bmodif[27], c26, c27, S[27]);
    Full_Adder F28(Amodif[28], Bmodif[28], c27, c28, S[28]);
    Full_Adder F29(Amodif[29], Bmodif[29], c28, c29, S[29]);
    Full_Adder F30(Amodif[30], Bmodif[30], c29, c30, S[30]);
    Full_Adder F31(Amodif[31], Bmodif[31], c30, C, S[31]);

    //señal zero
    nor (Zero, S[0], S[1], S[2], S[3], S[4], S[5], S[6], S[7], //si todos son 0 da 1
        S[8], S[9], S[10], S[11], S[12], S[13], S[14], S[15], 
        S[16], S[17], S[18], S[19], S[20], S[21], S[22], S[23], 
        S[24], S[25], S[26], S[27], S[28], S[29], S[30], S[31]);

    and (Negative, S[31], 1'b1);//si el bit mas significativo es 1 o 0
endmodule

module comparacion_multiplexor(S1, S2, f2, f3, resultado);
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

module Full_Adder (A,B,C_in,C_out,S);
    input A,B,C_in;
    output C_out,S;
    wire w1,w2,w3;
    //---------------------
    xor #(4) x1(w1,A,B);
    and #(3) a1(w2,A,B);
    xor #(4) x2(S,w1,C_in);
    and #(3) a2(w3,C_in,w1);

    or #(2) o1(C_out,w2,w3);
endmodule


module Adder32TB;
  reg [31:0] A, B;
  reg f0, f1;

  wire [31:0] S;
  wire c_out;
  wire Zero;
  wire Negative;
  wire Overflow;


  Adder32 Sigma(A, B, f3, f2, f1, f0, S, c_out, Zero, Negative, Overflow);
  
  //-------------------------------------------
  initial begin
    $display("A = 1, B = 1, deberia dar 0");
    f3 = 1'b0;
    f2 = 1'b1;
    f1 = 1'b0;
    f0 = 1'b1;
    A = 32'h00000001; // A = 1
    B = 32'h00000001; // B = 1
    #900;
    
    $display("A = 1, B = 2305, deberia dar 1 - 2305");
    A = 32'hA0000001; // A = 1
    B = 32'h00000001; // B = 1
    #900;
    
    $finish;
  end // de initial
  
  initial $monitor("En %2t, Carry = %b, Zero = %b, Negative = %b, Overflow = %b | %b%b%b%b %b%b%b%b %b%b%b%b %b%b%b%b %b%b%b%b %b%b%b%b %b%b%b%b %b%b%b%b",
    $time,
    c_out, Zero, Negative, c_out,
    S[31], S[30], S[29], S[28], S[27], S[26], S[25], S[24], S[23], S[22],
    S[21], S[20], S[19], S[18], S[17], S[16], S[15], S[14], S[13], S[12],
    S[11], S[10], S[9], S[8], S[7], S[6], S[5], S[4], S[3], S[2], S[1], S[0]
  );

endmodule