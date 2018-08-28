// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

@8192
D=A
@n
M=D // n = 8192

(OUTERLOOP)
  @SCREEN
  D=A
  @addr
  M=D // addr = 16384 (base address of screen memory map)
  
  @i
  M=0 // i = 0
  
  @KBD
  D=M
  @BLACKLOOP
  D;JGT // if RAM[KBD] > 0 goto BLACKLOOP
  
  (WHITELOOP)
    @i
    D=M
    @n
    D=D-M
    @OUTERLOOP
    D;JEQ // if i == n goto OUTERLOOP
    
    @addr
    A=M
    M=0 // RAM[addr] = 0
    
    @addr
    M=M+1 // addr = addr + 1
    
    @i
    M=M+1 // i = i + 1
    
    @WHITELOOP
    0;JMP
    
  (BLACKLOOP)
    @i
    D=M
    @n
    D=D-M
    @OUTERLOOP
    D;JEQ // if i == n goto OUTERLOOP
    
    @addr
    A=M
    M=-1 // RAM[addr] = 111111111111111
    
    @addr
    M=M+1 // addr = addr + 1
    
    @i
    M=M+1 // i = i + 1
    
    @BLACKLOOP
    0;JMP
  
