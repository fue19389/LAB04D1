//Universidad del Valle de Guatemala
//Gerardo Fuentes
//19389

//POS GATE LEVEL MODELLING: ALARMAS

module posSTL(input wire A, B, C, output wire Y1);

  wire c1, c2, c3, c4, c5, nelA, nelB, nelC;

  not (nelC, C);
  not (nelB, B);
  not (nelA, A);
  or  (c1, A, B, C);
  or  (c2, A, B, nelC);
  or  (c3, A, nelB, C);
  or  (c4, A, nelB, nelC);
  or  (c5, nelA, B, nelC);
  and (Y1, c1, c2, c3, c4, c5);

endmodule

//SOP GATE LEVEL MODELLING: ALARMAS

module sopSTL(input wire A, B, C, output wire Y2);

  wire w1, w2, w3, nB, nC;

  not (nB, B);
  not (nC, C);
  and (w1, A, nB, nC);
  and (w2, A, B, nC);
  and (w3, A, B, C);
  or  (Y2, w1, w2, w3);

endmodule

//MINIMIZADA GATE LEVEL MODELLING: ALARMAS

module mmzSTL(input wire A, B, C, output wire Y3);

  wire x1, x2, noC;

  not (noC, C);
  and (x1, A, noC);
  and (x2, A, B);
  or  (Y3, x1, x2);

endmodule

//POS BEHAVIORAL MODELLING: ALARMAS

module posBVL(input wire A, B, C, output wire Y4);

  assign Y4 = (A | B | C) & (A | B | ~C) & (A | ~B | C) & (A | ~B | ~C) & (~A | B | ~C);

endmodule

//SOP BEHAVIORAL MODELLING: ALARMAS

module sopBVL(input wire A, B, C, output wire Y5);

  assign Y5 = (A & ~B & ~C) | (A & B & ~C) | (A & B & C);

endmodule

//MINIMIZADA BEHAVIORAL MODELLING: ALARMAS

module mmzBVL(input wire A, B, C, output wire Y6);

  assign Y6 = (A & ~C) | (A & B);

endmodule
