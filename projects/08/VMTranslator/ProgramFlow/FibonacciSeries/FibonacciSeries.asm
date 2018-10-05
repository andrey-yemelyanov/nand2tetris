// push argument 1
@1
D=A //D=1
@ARG
A=D+M //A=ARG+1, M=*(ARG+1)
D=M //D=*(ARG+1)
@SP
A=M
M=D //*SP=*(ARG+1)
@SP
M=M+1 //SP++

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// pop that 0
@0
D=A //D=0
@THAT
D=D+M //D=THAT+0
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THAT+0
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
@SP
M=M+1 //SP++

// pop that 1
@1
D=A //D=1
@THAT
D=D+M //D=THAT+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THAT+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push argument 0
@0
D=A //D=0
@ARG
A=D+M //A=ARG+0, M=*(ARG+0)
D=M //D=*(ARG+0)
@SP
A=M
M=D //*SP=*(ARG+0)
@SP
M=M+1 //SP++

// push constant 2
@2
D=A //D=2
@SP
A=M
M=D //*SP=2
@SP
M=M+1 //SP++

// sub
@SP
M=M-1 //SP--
A=M
D=M
@SP
M=M-1 //SP--
A=M
M=M-D //M=x-y
@SP
M=M+1 //SP++

// pop argument 0
@0
D=A //D=0
@ARG
D=D+M //D=ARG+0
@R13 //use general purpose register for temp storage
M=D //RAM[13]=ARG+0
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// label no_function$MAIN_LOOP_START
(no_function$MAIN_LOOP_START)

// push argument 0
@0
D=A //D=0
@ARG
A=D+M //A=ARG+0, M=*(ARG+0)
D=M //D=*(ARG+0)
@SP
A=M
M=D //*SP=*(ARG+0)
@SP
M=M+1 //SP++

// if-goto no_function$COMPUTE_ELEMENT
@SP
M=M-1 // SP--
@SP
A=M
D=M
@no_function$COMPUTE_ELEMENT
D;JNE

// goto no_function$END_PROGRAM
@no_function$END_PROGRAM
0;JMP

// label no_function$COMPUTE_ELEMENT
(no_function$COMPUTE_ELEMENT)

// push that 0
@0
D=A //D=0
@THAT
A=D+M //A=THAT+0, M=*(THAT+0)
D=M //D=*(THAT+0)
@SP
A=M
M=D //*SP=*(THAT+0)
@SP
M=M+1 //SP++

// push that 1
@1
D=A //D=1
@THAT
A=D+M //A=THAT+1, M=*(THAT+1)
D=M //D=*(THAT+1)
@SP
A=M
M=D //*SP=*(THAT+1)
@SP
M=M+1 //SP++

// add
@SP
M=M-1 //SP--
A=M
D=M
@SP
M=M-1 //SP--
A=M
M=D+M //M=x+y
@SP
M=M+1 //SP++

// pop that 2
@2
D=A //D=2
@THAT
D=D+M //D=THAT+2
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THAT+2
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push pointer 1
@THAT
D=M //D=THAT
@SP
A=M
M=D //*SP=THAT
@SP
M=M+1 //SP++

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
@SP
M=M+1 //SP++

// add
@SP
M=M-1 //SP--
A=M
D=M
@SP
M=M-1 //SP--
A=M
M=D+M //M=x+y
@SP
M=M+1 //SP++

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push argument 0
@0
D=A //D=0
@ARG
A=D+M //A=ARG+0, M=*(ARG+0)
D=M //D=*(ARG+0)
@SP
A=M
M=D //*SP=*(ARG+0)
@SP
M=M+1 //SP++

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
@SP
M=M+1 //SP++

// sub
@SP
M=M-1 //SP--
A=M
D=M
@SP
M=M-1 //SP--
A=M
M=M-D //M=x-y
@SP
M=M+1 //SP++

// pop argument 0
@0
D=A //D=0
@ARG
D=D+M //D=ARG+0
@R13 //use general purpose register for temp storage
M=D //RAM[13]=ARG+0
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// goto no_function$MAIN_LOOP_START
@no_function$MAIN_LOOP_START
0;JMP

// label no_function$END_PROGRAM
(no_function$END_PROGRAM)

