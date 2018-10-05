// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// pop local 0
@0
D=A //D=0
@LCL
D=D+M //D=LCL+0
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+0
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// label no_function$LOOP_START
(no_function$LOOP_START)

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

// push local 0
@0
D=A //D=0
@LCL
A=D+M //A=LCL+0, M=*(LCL+0)
D=M //D=*(LCL+0)
@SP
A=M
M=D //*SP=*(LCL+0)
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

// pop local 0
@0
D=A //D=0
@LCL
D=D+M //D=LCL+0
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+0
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

// if-goto no_function$LOOP_START
@SP
M=M-1 // SP--
@SP
A=M
D=M
@no_function$LOOP_START
D;JNE

// push local 0
@0
D=A //D=0
@LCL
A=D+M //A=LCL+0, M=*(LCL+0)
D=M //D=*(LCL+0)
@SP
A=M
M=D //*SP=*(LCL+0)
@SP
M=M+1 //SP++

