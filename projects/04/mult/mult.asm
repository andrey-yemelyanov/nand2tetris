// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// i=1
// p=0
// LOOP:
//  if i>R1 goto STOP
//  p = p+R0
//  i=i+1
//  goto LOOP
// STOP:
//  R2=p

@i
M=1 // i=1
@p
M=0 // p=0

(LOOP)
  @i
  D=M
  @R1
  D=D-M
  @STOP
  D;JGT // if i > R1 goto STOP

  @p
  D=M
  @R0
  D=D+M
  @p
  M=D // p=p+R0

  @i
  M=M+1 // i=i+1
  @LOOP
  0;JMP

(STOP)
  @p
  D=M
  @R2
  M=D // RAM[2]=p 

(END)
  @END
  0;JMP
