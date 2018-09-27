  @R0
  
  
  D=M
  @END
  
  D;JLE
  @counter
  M=D
  
  
  
  @SCREEN
        D=A
    @x
  M=D

  
  (LOOP)
  @x
  
  
  A=M
  M=-1
  @x
  D=M
  @32
  D=D+A
  @x
  M=D
  @counter
  MD=M-1
  @LOOP
  D;JGT
(END)
  @END
  0;JMP