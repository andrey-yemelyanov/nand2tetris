//Initialize stack
@256
D=A
@SP
M=D

// call Sys.init 0
// push Sys.init$6e5f68163cb84269a5143ede9887ae35
@Sys.init$6e5f68163cb84269a5143ede9887ae35
D=A
@SP
A=M
M=D //*SP=Sys.init$6e5f68163cb84269a5143ede9887ae35
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
(Sys.init$6e5f68163cb84269a5143ede9887ae35)

// function Sys.init 0
(Sys.init)

// push constant 4000
@4000
D=A //D=4000
@SP
A=M
M=D //*SP=4000
@SP
M=M+1 //SP++

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push constant 5000
@5000
D=A //D=5000
@SP
A=M
M=D //*SP=5000
@SP
M=M+1 //SP++

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP


// call Sys.main 0
// push Sys.main$74e9df66855749a8a2d8a64081fdcc3b
@Sys.main$74e9df66855749a8a2d8a64081fdcc3b
D=A
@SP
A=M
M=D //*SP=Sys.main$74e9df66855749a8a2d8a64081fdcc3b
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
// goto Sys.main
@Sys.main
0;JMP
(Sys.main$74e9df66855749a8a2d8a64081fdcc3b)



// pop temp 1
@5
D=A //D=5
@1
D=D+A //D=5+1
@R13
M=D //RAM[13]=5+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M
M=D //*(5+1)=*SP

// label Sys.init$LOOP
(Sys.init$LOOP)

// goto Sys.init$LOOP
@Sys.init$LOOP
0;JMP

// function Sys.main 5
(Sys.main)
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
// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// push constant 4001
@4001
D=A //D=4001
@SP
A=M
M=D //*SP=4001
@SP
M=M+1 //SP++

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push constant 5001
@5001
D=A //D=5001
@SP
A=M
M=D //*SP=5001
@SP
M=M+1 //SP++

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push constant 200
@200
D=A //D=200
@SP
A=M
M=D //*SP=200
@SP
M=M+1 //SP++

// pop local 1
@1
D=A //D=1
@LCL
D=D+M //D=LCL+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push constant 40
@40
D=A //D=40
@SP
A=M
M=D //*SP=40
@SP
M=M+1 //SP++

// pop local 2
@2
D=A //D=2
@LCL
D=D+M //D=LCL+2
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+2
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// pop local 3
@3
D=A //D=3
@LCL
D=D+M //D=LCL+3
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+3
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push constant 123
@123
D=A //D=123
@SP
A=M
M=D //*SP=123
@SP
M=M+1 //SP++


// call Sys.add12 1
// push Sys.add12$618ef2f1cc2a45899583b2bbdae97eae
@Sys.add12$618ef2f1cc2a45899583b2bbdae97eae
D=A
@SP
A=M
M=D //*SP=Sys.add12$618ef2f1cc2a45899583b2bbdae97eae
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
// goto Sys.add12
@Sys.add12
0;JMP
(Sys.add12$618ef2f1cc2a45899583b2bbdae97eae)



// pop temp 0
@5
D=A //D=5
@0
D=D+A //D=5+0
@R13
M=D //RAM[13]=5+0
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M
M=D //*(5+0)=*SP

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

// push local 2
@2
D=A //D=2
@LCL
A=D+M //A=LCL+2, M=*(LCL+2)
D=M //D=*(LCL+2)
@SP
A=M
M=D //*SP=*(LCL+2)
@SP
M=M+1 //SP++

// push local 3
@3
D=A //D=3
@LCL
A=D+M //A=LCL+3, M=*(LCL+3)
D=M //D=*(LCL+3)
@SP
A=M
M=D //*SP=*(LCL+3)
@SP
M=M+1 //SP++

// push local 4
@4
D=A //D=4
@LCL
A=D+M //A=LCL+4, M=*(LCL+4)
D=M //D=*(LCL+4)
@SP
A=M
M=D //*SP=*(LCL+4)
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

// function Sys.add12 0
(Sys.add12)

// push constant 4002
@4002
D=A //D=4002
@SP
A=M
M=D //*SP=4002
@SP
M=M+1 //SP++

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push constant 5002
@5002
D=A //D=5002
@SP
A=M
M=D //*SP=5002
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

