// function SimpleFunction.test 2
(SimpleFunction.test)
// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++
// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// push local 1
@1
D=A //D=1
@LCL
A=D+M //A=LCL+1, M=*(LCL+1)
D=M //D=*(LCL+1)
@SP
A=M
M=D //*SP=*(LCL+1)
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

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

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

// return
// frame=LCL
@LCL
D=M
@R13
M=D //R[13]=LCL
// retAddr=*(frame-5)
@R13
D=M //D=R[13]
@5
D=D-A //D=R[13]-5 -> return address
A=D
D=M //D=return address
@R14
M=D //R[14]=return address
// *ARG=pop
@SP
M=M-1
A=M
D=M //D=*SP
@ARG
A=M
M=D //*ARG=*SP
// SP=ARG+1
@ARG
D=M+1 //D=ARG+1
@SP
M=D //SP=ARG+1
// THAT=*(frame-1)
@R13
D=M //D=R[13]
@1
D=D-A //D=R[13]-1
A=D
D=M //D=*(frame-1)
@THAT
M=D //THAT=*(frame-1)
// THIS=*(frame-2)
@R13
D=M //D=R[13]
@2
D=D-A //D=R[13]-2
A=D
D=M //D=*(frame-2)
@THIS
M=D //THIS=*(frame-2)
// ARG=*(frame-3)
@R13
D=M //D=R[13]
@3
D=D-A //D=R[13]-3
A=D
D=M //D=*(frame-3)
@ARG
M=D //ARG=*(frame-3)
// LCL=*(frame-4)
@R13
D=M //D=R[13]
@4
D=D-A //D=R[13]-4
A=D
D=M //D=*(frame-4)
@LCL
M=D //LCL=*(frame-4)
// goto return address
@R14
A=M
0;JMP

