//Initialize stack
@256
D=A
@SP
M=D

// call Sys.init 0
// push Sys.init$6733d5e8ae144dd3b1d516afcceb642a
@Sys.init$6733d5e8ae144dd3b1d516afcceb642a
D=A
@SP
A=M
M=D //*SP=Sys.init$6733d5e8ae144dd3b1d516afcceb642a
@SP
M=M+1 //SP++
// push LCL
@LCL
D=M
@SP
A=M
M=D //*SP=LCL
@SP
M=M+1 //SP++
// push ARG
@ARG
D=M
@SP
A=M
M=D //*SP=ARG
@SP
M=M+1 //SP++
// push THIS
@THIS
D=M
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++
// push THAT
@THAT
D=M
@SP
A=M
M=D //*SP=THAT
@SP
M=M+1 //SP++
// ARG=SP-nArgs-5
@0
D=A
@SP
D=M-D //D=SP-nArgs
@5
D=D-A //D=SP-nArgs-5
@ARG
M=D
// LCL=SP
@SP
D=M
@LCL
M=D
// goto Sys.init
@Sys.init
0;JMP
(Sys.init$6733d5e8ae144dd3b1d516afcceb642a)

// function Sys.init 0
(Sys.init)

// push constant 4
@4
D=A //D=4
@SP
A=M
M=D //*SP=4
@SP
M=M+1 //SP++


// call Main.fibonacci 1
// push Main.fibonacci$da689ed5ea5f49ab929afc0870250fc4
@Main.fibonacci$da689ed5ea5f49ab929afc0870250fc4
D=A
@SP
A=M
M=D //*SP=Main.fibonacci$da689ed5ea5f49ab929afc0870250fc4
@SP
M=M+1 //SP++
// push LCL
@LCL
D=M
@SP
A=M
M=D //*SP=LCL
@SP
M=M+1 //SP++
// push ARG
@ARG
D=M
@SP
A=M
M=D //*SP=ARG
@SP
M=M+1 //SP++
// push THIS
@THIS
D=M
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++
// push THAT
@THAT
D=M
@SP
A=M
M=D //*SP=THAT
@SP
M=M+1 //SP++
// ARG=SP-nArgs-5
@1
D=A
@SP
D=M-D //D=SP-nArgs
@5
D=D-A //D=SP-nArgs-5
@ARG
M=D
// LCL=SP
@SP
D=M
@LCL
M=D
// goto Main.fibonacci
@Main.fibonacci
0;JMP
(Main.fibonacci$da689ed5ea5f49ab929afc0870250fc4)



// label Sys.init$WHILE
(Sys.init$WHILE)

// goto Sys.init$WHILE
@Sys.init$WHILE
0;JMP

// function Main.fibonacci 0
(Main.fibonacci)

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

// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@LT_35791851b192440296a775b63f836fc1
D;JLT
@SP
A=M
M=0
@END_35791851b192440296a775b63f836fc1
0;JMP
(LT_35791851b192440296a775b63f836fc1)
@SP
A=M
M=-1
(END_35791851b192440296a775b63f836fc1)
@SP
M=M+1

// if-goto Main.fibonacci$IF_TRUE
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Main.fibonacci$IF_TRUE
D;JNE

// goto Main.fibonacci$IF_FALSE
@Main.fibonacci$IF_FALSE
0;JMP

// label Main.fibonacci$IF_TRUE
(Main.fibonacci$IF_TRUE)

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

// label Main.fibonacci$IF_FALSE
(Main.fibonacci$IF_FALSE)

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


// call Main.fibonacci 1
// push Main.fibonacci$f01de562810f483aaa34c21f78029fb9
@Main.fibonacci$f01de562810f483aaa34c21f78029fb9
D=A
@SP
A=M
M=D //*SP=Main.fibonacci$f01de562810f483aaa34c21f78029fb9
@SP
M=M+1 //SP++
// push LCL
@LCL
D=M
@SP
A=M
M=D //*SP=LCL
@SP
M=M+1 //SP++
// push ARG
@ARG
D=M
@SP
A=M
M=D //*SP=ARG
@SP
M=M+1 //SP++
// push THIS
@THIS
D=M
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++
// push THAT
@THAT
D=M
@SP
A=M
M=D //*SP=THAT
@SP
M=M+1 //SP++
// ARG=SP-nArgs-5
@1
D=A
@SP
D=M-D //D=SP-nArgs
@5
D=D-A //D=SP-nArgs-5
@ARG
M=D
// LCL=SP
@SP
D=M
@LCL
M=D
// goto Main.fibonacci
@Main.fibonacci
0;JMP
(Main.fibonacci$f01de562810f483aaa34c21f78029fb9)



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


// call Main.fibonacci 1
// push Main.fibonacci$6ca47ef3d443450db239e0bb29df6dcc
@Main.fibonacci$6ca47ef3d443450db239e0bb29df6dcc
D=A
@SP
A=M
M=D //*SP=Main.fibonacci$6ca47ef3d443450db239e0bb29df6dcc
@SP
M=M+1 //SP++
// push LCL
@LCL
D=M
@SP
A=M
M=D //*SP=LCL
@SP
M=M+1 //SP++
// push ARG
@ARG
D=M
@SP
A=M
M=D //*SP=ARG
@SP
M=M+1 //SP++
// push THIS
@THIS
D=M
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++
// push THAT
@THAT
D=M
@SP
A=M
M=D //*SP=THAT
@SP
M=M+1 //SP++
// ARG=SP-nArgs-5
@1
D=A
@SP
D=M-D //D=SP-nArgs
@5
D=D-A //D=SP-nArgs-5
@ARG
M=D
// LCL=SP
@SP
D=M
@LCL
M=D
// goto Main.fibonacci
@Main.fibonacci
0;JMP
(Main.fibonacci$6ca47ef3d443450db239e0bb29df6dcc)



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

