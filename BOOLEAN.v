// Define componente_booleano
module componente_booleano (A, B, f3, f2, f1, f0, S, Carry, Zero, Negative, Overflow );
    input [31:0] A, B;
    input f3, f2, f1, f0;
    output [31:0] S;
    output Carry;
    output Zero;
    output Negative;
    output Overflow;

    wire f1_neg, f0_neg;
    not(f1_neg, f1);
    not(f0_neg, f0);

    // Bit 0
    wire and_op_0, or_op_0, xor_op_0, not_a_0;
    wire op1_0, op2_0, op3_0, op4_0;
    not(temp1_0, A[0]);  
    not(temp2_0, B[0]); 
    and(temp3_0, A[0], temp2_0); 
    and(temp4_0, temp1_0, B[0]); 
    or(xor_op_0, temp3_0, temp4_0); 
    and(and_op_0, A[0], B[0]); 
    or(or_op_0, A[0], B[0]);   
    not(not_a_0, A[0]); 
    and(op1_0, and_op_0, f1_neg, f0_neg);
    and(op2_0, or_op_0, f1_neg, f0); 
    and(op3_0, xor_op_0, f1, f0_neg);
    and(op4_0, not_a_0, f1, f0); 
    or(S[0], op1_0, op2_0, op3_0, op4_0);

    // Bit 1
    wire and_op_1, or_op_1, xor_op_1, not_a_1;
    wire op1_1, op2_1, op3_1, op4_1;
    not(temp1_1, A[1]);  
    not(temp2_1, B[1]); 
    and(temp3_1, A[1], temp2_1); 
    and(temp4_1, temp1_1, B[1]); 
    or(xor_op_1, temp3_1, temp4_1); 
    and(and_op_1, A[1], B[1]); 
    or(or_op_1, A[1], B[1]);   
    not(not_a_1, A[1]); 
    and(op1_1, and_op_1, f1_neg, f0_neg);
    and(op2_1, or_op_1, f1_neg, f0); 
    and(op3_1, xor_op_1, f1, f0_neg);
    and(op4_1, not_a_1, f1, f0); 
    or(S[1], op1_1, op2_1, op3_1, op4_1);

    // Bit 2
    wire and_op_2, or_op_2, xor_op_2, not_a_2;
    wire op1_2, op2_2, op3_2, op4_2;
    not(temp1_2, A[2]);  
    not(temp2_2, B[2]); 
    and(temp3_2, A[2], temp2_2); 
    and(temp4_2, temp1_2, B[2]); 
    or(xor_op_2, temp3_2, temp4_2); 
    and(and_op_2, A[2], B[2]); 
    or(or_op_2, A[2], B[2]);   
    not(not_a_2, A[2]); 
    and(op1_2, and_op_2, f1_neg, f0_neg);
    and(op2_2, or_op_2, f1_neg, f0); 
    and(op3_2, xor_op_2, f1, f0_neg);
    and(op4_2, not_a_2, f1, f0); 
    or(S[2], op1_2, op2_2, op3_2, op4_2);

    // Bit 3
    wire and_op_3, or_op_3, xor_op_3, not_a_3;
    wire op1_3, op2_3, op3_3, op4_3;
    not(temp1_3, A[3]);  
    not(temp2_3, B[3]); 
    and(temp3_3, A[3], temp2_3); 
    and(temp4_3, temp1_3, B[3]); 
    or(xor_op_3, temp3_3, temp4_3); 
    and(and_op_3, A[3], B[3]); 
    or(or_op_3, A[3], B[3]);   
    not(not_a_3, A[3]); 
    and(op1_3, and_op_3, f1_neg, f0_neg);
    and(op2_3, or_op_3, f1_neg, f0); 
    and(op3_3, xor_op_3, f1, f0_neg);
    and(op4_3, not_a_3, f1, f0); 
    or(S[3], op1_3, op2_3, op3_3, op4_3);

    // Bit 4
    wire and_op_4, or_op_4, xor_op_4, not_a_4;
    wire op1_4, op2_4, op3_4, op4_4;
    not(temp1_4, A[4]);  
    not(temp2_4, B[4]); 
    and(temp3_4, A[4], temp2_4); 
    and(temp4_4, temp1_4, B[4]); 
    or(xor_op_4, temp3_4, temp4_4); 
    and(and_op_4, A[4], B[4]); 
    or(or_op_4, A[4], B[4]);   
    not(not_a_4, A[4]); 
    and(op1_4, and_op_4, f1_neg, f0_neg);
    and(op2_4, or_op_4, f1_neg, f0); 
    and(op3_4, xor_op_4, f1, f0_neg);
    and(op4_4, not_a_4, f1, f0); 
    or(S[4], op1_4, op2_4, op3_4, op4_4);

    // Bit 5
    wire and_op_5, or_op_5, xor_op_5, not_a_5;
    wire op1_5, op2_5, op3_5, op4_5;
    not(temp1_5, A[5]);  
    not(temp2_5, B[5]); 
    and(temp3_5, A[5], temp2_5); 
    and(temp4_5, temp1_5, B[5]); 
    or(xor_op_5, temp3_5, temp4_5); 
    and(and_op_5, A[5], B[5]); 
    or(or_op_5, A[5], B[5]);   
    not(not_a_5, A[5]); 
    and(op1_5, and_op_5, f1_neg, f0_neg);
    and(op2_5, or_op_5, f1_neg, f0); 
    and(op3_5, xor_op_5, f1, f0_neg);
    and(op4_5, not_a_5, f1, f0); 
    or(S[5], op1_5, op2_5, op3_5, op4_5);

    // Bit 6
    wire and_op_6, or_op_6, xor_op_6, not_a_6;
    wire op1_6, op2_6, op3_6, op4_6;
    not(temp1_6, A[6]);  
    not(temp2_6, B[6]); 
    and(temp3_6, A[6], temp2_6); 
    and(temp4_6, temp1_6, B[6]); 
    or(xor_op_6, temp3_6, temp4_6); 
    and(and_op_6, A[6], B[6]); 
    or(or_op_6, A[6], B[6]);   
    not(not_a_6, A[6]); 
    and(op1_6, and_op_6, f1_neg, f0_neg);
    and(op2_6, or_op_6, f1_neg, f0); 
    and(op3_6, xor_op_6, f1, f0_neg);
    and(op4_6, not_a_6, f1, f0); 
    or(S[6], op1_6, op2_6, op3_6, op4_6);

    // Bit 7
    wire and_op_7, or_op_7, xor_op_7, not_a_7;
    wire op1_7, op2_7, op3_7, op4_7;
    not(temp1_7, A[7]);  
    not(temp2_7, B[7]); 
    and(temp3_7, A[7], temp2_7); 
    and(temp4_7, temp1_7, B[7]); 
    or(xor_op_7, temp3_7, temp4_7); 
    and(and_op_7, A[7], B[7]); 
    or(or_op_7, A[7], B[7]);   
    not(not_a_7, A[7]); 
    and(op1_7, and_op_7, f1_neg, f0_neg);
    and(op2_7, or_op_7, f1_neg, f0); 
    and(op3_7, xor_op_7, f1, f0_neg);
    and(op4_7, not_a_7, f1, f0); 
    or(S[7], op1_7, op2_7, op3_7, op4_7);

    // Bit 8
    wire and_op_8, or_op_8, xor_op_8, not_a_8;
    wire op1_8, op2_8, op3_8, op4_8;
    not(temp1_8, A[8]);  
    not(temp2_8, B[8]); 
    and(temp3_8, A[8], temp2_8); 
    and(temp4_8, temp1_8, B[8]); 
    or(xor_op_8, temp3_8, temp4_8); 
    and(and_op_8, A[8], B[8]); 
    or(or_op_8, A[8], B[8]);   
    not(not_a_8, A[8]); 
    and(op1_8, and_op_8, f1_neg, f0_neg);
    and(op2_8, or_op_8, f1_neg, f0); 
    and(op3_8, xor_op_8, f1, f0_neg);
    and(op4_8, not_a_8, f1, f0); 
    or(S[8], op1_8, op2_8, op3_8, op4_8);

    // Bit 9
    wire and_op_9, or_op_9, xor_op_9, not_a_9;
    wire op1_9, op2_9, op3_9, op4_9;
    not(temp1_9, A[9]);  
    not(temp2_9, B[9]); 
    and(temp3_9, A[9], temp2_9); 
    and(temp4_9, temp1_9, B[9]); 
    or(xor_op_9, temp3_9, temp4_9); 
    and(and_op_9, A[9], B[9]); 
    or(or_op_9, A[9], B[9]);   
    not(not_a_9, A[9]); 
    and(op1_9, and_op_9, f1_neg, f0_neg);
    and(op2_9, or_op_9, f1_neg, f0); 
    and(op3_9, xor_op_9, f1, f0_neg);
    and(op4_9, not_a_9, f1, f0); 
    or(S[9], op1_9, op2_9, op3_9, op4_9);

    // Bit 10
    wire and_op_10, or_op_10, xor_op_10, not_a_10;
    wire op1_10, op2_10, op3_10, op4_10;
    not(temp1_10, A[10]);  
    not(temp2_10, B[10]); 
    and(temp3_10, A[10], temp2_10); 
    and(temp4_10, temp1_10, B[10]); 
    or(xor_op_10, temp3_10, temp4_10); 
    and(and_op_10, A[10], B[10]); 
    or(or_op_10, A[10], B[10]);   
    not(not_a_10, A[10]); 
    and(op1_10, and_op_10, f1_neg, f0_neg);
    and(op2_10, or_op_10, f1_neg, f0); 
    and(op3_10, xor_op_10, f1, f0_neg);
    and(op4_10, not_a_10, f1, f0); 
    or(S[10], op1_10, op2_10, op3_10, op4_10);

    // Bit 11
    wire and_op_11, or_op_11, xor_op_11, not_a_11;
    wire op1_11, op2_11, op3_11, op4_11;
    not(temp1_11, A[11]);  
    not(temp2_11, B[11]); 
    and(temp3_11, A[11], temp2_11); 
    and(temp4_11, temp1_11, B[11]); 
    or(xor_op_11, temp3_11, temp4_11); 
    and(and_op_11, A[11], B[11]); 
    or(or_op_11, A[11], B[11]);   
    not(not_a_11, A[11]); 
    and(op1_11, and_op_11, f1_neg, f0_neg);
    and(op2_11, or_op_11, f1_neg, f0); 
    and(op3_11, xor_op_11, f1, f0_neg);
    and(op4_11, not_a_11, f1, f0); 
    or(S[11], op1_11, op2_11, op3_11, op4_11);

    // Bit 12
    wire and_op_12, or_op_12, xor_op_12, not_a_12;
    wire op1_12, op2_12, op3_12, op4_12;
    not(temp1_12, A[12]);  
    not(temp2_12, B[12]); 
    and(temp3_12, A[12], temp2_12); 
    and(temp4_12, temp1_12, B[12]); 
    or(xor_op_12, temp3_12, temp4_12); 
    and(and_op_12, A[12], B[12]); 
    or(or_op_12, A[12], B[12]);   
    not(not_a_12, A[12]); 
    and(op1_12, and_op_12, f1_neg, f0_neg);
    and(op2_12, or_op_12, f1_neg, f0); 
    and(op3_12, xor_op_12, f1, f0_neg);
    and(op4_12, not_a_12, f1, f0); 
    or(S[12], op1_12, op2_12, op3_12, op4_12);

    // Bit 13
    wire and_op_13, or_op_13, xor_op_13, not_a_13;
    wire op1_13, op2_13, op3_13, op4_13;
    not(temp1_13, A[13]);  
    not(temp2_13, B[13]); 
    and(temp3_13, A[13], temp2_13); 
    and(temp4_13, temp1_13, B[13]); 
    or(xor_op_13, temp3_13, temp4_13); 
    and(and_op_13, A[13], B[13]); 
    or(or_op_13, A[13], B[13]);   
    not(not_a_13, A[13]); 
    and(op1_13, and_op_13, f1_neg, f0_neg);
    and(op2_13, or_op_13, f1_neg, f0); 
    and(op3_13, xor_op_13, f1, f0_neg);
    and(op4_13, not_a_13, f1, f0); 
    or(S[13], op1_13, op2_13, op3_13, op4_13);

    // Bit 14
    wire and_op_14, or_op_14, xor_op_14, not_a_14;
    wire op1_14, op2_14, op3_14, op4_14;
    not(temp1_14, A[14]);  
    not(temp2_14, B[14]); 
    and(temp3_14, A[14], temp2_14); 
    and(temp4_14, temp1_14, B[14]); 
    or(xor_op_14, temp3_14, temp4_14); 
    and(and_op_14, A[14], B[14]); 
    or(or_op_14, A[14], B[14]);   
    not(not_a_14, A[14]); 
    and(op1_14, and_op_14, f1_neg, f0_neg);
    and(op2_14, or_op_14, f1_neg, f0); 
    and(op3_14, xor_op_14, f1, f0_neg);
    and(op4_14, not_a_14, f1, f0); 
    or(S[14], op1_14, op2_14, op3_14, op4_14);

    // Bit 15
    wire and_op_15, or_op_15, xor_op_15, not_a_15;
    wire op1_15, op2_15, op3_15, op4_15;
    not(temp1_15, A[15]);  
    not(temp2_15, B[15]); 
    and(temp3_15, A[15], temp2_15); 
    and(temp4_15, temp1_15, B[15]); 
    or(xor_op_15, temp3_15, temp4_15); 
    and(and_op_15, A[15], B[15]); 
    or(or_op_15, A[15], B[15]);   
    not(not_a_15, A[15]); 
    and(op1_15, and_op_15, f1_neg, f0_neg);
    and(op2_15, or_op_15, f1_neg, f0); 
    and(op3_15, xor_op_15, f1, f0_neg);
    and(op4_15, not_a_15, f1, f0); 
    or(S[15], op1_15, op2_15, op3_15, op4_15);

    // Bit 16
    wire and_op_16, or_op_16, xor_op_16, not_a_16;
    wire op1_16, op2_16, op3_16, op4_16;
    not(temp1_16, A[16]);  
    not(temp2_16, B[16]); 
    and(temp3_16, A[16], temp2_16); 
    and(temp4_16, temp1_16, B[16]); 
    or(xor_op_16, temp3_16, temp4_16); 
    and(and_op_16, A[16], B[16]); 
    or(or_op_16, A[16], B[16]);   
    not(not_a_16, A[16]); 
    and(op1_16, and_op_16, f1_neg, f0_neg);
    and(op2_16, or_op_16, f1_neg, f0); 
    and(op3_16, xor_op_16, f1, f0_neg);
    and(op4_16, not_a_16, f1, f0); 
    or(S[16], op1_16, op2_16, op3_16, op4_16);

    // Bit 17
    wire and_op_17, or_op_17, xor_op_17, not_a_17;
    wire op1_17, op2_17, op3_17, op4_17;
    not(temp1_17, A[17]);  
    not(temp2_17, B[17]); 
    and(temp3_17, A[17], temp2_17); 
    and(temp4_17, temp1_17, B[17]); 
    or(xor_op_17, temp3_17, temp4_17); 
    and(and_op_17, A[17], B[17]); 
    or(or_op_17, A[17], B[17]);   
    not(not_a_17, A[17]); 
    and(op1_17, and_op_17, f1_neg, f0_neg);
    and(op2_17, or_op_17, f1_neg, f0); 
    and(op3_17, xor_op_17, f1, f0_neg);
    and(op4_17, not_a_17, f1, f0); 
    or(S[17], op1_17, op2_17, op3_17, op4_17);

    // Bit 18
    wire and_op_18, or_op_18, xor_op_18, not_a_18;
    wire op1_18, op2_18, op3_18, op4_18;
    not(temp1_18, A[18]);  
    not(temp2_18, B[18]); 
    and(temp3_18, A[18], temp2_18); 
    and(temp4_18, temp1_18, B[18]); 
    or(xor_op_18, temp3_18, temp4_18); 
    and(and_op_18, A[18], B[18]); 
    or(or_op_18, A[18], B[18]);   
    not(not_a_18, A[18]); 
    and(op1_18, and_op_18, f1_neg, f0_neg);
    and(op2_18, or_op_18, f1_neg, f0); 
    and(op3_18, xor_op_18, f1, f0_neg);
    and(op4_18, not_a_18, f1, f0); 
    or(S[18], op1_18, op2_18, op3_18, op4_18);

    // Bit 19
    wire and_op_19, or_op_19, xor_op_19, not_a_19;
    wire op1_19, op2_19, op3_19, op4_19;
    not(temp1_19, A[19]);  
    not(temp2_19, B[19]); 
    and(temp3_19, A[19], temp2_19); 
    and(temp4_19, temp1_19, B[19]); 
    or(xor_op_19, temp3_19, temp4_19); 
    and(and_op_19, A[19], B[19]); 
    or(or_op_19, A[19], B[19]);   
    not(not_a_19, A[19]); 
    and(op1_19, and_op_19, f1_neg, f0_neg);
    and(op2_19, or_op_19, f1_neg, f0); 
    and(op3_19, xor_op_19, f1, f0_neg);
    and(op4_19, not_a_19, f1, f0); 
    or(S[19], op1_19, op2_19, op3_19, op4_19);

    // Bit 20
    wire and_op_20, or_op_20, xor_op_20, not_a_20;
    wire op1_20, op2_20, op3_20, op4_20;
    not(temp1_20, A[20]);  
    not(temp2_20, B[20]); 
    and(temp3_20, A[20], temp2_20); 
    and(temp4_20, temp1_20, B[20]); 
    or(xor_op_20, temp3_20, temp4_20); 
    and(and_op_20, A[20], B[20]); 
    or(or_op_20, A[20], B[20]);   
    not(not_a_20, A[20]); 
    and(op1_20, and_op_20, f1_neg, f0_neg);
    and(op2_20, or_op_20, f1_neg, f0); 
    and(op3_20, xor_op_20, f1, f0_neg);
    and(op4_20, not_a_20, f1, f0); 
    or(S[20], op1_20, op2_20, op3_20, op4_20);

    // Bit 21
    wire and_op_21, or_op_21, xor_op_21, not_a_21;
    wire op1_21, op2_21, op3_21, op4_21;
    not(temp1_21, A[21]);  
    not(temp2_21, B[21]); 
    and(temp3_21, A[21], temp2_21); 
    and(temp4_21, temp1_21, B[21]); 
    or(xor_op_21, temp3_21, temp4_21); 
    and(and_op_21, A[21], B[21]); 
    or(or_op_21, A[21], B[21]);   
    not(not_a_21, A[21]); 
    and(op1_21, and_op_21, f1_neg, f0_neg);
    and(op2_21, or_op_21, f1_neg, f0); 
    and(op3_21, xor_op_21, f1, f0_neg);
    and(op4_21, not_a_21, f1, f0); 
    or(S[21], op1_21, op2_21, op3_21, op4_21);

    // Bit 22
    wire and_op_22, or_op_22, xor_op_22, not_a_22;
    wire op1_22, op2_22, op3_22, op4_22;
    not(temp1_22, A[22]);  
    not(temp2_22, B[22]); 
    and(temp3_22, A[22], temp2_22); 
    and(temp4_22, temp1_22, B[22]); 
    or(xor_op_22, temp3_22, temp4_22); 
    and(and_op_22, A[22], B[22]); 
    or(or_op_22, A[22], B[22]);   
    not(not_a_22, A[22]); 
    and(op1_22, and_op_22, f1_neg, f0_neg);
    and(op2_22, or_op_22, f1_neg, f0); 
    and(op3_22, xor_op_22, f1, f0_neg);
    and(op4_22, not_a_22, f1, f0); 
    or(S[22], op1_22, op2_22, op3_22, op4_22);

    // Bit 23
    wire and_op_23, or_op_23, xor_op_23, not_a_23;
    wire op1_23, op2_23, op3_23, op4_23;
    not(temp1_23, A[23]);  
    not(temp2_23, B[23]); 
    and(temp3_23, A[23], temp2_23); 
    and(temp4_23, temp1_23, B[23]); 
    or(xor_op_23, temp3_23, temp4_23); 
    and(and_op_23, A[23], B[23]); 
    or(or_op_23, A[23], B[23]);   
    not(not_a_23, A[23]); 
    and(op1_23, and_op_23, f1_neg, f0_neg);
    and(op2_23, or_op_23, f1_neg, f0); 
    and(op3_23, xor_op_23, f1, f0_neg);
    and(op4_23, not_a_23, f1, f0); 
    or(S[23], op1_23, op2_23, op3_23, op4_23);

    // Bit 24
    wire and_op_24, or_op_24, xor_op_24, not_a_24;
    wire op1_24, op2_24, op3_24, op4_24;
    not(temp1_24, A[24]);  
    not(temp2_24, B[24]); 
    and(temp3_24, A[24], temp2_24); 
    and(temp4_24, temp1_24, B[24]); 
    or(xor_op_24, temp3_24, temp4_24); 
    and(and_op_24, A[24], B[24]); 
    or(or_op_24, A[24], B[24]);   
    not(not_a_24, A[24]); 
    and(op1_24, and_op_24, f1_neg, f0_neg);
    and(op2_24, or_op_24, f1_neg, f0); 
    and(op3_24, xor_op_24, f1, f0_neg);
    and(op4_24, not_a_24, f1, f0); 
    or(S[24], op1_24, op2_24, op3_24, op4_24);

    // Bit 25
    wire and_op_25, or_op_25, xor_op_25, not_a_25;
    wire op1_25, op2_25, op3_25, op4_25;
    not(temp1_25, A[25]);  
    not(temp2_25, B[25]); 
    and(temp3_25, A[25], temp2_25); 
    and(temp4_25, temp1_25, B[25]); 
    or(xor_op_25, temp3_25, temp4_25); 
    and(and_op_25, A[25], B[25]); 
    or(or_op_25, A[25], B[25]);   
    not(not_a_25, A[25]); 
    and(op1_25, and_op_25, f1_neg, f0_neg);
    and(op2_25, or_op_25, f1_neg, f0); 
    and(op3_25, xor_op_25, f1, f0_neg);
    and(op4_25, not_a_25, f1, f0); 
    or(S[25], op1_25, op2_25, op3_25, op4_25);

    // Bit 26
    wire and_op_26, or_op_26, xor_op_26, not_a_26;
    wire op1_26, op2_26, op3_26, op4_26;
    not(temp1_26, A[26]);  
    not(temp2_26, B[26]); 
    and(temp3_26, A[26], temp2_26); 
    and(temp4_26, temp1_26, B[26]); 
    or(xor_op_26, temp3_26, temp4_26); 
    and(and_op_26, A[26], B[26]); 
    or(or_op_26, A[26], B[26]);   
    not(not_a_26, A[26]); 
    and(op1_26, and_op_26, f1_neg, f0_neg);
    and(op2_26, or_op_26, f1_neg, f0); 
    and(op3_26, xor_op_26, f1, f0_neg);
    and(op4_26, not_a_26, f1, f0); 
    or(S[26], op1_26, op2_26, op3_26, op4_26);

    // Bit 27
    wire and_op_27, or_op_27, xor_op_27, not_a_27;
    wire op1_27, op2_27, op3_27, op4_27;
    not(temp1_27, A[27]);  
    not(temp2_27, B[27]); 
    and(temp3_27, A[27], temp2_27); 
    and(temp4_27, temp1_27, B[27]); 
    or(xor_op_27, temp3_27, temp4_27); 
    and(and_op_27, A[27], B[27]); 
    or(or_op_27, A[27], B[27]);   
    not(not_a_27, A[27]); 
    and(op1_27, and_op_27, f1_neg, f0_neg);
    and(op2_27, or_op_27, f1_neg, f0); 
    and(op3_27, xor_op_27, f1, f0_neg);
    and(op4_27, not_a_27, f1, f0); 
    or(S[27], op1_27, op2_27, op3_27, op4_27);

    // Bit 28
    wire and_op_28, or_op_28, xor_op_28, not_a_28;
    wire op1_28, op2_28, op3_28, op4_28;
    not(temp1_28, A[28]);  
    not(temp2_28, B[28]); 
    and(temp3_28, A[28], temp2_28); 
    and(temp4_28, temp1_28, B[28]); 
    or(xor_op_28, temp3_28, temp4_28); 
    and(and_op_28, A[28], B[28]); 
    or(or_op_28, A[28], B[28]);   
    not(not_a_28, A[28]); 
    and(op1_28, and_op_28, f1_neg, f0_neg);
    and(op2_28, or_op_28, f1_neg, f0); 
    and(op3_28, xor_op_28, f1, f0_neg);
    and(op4_28, not_a_28, f1, f0); 
    or(S[28], op1_28, op2_28, op3_28, op4_28);
    
    // Bit 29
    wire and_op_29, or_op_29, xor_op_29, not_a_29;
    wire op1_29, op2_29, op3_29, op4_29;
    not(temp1_29, A[29]);  
    not(temp2_29, B[29]); 
    and(temp3_29, A[29], temp2_29); 
    and(temp4_29, temp1_29, B[29]); 
    or(xor_op_29, temp3_29, temp4_29); 
    and(and_op_29, A[29], B[29]); 
    or(or_op_29, A[29], B[29]);   
    not(not_a_29, A[29]); 
    and(op1_29, and_op_29, f1_neg, f0_neg);
    and(op2_29, or_op_29, f1_neg, f0); 
    and(op3_29, xor_op_29, f1, f0_neg);
    and(op4_29, not_a_29, f1, f0); 
    or(S[29], op1_29, op2_29, op3_29, op4_29);

    // Bit 30
    wire and_op_30, or_op_30, xor_op_30, not_a_30;
    wire op1_30, op2_30, op3_30, op4_30;
    not(temp1_30, A[30]);  
    not(temp2_30, B[30]); 
    and(temp3_30, A[30], temp2_30); 
    and(temp4_30, temp1_30, B[30]); 
    or(xor_op_30, temp3_30, temp4_30); 
    and(and_op_30, A[30], B[30]); 
    or(or_op_30, A[30], B[30]);   
    not(not_a_30, A[30]); 
    and(op1_30, and_op_30, f1_neg, f0_neg);
    and(op2_30, or_op_30, f1_neg, f0); 
    and(op3_30, xor_op_30, f1, f0_neg);
    and(op4_30, not_a_30, f1, f0); 
    or(S[30], op1_30, op2_30, op3_30, op4_30);

    // Bit 31
    wire and_op_31, or_op_31, xor_op_31, not_a_31;
    wire op1_31, op2_31, op3_31, op4_31;
    not(temp1_31, A[31]);  
    not(temp2_31, B[31]); 
    and(temp3_31, A[31], temp2_31); 
    and(temp4_31, temp1_31, B[31]); 
    or(xor_op_31, temp3_31, temp4_31); 
    and(and_op_31, A[31], B[31]); 
    or(or_op_31, A[31], B[31]);   
    not(not_a_31, A[31]); 
    and(op1_31, and_op_31, f1_neg, f0_neg);
    and(op2_31, or_op_31, f1_neg, f0); 
    and(op3_31, xor_op_31, f1, f0_neg);
    and(op4_31, not_a_31, f1, f0); 
    or(S[31], op1_31, op2_31, op3_31, op4_31);
    Generador_status booleano(S, Zero, Negative, Overflow);
endmodule


module testbench;
    reg [31:0] A, B;
    reg f3, f2, f1, f0;
    wire [31:0] S;

    wire c_out;
    wire Zero;
    wire Negative;
    wire Overflow;

    componente_booleano instanciaB(A, B, f3, f2, f1, f0, S, Carry, Zero, Negative, Overflow);
    
    // Instancia del módulo
    initial begin
        
        A = 32'h00000000; // Ejemplo de A
        B = 32'h00000001; // Ejemplo de B

        f3=0; f2=0;
        // Probar AND (00)
        $display("AND Result: ");
        f1 = 1; f0 = 0;
        #10; // Esperar un tiempo para la simulación

        #1000;

        // Finalizar la simulación
        $finish;
    end
    initial $monitor("En %2t, Carry = %b, Zero = %b, Negative = %b, Overflow = %b | %b%b%b%b %b%b%b%b %b%b%b%b %b%b%b%b %b%b%b%b %b%b%b%b %b%b%b%b %b%b%b%b",
        $time,Overflow, Zero, Negative, Overflow,
        S[31], S[30], S[29], S[28], S[27], S[26], S[25], S[24], S[23], S[22],
        S[21], S[20], S[19], S[18], S[17], S[16], S[15], S[14], S[13], S[12],
        S[11], S[10], S[9], S[8], S[7], S[6], S[5], S[4], S[3], S[2], S[1], S[0]
    );

endmodule

