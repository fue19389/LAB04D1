//Universidad del Valle de Guatemala
//Gerardo Fuentes
//19389

//Ejercicio 1.1

module ejer1(input wire A, B, C, output wire Y1);

  assign Y1 = (~A & ~C) | (A & C) | (A & ~B);

endmodule

//Ejercicio 1.2

module ejer2(input wire A, B, C, output wire Y2);

  not (Y2, B);

endmodule

//Ejercicio 1.3

module ejer3(input wire A, B, C, D, output wire Y3);

  assign Y3 = (~A & ~B & ~C & ~D) | (~A & ~B & C & D) | (~A & B & ~C & D) | (~A & B & C & ~D) | (A & B & ~C & ~D) | (A & B & C & D) | (A & ~B & ~C & D) | (A & ~B & C & ~D);

endmodule

//Ejercicio 1.4

module ejer4(input wire A, B, C, D, output wire Y4);

  assign Y4 = (B & D) | (A & C) | (~B & ~D) | (A & B);

endmodule

//Ejercicio 2.1

module ejer5(input wire A, B, C, D, output wire Y5);

  assign Y5 = (A & ~C) | (A & ~B) | (A & ~D) | (~B & ~C & ~D);

endmodule

//Ejercicio 2.2

module ejer6(input wire A, B, C, output wire Y6);

  wire nelB;

  not (nelB, B);
  or (Y6, nelB, C);

endmodule

//Ejercicio 2.3

module ejer7(input wire A, B, C, D, output wire Y7);

  wire w1, w2, nelC;

  not (nelC, C);
  and (w1, A, D);
  and (w2, nelC, D);
  or  (Y7, B, w1, w2);

endmodule

//Ejercicio 2.4

module ejer8(input wire A, B, C, output wire Y8);

  wire c1, nA, nC;
  not (nA, A);
  not (nC, C);
  and (c1, nA, nC);
  or  (Y8, c1, B);

endmodule
