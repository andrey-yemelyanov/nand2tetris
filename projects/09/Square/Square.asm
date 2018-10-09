//Initialize stack
@256
D=A
@SP
M=D

// call Sys.init 0
// push Sys.init$abf9f2fa1ac8472e9be8990ff7dcff55
@Sys.init$abf9f2fa1ac8472e9be8990ff7dcff55
D=A
@SP
A=M
M=D //*SP=Sys.init$abf9f2fa1ac8472e9be8990ff7dcff55
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
(Sys.init$abf9f2fa1ac8472e9be8990ff7dcff55)

// function Array.new 0
(Array.new)

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_d40e1d84744a4184b0a288c53a1ecfd1
D;JGT
@SP
A=M
M=0
@END_d40e1d84744a4184b0a288c53a1ecfd1
0;JMP
(GT_d40e1d84744a4184b0a288c53a1ecfd1)
@SP
A=M
M=-1
(END_d40e1d84744a4184b0a288c53a1ecfd1)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Array.new$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Array.new$IF_TRUE0
D;JNE

// goto Array.new$IF_FALSE0
@Array.new$IF_FALSE0
0;JMP

// label Array.new$IF_TRUE0
(Array.new$IF_TRUE0)

// push constant 2
@2
D=A //D=2
@SP
A=M
M=D //*SP=2
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$6915aa9df1684691bc50098ec1ca8aea
@Sys.error$6915aa9df1684691bc50098ec1ca8aea
D=A
@SP
A=M
M=D //*SP=Sys.error$6915aa9df1684691bc50098ec1ca8aea
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$6915aa9df1684691bc50098ec1ca8aea)



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

// label Array.new$IF_FALSE0
(Array.new$IF_FALSE0)

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


// call Memory.alloc 1
// push Memory.alloc$57c28017aee34f96a4aea933181978d7
@Memory.alloc$57c28017aee34f96a4aea933181978d7
D=A
@SP
A=M
M=D //*SP=Memory.alloc$57c28017aee34f96a4aea933181978d7
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
// goto Memory.alloc
@Memory.alloc
0;JMP
(Memory.alloc$57c28017aee34f96a4aea933181978d7)



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

// function Array.dispose 0
(Array.dispose)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push pointer 0
@THIS
D=M //D=THIS
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++


// call Memory.deAlloc 1
// push Memory.deAlloc$7606dc8aea6a41ca97e01d242c0b4798
@Memory.deAlloc$7606dc8aea6a41ca97e01d242c0b4798
D=A
@SP
A=M
M=D //*SP=Memory.deAlloc$7606dc8aea6a41ca97e01d242c0b4798
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
// goto Memory.deAlloc
@Memory.deAlloc
0;JMP
(Memory.deAlloc$7606dc8aea6a41ca97e01d242c0b4798)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Keyboard.init 0
(Keyboard.init)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Keyboard.keyPressed 0
(Keyboard.keyPressed)

// push constant 24576
@24576
D=A //D=24576
@SP
A=M
M=D //*SP=24576
@SP
M=M+1 //SP++


// call Memory.peek 1
// push Memory.peek$de122504442b4718bd863eaafddc8c67
@Memory.peek$de122504442b4718bd863eaafddc8c67
D=A
@SP
A=M
M=D //*SP=Memory.peek$de122504442b4718bd863eaafddc8c67
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
// goto Memory.peek
@Memory.peek
0;JMP
(Memory.peek$de122504442b4718bd863eaafddc8c67)



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

// function Keyboard.readChar 2
(Keyboard.readChar)
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


// call Output.printChar 1
// push Output.printChar$97a23c9940104283b1cf8c5988fc02f7
@Output.printChar$97a23c9940104283b1cf8c5988fc02f7
D=A
@SP
A=M
M=D //*SP=Output.printChar$97a23c9940104283b1cf8c5988fc02f7
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
// goto Output.printChar
@Output.printChar
0;JMP
(Output.printChar$97a23c9940104283b1cf8c5988fc02f7)



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

// label Keyboard.readChar$WHILE_EXP0
(Keyboard.readChar$WHILE_EXP0)

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_a8be71a65a6f4accb18a34ad10d50d03
D;JEQ
@SP
A=M
M=0
@END_a8be71a65a6f4accb18a34ad10d50d03
0;JMP
(EQUAL_a8be71a65a6f4accb18a34ad10d50d03)
@SP
A=M
M=-1
(END_a8be71a65a6f4accb18a34ad10d50d03)
@SP
M=M+1

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_505ab47206d3491d83976cbf549c6fc5
D;JGT
@SP
A=M
M=0
@END_505ab47206d3491d83976cbf549c6fc5
0;JMP
(GT_505ab47206d3491d83976cbf549c6fc5)
@SP
A=M
M=-1
(END_505ab47206d3491d83976cbf549c6fc5)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Keyboard.readChar$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Keyboard.readChar$WHILE_END0
D;JNE


// call Keyboard.keyPressed 0
// push Keyboard.keyPressed$c5237c28e9c04c59b1323a8309cbd453
@Keyboard.keyPressed$c5237c28e9c04c59b1323a8309cbd453
D=A
@SP
A=M
M=D //*SP=Keyboard.keyPressed$c5237c28e9c04c59b1323a8309cbd453
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
// goto Keyboard.keyPressed
@Keyboard.keyPressed
0;JMP
(Keyboard.keyPressed$c5237c28e9c04c59b1323a8309cbd453)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_3ec90127497e40acac6343988e07674d
D;JGT
@SP
A=M
M=0
@END_3ec90127497e40acac6343988e07674d
0;JMP
(GT_3ec90127497e40acac6343988e07674d)
@SP
A=M
M=-1
(END_3ec90127497e40acac6343988e07674d)
@SP
M=M+1

// if-goto Keyboard.readChar$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Keyboard.readChar$IF_TRUE0
D;JNE

// goto Keyboard.readChar$IF_FALSE0
@Keyboard.readChar$IF_FALSE0
0;JMP

// label Keyboard.readChar$IF_TRUE0
(Keyboard.readChar$IF_TRUE0)

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

// label Keyboard.readChar$IF_FALSE0
(Keyboard.readChar$IF_FALSE0)

// goto Keyboard.readChar$WHILE_EXP0
@Keyboard.readChar$WHILE_EXP0
0;JMP

// label Keyboard.readChar$WHILE_END0
(Keyboard.readChar$WHILE_END0)


// call String.backSpace 0
// push String.backSpace$e3c67fbabd5b406687cafc79856e3c6c
@String.backSpace$e3c67fbabd5b406687cafc79856e3c6c
D=A
@SP
A=M
M=D //*SP=String.backSpace$e3c67fbabd5b406687cafc79856e3c6c
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
// goto String.backSpace
@String.backSpace
0;JMP
(String.backSpace$e3c67fbabd5b406687cafc79856e3c6c)




// call Output.printChar 1
// push Output.printChar$bafaac1b6b6340a19eb40bc08f76f957
@Output.printChar$bafaac1b6b6340a19eb40bc08f76f957
D=A
@SP
A=M
M=D //*SP=Output.printChar$bafaac1b6b6340a19eb40bc08f76f957
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
// goto Output.printChar
@Output.printChar
0;JMP
(Output.printChar$bafaac1b6b6340a19eb40bc08f76f957)



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


// call Output.printChar 1
// push Output.printChar$68a8ed98d5b34c65a1d6d45da39b5dfa
@Output.printChar$68a8ed98d5b34c65a1d6d45da39b5dfa
D=A
@SP
A=M
M=D //*SP=Output.printChar$68a8ed98d5b34c65a1d6d45da39b5dfa
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
// goto Output.printChar
@Output.printChar
0;JMP
(Output.printChar$68a8ed98d5b34c65a1d6d45da39b5dfa)



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

// function Keyboard.readLine 5
(Keyboard.readLine)
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

// push constant 80
@80
D=A //D=80
@SP
A=M
M=D //*SP=80
@SP
M=M+1 //SP++


// call String.new 1
// push String.new$ff507c8022074b67b94fb2b447c77ca1
@String.new$ff507c8022074b67b94fb2b447c77ca1
D=A
@SP
A=M
M=D //*SP=String.new$ff507c8022074b67b94fb2b447c77ca1
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
// goto String.new
@String.new
0;JMP
(String.new$ff507c8022074b67b94fb2b447c77ca1)



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


// call Output.printString 1
// push Output.printString$3ac58de1d10847aaa0ba7177a4a8d41c
@Output.printString$3ac58de1d10847aaa0ba7177a4a8d41c
D=A
@SP
A=M
M=D //*SP=Output.printString$3ac58de1d10847aaa0ba7177a4a8d41c
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
// goto Output.printString
@Output.printString
0;JMP
(Output.printString$3ac58de1d10847aaa0ba7177a4a8d41c)



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


// call String.newLine 0
// push String.newLine$1f0792860bf14a9dbaabd592b747fa81
@String.newLine$1f0792860bf14a9dbaabd592b747fa81
D=A
@SP
A=M
M=D //*SP=String.newLine$1f0792860bf14a9dbaabd592b747fa81
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
// goto String.newLine
@String.newLine
0;JMP
(String.newLine$1f0792860bf14a9dbaabd592b747fa81)



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


// call String.backSpace 0
// push String.backSpace$bceb5ffed4bc4535b68d79d3df2b1c7d
@String.backSpace$bceb5ffed4bc4535b68d79d3df2b1c7d
D=A
@SP
A=M
M=D //*SP=String.backSpace$bceb5ffed4bc4535b68d79d3df2b1c7d
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
// goto String.backSpace
@String.backSpace
0;JMP
(String.backSpace$bceb5ffed4bc4535b68d79d3df2b1c7d)



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

// label Keyboard.readLine$WHILE_EXP0
(Keyboard.readLine$WHILE_EXP0)

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

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Keyboard.readLine$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Keyboard.readLine$WHILE_END0
D;JNE


// call Keyboard.readChar 0
// push Keyboard.readChar$d3a469dca1db43f4a613afaf11a0f2d4
@Keyboard.readChar$d3a469dca1db43f4a613afaf11a0f2d4
D=A
@SP
A=M
M=D //*SP=Keyboard.readChar$d3a469dca1db43f4a613afaf11a0f2d4
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
// goto Keyboard.readChar
@Keyboard.readChar
0;JMP
(Keyboard.readChar$d3a469dca1db43f4a613afaf11a0f2d4)



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

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_c4ff685790b94f098dcb3091e526229a
D;JEQ
@SP
A=M
M=0
@END_c4ff685790b94f098dcb3091e526229a
0;JMP
(EQUAL_c4ff685790b94f098dcb3091e526229a)
@SP
A=M
M=-1
(END_c4ff685790b94f098dcb3091e526229a)
@SP
M=M+1

// pop local 4
@4
D=A //D=4
@LCL
D=D+M //D=LCL+4
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+4
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

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

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Keyboard.readLine$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Keyboard.readLine$IF_TRUE0
D;JNE

// goto Keyboard.readLine$IF_FALSE0
@Keyboard.readLine$IF_FALSE0
0;JMP

// label Keyboard.readLine$IF_TRUE0
(Keyboard.readLine$IF_TRUE0)

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

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_7e5d66350aae490db0406696f20e5a43
D;JEQ
@SP
A=M
M=0
@END_7e5d66350aae490db0406696f20e5a43
0;JMP
(EQUAL_7e5d66350aae490db0406696f20e5a43)
@SP
A=M
M=-1
(END_7e5d66350aae490db0406696f20e5a43)
@SP
M=M+1

// if-goto Keyboard.readLine$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Keyboard.readLine$IF_TRUE1
D;JNE

// goto Keyboard.readLine$IF_FALSE1
@Keyboard.readLine$IF_FALSE1
0;JMP

// label Keyboard.readLine$IF_TRUE1
(Keyboard.readLine$IF_TRUE1)

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


// call String.eraseLastChar 1
// push String.eraseLastChar$125ae9dbfe7d4434ba0332965e9e370b
@String.eraseLastChar$125ae9dbfe7d4434ba0332965e9e370b
D=A
@SP
A=M
M=D //*SP=String.eraseLastChar$125ae9dbfe7d4434ba0332965e9e370b
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
// goto String.eraseLastChar
@String.eraseLastChar
0;JMP
(String.eraseLastChar$125ae9dbfe7d4434ba0332965e9e370b)



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

// goto Keyboard.readLine$IF_END1
@Keyboard.readLine$IF_END1
0;JMP

// label Keyboard.readLine$IF_FALSE1
(Keyboard.readLine$IF_FALSE1)

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


// call String.appendChar 2
// push String.appendChar$6d5590ed524c431db9f32f6dcafc5bc2
@String.appendChar$6d5590ed524c431db9f32f6dcafc5bc2
D=A
@SP
A=M
M=D //*SP=String.appendChar$6d5590ed524c431db9f32f6dcafc5bc2
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
@2
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
// goto String.appendChar
@String.appendChar
0;JMP
(String.appendChar$6d5590ed524c431db9f32f6dcafc5bc2)



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

// label Keyboard.readLine$IF_END1
(Keyboard.readLine$IF_END1)

// label Keyboard.readLine$IF_FALSE0
(Keyboard.readLine$IF_FALSE0)

// goto Keyboard.readLine$WHILE_EXP0
@Keyboard.readLine$WHILE_EXP0
0;JMP

// label Keyboard.readLine$WHILE_END0
(Keyboard.readLine$WHILE_END0)

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

// function Keyboard.readInt 2
(Keyboard.readInt)
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


// call Keyboard.readLine 1
// push Keyboard.readLine$645a7f3170124c2a9d26a465f9806d59
@Keyboard.readLine$645a7f3170124c2a9d26a465f9806d59
D=A
@SP
A=M
M=D //*SP=Keyboard.readLine$645a7f3170124c2a9d26a465f9806d59
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
// goto Keyboard.readLine
@Keyboard.readLine
0;JMP
(Keyboard.readLine$645a7f3170124c2a9d26a465f9806d59)



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


// call String.intValue 1
// push String.intValue$6208fb7f1f084eeba81d03998bb4681e
@String.intValue$6208fb7f1f084eeba81d03998bb4681e
D=A
@SP
A=M
M=D //*SP=String.intValue$6208fb7f1f084eeba81d03998bb4681e
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
// goto String.intValue
@String.intValue
0;JMP
(String.intValue$6208fb7f1f084eeba81d03998bb4681e)



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


// call String.dispose 1
// push String.dispose$136005f6905641c3aedff0670cc8938c
@String.dispose$136005f6905641c3aedff0670cc8938c
D=A
@SP
A=M
M=D //*SP=String.dispose$136005f6905641c3aedff0670cc8938c
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
// goto String.dispose
@String.dispose
0;JMP
(String.dispose$136005f6905641c3aedff0670cc8938c)



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

// function Main.main 1
(Main.main)
// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++


// call SquareGame.new 0
// push SquareGame.new$45f5c865c5c645dea47dfdd711709f84
@SquareGame.new$45f5c865c5c645dea47dfdd711709f84
D=A
@SP
A=M
M=D //*SP=SquareGame.new$45f5c865c5c645dea47dfdd711709f84
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
// goto SquareGame.new
@SquareGame.new
0;JMP
(SquareGame.new$45f5c865c5c645dea47dfdd711709f84)



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


// call SquareGame.run 1
// push SquareGame.run$7f9f4897cd6c4f13b7bf31c1cde782a9
@SquareGame.run$7f9f4897cd6c4f13b7bf31c1cde782a9
D=A
@SP
A=M
M=D //*SP=SquareGame.run$7f9f4897cd6c4f13b7bf31c1cde782a9
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
// goto SquareGame.run
@SquareGame.run
0;JMP
(SquareGame.run$7f9f4897cd6c4f13b7bf31c1cde782a9)



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


// call SquareGame.dispose 1
// push SquareGame.dispose$fbe6de75e7e34c91a15c0faf76ce72d4
@SquareGame.dispose$fbe6de75e7e34c91a15c0faf76ce72d4
D=A
@SP
A=M
M=D //*SP=SquareGame.dispose$fbe6de75e7e34c91a15c0faf76ce72d4
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
// goto SquareGame.dispose
@SquareGame.dispose
0;JMP
(SquareGame.dispose$fbe6de75e7e34c91a15c0faf76ce72d4)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Math.init 1
(Math.init)
// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// push constant 16
@16
D=A //D=16
@SP
A=M
M=D //*SP=16
@SP
M=M+1 //SP++


// call Array.new 1
// push Array.new$7f9156ada15c4c87a858520dc2ca33a9
@Array.new$7f9156ada15c4c87a858520dc2ca33a9
D=A
@SP
A=M
M=D //*SP=Array.new$7f9156ada15c4c87a858520dc2ca33a9
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
// goto Array.new
@Array.new
0;JMP
(Array.new$7f9156ada15c4c87a858520dc2ca33a9)



// pop static 1
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Math.1
M=D

// push constant 16
@16
D=A //D=16
@SP
A=M
M=D //*SP=16
@SP
M=M+1 //SP++


// call Array.new 1
// push Array.new$1291db65e0354596a9ce5158d2a8bbad
@Array.new$1291db65e0354596a9ce5158d2a8bbad
D=A
@SP
A=M
M=D //*SP=Array.new$1291db65e0354596a9ce5158d2a8bbad
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
// goto Array.new
@Array.new
0;JMP
(Array.new$1291db65e0354596a9ce5158d2a8bbad)



// pop static 0
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Math.0
M=D

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// push static 0
@Math.0
D=M
@SP
A=M
M=D //*SP=Math.0
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

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// label Math.init$WHILE_EXP0
(Math.init$WHILE_EXP0)

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

// push constant 15
@15
D=A //D=15
@SP
A=M
M=D //*SP=15
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
@LT_0874a49e4e094d619055a73de13028f5
D;JLT
@SP
A=M
M=0
@END_0874a49e4e094d619055a73de13028f5
0;JMP
(LT_0874a49e4e094d619055a73de13028f5)
@SP
A=M
M=-1
(END_0874a49e4e094d619055a73de13028f5)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Math.init$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.init$WHILE_END0
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

// push static 0
@Math.0
D=M
@SP
A=M
M=D //*SP=Math.0
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

// push static 0
@Math.0
D=M
@SP
A=M
M=D //*SP=Math.0
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

// push static 0
@Math.0
D=M
@SP
A=M
M=D //*SP=Math.0
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// goto Math.init$WHILE_EXP0
@Math.init$WHILE_EXP0
0;JMP

// label Math.init$WHILE_END0
(Math.init$WHILE_END0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Math.abs 0
(Math.abs)

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_d5553176a4f74e3b9b403951708d3cc7
D;JLT
@SP
A=M
M=0
@END_d5553176a4f74e3b9b403951708d3cc7
0;JMP
(LT_d5553176a4f74e3b9b403951708d3cc7)
@SP
A=M
M=-1
(END_d5553176a4f74e3b9b403951708d3cc7)
@SP
M=M+1

// if-goto Math.abs$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.abs$IF_TRUE0
D;JNE

// goto Math.abs$IF_FALSE0
@Math.abs$IF_FALSE0
0;JMP

// label Math.abs$IF_TRUE0
(Math.abs$IF_TRUE0)

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

// neg
@SP
M=M-1 //SP--
A=M
M=-M //negate
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

// label Math.abs$IF_FALSE0
(Math.abs$IF_FALSE0)

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

// function Math.multiply 5
(Math.multiply)
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_420c4a04a5a94e22ad1e23dca53ce576
D;JLT
@SP
A=M
M=0
@END_420c4a04a5a94e22ad1e23dca53ce576
0;JMP
(LT_420c4a04a5a94e22ad1e23dca53ce576)
@SP
A=M
M=-1
(END_420c4a04a5a94e22ad1e23dca53ce576)
@SP
M=M+1

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_bbe8a8ec16014b5ba90ff8027090b3b0
D;JGT
@SP
A=M
M=0
@END_bbe8a8ec16014b5ba90ff8027090b3b0
0;JMP
(GT_bbe8a8ec16014b5ba90ff8027090b3b0)
@SP
A=M
M=-1
(END_bbe8a8ec16014b5ba90ff8027090b3b0)
@SP
M=M+1

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_a0dfdb50af1140a69245097176ef562c
D;JGT
@SP
A=M
M=0
@END_a0dfdb50af1140a69245097176ef562c
0;JMP
(GT_a0dfdb50af1140a69245097176ef562c)
@SP
A=M
M=-1
(END_a0dfdb50af1140a69245097176ef562c)
@SP
M=M+1

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_5188ec7609314863be67b56bad1117f4
D;JLT
@SP
A=M
M=0
@END_5188ec7609314863be67b56bad1117f4
0;JMP
(LT_5188ec7609314863be67b56bad1117f4)
@SP
A=M
M=-1
(END_5188ec7609314863be67b56bad1117f4)
@SP
M=M+1

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

// pop local 4
@4
D=A //D=4
@LCL
D=D+M //D=LCL+4
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+4
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


// call Math.abs 1
// push Math.abs$4f90f427596043a4ac8f0bc7fd9092d6
@Math.abs$4f90f427596043a4ac8f0bc7fd9092d6
D=A
@SP
A=M
M=D //*SP=Math.abs$4f90f427596043a4ac8f0bc7fd9092d6
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
// goto Math.abs
@Math.abs
0;JMP
(Math.abs$4f90f427596043a4ac8f0bc7fd9092d6)



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


// call Math.abs 1
// push Math.abs$a9bc4f4bded64da48b5a5bb5a1ef75fb
@Math.abs$a9bc4f4bded64da48b5a5bb5a1ef75fb
D=A
@SP
A=M
M=D //*SP=Math.abs$a9bc4f4bded64da48b5a5bb5a1ef75fb
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
// goto Math.abs
@Math.abs
0;JMP
(Math.abs$a9bc4f4bded64da48b5a5bb5a1ef75fb)



// pop argument 1
@1
D=A //D=1
@ARG
D=D+M //D=ARG+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=ARG+1
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

// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@LT_2a00305b17844a27971397431d0dcc27
D;JLT
@SP
A=M
M=0
@END_2a00305b17844a27971397431d0dcc27
0;JMP
(LT_2a00305b17844a27971397431d0dcc27)
@SP
A=M
M=-1
(END_2a00305b17844a27971397431d0dcc27)
@SP
M=M+1

// if-goto Math.multiply$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.multiply$IF_TRUE0
D;JNE

// goto Math.multiply$IF_FALSE0
@Math.multiply$IF_FALSE0
0;JMP

// label Math.multiply$IF_TRUE0
(Math.multiply$IF_TRUE0)

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

// pop argument 1
@1
D=A //D=1
@ARG
D=D+M //D=ARG+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=ARG+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// label Math.multiply$IF_FALSE0
(Math.multiply$IF_FALSE0)

// label Math.multiply$WHILE_EXP0
(Math.multiply$WHILE_EXP0)

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

// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@LT_f344b0193ea048d498dee549ed7d771e
D;JLT
@SP
A=M
M=0
@END_f344b0193ea048d498dee549ed7d771e
0;JMP
(LT_f344b0193ea048d498dee549ed7d771e)
@SP
A=M
M=-1
(END_f344b0193ea048d498dee549ed7d771e)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Math.multiply$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.multiply$WHILE_END0
D;JNE

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

// push static 0
@Math.0
D=M
@SP
A=M
M=D //*SP=Math.0
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

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_1cc67d6cd658477d885c550c37bf16c4
D;JEQ
@SP
A=M
M=0
@END_1cc67d6cd658477d885c550c37bf16c4
0;JMP
(EQUAL_1cc67d6cd658477d885c550c37bf16c4)
@SP
A=M
M=-1
(END_1cc67d6cd658477d885c550c37bf16c4)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Math.multiply$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.multiply$IF_TRUE1
D;JNE

// goto Math.multiply$IF_FALSE1
@Math.multiply$IF_FALSE1
0;JMP

// label Math.multiply$IF_TRUE1
(Math.multiply$IF_TRUE1)

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

// push static 0
@Math.0
D=M
@SP
A=M
M=D //*SP=Math.0
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

// label Math.multiply$IF_FALSE1
(Math.multiply$IF_FALSE1)

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

// goto Math.multiply$WHILE_EXP0
@Math.multiply$WHILE_EXP0
0;JMP

// label Math.multiply$WHILE_END0
(Math.multiply$WHILE_END0)

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

// if-goto Math.multiply$IF_TRUE2
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.multiply$IF_TRUE2
D;JNE

// goto Math.multiply$IF_FALSE2
@Math.multiply$IF_FALSE2
0;JMP

// label Math.multiply$IF_TRUE2
(Math.multiply$IF_TRUE2)

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

// neg
@SP
M=M-1 //SP--
A=M
M=-M //negate
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

// label Math.multiply$IF_FALSE2
(Math.multiply$IF_FALSE2)

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

// function Math.divide 4
(Math.divide)
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_464fb7c0d98345fe86aed5a14b7c8cca
D;JEQ
@SP
A=M
M=0
@END_464fb7c0d98345fe86aed5a14b7c8cca
0;JMP
(EQUAL_464fb7c0d98345fe86aed5a14b7c8cca)
@SP
A=M
M=-1
(END_464fb7c0d98345fe86aed5a14b7c8cca)
@SP
M=M+1

// if-goto Math.divide$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.divide$IF_TRUE0
D;JNE

// goto Math.divide$IF_FALSE0
@Math.divide$IF_FALSE0
0;JMP

// label Math.divide$IF_TRUE0
(Math.divide$IF_TRUE0)

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$6cc2f396411c496f90ee06501d86e9e9
@Sys.error$6cc2f396411c496f90ee06501d86e9e9
D=A
@SP
A=M
M=D //*SP=Sys.error$6cc2f396411c496f90ee06501d86e9e9
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$6cc2f396411c496f90ee06501d86e9e9)



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

// label Math.divide$IF_FALSE0
(Math.divide$IF_FALSE0)

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_32d0590c0a6c4194bf1cbd2764ffc69f
D;JLT
@SP
A=M
M=0
@END_32d0590c0a6c4194bf1cbd2764ffc69f
0;JMP
(LT_32d0590c0a6c4194bf1cbd2764ffc69f)
@SP
A=M
M=-1
(END_32d0590c0a6c4194bf1cbd2764ffc69f)
@SP
M=M+1

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_ca921f8a3f0b4f13aa90313d8416c869
D;JGT
@SP
A=M
M=0
@END_ca921f8a3f0b4f13aa90313d8416c869
0;JMP
(GT_ca921f8a3f0b4f13aa90313d8416c869)
@SP
A=M
M=-1
(END_ca921f8a3f0b4f13aa90313d8416c869)
@SP
M=M+1

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_1e4dd23591204f71907c7c19a868ffd6
D;JGT
@SP
A=M
M=0
@END_1e4dd23591204f71907c7c19a868ffd6
0;JMP
(GT_1e4dd23591204f71907c7c19a868ffd6)
@SP
A=M
M=-1
(END_1e4dd23591204f71907c7c19a868ffd6)
@SP
M=M+1

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_b5bbeed01b5e4310937447f9f7aa0fa8
D;JLT
@SP
A=M
M=0
@END_b5bbeed01b5e4310937447f9f7aa0fa8
0;JMP
(LT_b5bbeed01b5e4310937447f9f7aa0fa8)
@SP
A=M
M=-1
(END_b5bbeed01b5e4310937447f9f7aa0fa8)
@SP
M=M+1

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// push static 1
@Math.1
D=M
@SP
A=M
M=D //*SP=Math.1
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


// call Math.abs 1
// push Math.abs$50602e2419044fdaa88089b980c8a923
@Math.abs$50602e2419044fdaa88089b980c8a923
D=A
@SP
A=M
M=D //*SP=Math.abs$50602e2419044fdaa88089b980c8a923
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
// goto Math.abs
@Math.abs
0;JMP
(Math.abs$50602e2419044fdaa88089b980c8a923)



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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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


// call Math.abs 1
// push Math.abs$44672320c98a495bb1588a6246e99e5b
@Math.abs$44672320c98a495bb1588a6246e99e5b
D=A
@SP
A=M
M=D //*SP=Math.abs$44672320c98a495bb1588a6246e99e5b
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
// goto Math.abs
@Math.abs
0;JMP
(Math.abs$44672320c98a495bb1588a6246e99e5b)



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

// label Math.divide$WHILE_EXP0
(Math.divide$WHILE_EXP0)

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

// push constant 15
@15
D=A //D=15
@SP
A=M
M=D //*SP=15
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
@LT_4cb4746f59914b92988de1df9980ba9a
D;JLT
@SP
A=M
M=0
@END_4cb4746f59914b92988de1df9980ba9a
0;JMP
(LT_4cb4746f59914b92988de1df9980ba9a)
@SP
A=M
M=-1
(END_4cb4746f59914b92988de1df9980ba9a)
@SP
M=M+1

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

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Math.divide$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.divide$WHILE_END0
D;JNE

// push constant 32767
@32767
D=A //D=32767
@SP
A=M
M=D //*SP=32767
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

// push static 1
@Math.1
D=M
@SP
A=M
M=D //*SP=Math.1
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

// push static 1
@Math.1
D=M
@SP
A=M
M=D //*SP=Math.1
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

// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@LT_be43f155dbb844698e99b945710948ac
D;JLT
@SP
A=M
M=0
@END_be43f155dbb844698e99b945710948ac
0;JMP
(LT_be43f155dbb844698e99b945710948ac)
@SP
A=M
M=-1
(END_be43f155dbb844698e99b945710948ac)
@SP
M=M+1

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

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Math.divide$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.divide$IF_TRUE1
D;JNE

// goto Math.divide$IF_FALSE1
@Math.divide$IF_FALSE1
0;JMP

// label Math.divide$IF_TRUE1
(Math.divide$IF_TRUE1)

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

// push static 1
@Math.1
D=M
@SP
A=M
M=D //*SP=Math.1
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

// push static 1
@Math.1
D=M
@SP
A=M
M=D //*SP=Math.1
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

// push static 1
@Math.1
D=M
@SP
A=M
M=D //*SP=Math.1
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push static 1
@Math.1
D=M
@SP
A=M
M=D //*SP=Math.1
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

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_4fa412e2a108412cbc02354f0d942e11
D;JGT
@SP
A=M
M=0
@END_4fa412e2a108412cbc02354f0d942e11
0;JMP
(GT_4fa412e2a108412cbc02354f0d942e11)
@SP
A=M
M=-1
(END_4fa412e2a108412cbc02354f0d942e11)
@SP
M=M+1

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

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Math.divide$IF_TRUE2
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.divide$IF_TRUE2
D;JNE

// goto Math.divide$IF_FALSE2
@Math.divide$IF_FALSE2
0;JMP

// label Math.divide$IF_TRUE2
(Math.divide$IF_TRUE2)

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

// label Math.divide$IF_FALSE2
(Math.divide$IF_FALSE2)

// label Math.divide$IF_FALSE1
(Math.divide$IF_FALSE1)

// goto Math.divide$WHILE_EXP0
@Math.divide$WHILE_EXP0
0;JMP

// label Math.divide$WHILE_END0
(Math.divide$WHILE_END0)

// label Math.divide$WHILE_EXP1
(Math.divide$WHILE_EXP1)

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

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
@SP
M=M+1 //SP++

// neg
@SP
M=M-1 //SP--
A=M
M=-M //negate
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_f9b797d477104e23b98ed5fcc7a04c00
D;JGT
@SP
A=M
M=0
@END_f9b797d477104e23b98ed5fcc7a04c00
0;JMP
(GT_f9b797d477104e23b98ed5fcc7a04c00)
@SP
A=M
M=-1
(END_f9b797d477104e23b98ed5fcc7a04c00)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Math.divide$WHILE_END1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.divide$WHILE_END1
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

// push static 1
@Math.1
D=M
@SP
A=M
M=D //*SP=Math.1
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

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_0f695ae3d4474e7da0260fa250ca5a56
D;JGT
@SP
A=M
M=0
@END_0f695ae3d4474e7da0260fa250ca5a56
0;JMP
(GT_0f695ae3d4474e7da0260fa250ca5a56)
@SP
A=M
M=-1
(END_0f695ae3d4474e7da0260fa250ca5a56)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Math.divide$IF_TRUE3
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.divide$IF_TRUE3
D;JNE

// goto Math.divide$IF_FALSE3
@Math.divide$IF_FALSE3
0;JMP

// label Math.divide$IF_TRUE3
(Math.divide$IF_TRUE3)

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

// push static 0
@Math.0
D=M
@SP
A=M
M=D //*SP=Math.0
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

// push static 1
@Math.1
D=M
@SP
A=M
M=D //*SP=Math.1
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

// label Math.divide$IF_FALSE3
(Math.divide$IF_FALSE3)

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

// goto Math.divide$WHILE_EXP1
@Math.divide$WHILE_EXP1
0;JMP

// label Math.divide$WHILE_END1
(Math.divide$WHILE_END1)

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

// if-goto Math.divide$IF_TRUE4
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.divide$IF_TRUE4
D;JNE

// goto Math.divide$IF_FALSE4
@Math.divide$IF_FALSE4
0;JMP

// label Math.divide$IF_TRUE4
(Math.divide$IF_TRUE4)

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

// neg
@SP
M=M-1 //SP--
A=M
M=-M //negate
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

// label Math.divide$IF_FALSE4
(Math.divide$IF_FALSE4)

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

// function Math.sqrt 4
(Math.sqrt)
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_30d9db0842ad47eea726fb6854532277
D;JLT
@SP
A=M
M=0
@END_30d9db0842ad47eea726fb6854532277
0;JMP
(LT_30d9db0842ad47eea726fb6854532277)
@SP
A=M
M=-1
(END_30d9db0842ad47eea726fb6854532277)
@SP
M=M+1

// if-goto Math.sqrt$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.sqrt$IF_TRUE0
D;JNE

// goto Math.sqrt$IF_FALSE0
@Math.sqrt$IF_FALSE0
0;JMP

// label Math.sqrt$IF_TRUE0
(Math.sqrt$IF_TRUE0)

// push constant 4
@4
D=A //D=4
@SP
A=M
M=D //*SP=4
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$6071843644364a3c9bdf03688be4e78a
@Sys.error$6071843644364a3c9bdf03688be4e78a
D=A
@SP
A=M
M=D //*SP=Sys.error$6071843644364a3c9bdf03688be4e78a
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$6071843644364a3c9bdf03688be4e78a)



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

// label Math.sqrt$IF_FALSE0
(Math.sqrt$IF_FALSE0)

// push constant 7
@7
D=A //D=7
@SP
A=M
M=D //*SP=7
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

// label Math.sqrt$WHILE_EXP0
(Math.sqrt$WHILE_EXP0)

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

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
@SP
M=M+1 //SP++

// neg
@SP
M=M-1 //SP--
A=M
M=-M //negate
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_b91085a262a94cefaba95f42f6ea1a9a
D;JGT
@SP
A=M
M=0
@END_b91085a262a94cefaba95f42f6ea1a9a
0;JMP
(GT_b91085a262a94cefaba95f42f6ea1a9a)
@SP
A=M
M=-1
(END_b91085a262a94cefaba95f42f6ea1a9a)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Math.sqrt$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.sqrt$WHILE_END0
D;JNE

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

// push static 0
@Math.0
D=M
@SP
A=M
M=D //*SP=Math.0
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


// call Math.multiply 2
// push Math.multiply$a05db048b071496fa972b3655c6fdcac
@Math.multiply$a05db048b071496fa972b3655c6fdcac
D=A
@SP
A=M
M=D //*SP=Math.multiply$a05db048b071496fa972b3655c6fdcac
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$a05db048b071496fa972b3655c6fdcac)



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

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_ca3c98c47bbb41a9b252e7699a0f0177
D;JGT
@SP
A=M
M=0
@END_ca3c98c47bbb41a9b252e7699a0f0177
0;JMP
(GT_ca3c98c47bbb41a9b252e7699a0f0177)
@SP
A=M
M=-1
(END_ca3c98c47bbb41a9b252e7699a0f0177)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_05f6fc5b03b34860ad981c1d30ac632b
D;JLT
@SP
A=M
M=0
@END_05f6fc5b03b34860ad981c1d30ac632b
0;JMP
(LT_05f6fc5b03b34860ad981c1d30ac632b)
@SP
A=M
M=-1
(END_05f6fc5b03b34860ad981c1d30ac632b)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1

// if-goto Math.sqrt$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.sqrt$IF_TRUE1
D;JNE

// goto Math.sqrt$IF_FALSE1
@Math.sqrt$IF_FALSE1
0;JMP

// label Math.sqrt$IF_TRUE1
(Math.sqrt$IF_TRUE1)

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

// label Math.sqrt$IF_FALSE1
(Math.sqrt$IF_FALSE1)

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

// goto Math.sqrt$WHILE_EXP0
@Math.sqrt$WHILE_EXP0
0;JMP

// label Math.sqrt$WHILE_END0
(Math.sqrt$WHILE_END0)

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

// function Math.max 0
(Math.max)

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

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_8c1d0c09c7b84082a7cfc7a810efef00
D;JGT
@SP
A=M
M=0
@END_8c1d0c09c7b84082a7cfc7a810efef00
0;JMP
(GT_8c1d0c09c7b84082a7cfc7a810efef00)
@SP
A=M
M=-1
(END_8c1d0c09c7b84082a7cfc7a810efef00)
@SP
M=M+1

// if-goto Math.max$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.max$IF_TRUE0
D;JNE

// goto Math.max$IF_FALSE0
@Math.max$IF_FALSE0
0;JMP

// label Math.max$IF_TRUE0
(Math.max$IF_TRUE0)

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

// pop argument 1
@1
D=A //D=1
@ARG
D=D+M //D=ARG+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=ARG+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// label Math.max$IF_FALSE0
(Math.max$IF_FALSE0)

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

// function Math.min 0
(Math.min)

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

// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@LT_411cf8b6ad8f4c1198e49f2cbaf369d1
D;JLT
@SP
A=M
M=0
@END_411cf8b6ad8f4c1198e49f2cbaf369d1
0;JMP
(LT_411cf8b6ad8f4c1198e49f2cbaf369d1)
@SP
A=M
M=-1
(END_411cf8b6ad8f4c1198e49f2cbaf369d1)
@SP
M=M+1

// if-goto Math.min$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Math.min$IF_TRUE0
D;JNE

// goto Math.min$IF_FALSE0
@Math.min$IF_FALSE0
0;JMP

// label Math.min$IF_TRUE0
(Math.min$IF_TRUE0)

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

// pop argument 1
@1
D=A //D=1
@ARG
D=D+M //D=ARG+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=ARG+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// label Math.min$IF_FALSE0
(Math.min$IF_FALSE0)

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

// function Memory.init 0
(Memory.init)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// pop static 0
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Memory.0
M=D

// push constant 2048
@2048
D=A //D=2048
@SP
A=M
M=D //*SP=2048
@SP
M=M+1 //SP++

// push static 0
@Memory.0
D=M
@SP
A=M
M=D //*SP=Memory.0
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

// push constant 14334
@14334
D=A //D=14334
@SP
A=M
M=D //*SP=14334
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push constant 2049
@2049
D=A //D=2049
@SP
A=M
M=D //*SP=2049
@SP
M=M+1 //SP++

// push static 0
@Memory.0
D=M
@SP
A=M
M=D //*SP=Memory.0
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

// push constant 2050
@2050
D=A //D=2050
@SP
A=M
M=D //*SP=2050
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Memory.peek 0
(Memory.peek)

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

// push static 0
@Memory.0
D=M
@SP
A=M
M=D //*SP=Memory.0
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

// function Memory.poke 0
(Memory.poke)

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

// push static 0
@Memory.0
D=M
@SP
A=M
M=D //*SP=Memory.0
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Memory.alloc 1
(Memory.alloc)
// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

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

// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@LT_7393f9a007e94c48a095eb875e1ed56c
D;JLT
@SP
A=M
M=0
@END_7393f9a007e94c48a095eb875e1ed56c
0;JMP
(LT_7393f9a007e94c48a095eb875e1ed56c)
@SP
A=M
M=-1
(END_7393f9a007e94c48a095eb875e1ed56c)
@SP
M=M+1

// if-goto Memory.alloc$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Memory.alloc$IF_TRUE0
D;JNE

// goto Memory.alloc$IF_FALSE0
@Memory.alloc$IF_FALSE0
0;JMP

// label Memory.alloc$IF_TRUE0
(Memory.alloc$IF_TRUE0)

// push constant 5
@5
D=A //D=5
@SP
A=M
M=D //*SP=5
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$ca147c18560340f8bfa0289f48c37b91
@Sys.error$ca147c18560340f8bfa0289f48c37b91
D=A
@SP
A=M
M=D //*SP=Sys.error$ca147c18560340f8bfa0289f48c37b91
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$ca147c18560340f8bfa0289f48c37b91)



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

// label Memory.alloc$IF_FALSE0
(Memory.alloc$IF_FALSE0)

// push constant 2048
@2048
D=A //D=2048
@SP
A=M
M=D //*SP=2048
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

// label Memory.alloc$WHILE_EXP0
(Memory.alloc$WHILE_EXP0)

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

// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@LT_5b5400962ef44eb29334119cb30fd546
D;JLT
@SP
A=M
M=0
@END_5b5400962ef44eb29334119cb30fd546
0;JMP
(LT_5b5400962ef44eb29334119cb30fd546)
@SP
A=M
M=-1
(END_5b5400962ef44eb29334119cb30fd546)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Memory.alloc$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Memory.alloc$WHILE_END0
D;JNE

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

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

// goto Memory.alloc$WHILE_EXP0
@Memory.alloc$WHILE_EXP0
0;JMP

// label Memory.alloc$WHILE_END0
(Memory.alloc$WHILE_END0)

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

// push constant 16379
@16379
D=A //D=16379
@SP
A=M
M=D //*SP=16379
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_dd7b39adf03e4cd984087e6d22878ad3
D;JGT
@SP
A=M
M=0
@END_dd7b39adf03e4cd984087e6d22878ad3
0;JMP
(GT_dd7b39adf03e4cd984087e6d22878ad3)
@SP
A=M
M=-1
(END_dd7b39adf03e4cd984087e6d22878ad3)
@SP
M=M+1

// if-goto Memory.alloc$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Memory.alloc$IF_TRUE1
D;JNE

// goto Memory.alloc$IF_FALSE1
@Memory.alloc$IF_FALSE1
0;JMP

// label Memory.alloc$IF_TRUE1
(Memory.alloc$IF_TRUE1)

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$2cc79a638a2d4d3cb1d75adc2961ab2f
@Sys.error$2cc79a638a2d4d3cb1d75adc2961ab2f
D=A
@SP
A=M
M=D //*SP=Sys.error$2cc79a638a2d4d3cb1d75adc2961ab2f
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$2cc79a638a2d4d3cb1d75adc2961ab2f)



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

// label Memory.alloc$IF_FALSE1
(Memory.alloc$IF_FALSE1)

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

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_0c0f075a84cf44909237e32ccb39469e
D;JGT
@SP
A=M
M=0
@END_0c0f075a84cf44909237e32ccb39469e
0;JMP
(GT_0c0f075a84cf44909237e32ccb39469e)
@SP
A=M
M=-1
(END_0c0f075a84cf44909237e32ccb39469e)
@SP
M=M+1

// if-goto Memory.alloc$IF_TRUE2
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Memory.alloc$IF_TRUE2
D;JNE

// goto Memory.alloc$IF_FALSE2
@Memory.alloc$IF_FALSE2
0;JMP

// label Memory.alloc$IF_TRUE2
(Memory.alloc$IF_TRUE2)

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

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

// push constant 2
@2
D=A //D=2
@SP
A=M
M=D //*SP=2
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

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_e4adfbffee0843cdb06b8e409887e5e1
D;JEQ
@SP
A=M
M=0
@END_e4adfbffee0843cdb06b8e409887e5e1
0;JMP
(EQUAL_e4adfbffee0843cdb06b8e409887e5e1)
@SP
A=M
M=-1
(END_e4adfbffee0843cdb06b8e409887e5e1)
@SP
M=M+1

// if-goto Memory.alloc$IF_TRUE3
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Memory.alloc$IF_TRUE3
D;JNE

// goto Memory.alloc$IF_FALSE3
@Memory.alloc$IF_FALSE3
0;JMP

// label Memory.alloc$IF_TRUE3
(Memory.alloc$IF_TRUE3)

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

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
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

// push constant 4
@4
D=A //D=4
@SP
A=M
M=D //*SP=4
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// goto Memory.alloc$IF_END3
@Memory.alloc$IF_END3
0;JMP

// label Memory.alloc$IF_FALSE3
(Memory.alloc$IF_FALSE3)

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

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
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

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// label Memory.alloc$IF_END3
(Memory.alloc$IF_END3)

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
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

// push constant 2
@2
D=A //D=2
@SP
A=M
M=D //*SP=2
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// label Memory.alloc$IF_FALSE2
(Memory.alloc$IF_FALSE2)

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push constant 2
@2
D=A //D=2
@SP
A=M
M=D //*SP=2
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

// function Memory.deAlloc 2
(Memory.deAlloc)
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

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_185067c6c4804a448b65223bc7a9aeac
D;JEQ
@SP
A=M
M=0
@END_185067c6c4804a448b65223bc7a9aeac
0;JMP
(EQUAL_185067c6c4804a448b65223bc7a9aeac)
@SP
A=M
M=-1
(END_185067c6c4804a448b65223bc7a9aeac)
@SP
M=M+1

// if-goto Memory.deAlloc$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Memory.deAlloc$IF_TRUE0
D;JNE

// goto Memory.deAlloc$IF_FALSE0
@Memory.deAlloc$IF_FALSE0
0;JMP

// label Memory.deAlloc$IF_TRUE0
(Memory.deAlloc$IF_TRUE0)

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

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// goto Memory.deAlloc$IF_END0
@Memory.deAlloc$IF_END0
0;JMP

// label Memory.deAlloc$IF_FALSE0
(Memory.deAlloc$IF_FALSE0)

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

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

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

// push constant 2
@2
D=A //D=2
@SP
A=M
M=D //*SP=2
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

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_bc456908cc71499ba070b9f7e1da1f0c
D;JEQ
@SP
A=M
M=0
@END_bc456908cc71499ba070b9f7e1da1f0c
0;JMP
(EQUAL_bc456908cc71499ba070b9f7e1da1f0c)
@SP
A=M
M=-1
(END_bc456908cc71499ba070b9f7e1da1f0c)
@SP
M=M+1

// if-goto Memory.deAlloc$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Memory.deAlloc$IF_TRUE1
D;JNE

// goto Memory.deAlloc$IF_FALSE1
@Memory.deAlloc$IF_FALSE1
0;JMP

// label Memory.deAlloc$IF_TRUE1
(Memory.deAlloc$IF_TRUE1)

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
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

// push constant 2
@2
D=A //D=2
@SP
A=M
M=D //*SP=2
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// goto Memory.deAlloc$IF_END1
@Memory.deAlloc$IF_END1
0;JMP

// label Memory.deAlloc$IF_FALSE1
(Memory.deAlloc$IF_FALSE1)

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
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

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// label Memory.deAlloc$IF_END1
(Memory.deAlloc$IF_END1)

// label Memory.deAlloc$IF_END0
(Memory.deAlloc$IF_END0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Output.init 0
(Output.init)

// push constant 16384
@16384
D=A //D=16384
@SP
A=M
M=D //*SP=16384
@SP
M=M+1 //SP++

// pop static 4
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.4
M=D

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// pop static 2
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.2
M=D

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
@SP
M=M+1 //SP++

// pop static 1
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.1
M=D

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// pop static 0
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.0
M=D

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++


// call String.new 1
// push String.new$1162cd10e1ae437ab62e60ec60657bf3
@String.new$1162cd10e1ae437ab62e60ec60657bf3
D=A
@SP
A=M
M=D //*SP=String.new$1162cd10e1ae437ab62e60ec60657bf3
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
// goto String.new
@String.new
0;JMP
(String.new$1162cd10e1ae437ab62e60ec60657bf3)



// pop static 3
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.3
M=D


// call Output.initMap 0
// push Output.initMap$11ecaf73ce444b978e05c293e755cb6b
@Output.initMap$11ecaf73ce444b978e05c293e755cb6b
D=A
@SP
A=M
M=D //*SP=Output.initMap$11ecaf73ce444b978e05c293e755cb6b
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
// goto Output.initMap
@Output.initMap
0;JMP
(Output.initMap$11ecaf73ce444b978e05c293e755cb6b)



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


// call Output.createShiftedMap 0
// push Output.createShiftedMap$845aa8ee4b0348c2a68b7f3ea27f33ff
@Output.createShiftedMap$845aa8ee4b0348c2a68b7f3ea27f33ff
D=A
@SP
A=M
M=D //*SP=Output.createShiftedMap$845aa8ee4b0348c2a68b7f3ea27f33ff
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
// goto Output.createShiftedMap
@Output.createShiftedMap
0;JMP
(Output.createShiftedMap$845aa8ee4b0348c2a68b7f3ea27f33ff)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Output.initMap 0
(Output.initMap)

// push constant 127
@127
D=A //D=127
@SP
A=M
M=D //*SP=127
@SP
M=M+1 //SP++


// call Array.new 1
// push Array.new$46d06d590f8043a499e35e6ac82f990a
@Array.new$46d06d590f8043a499e35e6ac82f990a
D=A
@SP
A=M
M=D //*SP=Array.new$46d06d590f8043a499e35e6ac82f990a
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
// goto Array.new
@Array.new
0;JMP
(Array.new$46d06d590f8043a499e35e6ac82f990a)



// pop static 5
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.5
M=D

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
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


// call Output.create 12
// push Output.create$4d8b0220e9de4751bdab976d20ace25b
@Output.create$4d8b0220e9de4751bdab976d20ace25b
D=A
@SP
A=M
M=D //*SP=Output.create$4d8b0220e9de4751bdab976d20ace25b
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$4d8b0220e9de4751bdab976d20ace25b)



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

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
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


// call Output.create 12
// push Output.create$2c0553b30e56407cbf60a69b0b3a7ddf
@Output.create$2c0553b30e56407cbf60a69b0b3a7ddf
D=A
@SP
A=M
M=D //*SP=Output.create$2c0553b30e56407cbf60a69b0b3a7ddf
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$2c0553b30e56407cbf60a69b0b3a7ddf)



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

// push constant 33
@33
D=A //D=33
@SP
A=M
M=D //*SP=33
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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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


// call Output.create 12
// push Output.create$7a080527b4384291a651dd1bf6bc11d9
@Output.create$7a080527b4384291a651dd1bf6bc11d9
D=A
@SP
A=M
M=D //*SP=Output.create$7a080527b4384291a651dd1bf6bc11d9
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$7a080527b4384291a651dd1bf6bc11d9)



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

// push constant 34
@34
D=A //D=34
@SP
A=M
M=D //*SP=34
@SP
M=M+1 //SP++

// push constant 54
@54
D=A //D=54
@SP
A=M
M=D //*SP=54
@SP
M=M+1 //SP++

// push constant 54
@54
D=A //D=54
@SP
A=M
M=D //*SP=54
@SP
M=M+1 //SP++

// push constant 20
@20
D=A //D=20
@SP
A=M
M=D //*SP=20
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


// call Output.create 12
// push Output.create$7f3e66e052d54b96a3b51163ab6e7956
@Output.create$7f3e66e052d54b96a3b51163ab6e7956
D=A
@SP
A=M
M=D //*SP=Output.create$7f3e66e052d54b96a3b51163ab6e7956
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$7f3e66e052d54b96a3b51163ab6e7956)



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

// push constant 35
@35
D=A //D=35
@SP
A=M
M=D //*SP=35
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

// push constant 18
@18
D=A //D=18
@SP
A=M
M=D //*SP=18
@SP
M=M+1 //SP++

// push constant 18
@18
D=A //D=18
@SP
A=M
M=D //*SP=18
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 18
@18
D=A //D=18
@SP
A=M
M=D //*SP=18
@SP
M=M+1 //SP++

// push constant 18
@18
D=A //D=18
@SP
A=M
M=D //*SP=18
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 18
@18
D=A //D=18
@SP
A=M
M=D //*SP=18
@SP
M=M+1 //SP++

// push constant 18
@18
D=A //D=18
@SP
A=M
M=D //*SP=18
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


// call Output.create 12
// push Output.create$a27cd6446a6943ca99422eada40f5502
@Output.create$a27cd6446a6943ca99422eada40f5502
D=A
@SP
A=M
M=D //*SP=Output.create$a27cd6446a6943ca99422eada40f5502
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$a27cd6446a6943ca99422eada40f5502)



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

// push constant 36
@36
D=A //D=36
@SP
A=M
M=D //*SP=36
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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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


// call Output.create 12
// push Output.create$a3ac41f14aea42a69b74fc6e98ad703f
@Output.create$a3ac41f14aea42a69b74fc6e98ad703f
D=A
@SP
A=M
M=D //*SP=Output.create$a3ac41f14aea42a69b74fc6e98ad703f
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$a3ac41f14aea42a69b74fc6e98ad703f)



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

// push constant 37
@37
D=A //D=37
@SP
A=M
M=D //*SP=37
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

// push constant 35
@35
D=A //D=35
@SP
A=M
M=D //*SP=35
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
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

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 49
@49
D=A //D=49
@SP
A=M
M=D //*SP=49
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


// call Output.create 12
// push Output.create$23468c3ebff84d4388382609f283a955
@Output.create$23468c3ebff84d4388382609f283a955
D=A
@SP
A=M
M=D //*SP=Output.create$23468c3ebff84d4388382609f283a955
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$23468c3ebff84d4388382609f283a955)



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

// push constant 38
@38
D=A //D=38
@SP
A=M
M=D //*SP=38
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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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

// push constant 54
@54
D=A //D=54
@SP
A=M
M=D //*SP=54
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 54
@54
D=A //D=54
@SP
A=M
M=D //*SP=54
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


// call Output.create 12
// push Output.create$2478842f87f444c3a75d974991051230
@Output.create$2478842f87f444c3a75d974991051230
D=A
@SP
A=M
M=D //*SP=Output.create$2478842f87f444c3a75d974991051230
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$2478842f87f444c3a75d974991051230)



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

// push constant 39
@39
D=A //D=39
@SP
A=M
M=D //*SP=39
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
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


// call Output.create 12
// push Output.create$455b4c1e7b024a338abc6866c9d520f9
@Output.create$455b4c1e7b024a338abc6866c9d520f9
D=A
@SP
A=M
M=D //*SP=Output.create$455b4c1e7b024a338abc6866c9d520f9
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$455b4c1e7b024a338abc6866c9d520f9)



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

// push constant 40
@40
D=A //D=40
@SP
A=M
M=D //*SP=40
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
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

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
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

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
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


// call Output.create 12
// push Output.create$df717754f6a844c3b9758f3359805b5c
@Output.create$df717754f6a844c3b9758f3359805b5c
D=A
@SP
A=M
M=D //*SP=Output.create$df717754f6a844c3b9758f3359805b5c
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$df717754f6a844c3b9758f3359805b5c)



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

// push constant 41
@41
D=A //D=41
@SP
A=M
M=D //*SP=41
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
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

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
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

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
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


// call Output.create 12
// push Output.create$ff3af37d446b47348967e8fa743c6723
@Output.create$ff3af37d446b47348967e8fa743c6723
D=A
@SP
A=M
M=D //*SP=Output.create$ff3af37d446b47348967e8fa743c6723
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$ff3af37d446b47348967e8fa743c6723)



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

// push constant 42
@42
D=A //D=42
@SP
A=M
M=D //*SP=42
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

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
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


// call Output.create 12
// push Output.create$26f99442dc184fe9bd08c6fdb8cc82b6
@Output.create$26f99442dc184fe9bd08c6fdb8cc82b6
D=A
@SP
A=M
M=D //*SP=Output.create$26f99442dc184fe9bd08c6fdb8cc82b6
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$26f99442dc184fe9bd08c6fdb8cc82b6)



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

// push constant 43
@43
D=A //D=43
@SP
A=M
M=D //*SP=43
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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


// call Output.create 12
// push Output.create$4fd23a83737144a892782e08dff75f23
@Output.create$4fd23a83737144a892782e08dff75f23
D=A
@SP
A=M
M=D //*SP=Output.create$4fd23a83737144a892782e08dff75f23
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$4fd23a83737144a892782e08dff75f23)



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

// push constant 44
@44
D=A //D=44
@SP
A=M
M=D //*SP=44
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
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


// call Output.create 12
// push Output.create$60f40ffd5eb744b0b17843d6a7e3b904
@Output.create$60f40ffd5eb744b0b17843d6a7e3b904
D=A
@SP
A=M
M=D //*SP=Output.create$60f40ffd5eb744b0b17843d6a7e3b904
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$60f40ffd5eb744b0b17843d6a7e3b904)



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

// push constant 45
@45
D=A //D=45
@SP
A=M
M=D //*SP=45
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++


// call Output.create 12
// push Output.create$3b358f116cff4cf8a13c397675dfb10f
@Output.create$3b358f116cff4cf8a13c397675dfb10f
D=A
@SP
A=M
M=D //*SP=Output.create$3b358f116cff4cf8a13c397675dfb10f
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$3b358f116cff4cf8a13c397675dfb10f)



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

// push constant 46
@46
D=A //D=46
@SP
A=M
M=D //*SP=46
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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


// call Output.create 12
// push Output.create$439e31966b894ec79b594b539d3bcc0e
@Output.create$439e31966b894ec79b594b539d3bcc0e
D=A
@SP
A=M
M=D //*SP=Output.create$439e31966b894ec79b594b539d3bcc0e
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$439e31966b894ec79b594b539d3bcc0e)



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

// push constant 47
@47
D=A //D=47
@SP
A=M
M=D //*SP=47
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

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
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

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
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


// call Output.create 12
// push Output.create$4d55c967ea814e739f2d06b75b34cae3
@Output.create$4d55c967ea814e739f2d06b75b34cae3
D=A
@SP
A=M
M=D //*SP=Output.create$4d55c967ea814e739f2d06b75b34cae3
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$4d55c967ea814e739f2d06b75b34cae3)



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

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$db045c14522c4a98b129814cbb9d9446
@Output.create$db045c14522c4a98b129814cbb9d9446
D=A
@SP
A=M
M=D //*SP=Output.create$db045c14522c4a98b129814cbb9d9446
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$db045c14522c4a98b129814cbb9d9446)



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

// push constant 49
@49
D=A //D=49
@SP
A=M
M=D //*SP=49
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

// push constant 14
@14
D=A //D=14
@SP
A=M
M=D //*SP=14
@SP
M=M+1 //SP++

// push constant 15
@15
D=A //D=15
@SP
A=M
M=D //*SP=15
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
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


// call Output.create 12
// push Output.create$96cae8cc7d58401ea721a1a6a08af8bc
@Output.create$96cae8cc7d58401ea721a1a6a08af8bc
D=A
@SP
A=M
M=D //*SP=Output.create$96cae8cc7d58401ea721a1a6a08af8bc
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$96cae8cc7d58401ea721a1a6a08af8bc)



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

// push constant 50
@50
D=A //D=50
@SP
A=M
M=D //*SP=50
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
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

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
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


// call Output.create 12
// push Output.create$91178bb115ca45ae864b7ebbb6b73cb2
@Output.create$91178bb115ca45ae864b7ebbb6b73cb2
D=A
@SP
A=M
M=D //*SP=Output.create$91178bb115ca45ae864b7ebbb6b73cb2
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$91178bb115ca45ae864b7ebbb6b73cb2)



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

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 28
@28
D=A //D=28
@SP
A=M
M=D //*SP=28
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$6fefb4bc3e4243c581535754573b88bb
@Output.create$6fefb4bc3e4243c581535754573b88bb
D=A
@SP
A=M
M=D //*SP=Output.create$6fefb4bc3e4243c581535754573b88bb
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$6fefb4bc3e4243c581535754573b88bb)



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

// push constant 52
@52
D=A //D=52
@SP
A=M
M=D //*SP=52
@SP
M=M+1 //SP++

// push constant 16
@16
D=A //D=16
@SP
A=M
M=D //*SP=16
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 28
@28
D=A //D=28
@SP
A=M
M=D //*SP=28
@SP
M=M+1 //SP++

// push constant 26
@26
D=A //D=26
@SP
A=M
M=D //*SP=26
@SP
M=M+1 //SP++

// push constant 25
@25
D=A //D=25
@SP
A=M
M=D //*SP=25
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 60
@60
D=A //D=60
@SP
A=M
M=D //*SP=60
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


// call Output.create 12
// push Output.create$5bfcefd9062b4d09b88dbe810f40860a
@Output.create$5bfcefd9062b4d09b88dbe810f40860a
D=A
@SP
A=M
M=D //*SP=Output.create$5bfcefd9062b4d09b88dbe810f40860a
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$5bfcefd9062b4d09b88dbe810f40860a)



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

// push constant 53
@53
D=A //D=53
@SP
A=M
M=D //*SP=53
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 31
@31
D=A //D=31
@SP
A=M
M=D //*SP=31
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$552e2a2c1c2a4228ba88cc57dd59a158
@Output.create$552e2a2c1c2a4228ba88cc57dd59a158
D=A
@SP
A=M
M=D //*SP=Output.create$552e2a2c1c2a4228ba88cc57dd59a158
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$552e2a2c1c2a4228ba88cc57dd59a158)



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

// push constant 54
@54
D=A //D=54
@SP
A=M
M=D //*SP=54
@SP
M=M+1 //SP++

// push constant 28
@28
D=A //D=28
@SP
A=M
M=D //*SP=28
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 31
@31
D=A //D=31
@SP
A=M
M=D //*SP=31
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$5ac23bc91cc942d28f0b099da3756a45
@Output.create$5ac23bc91cc942d28f0b099da3756a45
D=A
@SP
A=M
M=D //*SP=Output.create$5ac23bc91cc942d28f0b099da3756a45
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$5ac23bc91cc942d28f0b099da3756a45)



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

// push constant 55
@55
D=A //D=55
@SP
A=M
M=D //*SP=55
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 49
@49
D=A //D=49
@SP
A=M
M=D //*SP=49
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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


// call Output.create 12
// push Output.create$e076ac550efc498fb7ed0004ea331a64
@Output.create$e076ac550efc498fb7ed0004ea331a64
D=A
@SP
A=M
M=D //*SP=Output.create$e076ac550efc498fb7ed0004ea331a64
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$e076ac550efc498fb7ed0004ea331a64)



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

// push constant 56
@56
D=A //D=56
@SP
A=M
M=D //*SP=56
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$b4c866716f4f4e86aa5cc2cf80413e96
@Output.create$b4c866716f4f4e86aa5cc2cf80413e96
D=A
@SP
A=M
M=D //*SP=Output.create$b4c866716f4f4e86aa5cc2cf80413e96
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$b4c866716f4f4e86aa5cc2cf80413e96)



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

// push constant 57
@57
D=A //D=57
@SP
A=M
M=D //*SP=57
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 62
@62
D=A //D=62
@SP
A=M
M=D //*SP=62
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 14
@14
D=A //D=14
@SP
A=M
M=D //*SP=14
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


// call Output.create 12
// push Output.create$bc541ac658b743b5bc1d21299b164c4f
@Output.create$bc541ac658b743b5bc1d21299b164c4f
D=A
@SP
A=M
M=D //*SP=Output.create$bc541ac658b743b5bc1d21299b164c4f
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$bc541ac658b743b5bc1d21299b164c4f)



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

// push constant 58
@58
D=A //D=58
@SP
A=M
M=D //*SP=58
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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


// call Output.create 12
// push Output.create$68ce0face43548a590509ab6953f1e01
@Output.create$68ce0face43548a590509ab6953f1e01
D=A
@SP
A=M
M=D //*SP=Output.create$68ce0face43548a590509ab6953f1e01
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$68ce0face43548a590509ab6953f1e01)



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

// push constant 59
@59
D=A //D=59
@SP
A=M
M=D //*SP=59
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
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


// call Output.create 12
// push Output.create$1c3678410a54462daf93d6d0a6439435
@Output.create$1c3678410a54462daf93d6d0a6439435
D=A
@SP
A=M
M=D //*SP=Output.create$1c3678410a54462daf93d6d0a6439435
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$1c3678410a54462daf93d6d0a6439435)



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

// push constant 60
@60
D=A //D=60
@SP
A=M
M=D //*SP=60
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

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
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

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
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

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
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


// call Output.create 12
// push Output.create$e0995dca33754221aef1197dc3296f09
@Output.create$e0995dca33754221aef1197dc3296f09
D=A
@SP
A=M
M=D //*SP=Output.create$e0995dca33754221aef1197dc3296f09
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$e0995dca33754221aef1197dc3296f09)



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

// push constant 61
@61
D=A //D=61
@SP
A=M
M=D //*SP=61
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

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
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

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
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


// call Output.create 12
// push Output.create$020e6025669c47b6a28e197e465f4489
@Output.create$020e6025669c47b6a28e197e465f4489
D=A
@SP
A=M
M=D //*SP=Output.create$020e6025669c47b6a28e197e465f4489
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$020e6025669c47b6a28e197e465f4489)



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

// push constant 62
@62
D=A //D=62
@SP
A=M
M=D //*SP=62
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

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
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

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
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

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
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


// call Output.create 12
// push Output.create$62c169f8a3194f44ac9ecc8ffea75df1
@Output.create$62c169f8a3194f44ac9ecc8ffea75df1
D=A
@SP
A=M
M=D //*SP=Output.create$62c169f8a3194f44ac9ecc8ffea75df1
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$62c169f8a3194f44ac9ecc8ffea75df1)



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

// push constant 64
@64
D=A //D=64
@SP
A=M
M=D //*SP=64
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 59
@59
D=A //D=59
@SP
A=M
M=D //*SP=59
@SP
M=M+1 //SP++

// push constant 59
@59
D=A //D=59
@SP
A=M
M=D //*SP=59
@SP
M=M+1 //SP++

// push constant 59
@59
D=A //D=59
@SP
A=M
M=D //*SP=59
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$7a597ed91a424c68948efbc160534fa1
@Output.create$7a597ed91a424c68948efbc160534fa1
D=A
@SP
A=M
M=D //*SP=Output.create$7a597ed91a424c68948efbc160534fa1
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$7a597ed91a424c68948efbc160534fa1)



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

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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


// call Output.create 12
// push Output.create$ba8ec78269474573a88084c1a137d0ef
@Output.create$ba8ec78269474573a88084c1a137d0ef
D=A
@SP
A=M
M=D //*SP=Output.create$ba8ec78269474573a88084c1a137d0ef
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$ba8ec78269474573a88084c1a137d0ef)



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

// push constant 65
@65
D=A //D=65
@SP
A=M
M=D //*SP=65
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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
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


// call Output.create 12
// push Output.create$d5c26a4027864507b5753ab3d52dda31
@Output.create$d5c26a4027864507b5753ab3d52dda31
D=A
@SP
A=M
M=D //*SP=Output.create$d5c26a4027864507b5753ab3d52dda31
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$d5c26a4027864507b5753ab3d52dda31)



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

// push constant 66
@66
D=A //D=66
@SP
A=M
M=D //*SP=66
@SP
M=M+1 //SP++

// push constant 31
@31
D=A //D=31
@SP
A=M
M=D //*SP=31
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 31
@31
D=A //D=31
@SP
A=M
M=D //*SP=31
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 31
@31
D=A //D=31
@SP
A=M
M=D //*SP=31
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


// call Output.create 12
// push Output.create$69b48b7c5f244b2da25072ebbccbbda5
@Output.create$69b48b7c5f244b2da25072ebbccbbda5
D=A
@SP
A=M
M=D //*SP=Output.create$69b48b7c5f244b2da25072ebbccbbda5
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$69b48b7c5f244b2da25072ebbccbbda5)



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

// push constant 67
@67
D=A //D=67
@SP
A=M
M=D //*SP=67
@SP
M=M+1 //SP++

// push constant 28
@28
D=A //D=28
@SP
A=M
M=D //*SP=28
@SP
M=M+1 //SP++

// push constant 54
@54
D=A //D=54
@SP
A=M
M=D //*SP=54
@SP
M=M+1 //SP++

// push constant 35
@35
D=A //D=35
@SP
A=M
M=D //*SP=35
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 35
@35
D=A //D=35
@SP
A=M
M=D //*SP=35
@SP
M=M+1 //SP++

// push constant 54
@54
D=A //D=54
@SP
A=M
M=D //*SP=54
@SP
M=M+1 //SP++

// push constant 28
@28
D=A //D=28
@SP
A=M
M=D //*SP=28
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


// call Output.create 12
// push Output.create$c292b645dc2c48059bd771f7e9f2ac44
@Output.create$c292b645dc2c48059bd771f7e9f2ac44
D=A
@SP
A=M
M=D //*SP=Output.create$c292b645dc2c48059bd771f7e9f2ac44
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$c292b645dc2c48059bd771f7e9f2ac44)



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

// push constant 68
@68
D=A //D=68
@SP
A=M
M=D //*SP=68
@SP
M=M+1 //SP++

// push constant 15
@15
D=A //D=15
@SP
A=M
M=D //*SP=15
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 15
@15
D=A //D=15
@SP
A=M
M=D //*SP=15
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


// call Output.create 12
// push Output.create$b7893d6ae7ce442f9c18f550bb48838e
@Output.create$b7893d6ae7ce442f9c18f550bb48838e
D=A
@SP
A=M
M=D //*SP=Output.create$b7893d6ae7ce442f9c18f550bb48838e
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$b7893d6ae7ce442f9c18f550bb48838e)



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

// push constant 69
@69
D=A //D=69
@SP
A=M
M=D //*SP=69
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 35
@35
D=A //D=35
@SP
A=M
M=D //*SP=35
@SP
M=M+1 //SP++

// push constant 11
@11
D=A //D=11
@SP
A=M
M=D //*SP=11
@SP
M=M+1 //SP++

// push constant 15
@15
D=A //D=15
@SP
A=M
M=D //*SP=15
@SP
M=M+1 //SP++

// push constant 11
@11
D=A //D=11
@SP
A=M
M=D //*SP=11
@SP
M=M+1 //SP++

// push constant 35
@35
D=A //D=35
@SP
A=M
M=D //*SP=35
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
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


// call Output.create 12
// push Output.create$17f5baa6bef34d138fa9f4fe2eaa44b3
@Output.create$17f5baa6bef34d138fa9f4fe2eaa44b3
D=A
@SP
A=M
M=D //*SP=Output.create$17f5baa6bef34d138fa9f4fe2eaa44b3
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$17f5baa6bef34d138fa9f4fe2eaa44b3)



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

// push constant 70
@70
D=A //D=70
@SP
A=M
M=D //*SP=70
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 35
@35
D=A //D=35
@SP
A=M
M=D //*SP=35
@SP
M=M+1 //SP++

// push constant 11
@11
D=A //D=11
@SP
A=M
M=D //*SP=11
@SP
M=M+1 //SP++

// push constant 15
@15
D=A //D=15
@SP
A=M
M=D //*SP=15
@SP
M=M+1 //SP++

// push constant 11
@11
D=A //D=11
@SP
A=M
M=D //*SP=11
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
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


// call Output.create 12
// push Output.create$f1b1cd950d054c37aeaacb3db27cf572
@Output.create$f1b1cd950d054c37aeaacb3db27cf572
D=A
@SP
A=M
M=D //*SP=Output.create$f1b1cd950d054c37aeaacb3db27cf572
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$f1b1cd950d054c37aeaacb3db27cf572)



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

// push constant 71
@71
D=A //D=71
@SP
A=M
M=D //*SP=71
@SP
M=M+1 //SP++

// push constant 28
@28
D=A //D=28
@SP
A=M
M=D //*SP=28
@SP
M=M+1 //SP++

// push constant 54
@54
D=A //D=54
@SP
A=M
M=D //*SP=54
@SP
M=M+1 //SP++

// push constant 35
@35
D=A //D=35
@SP
A=M
M=D //*SP=35
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 59
@59
D=A //D=59
@SP
A=M
M=D //*SP=59
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 54
@54
D=A //D=54
@SP
A=M
M=D //*SP=54
@SP
M=M+1 //SP++

// push constant 44
@44
D=A //D=44
@SP
A=M
M=D //*SP=44
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


// call Output.create 12
// push Output.create$e18fdd2bfbf44e5c850621883ba6fcff
@Output.create$e18fdd2bfbf44e5c850621883ba6fcff
D=A
@SP
A=M
M=D //*SP=Output.create$e18fdd2bfbf44e5c850621883ba6fcff
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$e18fdd2bfbf44e5c850621883ba6fcff)



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

// push constant 72
@72
D=A //D=72
@SP
A=M
M=D //*SP=72
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
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


// call Output.create 12
// push Output.create$8a3a9ce4d6d54bea941455fba8adcf2a
@Output.create$8a3a9ce4d6d54bea941455fba8adcf2a
D=A
@SP
A=M
M=D //*SP=Output.create$8a3a9ce4d6d54bea941455fba8adcf2a
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$8a3a9ce4d6d54bea941455fba8adcf2a)



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

// push constant 73
@73
D=A //D=73
@SP
A=M
M=D //*SP=73
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$955619744fef4e02a381c6ffe2289f71
@Output.create$955619744fef4e02a381c6ffe2289f71
D=A
@SP
A=M
M=D //*SP=Output.create$955619744fef4e02a381c6ffe2289f71
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$955619744fef4e02a381c6ffe2289f71)



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

// push constant 74
@74
D=A //D=74
@SP
A=M
M=D //*SP=74
@SP
M=M+1 //SP++

// push constant 60
@60
D=A //D=60
@SP
A=M
M=D //*SP=60
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 14
@14
D=A //D=14
@SP
A=M
M=D //*SP=14
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


// call Output.create 12
// push Output.create$41448ce0776647c08d3d6fae690d3c6d
@Output.create$41448ce0776647c08d3d6fae690d3c6d
D=A
@SP
A=M
M=D //*SP=Output.create$41448ce0776647c08d3d6fae690d3c6d
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$41448ce0776647c08d3d6fae690d3c6d)



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

// push constant 75
@75
D=A //D=75
@SP
A=M
M=D //*SP=75
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 15
@15
D=A //D=15
@SP
A=M
M=D //*SP=15
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
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


// call Output.create 12
// push Output.create$807f446dc2c34f4ab5e6ca821dfd7d4a
@Output.create$807f446dc2c34f4ab5e6ca821dfd7d4a
D=A
@SP
A=M
M=D //*SP=Output.create$807f446dc2c34f4ab5e6ca821dfd7d4a
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$807f446dc2c34f4ab5e6ca821dfd7d4a)



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

// push constant 76
@76
D=A //D=76
@SP
A=M
M=D //*SP=76
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 35
@35
D=A //D=35
@SP
A=M
M=D //*SP=35
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
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


// call Output.create 12
// push Output.create$2a54a3ae840b49b3bee8e204dbab7bf9
@Output.create$2a54a3ae840b49b3bee8e204dbab7bf9
D=A
@SP
A=M
M=D //*SP=Output.create$2a54a3ae840b49b3bee8e204dbab7bf9
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$2a54a3ae840b49b3bee8e204dbab7bf9)



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

// push constant 77
@77
D=A //D=77
@SP
A=M
M=D //*SP=77
@SP
M=M+1 //SP++

// push constant 33
@33
D=A //D=33
@SP
A=M
M=D //*SP=33
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
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


// call Output.create 12
// push Output.create$ff4a8e9abfb84c4686aaeff724f888b8
@Output.create$ff4a8e9abfb84c4686aaeff724f888b8
D=A
@SP
A=M
M=D //*SP=Output.create$ff4a8e9abfb84c4686aaeff724f888b8
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$ff4a8e9abfb84c4686aaeff724f888b8)



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

// push constant 78
@78
D=A //D=78
@SP
A=M
M=D //*SP=78
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 55
@55
D=A //D=55
@SP
A=M
M=D //*SP=55
@SP
M=M+1 //SP++

// push constant 55
@55
D=A //D=55
@SP
A=M
M=D //*SP=55
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 59
@59
D=A //D=59
@SP
A=M
M=D //*SP=59
@SP
M=M+1 //SP++

// push constant 59
@59
D=A //D=59
@SP
A=M
M=D //*SP=59
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
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


// call Output.create 12
// push Output.create$fe906fbcbb564117be68aa2d54d56467
@Output.create$fe906fbcbb564117be68aa2d54d56467
D=A
@SP
A=M
M=D //*SP=Output.create$fe906fbcbb564117be68aa2d54d56467
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$fe906fbcbb564117be68aa2d54d56467)



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

// push constant 79
@79
D=A //D=79
@SP
A=M
M=D //*SP=79
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$cb389675722c41e3b6c3e688930987a9
@Output.create$cb389675722c41e3b6c3e688930987a9
D=A
@SP
A=M
M=D //*SP=Output.create$cb389675722c41e3b6c3e688930987a9
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$cb389675722c41e3b6c3e688930987a9)



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

// push constant 80
@80
D=A //D=80
@SP
A=M
M=D //*SP=80
@SP
M=M+1 //SP++

// push constant 31
@31
D=A //D=31
@SP
A=M
M=D //*SP=31
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 31
@31
D=A //D=31
@SP
A=M
M=D //*SP=31
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
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


// call Output.create 12
// push Output.create$b1539e9fbb9445b7bfe2f20c6013ab8a
@Output.create$b1539e9fbb9445b7bfe2f20c6013ab8a
D=A
@SP
A=M
M=D //*SP=Output.create$b1539e9fbb9445b7bfe2f20c6013ab8a
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$b1539e9fbb9445b7bfe2f20c6013ab8a)



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

// push constant 81
@81
D=A //D=81
@SP
A=M
M=D //*SP=81
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 59
@59
D=A //D=59
@SP
A=M
M=D //*SP=59
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
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


// call Output.create 12
// push Output.create$4a41f12ef67d42eb8862b17b18916a35
@Output.create$4a41f12ef67d42eb8862b17b18916a35
D=A
@SP
A=M
M=D //*SP=Output.create$4a41f12ef67d42eb8862b17b18916a35
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$4a41f12ef67d42eb8862b17b18916a35)



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

// push constant 82
@82
D=A //D=82
@SP
A=M
M=D //*SP=82
@SP
M=M+1 //SP++

// push constant 31
@31
D=A //D=31
@SP
A=M
M=D //*SP=31
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 31
@31
D=A //D=31
@SP
A=M
M=D //*SP=31
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
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


// call Output.create 12
// push Output.create$28b4348c245b4aae937a4e45538623d3
@Output.create$28b4348c245b4aae937a4e45538623d3
D=A
@SP
A=M
M=D //*SP=Output.create$28b4348c245b4aae937a4e45538623d3
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$28b4348c245b4aae937a4e45538623d3)



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

// push constant 83
@83
D=A //D=83
@SP
A=M
M=D //*SP=83
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 28
@28
D=A //D=28
@SP
A=M
M=D //*SP=28
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$9e148f882f5b45a3b43048c675217227
@Output.create$9e148f882f5b45a3b43048c675217227
D=A
@SP
A=M
M=D //*SP=Output.create$9e148f882f5b45a3b43048c675217227
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$9e148f882f5b45a3b43048c675217227)



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

// push constant 84
@84
D=A //D=84
@SP
A=M
M=D //*SP=84
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 45
@45
D=A //D=45
@SP
A=M
M=D //*SP=45
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$e52d52341b664324a1da806536a635b1
@Output.create$e52d52341b664324a1da806536a635b1
D=A
@SP
A=M
M=D //*SP=Output.create$e52d52341b664324a1da806536a635b1
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$e52d52341b664324a1da806536a635b1)



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

// push constant 85
@85
D=A //D=85
@SP
A=M
M=D //*SP=85
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$4598da05667b4dacabee01636d8b8ea0
@Output.create$4598da05667b4dacabee01636d8b8ea0
D=A
@SP
A=M
M=D //*SP=Output.create$4598da05667b4dacabee01636d8b8ea0
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$4598da05667b4dacabee01636d8b8ea0)



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

// push constant 86
@86
D=A //D=86
@SP
A=M
M=D //*SP=86
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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


// call Output.create 12
// push Output.create$e464cd7dce51404caf666bcbb9027b65
@Output.create$e464cd7dce51404caf666bcbb9027b65
D=A
@SP
A=M
M=D //*SP=Output.create$e464cd7dce51404caf666bcbb9027b65
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$e464cd7dce51404caf666bcbb9027b65)



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

// push constant 87
@87
D=A //D=87
@SP
A=M
M=D //*SP=87
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 18
@18
D=A //D=18
@SP
A=M
M=D //*SP=18
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


// call Output.create 12
// push Output.create$cd04aaf70dfc4771a35fa2ac3b5d3ed0
@Output.create$cd04aaf70dfc4771a35fa2ac3b5d3ed0
D=A
@SP
A=M
M=D //*SP=Output.create$cd04aaf70dfc4771a35fa2ac3b5d3ed0
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$cd04aaf70dfc4771a35fa2ac3b5d3ed0)



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

// push constant 88
@88
D=A //D=88
@SP
A=M
M=D //*SP=88
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
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


// call Output.create 12
// push Output.create$f2f9a45577f74932b520feefe74d7f01
@Output.create$f2f9a45577f74932b520feefe74d7f01
D=A
@SP
A=M
M=D //*SP=Output.create$f2f9a45577f74932b520feefe74d7f01
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$f2f9a45577f74932b520feefe74d7f01)



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

// push constant 89
@89
D=A //D=89
@SP
A=M
M=D //*SP=89
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$69f8db281aa04ebc8829f7f9a267a90f
@Output.create$69f8db281aa04ebc8829f7f9a267a90f
D=A
@SP
A=M
M=D //*SP=Output.create$69f8db281aa04ebc8829f7f9a267a90f
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$69f8db281aa04ebc8829f7f9a267a90f)



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

// push constant 90
@90
D=A //D=90
@SP
A=M
M=D //*SP=90
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 49
@49
D=A //D=49
@SP
A=M
M=D //*SP=49
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
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

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 35
@35
D=A //D=35
@SP
A=M
M=D //*SP=35
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
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


// call Output.create 12
// push Output.create$d99be03f68c54b44829965486a5b233f
@Output.create$d99be03f68c54b44829965486a5b233f
D=A
@SP
A=M
M=D //*SP=Output.create$d99be03f68c54b44829965486a5b233f
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$d99be03f68c54b44829965486a5b233f)



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

// push constant 91
@91
D=A //D=91
@SP
A=M
M=D //*SP=91
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$5097320209384c4da3b09987fb6d0e30
@Output.create$5097320209384c4da3b09987fb6d0e30
D=A
@SP
A=M
M=D //*SP=Output.create$5097320209384c4da3b09987fb6d0e30
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$5097320209384c4da3b09987fb6d0e30)



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

// push constant 92
@92
D=A //D=92
@SP
A=M
M=D //*SP=92
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

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
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

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
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


// call Output.create 12
// push Output.create$8ffcf6984e9d4cf1a03e9b351593f699
@Output.create$8ffcf6984e9d4cf1a03e9b351593f699
D=A
@SP
A=M
M=D //*SP=Output.create$8ffcf6984e9d4cf1a03e9b351593f699
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$8ffcf6984e9d4cf1a03e9b351593f699)



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

// push constant 93
@93
D=A //D=93
@SP
A=M
M=D //*SP=93
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$afeca1da3a4241ca87b8da974ee42786
@Output.create$afeca1da3a4241ca87b8da974ee42786
D=A
@SP
A=M
M=D //*SP=Output.create$afeca1da3a4241ca87b8da974ee42786
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$afeca1da3a4241ca87b8da974ee42786)



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

// push constant 94
@94
D=A //D=94
@SP
A=M
M=D //*SP=94
@SP
M=M+1 //SP++

// push constant 8
@8
D=A //D=8
@SP
A=M
M=D //*SP=8
@SP
M=M+1 //SP++

// push constant 28
@28
D=A //D=28
@SP
A=M
M=D //*SP=28
@SP
M=M+1 //SP++

// push constant 54
@54
D=A //D=54
@SP
A=M
M=D //*SP=54
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


// call Output.create 12
// push Output.create$03c75ca9d41a4c1f8d90a61617b77b15
@Output.create$03c75ca9d41a4c1f8d90a61617b77b15
D=A
@SP
A=M
M=D //*SP=Output.create$03c75ca9d41a4c1f8d90a61617b77b15
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$03c75ca9d41a4c1f8d90a61617b77b15)



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

// push constant 95
@95
D=A //D=95
@SP
A=M
M=D //*SP=95
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

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
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


// call Output.create 12
// push Output.create$cd375572876f42dbb372cb6fd85f3ee1
@Output.create$cd375572876f42dbb372cb6fd85f3ee1
D=A
@SP
A=M
M=D //*SP=Output.create$cd375572876f42dbb372cb6fd85f3ee1
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$cd375572876f42dbb372cb6fd85f3ee1)



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

// push constant 96
@96
D=A //D=96
@SP
A=M
M=D //*SP=96
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
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

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
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


// call Output.create 12
// push Output.create$433b35a6bc684e77a3ea7b4d7e12fbce
@Output.create$433b35a6bc684e77a3ea7b4d7e12fbce
D=A
@SP
A=M
M=D //*SP=Output.create$433b35a6bc684e77a3ea7b4d7e12fbce
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$433b35a6bc684e77a3ea7b4d7e12fbce)



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

// push constant 97
@97
D=A //D=97
@SP
A=M
M=D //*SP=97
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

// push constant 14
@14
D=A //D=14
@SP
A=M
M=D //*SP=14
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 54
@54
D=A //D=54
@SP
A=M
M=D //*SP=54
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


// call Output.create 12
// push Output.create$2a6f4a4215d94d5096133add9eaa2f23
@Output.create$2a6f4a4215d94d5096133add9eaa2f23
D=A
@SP
A=M
M=D //*SP=Output.create$2a6f4a4215d94d5096133add9eaa2f23
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$2a6f4a4215d94d5096133add9eaa2f23)



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

// push constant 98
@98
D=A //D=98
@SP
A=M
M=D //*SP=98
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 15
@15
D=A //D=15
@SP
A=M
M=D //*SP=15
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$babe70035c9b4dcfb0ca939ca0395579
@Output.create$babe70035c9b4dcfb0ca939ca0395579
D=A
@SP
A=M
M=D //*SP=Output.create$babe70035c9b4dcfb0ca939ca0395579
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$babe70035c9b4dcfb0ca939ca0395579)



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

// push constant 99
@99
D=A //D=99
@SP
A=M
M=D //*SP=99
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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$a03028b9b41f44e3adfe36e02518d644
@Output.create$a03028b9b41f44e3adfe36e02518d644
D=A
@SP
A=M
M=D //*SP=Output.create$a03028b9b41f44e3adfe36e02518d644
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$a03028b9b41f44e3adfe36e02518d644)



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

// push constant 100
@100
D=A //D=100
@SP
A=M
M=D //*SP=100
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 60
@60
D=A //D=60
@SP
A=M
M=D //*SP=60
@SP
M=M+1 //SP++

// push constant 54
@54
D=A //D=54
@SP
A=M
M=D //*SP=54
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$83a81c322b9a44cb9242da09cb825482
@Output.create$83a81c322b9a44cb9242da09cb825482
D=A
@SP
A=M
M=D //*SP=Output.create$83a81c322b9a44cb9242da09cb825482
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$83a81c322b9a44cb9242da09cb825482)



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

// push constant 101
@101
D=A //D=101
@SP
A=M
M=D //*SP=101
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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$cf94dc7a79ea46b1848ae7bbbc9bdd99
@Output.create$cf94dc7a79ea46b1848ae7bbbc9bdd99
D=A
@SP
A=M
M=D //*SP=Output.create$cf94dc7a79ea46b1848ae7bbbc9bdd99
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$cf94dc7a79ea46b1848ae7bbbc9bdd99)



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

// push constant 102
@102
D=A //D=102
@SP
A=M
M=D //*SP=102
@SP
M=M+1 //SP++

// push constant 28
@28
D=A //D=28
@SP
A=M
M=D //*SP=28
@SP
M=M+1 //SP++

// push constant 54
@54
D=A //D=54
@SP
A=M
M=D //*SP=54
@SP
M=M+1 //SP++

// push constant 38
@38
D=A //D=38
@SP
A=M
M=D //*SP=38
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 15
@15
D=A //D=15
@SP
A=M
M=D //*SP=15
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 15
@15
D=A //D=15
@SP
A=M
M=D //*SP=15
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


// call Output.create 12
// push Output.create$99b8301268d648f5a28cd43d6d5ee1f8
@Output.create$99b8301268d648f5a28cd43d6d5ee1f8
D=A
@SP
A=M
M=D //*SP=Output.create$99b8301268d648f5a28cd43d6d5ee1f8
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$99b8301268d648f5a28cd43d6d5ee1f8)



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

// push constant 103
@103
D=A //D=103
@SP
A=M
M=D //*SP=103
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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 62
@62
D=A //D=62
@SP
A=M
M=D //*SP=62
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$641b007a0837469db1e7d54d820674ca
@Output.create$641b007a0837469db1e7d54d820674ca
D=A
@SP
A=M
M=D //*SP=Output.create$641b007a0837469db1e7d54d820674ca
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$641b007a0837469db1e7d54d820674ca)



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

// push constant 104
@104
D=A //D=104
@SP
A=M
M=D //*SP=104
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 55
@55
D=A //D=55
@SP
A=M
M=D //*SP=55
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
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


// call Output.create 12
// push Output.create$311dc3197a694d86b690ffb4229839cf
@Output.create$311dc3197a694d86b690ffb4229839cf
D=A
@SP
A=M
M=D //*SP=Output.create$311dc3197a694d86b690ffb4229839cf
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$311dc3197a694d86b690ffb4229839cf)



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

// push constant 105
@105
D=A //D=105
@SP
A=M
M=D //*SP=105
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 14
@14
D=A //D=14
@SP
A=M
M=D //*SP=14
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$ece859e9530044caaf7d7aaf6e3d29af
@Output.create$ece859e9530044caaf7d7aaf6e3d29af
D=A
@SP
A=M
M=D //*SP=Output.create$ece859e9530044caaf7d7aaf6e3d29af
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$ece859e9530044caaf7d7aaf6e3d29af)



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

// push constant 106
@106
D=A //D=106
@SP
A=M
M=D //*SP=106
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
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

// push constant 56
@56
D=A //D=56
@SP
A=M
M=D //*SP=56
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$3992f6bcafaf4ba0a07323869b097a92
@Output.create$3992f6bcafaf4ba0a07323869b097a92
D=A
@SP
A=M
M=D //*SP=Output.create$3992f6bcafaf4ba0a07323869b097a92
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$3992f6bcafaf4ba0a07323869b097a92)



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

// push constant 107
@107
D=A //D=107
@SP
A=M
M=D //*SP=107
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 15
@15
D=A //D=15
@SP
A=M
M=D //*SP=15
@SP
M=M+1 //SP++

// push constant 15
@15
D=A //D=15
@SP
A=M
M=D //*SP=15
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
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


// call Output.create 12
// push Output.create$448c2d9b071049aea74ff5cbf2079e28
@Output.create$448c2d9b071049aea74ff5cbf2079e28
D=A
@SP
A=M
M=D //*SP=Output.create$448c2d9b071049aea74ff5cbf2079e28
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$448c2d9b071049aea74ff5cbf2079e28)



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

// push constant 108
@108
D=A //D=108
@SP
A=M
M=D //*SP=108
@SP
M=M+1 //SP++

// push constant 14
@14
D=A //D=14
@SP
A=M
M=D //*SP=14
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$c96c127cd7b14fbc951bb881aff70b75
@Output.create$c96c127cd7b14fbc951bb881aff70b75
D=A
@SP
A=M
M=D //*SP=Output.create$c96c127cd7b14fbc951bb881aff70b75
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$c96c127cd7b14fbc951bb881aff70b75)



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

// push constant 109
@109
D=A //D=109
@SP
A=M
M=D //*SP=109
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

// push constant 29
@29
D=A //D=29
@SP
A=M
M=D //*SP=29
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 43
@43
D=A //D=43
@SP
A=M
M=D //*SP=43
@SP
M=M+1 //SP++

// push constant 43
@43
D=A //D=43
@SP
A=M
M=D //*SP=43
@SP
M=M+1 //SP++

// push constant 43
@43
D=A //D=43
@SP
A=M
M=D //*SP=43
@SP
M=M+1 //SP++

// push constant 43
@43
D=A //D=43
@SP
A=M
M=D //*SP=43
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


// call Output.create 12
// push Output.create$30cb3a0590a244e5af12a9ca023155dd
@Output.create$30cb3a0590a244e5af12a9ca023155dd
D=A
@SP
A=M
M=D //*SP=Output.create$30cb3a0590a244e5af12a9ca023155dd
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$30cb3a0590a244e5af12a9ca023155dd)



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

// push constant 110
@110
D=A //D=110
@SP
A=M
M=D //*SP=110
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

// push constant 29
@29
D=A //D=29
@SP
A=M
M=D //*SP=29
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
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


// call Output.create 12
// push Output.create$2b987063a0f34a79932a2e71001164c5
@Output.create$2b987063a0f34a79932a2e71001164c5
D=A
@SP
A=M
M=D //*SP=Output.create$2b987063a0f34a79932a2e71001164c5
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$2b987063a0f34a79932a2e71001164c5)



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

// push constant 111
@111
D=A //D=111
@SP
A=M
M=D //*SP=111
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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$cc7a2f2c6f2b4fdf9ce94e542dbbd06b
@Output.create$cc7a2f2c6f2b4fdf9ce94e542dbbd06b
D=A
@SP
A=M
M=D //*SP=Output.create$cc7a2f2c6f2b4fdf9ce94e542dbbd06b
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$cc7a2f2c6f2b4fdf9ce94e542dbbd06b)



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

// push constant 112
@112
D=A //D=112
@SP
A=M
M=D //*SP=112
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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 31
@31
D=A //D=31
@SP
A=M
M=D //*SP=31
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
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


// call Output.create 12
// push Output.create$2279c3c6b2954ecca779f912ef630a94
@Output.create$2279c3c6b2954ecca779f912ef630a94
D=A
@SP
A=M
M=D //*SP=Output.create$2279c3c6b2954ecca779f912ef630a94
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$2279c3c6b2954ecca779f912ef630a94)



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

// push constant 113
@113
D=A //D=113
@SP
A=M
M=D //*SP=113
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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 62
@62
D=A //D=62
@SP
A=M
M=D //*SP=62
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
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


// call Output.create 12
// push Output.create$2b79fc1d5ca349108e255a284306158c
@Output.create$2b79fc1d5ca349108e255a284306158c
D=A
@SP
A=M
M=D //*SP=Output.create$2b79fc1d5ca349108e255a284306158c
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$2b79fc1d5ca349108e255a284306158c)



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

// push constant 114
@114
D=A //D=114
@SP
A=M
M=D //*SP=114
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

// push constant 29
@29
D=A //D=29
@SP
A=M
M=D //*SP=29
@SP
M=M+1 //SP++

// push constant 55
@55
D=A //D=55
@SP
A=M
M=D //*SP=55
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// push constant 7
@7
D=A //D=7
@SP
A=M
M=D //*SP=7
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


// call Output.create 12
// push Output.create$fee1ebaf6d7f401996bfaf4f6cc964a0
@Output.create$fee1ebaf6d7f401996bfaf4f6cc964a0
D=A
@SP
A=M
M=D //*SP=Output.create$fee1ebaf6d7f401996bfaf4f6cc964a0
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$fee1ebaf6d7f401996bfaf4f6cc964a0)



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

// push constant 115
@115
D=A //D=115
@SP
A=M
M=D //*SP=115
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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$caa52b063d7b421ea374186b202db6f5
@Output.create$caa52b063d7b421ea374186b202db6f5
D=A
@SP
A=M
M=D //*SP=Output.create$caa52b063d7b421ea374186b202db6f5
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$caa52b063d7b421ea374186b202db6f5)



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

// push constant 116
@116
D=A //D=116
@SP
A=M
M=D //*SP=116
@SP
M=M+1 //SP++

// push constant 4
@4
D=A //D=4
@SP
A=M
M=D //*SP=4
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 15
@15
D=A //D=15
@SP
A=M
M=D //*SP=15
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 54
@54
D=A //D=54
@SP
A=M
M=D //*SP=54
@SP
M=M+1 //SP++

// push constant 28
@28
D=A //D=28
@SP
A=M
M=D //*SP=28
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


// call Output.create 12
// push Output.create$dd833492316940adb85ab8588a1f55f5
@Output.create$dd833492316940adb85ab8588a1f55f5
D=A
@SP
A=M
M=D //*SP=Output.create$dd833492316940adb85ab8588a1f55f5
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$dd833492316940adb85ab8588a1f55f5)



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

// push constant 117
@117
D=A //D=117
@SP
A=M
M=D //*SP=117
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

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
@SP
M=M+1 //SP++

// push constant 54
@54
D=A //D=54
@SP
A=M
M=D //*SP=54
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


// call Output.create 12
// push Output.create$70ef739838854a748f0a29bd19d254ca
@Output.create$70ef739838854a748f0a29bd19d254ca
D=A
@SP
A=M
M=D //*SP=Output.create$70ef739838854a748f0a29bd19d254ca
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$70ef739838854a748f0a29bd19d254ca)



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

// push constant 118
@118
D=A //D=118
@SP
A=M
M=D //*SP=118
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

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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


// call Output.create 12
// push Output.create$fb8929ae9ae340efbe8b8d012cc14b28
@Output.create$fb8929ae9ae340efbe8b8d012cc14b28
D=A
@SP
A=M
M=D //*SP=Output.create$fb8929ae9ae340efbe8b8d012cc14b28
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$fb8929ae9ae340efbe8b8d012cc14b28)



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

// push constant 119
@119
D=A //D=119
@SP
A=M
M=D //*SP=119
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

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 18
@18
D=A //D=18
@SP
A=M
M=D //*SP=18
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


// call Output.create 12
// push Output.create$243810a5b34340e09197e2316a1619ec
@Output.create$243810a5b34340e09197e2316a1619ec
D=A
@SP
A=M
M=D //*SP=Output.create$243810a5b34340e09197e2316a1619ec
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$243810a5b34340e09197e2316a1619ec)



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

// push constant 120
@120
D=A //D=120
@SP
A=M
M=D //*SP=120
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

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
@SP
M=M+1 //SP++

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
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


// call Output.create 12
// push Output.create$3ae1b4f2f3594d52b0044a4529e54b6a
@Output.create$3ae1b4f2f3594d52b0044a4529e54b6a
D=A
@SP
A=M
M=D //*SP=Output.create$3ae1b4f2f3594d52b0044a4529e54b6a
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$3ae1b4f2f3594d52b0044a4529e54b6a)



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

// push constant 121
@121
D=A //D=121
@SP
A=M
M=D //*SP=121
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

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 62
@62
D=A //D=62
@SP
A=M
M=D //*SP=62
@SP
M=M+1 //SP++

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

// push constant 24
@24
D=A //D=24
@SP
A=M
M=D //*SP=24
@SP
M=M+1 //SP++

// push constant 15
@15
D=A //D=15
@SP
A=M
M=D //*SP=15
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


// call Output.create 12
// push Output.create$711cd6c0e8394299bd65af1d92c0d0d6
@Output.create$711cd6c0e8394299bd65af1d92c0d0d6
D=A
@SP
A=M
M=D //*SP=Output.create$711cd6c0e8394299bd65af1d92c0d0d6
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$711cd6c0e8394299bd65af1d92c0d0d6)



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

// push constant 122
@122
D=A //D=122
@SP
A=M
M=D //*SP=122
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

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// push constant 27
@27
D=A //D=27
@SP
A=M
M=D //*SP=27
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

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++

// push constant 51
@51
D=A //D=51
@SP
A=M
M=D //*SP=51
@SP
M=M+1 //SP++

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
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


// call Output.create 12
// push Output.create$87f2774d70ae47d4bc1c48b84ac560be
@Output.create$87f2774d70ae47d4bc1c48b84ac560be
D=A
@SP
A=M
M=D //*SP=Output.create$87f2774d70ae47d4bc1c48b84ac560be
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$87f2774d70ae47d4bc1c48b84ac560be)



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

// push constant 123
@123
D=A //D=123
@SP
A=M
M=D //*SP=123
@SP
M=M+1 //SP++

// push constant 56
@56
D=A //D=56
@SP
A=M
M=D //*SP=56
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 7
@7
D=A //D=7
@SP
A=M
M=D //*SP=7
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 56
@56
D=A //D=56
@SP
A=M
M=D //*SP=56
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


// call Output.create 12
// push Output.create$9b5feb7ba4e04cff82289560462ac435
@Output.create$9b5feb7ba4e04cff82289560462ac435
D=A
@SP
A=M
M=D //*SP=Output.create$9b5feb7ba4e04cff82289560462ac435
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$9b5feb7ba4e04cff82289560462ac435)



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

// push constant 124
@124
D=A //D=124
@SP
A=M
M=D //*SP=124
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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


// call Output.create 12
// push Output.create$d0fe9db276c04b108a84b7f989c4a1e7
@Output.create$d0fe9db276c04b108a84b7f989c4a1e7
D=A
@SP
A=M
M=D //*SP=Output.create$d0fe9db276c04b108a84b7f989c4a1e7
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$d0fe9db276c04b108a84b7f989c4a1e7)



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

// push constant 125
@125
D=A //D=125
@SP
A=M
M=D //*SP=125
@SP
M=M+1 //SP++

// push constant 7
@7
D=A //D=7
@SP
A=M
M=D //*SP=7
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 56
@56
D=A //D=56
@SP
A=M
M=D //*SP=56
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

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
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

// push constant 7
@7
D=A //D=7
@SP
A=M
M=D //*SP=7
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


// call Output.create 12
// push Output.create$87d05bcb16394bbfa2d6db7c2175dc69
@Output.create$87d05bcb16394bbfa2d6db7c2175dc69
D=A
@SP
A=M
M=D //*SP=Output.create$87d05bcb16394bbfa2d6db7c2175dc69
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$87d05bcb16394bbfa2d6db7c2175dc69)



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

// push constant 126
@126
D=A //D=126
@SP
A=M
M=D //*SP=126
@SP
M=M+1 //SP++

// push constant 38
@38
D=A //D=38
@SP
A=M
M=D //*SP=38
@SP
M=M+1 //SP++

// push constant 45
@45
D=A //D=45
@SP
A=M
M=D //*SP=45
@SP
M=M+1 //SP++

// push constant 25
@25
D=A //D=25
@SP
A=M
M=D //*SP=25
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


// call Output.create 12
// push Output.create$d48a91e1964643d8a2f97459c5c99240
@Output.create$d48a91e1964643d8a2f97459c5c99240
D=A
@SP
A=M
M=D //*SP=Output.create$d48a91e1964643d8a2f97459c5c99240
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
@12
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
// goto Output.create
@Output.create
0;JMP
(Output.create$d48a91e1964643d8a2f97459c5c99240)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Output.create 1
(Output.create)
// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// push constant 11
@11
D=A //D=11
@SP
A=M
M=D //*SP=11
@SP
M=M+1 //SP++


// call Array.new 1
// push Array.new$409a079eebfd468a87c07fb0e5070118
@Array.new$409a079eebfd468a87c07fb0e5070118
D=A
@SP
A=M
M=D //*SP=Array.new$409a079eebfd468a87c07fb0e5070118
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
// goto Array.new
@Array.new
0;JMP
(Array.new$409a079eebfd468a87c07fb0e5070118)



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

// push static 5
@Output.5
D=M
@SP
A=M
M=D //*SP=Output.5
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push constant 2
@2
D=A //D=2
@SP
A=M
M=D //*SP=2
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

// push argument 3
@3
D=A //D=3
@ARG
A=D+M //A=ARG+3, M=*(ARG+3)
D=M //D=*(ARG+3)
@SP
A=M
M=D //*SP=*(ARG+3)
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
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

// push argument 4
@4
D=A //D=4
@ARG
A=D+M //A=ARG+4, M=*(ARG+4)
D=M //D=*(ARG+4)
@SP
A=M
M=D //*SP=*(ARG+4)
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push constant 4
@4
D=A //D=4
@SP
A=M
M=D //*SP=4
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

// push argument 5
@5
D=A //D=5
@ARG
A=D+M //A=ARG+5, M=*(ARG+5)
D=M //D=*(ARG+5)
@SP
A=M
M=D //*SP=*(ARG+5)
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push constant 5
@5
D=A //D=5
@SP
A=M
M=D //*SP=5
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

// push argument 6
@6
D=A //D=6
@ARG
A=D+M //A=ARG+6, M=*(ARG+6)
D=M //D=*(ARG+6)
@SP
A=M
M=D //*SP=*(ARG+6)
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
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

// push argument 7
@7
D=A //D=7
@ARG
A=D+M //A=ARG+7, M=*(ARG+7)
D=M //D=*(ARG+7)
@SP
A=M
M=D //*SP=*(ARG+7)
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push constant 7
@7
D=A //D=7
@SP
A=M
M=D //*SP=7
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

// push argument 8
@8
D=A //D=8
@ARG
A=D+M //A=ARG+8, M=*(ARG+8)
D=M //D=*(ARG+8)
@SP
A=M
M=D //*SP=*(ARG+8)
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push constant 8
@8
D=A //D=8
@SP
A=M
M=D //*SP=8
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

// push argument 9
@9
D=A //D=9
@ARG
A=D+M //A=ARG+9, M=*(ARG+9)
D=M //D=*(ARG+9)
@SP
A=M
M=D //*SP=*(ARG+9)
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push constant 9
@9
D=A //D=9
@SP
A=M
M=D //*SP=9
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

// push argument 10
@10
D=A //D=10
@ARG
A=D+M //A=ARG+10, M=*(ARG+10)
D=M //D=*(ARG+10)
@SP
A=M
M=D //*SP=*(ARG+10)
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push constant 10
@10
D=A //D=10
@SP
A=M
M=D //*SP=10
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

// push argument 11
@11
D=A //D=11
@ARG
A=D+M //A=ARG+11, M=*(ARG+11)
D=M //D=*(ARG+11)
@SP
A=M
M=D //*SP=*(ARG+11)
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Output.createShiftedMap 4
(Output.createShiftedMap)
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

// push constant 127
@127
D=A //D=127
@SP
A=M
M=D //*SP=127
@SP
M=M+1 //SP++


// call Array.new 1
// push Array.new$ee6ab5ac70514de98e947d941683b71e
@Array.new$ee6ab5ac70514de98e947d941683b71e
D=A
@SP
A=M
M=D //*SP=Array.new$ee6ab5ac70514de98e947d941683b71e
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
// goto Array.new
@Array.new
0;JMP
(Array.new$ee6ab5ac70514de98e947d941683b71e)



// pop static 6
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.6
M=D

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// label Output.createShiftedMap$WHILE_EXP0
(Output.createShiftedMap$WHILE_EXP0)

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

// push constant 127
@127
D=A //D=127
@SP
A=M
M=D //*SP=127
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
@LT_0a7436660650426e82e3a698185bcb27
D;JLT
@SP
A=M
M=0
@END_0a7436660650426e82e3a698185bcb27
0;JMP
(LT_0a7436660650426e82e3a698185bcb27)
@SP
A=M
M=-1
(END_0a7436660650426e82e3a698185bcb27)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Output.createShiftedMap$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Output.createShiftedMap$WHILE_END0
D;JNE

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

// push static 5
@Output.5
D=M
@SP
A=M
M=D //*SP=Output.5
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

// push constant 11
@11
D=A //D=11
@SP
A=M
M=D //*SP=11
@SP
M=M+1 //SP++


// call Array.new 1
// push Array.new$7217fe96c4204af2b76da66d9a523f0e
@Array.new$7217fe96c4204af2b76da66d9a523f0e
D=A
@SP
A=M
M=D //*SP=Array.new$7217fe96c4204af2b76da66d9a523f0e
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
// goto Array.new
@Array.new
0;JMP
(Array.new$7217fe96c4204af2b76da66d9a523f0e)



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

// push static 6
@Output.6
D=M
@SP
A=M
M=D //*SP=Output.6
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// label Output.createShiftedMap$WHILE_EXP1
(Output.createShiftedMap$WHILE_EXP1)

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

// push constant 11
@11
D=A //D=11
@SP
A=M
M=D //*SP=11
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
@LT_600df928a59b41ec952b50bd4c382054
D;JLT
@SP
A=M
M=0
@END_600df928a59b41ec952b50bd4c382054
0;JMP
(LT_600df928a59b41ec952b50bd4c382054)
@SP
A=M
M=-1
(END_600df928a59b41ec952b50bd4c382054)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Output.createShiftedMap$WHILE_END1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Output.createShiftedMap$WHILE_END1
D;JNE

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

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

// push constant 256
@256
D=A //D=256
@SP
A=M
M=D //*SP=256
@SP
M=M+1 //SP++


// call Math.multiply 2
// push Math.multiply$fcd2a7fcb4a9471ba50170d6d3ca5b52
@Math.multiply$fcd2a7fcb4a9471ba50170d6d3ca5b52
D=A
@SP
A=M
M=D //*SP=Math.multiply$fcd2a7fcb4a9471ba50170d6d3ca5b52
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$fcd2a7fcb4a9471ba50170d6d3ca5b52)



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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// goto Output.createShiftedMap$WHILE_EXP1
@Output.createShiftedMap$WHILE_EXP1
0;JMP

// label Output.createShiftedMap$WHILE_END1
(Output.createShiftedMap$WHILE_END1)

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_44cc356381684ab3b2f048f80d0599e4
D;JEQ
@SP
A=M
M=0
@END_44cc356381684ab3b2f048f80d0599e4
0;JMP
(EQUAL_44cc356381684ab3b2f048f80d0599e4)
@SP
A=M
M=-1
(END_44cc356381684ab3b2f048f80d0599e4)
@SP
M=M+1

// if-goto Output.createShiftedMap$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Output.createShiftedMap$IF_TRUE0
D;JNE

// goto Output.createShiftedMap$IF_FALSE0
@Output.createShiftedMap$IF_FALSE0
0;JMP

// label Output.createShiftedMap$IF_TRUE0
(Output.createShiftedMap$IF_TRUE0)

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
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

// goto Output.createShiftedMap$IF_END0
@Output.createShiftedMap$IF_END0
0;JMP

// label Output.createShiftedMap$IF_FALSE0
(Output.createShiftedMap$IF_FALSE0)

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

// label Output.createShiftedMap$IF_END0
(Output.createShiftedMap$IF_END0)

// goto Output.createShiftedMap$WHILE_EXP0
@Output.createShiftedMap$WHILE_EXP0
0;JMP

// label Output.createShiftedMap$WHILE_END0
(Output.createShiftedMap$WHILE_END0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Output.getMap 1
(Output.getMap)
// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

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

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
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
@LT_44a366da499641bf862d3acc2f645ef7
D;JLT
@SP
A=M
M=0
@END_44a366da499641bf862d3acc2f645ef7
0;JMP
(LT_44a366da499641bf862d3acc2f645ef7)
@SP
A=M
M=-1
(END_44a366da499641bf862d3acc2f645ef7)
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

// push constant 126
@126
D=A //D=126
@SP
A=M
M=D //*SP=126
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_ce55dac2667d438bbe39ef9e935b28f3
D;JGT
@SP
A=M
M=0
@END_ce55dac2667d438bbe39ef9e935b28f3
0;JMP
(GT_ce55dac2667d438bbe39ef9e935b28f3)
@SP
A=M
M=-1
(END_ce55dac2667d438bbe39ef9e935b28f3)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

// if-goto Output.getMap$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Output.getMap$IF_TRUE0
D;JNE

// goto Output.getMap$IF_FALSE0
@Output.getMap$IF_FALSE0
0;JMP

// label Output.getMap$IF_TRUE0
(Output.getMap$IF_TRUE0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// label Output.getMap$IF_FALSE0
(Output.getMap$IF_FALSE0)

// push static 2
@Output.2
D=M
@SP
A=M
M=D //*SP=Output.2
@SP
M=M+1 //SP++

// if-goto Output.getMap$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Output.getMap$IF_TRUE1
D;JNE

// goto Output.getMap$IF_FALSE1
@Output.getMap$IF_FALSE1
0;JMP

// label Output.getMap$IF_TRUE1
(Output.getMap$IF_TRUE1)

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

// push static 5
@Output.5
D=M
@SP
A=M
M=D //*SP=Output.5
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

// goto Output.getMap$IF_END1
@Output.getMap$IF_END1
0;JMP

// label Output.getMap$IF_FALSE1
(Output.getMap$IF_FALSE1)

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

// push static 6
@Output.6
D=M
@SP
A=M
M=D //*SP=Output.6
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

// label Output.getMap$IF_END1
(Output.getMap$IF_END1)

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

// function Output.drawChar 4
(Output.drawChar)
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


// call Output.getMap 1
// push Output.getMap$29a7cd96a313491daafa051f6d666008
@Output.getMap$29a7cd96a313491daafa051f6d666008
D=A
@SP
A=M
M=D //*SP=Output.getMap$29a7cd96a313491daafa051f6d666008
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
// goto Output.getMap
@Output.getMap
0;JMP
(Output.getMap$29a7cd96a313491daafa051f6d666008)



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

// push static 1
@Output.1
D=M
@SP
A=M
M=D //*SP=Output.1
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

// label Output.drawChar$WHILE_EXP0
(Output.drawChar$WHILE_EXP0)

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

// push constant 11
@11
D=A //D=11
@SP
A=M
M=D //*SP=11
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
@LT_f2d19da2bac941aa9f2f25e0faba24f8
D;JLT
@SP
A=M
M=0
@END_f2d19da2bac941aa9f2f25e0faba24f8
0;JMP
(LT_f2d19da2bac941aa9f2f25e0faba24f8)
@SP
A=M
M=-1
(END_f2d19da2bac941aa9f2f25e0faba24f8)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Output.drawChar$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Output.drawChar$WHILE_END0
D;JNE

// push static 2
@Output.2
D=M
@SP
A=M
M=D //*SP=Output.2
@SP
M=M+1 //SP++

// if-goto Output.drawChar$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Output.drawChar$IF_TRUE0
D;JNE

// goto Output.drawChar$IF_FALSE0
@Output.drawChar$IF_FALSE0
0;JMP

// label Output.drawChar$IF_TRUE0
(Output.drawChar$IF_TRUE0)

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

// push static 4
@Output.4
D=M
@SP
A=M
M=D //*SP=Output.4
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

// push constant 256
@256
D=A //D=256
@SP
A=M
M=D //*SP=256
@SP
M=M+1 //SP++

// neg
@SP
M=M-1 //SP--
A=M
M=-M //negate
@SP
M=M+1 //SP++

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1

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

// goto Output.drawChar$IF_END0
@Output.drawChar$IF_END0
0;JMP

// label Output.drawChar$IF_FALSE0
(Output.drawChar$IF_FALSE0)

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

// push static 4
@Output.4
D=M
@SP
A=M
M=D //*SP=Output.4
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

// push constant 255
@255
D=A //D=255
@SP
A=M
M=D //*SP=255
@SP
M=M+1 //SP++

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1

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

// label Output.drawChar$IF_END0
(Output.drawChar$IF_END0)

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

// push static 4
@Output.4
D=M
@SP
A=M
M=D //*SP=Output.4
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

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
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

// goto Output.drawChar$WHILE_EXP0
@Output.drawChar$WHILE_EXP0
0;JMP

// label Output.drawChar$WHILE_END0
(Output.drawChar$WHILE_END0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Output.moveCursor 0
(Output.moveCursor)

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_32cd1e930c2840af81781d8f534c1937
D;JLT
@SP
A=M
M=0
@END_32cd1e930c2840af81781d8f534c1937
0;JMP
(LT_32cd1e930c2840af81781d8f534c1937)
@SP
A=M
M=-1
(END_32cd1e930c2840af81781d8f534c1937)
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

// push constant 22
@22
D=A //D=22
@SP
A=M
M=D //*SP=22
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_593b52de988e468087b0f493a85cffbc
D;JGT
@SP
A=M
M=0
@END_593b52de988e468087b0f493a85cffbc
0;JMP
(GT_593b52de988e468087b0f493a85cffbc)
@SP
A=M
M=-1
(END_593b52de988e468087b0f493a85cffbc)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_38385ff89ea1493086de347712146c5a
D;JLT
@SP
A=M
M=0
@END_38385ff89ea1493086de347712146c5a
0;JMP
(LT_38385ff89ea1493086de347712146c5a)
@SP
A=M
M=-1
(END_38385ff89ea1493086de347712146c5a)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

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

// push constant 63
@63
D=A //D=63
@SP
A=M
M=D //*SP=63
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_fd1c30e4752b469e9180902299936a6e
D;JGT
@SP
A=M
M=0
@END_fd1c30e4752b469e9180902299936a6e
0;JMP
(GT_fd1c30e4752b469e9180902299936a6e)
@SP
A=M
M=-1
(END_fd1c30e4752b469e9180902299936a6e)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

// if-goto Output.moveCursor$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Output.moveCursor$IF_TRUE0
D;JNE

// goto Output.moveCursor$IF_FALSE0
@Output.moveCursor$IF_FALSE0
0;JMP

// label Output.moveCursor$IF_TRUE0
(Output.moveCursor$IF_TRUE0)

// push constant 20
@20
D=A //D=20
@SP
A=M
M=D //*SP=20
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$4420927f9da64507b00cbd61bb7c4abe
@Sys.error$4420927f9da64507b00cbd61bb7c4abe
D=A
@SP
A=M
M=D //*SP=Sys.error$4420927f9da64507b00cbd61bb7c4abe
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$4420927f9da64507b00cbd61bb7c4abe)



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

// label Output.moveCursor$IF_FALSE0
(Output.moveCursor$IF_FALSE0)

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

// push constant 2
@2
D=A //D=2
@SP
A=M
M=D //*SP=2
@SP
M=M+1 //SP++


// call Math.divide 2
// push Math.divide$c6336ee3a11e43fab785c5050c216ebc
@Math.divide$c6336ee3a11e43fab785c5050c216ebc
D=A
@SP
A=M
M=D //*SP=Math.divide$c6336ee3a11e43fab785c5050c216ebc
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
@2
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
// goto Math.divide
@Math.divide
0;JMP
(Math.divide$c6336ee3a11e43fab785c5050c216ebc)



// pop static 0
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.0
M=D

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
@SP
M=M+1 //SP++

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

// push constant 352
@352
D=A //D=352
@SP
A=M
M=D //*SP=352
@SP
M=M+1 //SP++


// call Math.multiply 2
// push Math.multiply$1e13c86117804285a6352f8f9f2e4d6d
@Math.multiply$1e13c86117804285a6352f8f9f2e4d6d
D=A
@SP
A=M
M=D //*SP=Math.multiply$1e13c86117804285a6352f8f9f2e4d6d
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$1e13c86117804285a6352f8f9f2e4d6d)



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

// push static 0
@Output.0
D=M
@SP
A=M
M=D //*SP=Output.0
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

// pop static 1
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.1
M=D

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

// push static 0
@Output.0
D=M
@SP
A=M
M=D //*SP=Output.0
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


// call Math.multiply 2
// push Math.multiply$73de06cc35ec4353ab6bd57836f973ab
@Math.multiply$73de06cc35ec4353ab6bd57836f973ab
D=A
@SP
A=M
M=D //*SP=Math.multiply$73de06cc35ec4353ab6bd57836f973ab
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$73de06cc35ec4353ab6bd57836f973ab)



// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_cd46df6ad79646798a2d77649ff1f5fc
D;JEQ
@SP
A=M
M=0
@END_cd46df6ad79646798a2d77649ff1f5fc
0;JMP
(EQUAL_cd46df6ad79646798a2d77649ff1f5fc)
@SP
A=M
M=-1
(END_cd46df6ad79646798a2d77649ff1f5fc)
@SP
M=M+1

// pop static 2
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.2
M=D

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
@SP
M=M+1 //SP++


// call Output.drawChar 1
// push Output.drawChar$662977ad22a1457fa7a0761f78c285cf
@Output.drawChar$662977ad22a1457fa7a0761f78c285cf
D=A
@SP
A=M
M=D //*SP=Output.drawChar$662977ad22a1457fa7a0761f78c285cf
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
// goto Output.drawChar
@Output.drawChar
0;JMP
(Output.drawChar$662977ad22a1457fa7a0761f78c285cf)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Output.printChar 0
(Output.printChar)

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


// call String.newLine 0
// push String.newLine$ca056acb58bf431abac6d47cbae28cca
@String.newLine$ca056acb58bf431abac6d47cbae28cca
D=A
@SP
A=M
M=D //*SP=String.newLine$ca056acb58bf431abac6d47cbae28cca
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
// goto String.newLine
@String.newLine
0;JMP
(String.newLine$ca056acb58bf431abac6d47cbae28cca)



// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_0aa3c66d67b94c37930633d688047f35
D;JEQ
@SP
A=M
M=0
@END_0aa3c66d67b94c37930633d688047f35
0;JMP
(EQUAL_0aa3c66d67b94c37930633d688047f35)
@SP
A=M
M=-1
(END_0aa3c66d67b94c37930633d688047f35)
@SP
M=M+1

// if-goto Output.printChar$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Output.printChar$IF_TRUE0
D;JNE

// goto Output.printChar$IF_FALSE0
@Output.printChar$IF_FALSE0
0;JMP

// label Output.printChar$IF_TRUE0
(Output.printChar$IF_TRUE0)


// call Output.println 0
// push Output.println$344130bdd0494237b84e608519ef5832
@Output.println$344130bdd0494237b84e608519ef5832
D=A
@SP
A=M
M=D //*SP=Output.println$344130bdd0494237b84e608519ef5832
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
// goto Output.println
@Output.println
0;JMP
(Output.println$344130bdd0494237b84e608519ef5832)



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

// goto Output.printChar$IF_END0
@Output.printChar$IF_END0
0;JMP

// label Output.printChar$IF_FALSE0
(Output.printChar$IF_FALSE0)

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


// call String.backSpace 0
// push String.backSpace$608934a97f064a71a4059e74e0a0160a
@String.backSpace$608934a97f064a71a4059e74e0a0160a
D=A
@SP
A=M
M=D //*SP=String.backSpace$608934a97f064a71a4059e74e0a0160a
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
// goto String.backSpace
@String.backSpace
0;JMP
(String.backSpace$608934a97f064a71a4059e74e0a0160a)



// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_934410b4b98b4e54b42fb989bd577fae
D;JEQ
@SP
A=M
M=0
@END_934410b4b98b4e54b42fb989bd577fae
0;JMP
(EQUAL_934410b4b98b4e54b42fb989bd577fae)
@SP
A=M
M=-1
(END_934410b4b98b4e54b42fb989bd577fae)
@SP
M=M+1

// if-goto Output.printChar$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Output.printChar$IF_TRUE1
D;JNE

// goto Output.printChar$IF_FALSE1
@Output.printChar$IF_FALSE1
0;JMP

// label Output.printChar$IF_TRUE1
(Output.printChar$IF_TRUE1)


// call Output.backSpace 0
// push Output.backSpace$75f60658eef0495a87f3dcd834aae87c
@Output.backSpace$75f60658eef0495a87f3dcd834aae87c
D=A
@SP
A=M
M=D //*SP=Output.backSpace$75f60658eef0495a87f3dcd834aae87c
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
// goto Output.backSpace
@Output.backSpace
0;JMP
(Output.backSpace$75f60658eef0495a87f3dcd834aae87c)



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

// goto Output.printChar$IF_END1
@Output.printChar$IF_END1
0;JMP

// label Output.printChar$IF_FALSE1
(Output.printChar$IF_FALSE1)

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


// call Output.drawChar 1
// push Output.drawChar$9079897ec939416d95c068808cdba7df
@Output.drawChar$9079897ec939416d95c068808cdba7df
D=A
@SP
A=M
M=D //*SP=Output.drawChar$9079897ec939416d95c068808cdba7df
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
// goto Output.drawChar
@Output.drawChar
0;JMP
(Output.drawChar$9079897ec939416d95c068808cdba7df)



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

// push static 2
@Output.2
D=M
@SP
A=M
M=D //*SP=Output.2
@SP
M=M+1 //SP++

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Output.printChar$IF_TRUE2
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Output.printChar$IF_TRUE2
D;JNE

// goto Output.printChar$IF_FALSE2
@Output.printChar$IF_FALSE2
0;JMP

// label Output.printChar$IF_TRUE2
(Output.printChar$IF_TRUE2)

// push static 0
@Output.0
D=M
@SP
A=M
M=D //*SP=Output.0
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

// pop static 0
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.0
M=D

// push static 1
@Output.1
D=M
@SP
A=M
M=D //*SP=Output.1
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

// pop static 1
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.1
M=D

// label Output.printChar$IF_FALSE2
(Output.printChar$IF_FALSE2)

// push static 0
@Output.0
D=M
@SP
A=M
M=D //*SP=Output.0
@SP
M=M+1 //SP++

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_6ea4385574ad41a0b5951fad0d66a011
D;JEQ
@SP
A=M
M=0
@END_6ea4385574ad41a0b5951fad0d66a011
0;JMP
(EQUAL_6ea4385574ad41a0b5951fad0d66a011)
@SP
A=M
M=-1
(END_6ea4385574ad41a0b5951fad0d66a011)
@SP
M=M+1

// if-goto Output.printChar$IF_TRUE3
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Output.printChar$IF_TRUE3
D;JNE

// goto Output.printChar$IF_FALSE3
@Output.printChar$IF_FALSE3
0;JMP

// label Output.printChar$IF_TRUE3
(Output.printChar$IF_TRUE3)


// call Output.println 0
// push Output.println$fb8b39c91dd74366b29509610f466305
@Output.println$fb8b39c91dd74366b29509610f466305
D=A
@SP
A=M
M=D //*SP=Output.println$fb8b39c91dd74366b29509610f466305
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
// goto Output.println
@Output.println
0;JMP
(Output.println$fb8b39c91dd74366b29509610f466305)



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

// goto Output.printChar$IF_END3
@Output.printChar$IF_END3
0;JMP

// label Output.printChar$IF_FALSE3
(Output.printChar$IF_FALSE3)

// push static 2
@Output.2
D=M
@SP
A=M
M=D //*SP=Output.2
@SP
M=M+1 //SP++

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// pop static 2
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.2
M=D

// label Output.printChar$IF_END3
(Output.printChar$IF_END3)

// label Output.printChar$IF_END1
(Output.printChar$IF_END1)

// label Output.printChar$IF_END0
(Output.printChar$IF_END0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Output.printString 2
(Output.printString)
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


// call String.length 1
// push String.length$657803452ffc4691844d0efb23e0ba7f
@String.length$657803452ffc4691844d0efb23e0ba7f
D=A
@SP
A=M
M=D //*SP=String.length$657803452ffc4691844d0efb23e0ba7f
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
// goto String.length
@String.length
0;JMP
(String.length$657803452ffc4691844d0efb23e0ba7f)



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

// label Output.printString$WHILE_EXP0
(Output.printString$WHILE_EXP0)

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

// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@LT_b250278a381847af9beacdbf00955484
D;JLT
@SP
A=M
M=0
@END_b250278a381847af9beacdbf00955484
0;JMP
(LT_b250278a381847af9beacdbf00955484)
@SP
A=M
M=-1
(END_b250278a381847af9beacdbf00955484)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Output.printString$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Output.printString$WHILE_END0
D;JNE

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


// call String.charAt 2
// push String.charAt$1b70174a048f48fba67ddffd8678bd7b
@String.charAt$1b70174a048f48fba67ddffd8678bd7b
D=A
@SP
A=M
M=D //*SP=String.charAt$1b70174a048f48fba67ddffd8678bd7b
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
@2
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
// goto String.charAt
@String.charAt
0;JMP
(String.charAt$1b70174a048f48fba67ddffd8678bd7b)




// call Output.printChar 1
// push Output.printChar$be11f00d460146d9a993946a6b84aa04
@Output.printChar$be11f00d460146d9a993946a6b84aa04
D=A
@SP
A=M
M=D //*SP=Output.printChar$be11f00d460146d9a993946a6b84aa04
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
// goto Output.printChar
@Output.printChar
0;JMP
(Output.printChar$be11f00d460146d9a993946a6b84aa04)



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

// goto Output.printString$WHILE_EXP0
@Output.printString$WHILE_EXP0
0;JMP

// label Output.printString$WHILE_END0
(Output.printString$WHILE_END0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Output.printInt 0
(Output.printInt)

// push static 3
@Output.3
D=M
@SP
A=M
M=D //*SP=Output.3
@SP
M=M+1 //SP++

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


// call String.setInt 2
// push String.setInt$05a899fe8fe14c7b8e0c3f38fd4f1fdd
@String.setInt$05a899fe8fe14c7b8e0c3f38fd4f1fdd
D=A
@SP
A=M
M=D //*SP=String.setInt$05a899fe8fe14c7b8e0c3f38fd4f1fdd
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
@2
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
// goto String.setInt
@String.setInt
0;JMP
(String.setInt$05a899fe8fe14c7b8e0c3f38fd4f1fdd)



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

// push static 3
@Output.3
D=M
@SP
A=M
M=D //*SP=Output.3
@SP
M=M+1 //SP++


// call Output.printString 1
// push Output.printString$f0a40a4b48eb44f58356520014bafdf1
@Output.printString$f0a40a4b48eb44f58356520014bafdf1
D=A
@SP
A=M
M=D //*SP=Output.printString$f0a40a4b48eb44f58356520014bafdf1
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
// goto Output.printString
@Output.printString
0;JMP
(Output.printString$f0a40a4b48eb44f58356520014bafdf1)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Output.println 0
(Output.println)

// push static 1
@Output.1
D=M
@SP
A=M
M=D //*SP=Output.1
@SP
M=M+1 //SP++

// push constant 352
@352
D=A //D=352
@SP
A=M
M=D //*SP=352
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

// push static 0
@Output.0
D=M
@SP
A=M
M=D //*SP=Output.0
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

// pop static 1
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.1
M=D

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// pop static 0
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.0
M=D

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// pop static 2
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.2
M=D

// push static 1
@Output.1
D=M
@SP
A=M
M=D //*SP=Output.1
@SP
M=M+1 //SP++

// push constant 8128
@8128
D=A //D=8128
@SP
A=M
M=D //*SP=8128
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_e7ecb16f2257411aa70bdb914a6eee84
D;JEQ
@SP
A=M
M=0
@END_e7ecb16f2257411aa70bdb914a6eee84
0;JMP
(EQUAL_e7ecb16f2257411aa70bdb914a6eee84)
@SP
A=M
M=-1
(END_e7ecb16f2257411aa70bdb914a6eee84)
@SP
M=M+1

// if-goto Output.println$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Output.println$IF_TRUE0
D;JNE

// goto Output.println$IF_FALSE0
@Output.println$IF_FALSE0
0;JMP

// label Output.println$IF_TRUE0
(Output.println$IF_TRUE0)

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
@SP
M=M+1 //SP++

// pop static 1
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.1
M=D

// label Output.println$IF_FALSE0
(Output.println$IF_FALSE0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Output.backSpace 0
(Output.backSpace)

// push static 2
@Output.2
D=M
@SP
A=M
M=D //*SP=Output.2
@SP
M=M+1 //SP++

// if-goto Output.backSpace$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Output.backSpace$IF_TRUE0
D;JNE

// goto Output.backSpace$IF_FALSE0
@Output.backSpace$IF_FALSE0
0;JMP

// label Output.backSpace$IF_TRUE0
(Output.backSpace$IF_TRUE0)

// push static 0
@Output.0
D=M
@SP
A=M
M=D //*SP=Output.0
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

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_e827df08729f42068edd519b6287fb61
D;JGT
@SP
A=M
M=0
@END_e827df08729f42068edd519b6287fb61
0;JMP
(GT_e827df08729f42068edd519b6287fb61)
@SP
A=M
M=-1
(END_e827df08729f42068edd519b6287fb61)
@SP
M=M+1

// if-goto Output.backSpace$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Output.backSpace$IF_TRUE1
D;JNE

// goto Output.backSpace$IF_FALSE1
@Output.backSpace$IF_FALSE1
0;JMP

// label Output.backSpace$IF_TRUE1
(Output.backSpace$IF_TRUE1)

// push static 0
@Output.0
D=M
@SP
A=M
M=D //*SP=Output.0
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

// pop static 0
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.0
M=D

// push static 1
@Output.1
D=M
@SP
A=M
M=D //*SP=Output.1
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

// pop static 1
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.1
M=D

// goto Output.backSpace$IF_END1
@Output.backSpace$IF_END1
0;JMP

// label Output.backSpace$IF_FALSE1
(Output.backSpace$IF_FALSE1)

// push constant 31
@31
D=A //D=31
@SP
A=M
M=D //*SP=31
@SP
M=M+1 //SP++

// pop static 0
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.0
M=D

// push static 1
@Output.1
D=M
@SP
A=M
M=D //*SP=Output.1
@SP
M=M+1 //SP++

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_fbc4d134faf2437eae041d6e91561fff
D;JEQ
@SP
A=M
M=0
@END_fbc4d134faf2437eae041d6e91561fff
0;JMP
(EQUAL_fbc4d134faf2437eae041d6e91561fff)
@SP
A=M
M=-1
(END_fbc4d134faf2437eae041d6e91561fff)
@SP
M=M+1

// if-goto Output.backSpace$IF_TRUE2
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Output.backSpace$IF_TRUE2
D;JNE

// goto Output.backSpace$IF_FALSE2
@Output.backSpace$IF_FALSE2
0;JMP

// label Output.backSpace$IF_TRUE2
(Output.backSpace$IF_TRUE2)

// push constant 8128
@8128
D=A //D=8128
@SP
A=M
M=D //*SP=8128
@SP
M=M+1 //SP++

// pop static 1
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.1
M=D

// label Output.backSpace$IF_FALSE2
(Output.backSpace$IF_FALSE2)

// push static 1
@Output.1
D=M
@SP
A=M
M=D //*SP=Output.1
@SP
M=M+1 //SP++

// push constant 321
@321
D=A //D=321
@SP
A=M
M=D //*SP=321
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

// pop static 1
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.1
M=D

// label Output.backSpace$IF_END1
(Output.backSpace$IF_END1)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// pop static 2
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.2
M=D

// goto Output.backSpace$IF_END0
@Output.backSpace$IF_END0
0;JMP

// label Output.backSpace$IF_FALSE0
(Output.backSpace$IF_FALSE0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// pop static 2
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Output.2
M=D

// label Output.backSpace$IF_END0
(Output.backSpace$IF_END0)

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
@SP
M=M+1 //SP++


// call Output.drawChar 1
// push Output.drawChar$d7cddca6962041fc960659b992d113bb
@Output.drawChar$d7cddca6962041fc960659b992d113bb
D=A
@SP
A=M
M=D //*SP=Output.drawChar$d7cddca6962041fc960659b992d113bb
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
// goto Output.drawChar
@Output.drawChar
0;JMP
(Output.drawChar$d7cddca6962041fc960659b992d113bb)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Screen.init 1
(Screen.init)
// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// push constant 16384
@16384
D=A //D=16384
@SP
A=M
M=D //*SP=16384
@SP
M=M+1 //SP++

// pop static 1
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Screen.1
M=D

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// pop static 2
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Screen.2
M=D

// push constant 17
@17
D=A //D=17
@SP
A=M
M=D //*SP=17
@SP
M=M+1 //SP++


// call Array.new 1
// push Array.new$331fa09dd4b24dde89385f216f5a76e2
@Array.new$331fa09dd4b24dde89385f216f5a76e2
D=A
@SP
A=M
M=D //*SP=Array.new$331fa09dd4b24dde89385f216f5a76e2
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
// goto Array.new
@Array.new
0;JMP
(Array.new$331fa09dd4b24dde89385f216f5a76e2)



// pop static 0
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Screen.0
M=D

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// push static 0
@Screen.0
D=M
@SP
A=M
M=D //*SP=Screen.0
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

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// label Screen.init$WHILE_EXP0
(Screen.init$WHILE_EXP0)

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

// push constant 16
@16
D=A //D=16
@SP
A=M
M=D //*SP=16
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
@LT_b8189f511cfa4fb3b26dc208cf024644
D;JLT
@SP
A=M
M=0
@END_b8189f511cfa4fb3b26dc208cf024644
0;JMP
(LT_b8189f511cfa4fb3b26dc208cf024644)
@SP
A=M
M=-1
(END_b8189f511cfa4fb3b26dc208cf024644)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Screen.init$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.init$WHILE_END0
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

// push static 0
@Screen.0
D=M
@SP
A=M
M=D //*SP=Screen.0
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

// push static 0
@Screen.0
D=M
@SP
A=M
M=D //*SP=Screen.0
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

// push static 0
@Screen.0
D=M
@SP
A=M
M=D //*SP=Screen.0
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// goto Screen.init$WHILE_EXP0
@Screen.init$WHILE_EXP0
0;JMP

// label Screen.init$WHILE_END0
(Screen.init$WHILE_END0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Screen.clearScreen 1
(Screen.clearScreen)
// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// label Screen.clearScreen$WHILE_EXP0
(Screen.clearScreen$WHILE_EXP0)

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

// push constant 8192
@8192
D=A //D=8192
@SP
A=M
M=D //*SP=8192
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
@LT_cf788191834b4b359b5386f286ad5859
D;JLT
@SP
A=M
M=0
@END_cf788191834b4b359b5386f286ad5859
0;JMP
(LT_cf788191834b4b359b5386f286ad5859)
@SP
A=M
M=-1
(END_cf788191834b4b359b5386f286ad5859)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Screen.clearScreen$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.clearScreen$WHILE_END0
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

// push static 1
@Screen.1
D=M
@SP
A=M
M=D //*SP=Screen.1
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// goto Screen.clearScreen$WHILE_EXP0
@Screen.clearScreen$WHILE_EXP0
0;JMP

// label Screen.clearScreen$WHILE_END0
(Screen.clearScreen$WHILE_END0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Screen.updateLocation 0
(Screen.updateLocation)

// push static 2
@Screen.2
D=M
@SP
A=M
M=D //*SP=Screen.2
@SP
M=M+1 //SP++

// if-goto Screen.updateLocation$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.updateLocation$IF_TRUE0
D;JNE

// goto Screen.updateLocation$IF_FALSE0
@Screen.updateLocation$IF_FALSE0
0;JMP

// label Screen.updateLocation$IF_TRUE0
(Screen.updateLocation$IF_TRUE0)

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

// push static 1
@Screen.1
D=M
@SP
A=M
M=D //*SP=Screen.1
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

// push static 1
@Screen.1
D=M
@SP
A=M
M=D //*SP=Screen.1
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

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// goto Screen.updateLocation$IF_END0
@Screen.updateLocation$IF_END0
0;JMP

// label Screen.updateLocation$IF_FALSE0
(Screen.updateLocation$IF_FALSE0)

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

// push static 1
@Screen.1
D=M
@SP
A=M
M=D //*SP=Screen.1
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

// push static 1
@Screen.1
D=M
@SP
A=M
M=D //*SP=Screen.1
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

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// label Screen.updateLocation$IF_END0
(Screen.updateLocation$IF_END0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Screen.setColor 0
(Screen.setColor)

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

// pop static 2
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Screen.2
M=D

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Screen.drawPixel 3
(Screen.drawPixel)
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_1deea24ae5144396bbedc5e3e6d4adea
D;JLT
@SP
A=M
M=0
@END_1deea24ae5144396bbedc5e3e6d4adea
0;JMP
(LT_1deea24ae5144396bbedc5e3e6d4adea)
@SP
A=M
M=-1
(END_1deea24ae5144396bbedc5e3e6d4adea)
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

// push constant 511
@511
D=A //D=511
@SP
A=M
M=D //*SP=511
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_6c0727ea99094082b4ec5153ee370929
D;JGT
@SP
A=M
M=0
@END_6c0727ea99094082b4ec5153ee370929
0;JMP
(GT_6c0727ea99094082b4ec5153ee370929)
@SP
A=M
M=-1
(END_6c0727ea99094082b4ec5153ee370929)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_b7f81622179b4a32a99722d1618ebde9
D;JLT
@SP
A=M
M=0
@END_b7f81622179b4a32a99722d1618ebde9
0;JMP
(LT_b7f81622179b4a32a99722d1618ebde9)
@SP
A=M
M=-1
(END_b7f81622179b4a32a99722d1618ebde9)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

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

// push constant 255
@255
D=A //D=255
@SP
A=M
M=D //*SP=255
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_af68fd4b0c2441afb988722d3db9f712
D;JGT
@SP
A=M
M=0
@END_af68fd4b0c2441afb988722d3db9f712
0;JMP
(GT_af68fd4b0c2441afb988722d3db9f712)
@SP
A=M
M=-1
(END_af68fd4b0c2441afb988722d3db9f712)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

// if-goto Screen.drawPixel$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawPixel$IF_TRUE0
D;JNE

// goto Screen.drawPixel$IF_FALSE0
@Screen.drawPixel$IF_FALSE0
0;JMP

// label Screen.drawPixel$IF_TRUE0
(Screen.drawPixel$IF_TRUE0)

// push constant 7
@7
D=A //D=7
@SP
A=M
M=D //*SP=7
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$af0b093c88054cfb8b6908d12b8e4acb
@Sys.error$af0b093c88054cfb8b6908d12b8e4acb
D=A
@SP
A=M
M=D //*SP=Sys.error$af0b093c88054cfb8b6908d12b8e4acb
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$af0b093c88054cfb8b6908d12b8e4acb)



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

// label Screen.drawPixel$IF_FALSE0
(Screen.drawPixel$IF_FALSE0)

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

// push constant 16
@16
D=A //D=16
@SP
A=M
M=D //*SP=16
@SP
M=M+1 //SP++


// call Math.divide 2
// push Math.divide$1e497493f7ca4b87b4772262f01cd60e
@Math.divide$1e497493f7ca4b87b4772262f01cd60e
D=A
@SP
A=M
M=D //*SP=Math.divide$1e497493f7ca4b87b4772262f01cd60e
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
@2
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
// goto Math.divide
@Math.divide
0;JMP
(Math.divide$1e497493f7ca4b87b4772262f01cd60e)



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

// push constant 16
@16
D=A //D=16
@SP
A=M
M=D //*SP=16
@SP
M=M+1 //SP++


// call Math.multiply 2
// push Math.multiply$adaf4604b45f4b1e9032f7e0d6cc952b
@Math.multiply$adaf4604b45f4b1e9032f7e0d6cc952b
D=A
@SP
A=M
M=D //*SP=Math.multiply$adaf4604b45f4b1e9032f7e0d6cc952b
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$adaf4604b45f4b1e9032f7e0d6cc952b)



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

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
@SP
M=M+1 //SP++


// call Math.multiply 2
// push Math.multiply$165791544825426fbb342fffdbcdf8ea
@Math.multiply$165791544825426fbb342fffdbcdf8ea
D=A
@SP
A=M
M=D //*SP=Math.multiply$165791544825426fbb342fffdbcdf8ea
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$165791544825426fbb342fffdbcdf8ea)



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

// push static 0
@Screen.0
D=M
@SP
A=M
M=D //*SP=Screen.0
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


// call Screen.updateLocation 2
// push Screen.updateLocation$5180107112ea4ab9984014f8b92630c8
@Screen.updateLocation$5180107112ea4ab9984014f8b92630c8
D=A
@SP
A=M
M=D //*SP=Screen.updateLocation$5180107112ea4ab9984014f8b92630c8
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
@2
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(Screen.updateLocation$5180107112ea4ab9984014f8b92630c8)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Screen.drawConditional 0
(Screen.drawConditional)

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
@SP
M=M+1 //SP++

// if-goto Screen.drawConditional$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawConditional$IF_TRUE0
D;JNE

// goto Screen.drawConditional$IF_FALSE0
@Screen.drawConditional$IF_FALSE0
0;JMP

// label Screen.drawConditional$IF_TRUE0
(Screen.drawConditional$IF_TRUE0)

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


// call Screen.drawPixel 2
// push Screen.drawPixel$28257445c17144d297e5f678e6b21675
@Screen.drawPixel$28257445c17144d297e5f678e6b21675
D=A
@SP
A=M
M=D //*SP=Screen.drawPixel$28257445c17144d297e5f678e6b21675
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
@2
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
// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Screen.drawPixel$28257445c17144d297e5f678e6b21675)



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

// goto Screen.drawConditional$IF_END0
@Screen.drawConditional$IF_END0
0;JMP

// label Screen.drawConditional$IF_FALSE0
(Screen.drawConditional$IF_FALSE0)

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


// call Screen.drawPixel 2
// push Screen.drawPixel$5b71bac2af0d4522a0070a01f9ca6120
@Screen.drawPixel$5b71bac2af0d4522a0070a01f9ca6120
D=A
@SP
A=M
M=D //*SP=Screen.drawPixel$5b71bac2af0d4522a0070a01f9ca6120
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
@2
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
// goto Screen.drawPixel
@Screen.drawPixel
0;JMP
(Screen.drawPixel$5b71bac2af0d4522a0070a01f9ca6120)



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

// label Screen.drawConditional$IF_END0
(Screen.drawConditional$IF_END0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Screen.drawLine 11
(Screen.drawLine)
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
// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_e4e38cd037504c4e806db047fb3e156f
D;JLT
@SP
A=M
M=0
@END_e4e38cd037504c4e806db047fb3e156f
0;JMP
(LT_e4e38cd037504c4e806db047fb3e156f)
@SP
A=M
M=-1
(END_e4e38cd037504c4e806db047fb3e156f)
@SP
M=M+1

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
@SP
M=M+1 //SP++

// push constant 511
@511
D=A //D=511
@SP
A=M
M=D //*SP=511
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_9b067a1e2d5443aab3a0ae950c6fa9bf
D;JGT
@SP
A=M
M=0
@END_9b067a1e2d5443aab3a0ae950c6fa9bf
0;JMP
(GT_9b067a1e2d5443aab3a0ae950c6fa9bf)
@SP
A=M
M=-1
(END_9b067a1e2d5443aab3a0ae950c6fa9bf)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_62c1faec1fcf4ba797d64ca99c9deaf1
D;JLT
@SP
A=M
M=0
@END_62c1faec1fcf4ba797d64ca99c9deaf1
0;JMP
(LT_62c1faec1fcf4ba797d64ca99c9deaf1)
@SP
A=M
M=-1
(END_62c1faec1fcf4ba797d64ca99c9deaf1)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

// push argument 3
@3
D=A //D=3
@ARG
A=D+M //A=ARG+3, M=*(ARG+3)
D=M //D=*(ARG+3)
@SP
A=M
M=D //*SP=*(ARG+3)
@SP
M=M+1 //SP++

// push constant 255
@255
D=A //D=255
@SP
A=M
M=D //*SP=255
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_eb70ca2ff7864430bf5389da0270d84d
D;JGT
@SP
A=M
M=0
@END_eb70ca2ff7864430bf5389da0270d84d
0;JMP
(GT_eb70ca2ff7864430bf5389da0270d84d)
@SP
A=M
M=-1
(END_eb70ca2ff7864430bf5389da0270d84d)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

// if-goto Screen.drawLine$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawLine$IF_TRUE0
D;JNE

// goto Screen.drawLine$IF_FALSE0
@Screen.drawLine$IF_FALSE0
0;JMP

// label Screen.drawLine$IF_TRUE0
(Screen.drawLine$IF_TRUE0)

// push constant 8
@8
D=A //D=8
@SP
A=M
M=D //*SP=8
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$306acaaa6f9846d28600a060a1510b88
@Sys.error$306acaaa6f9846d28600a060a1510b88
D=A
@SP
A=M
M=D //*SP=Sys.error$306acaaa6f9846d28600a060a1510b88
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$306acaaa6f9846d28600a060a1510b88)



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

// label Screen.drawLine$IF_FALSE0
(Screen.drawLine$IF_FALSE0)

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
@SP
M=M+1 //SP++

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


// call Math.abs 1
// push Math.abs$d1567a95652847c08a91ac34f85a97fe
@Math.abs$d1567a95652847c08a91ac34f85a97fe
D=A
@SP
A=M
M=D //*SP=Math.abs$d1567a95652847c08a91ac34f85a97fe
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
// goto Math.abs
@Math.abs
0;JMP
(Math.abs$d1567a95652847c08a91ac34f85a97fe)



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

// push argument 3
@3
D=A //D=3
@ARG
A=D+M //A=ARG+3, M=*(ARG+3)
D=M //D=*(ARG+3)
@SP
A=M
M=D //*SP=*(ARG+3)
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


// call Math.abs 1
// push Math.abs$b868c57fe2e143c1a3ffd998ff56208b
@Math.abs$b868c57fe2e143c1a3ffd998ff56208b
D=A
@SP
A=M
M=D //*SP=Math.abs$b868c57fe2e143c1a3ffd998ff56208b
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
// goto Math.abs
@Math.abs
0;JMP
(Math.abs$b868c57fe2e143c1a3ffd998ff56208b)



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

// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@LT_5cbf09ad16074515ba38cbddadafcdfe
D;JLT
@SP
A=M
M=0
@END_5cbf09ad16074515ba38cbddadafcdfe
0;JMP
(LT_5cbf09ad16074515ba38cbddadafcdfe)
@SP
A=M
M=-1
(END_5cbf09ad16074515ba38cbddadafcdfe)
@SP
M=M+1

// pop local 6
@6
D=A //D=6
@LCL
D=D+M //D=LCL+6
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+6
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push local 6
@6
D=A //D=6
@LCL
A=D+M //A=LCL+6, M=*(LCL+6)
D=M //D=*(LCL+6)
@SP
A=M
M=D //*SP=*(LCL+6)
@SP
M=M+1 //SP++

// push argument 3
@3
D=A //D=3
@ARG
A=D+M //A=ARG+3, M=*(ARG+3)
D=M //D=*(ARG+3)
@SP
A=M
M=D //*SP=*(ARG+3)
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

// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@LT_32e159d679ad4889bf7e3be8b0ec3065
D;JLT
@SP
A=M
M=0
@END_32e159d679ad4889bf7e3be8b0ec3065
0;JMP
(LT_32e159d679ad4889bf7e3be8b0ec3065)
@SP
A=M
M=-1
(END_32e159d679ad4889bf7e3be8b0ec3065)
@SP
M=M+1

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1

// push local 6
@6
D=A //D=6
@LCL
A=D+M //A=LCL+6, M=*(LCL+6)
D=M //D=*(LCL+6)
@SP
A=M
M=D //*SP=*(LCL+6)
@SP
M=M+1 //SP++

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
@SP
M=M+1 //SP++

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

// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@LT_900392de029341569959a081752f7e3d
D;JLT
@SP
A=M
M=0
@END_900392de029341569959a081752f7e3d
0;JMP
(LT_900392de029341569959a081752f7e3d)
@SP
A=M
M=-1
(END_900392de029341569959a081752f7e3d)
@SP
M=M+1

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

// if-goto Screen.drawLine$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawLine$IF_TRUE1
D;JNE

// goto Screen.drawLine$IF_FALSE1
@Screen.drawLine$IF_FALSE1
0;JMP

// label Screen.drawLine$IF_TRUE1
(Screen.drawLine$IF_TRUE1)

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

// pop local 4
@4
D=A //D=4
@LCL
D=D+M //D=LCL+4
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+4
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
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

// pop argument 2
@2
D=A //D=2
@ARG
D=D+M //D=ARG+2
@R13 //use general purpose register for temp storage
M=D //RAM[13]=ARG+2
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

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

// pop local 4
@4
D=A //D=4
@LCL
D=D+M //D=LCL+4
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+4
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push argument 3
@3
D=A //D=3
@ARG
A=D+M //A=ARG+3, M=*(ARG+3)
D=M //D=*(ARG+3)
@SP
A=M
M=D //*SP=*(ARG+3)
@SP
M=M+1 //SP++

// pop argument 1
@1
D=A //D=1
@ARG
D=D+M //D=ARG+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=ARG+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

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

// pop argument 3
@3
D=A //D=3
@ARG
D=D+M //D=ARG+3
@R13 //use general purpose register for temp storage
M=D //RAM[13]=ARG+3
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// label Screen.drawLine$IF_FALSE1
(Screen.drawLine$IF_FALSE1)

// push local 6
@6
D=A //D=6
@LCL
A=D+M //A=LCL+6, M=*(LCL+6)
D=M //D=*(LCL+6)
@SP
A=M
M=D //*SP=*(LCL+6)
@SP
M=M+1 //SP++

// if-goto Screen.drawLine$IF_TRUE2
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawLine$IF_TRUE2
D;JNE

// goto Screen.drawLine$IF_FALSE2
@Screen.drawLine$IF_FALSE2
0;JMP

// label Screen.drawLine$IF_TRUE2
(Screen.drawLine$IF_TRUE2)

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

// pop local 4
@4
D=A //D=4
@LCL
D=D+M //D=LCL+4
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+4
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

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

// push argument 3
@3
D=A //D=3
@ARG
A=D+M //A=ARG+3, M=*(ARG+3)
D=M //D=*(ARG+3)
@SP
A=M
M=D //*SP=*(ARG+3)
@SP
M=M+1 //SP++

// pop local 8
@8
D=A //D=8
@LCL
D=D+M //D=LCL+8
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+8
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

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_a7bd6c9bb23c4c8fba328331f8fd7687
D;JGT
@SP
A=M
M=0
@END_a7bd6c9bb23c4c8fba328331f8fd7687
0;JMP
(GT_a7bd6c9bb23c4c8fba328331f8fd7687)
@SP
A=M
M=-1
(END_a7bd6c9bb23c4c8fba328331f8fd7687)
@SP
M=M+1

// pop local 7
@7
D=A //D=7
@LCL
D=D+M //D=LCL+7
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+7
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// goto Screen.drawLine$IF_END2
@Screen.drawLine$IF_END2
0;JMP

// label Screen.drawLine$IF_FALSE2
(Screen.drawLine$IF_FALSE2)

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

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
@SP
M=M+1 //SP++

// pop local 8
@8
D=A //D=8
@LCL
D=D+M //D=LCL+8
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+8
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

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

// push argument 3
@3
D=A //D=3
@ARG
A=D+M //A=ARG+3, M=*(ARG+3)
D=M //D=*(ARG+3)
@SP
A=M
M=D //*SP=*(ARG+3)
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_f2fa735e304b42f5b1f6fde8a4dee1a9
D;JGT
@SP
A=M
M=0
@END_f2fa735e304b42f5b1f6fde8a4dee1a9
0;JMP
(GT_f2fa735e304b42f5b1f6fde8a4dee1a9)
@SP
A=M
M=-1
(END_f2fa735e304b42f5b1f6fde8a4dee1a9)
@SP
M=M+1

// pop local 7
@7
D=A //D=7
@LCL
D=D+M //D=LCL+7
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+7
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// label Screen.drawLine$IF_END2
(Screen.drawLine$IF_END2)

// push constant 2
@2
D=A //D=2
@SP
A=M
M=D //*SP=2
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


// call Math.multiply 2
// push Math.multiply$d4e053ef010c41a09b39bfc7947edf5b
@Math.multiply$d4e053ef010c41a09b39bfc7947edf5b
D=A
@SP
A=M
M=D //*SP=Math.multiply$d4e053ef010c41a09b39bfc7947edf5b
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$d4e053ef010c41a09b39bfc7947edf5b)



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

// pop local 5
@5
D=A //D=5
@LCL
D=D+M //D=LCL+5
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+5
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push constant 2
@2
D=A //D=2
@SP
A=M
M=D //*SP=2
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


// call Math.multiply 2
// push Math.multiply$6379af2340a3415d9e9645dd98847daa
@Math.multiply$6379af2340a3415d9e9645dd98847daa
D=A
@SP
A=M
M=D //*SP=Math.multiply$6379af2340a3415d9e9645dd98847daa
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$6379af2340a3415d9e9645dd98847daa)



// pop local 9
@9
D=A //D=9
@LCL
D=D+M //D=LCL+9
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+9
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push constant 2
@2
D=A //D=2
@SP
A=M
M=D //*SP=2
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


// call Math.multiply 2
// push Math.multiply$dcaa56d2cf5c41bfafeac84a96e14dd0
@Math.multiply$dcaa56d2cf5c41bfafeac84a96e14dd0
D=A
@SP
A=M
M=D //*SP=Math.multiply$dcaa56d2cf5c41bfafeac84a96e14dd0
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$dcaa56d2cf5c41bfafeac84a96e14dd0)



// pop local 10
@10
D=A //D=10
@LCL
D=D+M //D=LCL+10
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+10
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

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

// push local 6
@6
D=A //D=6
@LCL
A=D+M //A=LCL+6, M=*(LCL+6)
D=M //D=*(LCL+6)
@SP
A=M
M=D //*SP=*(LCL+6)
@SP
M=M+1 //SP++


// call Screen.drawConditional 3
// push Screen.drawConditional$e4d41f9ca28a4551ae6e5b58abeff1c8
@Screen.drawConditional$e4d41f9ca28a4551ae6e5b58abeff1c8
D=A
@SP
A=M
M=D //*SP=Screen.drawConditional$e4d41f9ca28a4551ae6e5b58abeff1c8
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
@3
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
// goto Screen.drawConditional
@Screen.drawConditional
0;JMP
(Screen.drawConditional$e4d41f9ca28a4551ae6e5b58abeff1c8)



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

// label Screen.drawLine$WHILE_EXP0
(Screen.drawLine$WHILE_EXP0)

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

// push local 8
@8
D=A //D=8
@LCL
A=D+M //A=LCL+8, M=*(LCL+8)
D=M //D=*(LCL+8)
@SP
A=M
M=D //*SP=*(LCL+8)
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
@LT_249f5d32a445478f835b30db0859f679
D;JLT
@SP
A=M
M=0
@END_249f5d32a445478f835b30db0859f679
0;JMP
(LT_249f5d32a445478f835b30db0859f679)
@SP
A=M
M=-1
(END_249f5d32a445478f835b30db0859f679)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Screen.drawLine$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawLine$WHILE_END0
D;JNE

// push local 5
@5
D=A //D=5
@LCL
A=D+M //A=LCL+5, M=*(LCL+5)
D=M //D=*(LCL+5)
@SP
A=M
M=D //*SP=*(LCL+5)
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

// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@LT_1c1ac626f0bf49e287371b8c8aa2149a
D;JLT
@SP
A=M
M=0
@END_1c1ac626f0bf49e287371b8c8aa2149a
0;JMP
(LT_1c1ac626f0bf49e287371b8c8aa2149a)
@SP
A=M
M=-1
(END_1c1ac626f0bf49e287371b8c8aa2149a)
@SP
M=M+1

// if-goto Screen.drawLine$IF_TRUE3
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawLine$IF_TRUE3
D;JNE

// goto Screen.drawLine$IF_FALSE3
@Screen.drawLine$IF_FALSE3
0;JMP

// label Screen.drawLine$IF_TRUE3
(Screen.drawLine$IF_TRUE3)

// push local 5
@5
D=A //D=5
@LCL
A=D+M //A=LCL+5, M=*(LCL+5)
D=M //D=*(LCL+5)
@SP
A=M
M=D //*SP=*(LCL+5)
@SP
M=M+1 //SP++

// push local 9
@9
D=A //D=9
@LCL
A=D+M //A=LCL+9, M=*(LCL+9)
D=M //D=*(LCL+9)
@SP
A=M
M=D //*SP=*(LCL+9)
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

// pop local 5
@5
D=A //D=5
@LCL
D=D+M //D=LCL+5
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+5
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// goto Screen.drawLine$IF_END3
@Screen.drawLine$IF_END3
0;JMP

// label Screen.drawLine$IF_FALSE3
(Screen.drawLine$IF_FALSE3)

// push local 5
@5
D=A //D=5
@LCL
A=D+M //A=LCL+5, M=*(LCL+5)
D=M //D=*(LCL+5)
@SP
A=M
M=D //*SP=*(LCL+5)
@SP
M=M+1 //SP++

// push local 10
@10
D=A //D=10
@LCL
A=D+M //A=LCL+10, M=*(LCL+10)
D=M //D=*(LCL+10)
@SP
A=M
M=D //*SP=*(LCL+10)
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

// pop local 5
@5
D=A //D=5
@LCL
D=D+M //D=LCL+5
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+5
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push local 7
@7
D=A //D=7
@LCL
A=D+M //A=LCL+7, M=*(LCL+7)
D=M //D=*(LCL+7)
@SP
A=M
M=D //*SP=*(LCL+7)
@SP
M=M+1 //SP++

// if-goto Screen.drawLine$IF_TRUE4
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawLine$IF_TRUE4
D;JNE

// goto Screen.drawLine$IF_FALSE4
@Screen.drawLine$IF_FALSE4
0;JMP

// label Screen.drawLine$IF_TRUE4
(Screen.drawLine$IF_TRUE4)

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

// goto Screen.drawLine$IF_END4
@Screen.drawLine$IF_END4
0;JMP

// label Screen.drawLine$IF_FALSE4
(Screen.drawLine$IF_FALSE4)

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

// label Screen.drawLine$IF_END4
(Screen.drawLine$IF_END4)

// label Screen.drawLine$IF_END3
(Screen.drawLine$IF_END3)

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

// push local 6
@6
D=A //D=6
@LCL
A=D+M //A=LCL+6, M=*(LCL+6)
D=M //D=*(LCL+6)
@SP
A=M
M=D //*SP=*(LCL+6)
@SP
M=M+1 //SP++


// call Screen.drawConditional 3
// push Screen.drawConditional$30d467a86a7a4826a79f157d78f74eb5
@Screen.drawConditional$30d467a86a7a4826a79f157d78f74eb5
D=A
@SP
A=M
M=D //*SP=Screen.drawConditional$30d467a86a7a4826a79f157d78f74eb5
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
@3
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
// goto Screen.drawConditional
@Screen.drawConditional
0;JMP
(Screen.drawConditional$30d467a86a7a4826a79f157d78f74eb5)



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

// goto Screen.drawLine$WHILE_EXP0
@Screen.drawLine$WHILE_EXP0
0;JMP

// label Screen.drawLine$WHILE_END0
(Screen.drawLine$WHILE_END0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Screen.drawRectangle 9
(Screen.drawRectangle)
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

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_48c9a7e5a5984c4389f331e480dadaa9
D;JGT
@SP
A=M
M=0
@END_48c9a7e5a5984c4389f331e480dadaa9
0;JMP
(GT_48c9a7e5a5984c4389f331e480dadaa9)
@SP
A=M
M=-1
(END_48c9a7e5a5984c4389f331e480dadaa9)
@SP
M=M+1

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

// push argument 3
@3
D=A //D=3
@ARG
A=D+M //A=ARG+3, M=*(ARG+3)
D=M //D=*(ARG+3)
@SP
A=M
M=D //*SP=*(ARG+3)
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_2f04de1a58324705ab9a03c4db30e485
D;JGT
@SP
A=M
M=0
@END_2f04de1a58324705ab9a03c4db30e485
0;JMP
(GT_2f04de1a58324705ab9a03c4db30e485)
@SP
A=M
M=-1
(END_2f04de1a58324705ab9a03c4db30e485)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_9f9400a3cbba4608ad435bd223ea42ef
D;JLT
@SP
A=M
M=0
@END_9f9400a3cbba4608ad435bd223ea42ef
0;JMP
(LT_9f9400a3cbba4608ad435bd223ea42ef)
@SP
A=M
M=-1
(END_9f9400a3cbba4608ad435bd223ea42ef)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
@SP
M=M+1 //SP++

// push constant 511
@511
D=A //D=511
@SP
A=M
M=D //*SP=511
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_0cba45941291466b917df9b4f29ac959
D;JGT
@SP
A=M
M=0
@END_0cba45941291466b917df9b4f29ac959
0;JMP
(GT_0cba45941291466b917df9b4f29ac959)
@SP
A=M
M=-1
(END_0cba45941291466b917df9b4f29ac959)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_421ae24f5f784822884fccd3521f3bb5
D;JLT
@SP
A=M
M=0
@END_421ae24f5f784822884fccd3521f3bb5
0;JMP
(LT_421ae24f5f784822884fccd3521f3bb5)
@SP
A=M
M=-1
(END_421ae24f5f784822884fccd3521f3bb5)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

// push argument 3
@3
D=A //D=3
@ARG
A=D+M //A=ARG+3, M=*(ARG+3)
D=M //D=*(ARG+3)
@SP
A=M
M=D //*SP=*(ARG+3)
@SP
M=M+1 //SP++

// push constant 255
@255
D=A //D=255
@SP
A=M
M=D //*SP=255
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_8decf70359e846289c13370c92f70084
D;JGT
@SP
A=M
M=0
@END_8decf70359e846289c13370c92f70084
0;JMP
(GT_8decf70359e846289c13370c92f70084)
@SP
A=M
M=-1
(END_8decf70359e846289c13370c92f70084)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

// if-goto Screen.drawRectangle$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawRectangle$IF_TRUE0
D;JNE

// goto Screen.drawRectangle$IF_FALSE0
@Screen.drawRectangle$IF_FALSE0
0;JMP

// label Screen.drawRectangle$IF_TRUE0
(Screen.drawRectangle$IF_TRUE0)

// push constant 9
@9
D=A //D=9
@SP
A=M
M=D //*SP=9
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$19cf73cae58e4d19a9d370d16db443da
@Sys.error$19cf73cae58e4d19a9d370d16db443da
D=A
@SP
A=M
M=D //*SP=Sys.error$19cf73cae58e4d19a9d370d16db443da
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$19cf73cae58e4d19a9d370d16db443da)



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

// label Screen.drawRectangle$IF_FALSE0
(Screen.drawRectangle$IF_FALSE0)

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

// push constant 16
@16
D=A //D=16
@SP
A=M
M=D //*SP=16
@SP
M=M+1 //SP++


// call Math.divide 2
// push Math.divide$9af6b1ba8288498084ef65ddaca8b83e
@Math.divide$9af6b1ba8288498084ef65ddaca8b83e
D=A
@SP
A=M
M=D //*SP=Math.divide$9af6b1ba8288498084ef65ddaca8b83e
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
@2
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
// goto Math.divide
@Math.divide
0;JMP
(Math.divide$9af6b1ba8288498084ef65ddaca8b83e)



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

// push constant 16
@16
D=A //D=16
@SP
A=M
M=D //*SP=16
@SP
M=M+1 //SP++


// call Math.multiply 2
// push Math.multiply$1977df55f52b4e64b087a45b8a19ecea
@Math.multiply$1977df55f52b4e64b087a45b8a19ecea
D=A
@SP
A=M
M=D //*SP=Math.multiply$1977df55f52b4e64b087a45b8a19ecea
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$1977df55f52b4e64b087a45b8a19ecea)



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

// pop local 7
@7
D=A //D=7
@LCL
D=D+M //D=LCL+7
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+7
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
@SP
M=M+1 //SP++

// push constant 16
@16
D=A //D=16
@SP
A=M
M=D //*SP=16
@SP
M=M+1 //SP++


// call Math.divide 2
// push Math.divide$20f3be10bf884186a6d04cef98605003
@Math.divide$20f3be10bf884186a6d04cef98605003
D=A
@SP
A=M
M=D //*SP=Math.divide$20f3be10bf884186a6d04cef98605003
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
@2
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
// goto Math.divide
@Math.divide
0;JMP
(Math.divide$20f3be10bf884186a6d04cef98605003)



// pop local 4
@4
D=A //D=4
@LCL
D=D+M //D=LCL+4
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+4
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
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

// push constant 16
@16
D=A //D=16
@SP
A=M
M=D //*SP=16
@SP
M=M+1 //SP++


// call Math.multiply 2
// push Math.multiply$626e749c4225429fabf98b4edc57ba2a
@Math.multiply$626e749c4225429fabf98b4edc57ba2a
D=A
@SP
A=M
M=D //*SP=Math.multiply$626e749c4225429fabf98b4edc57ba2a
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$626e749c4225429fabf98b4edc57ba2a)



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

// pop local 8
@8
D=A //D=8
@LCL
D=D+M //D=LCL+8
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+8
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push local 7
@7
D=A //D=7
@LCL
A=D+M //A=LCL+7, M=*(LCL+7)
D=M //D=*(LCL+7)
@SP
A=M
M=D //*SP=*(LCL+7)
@SP
M=M+1 //SP++

// push static 0
@Screen.0
D=M
@SP
A=M
M=D //*SP=Screen.0
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

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// pop local 6
@6
D=A //D=6
@LCL
D=D+M //D=LCL+6
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+6
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push local 8
@8
D=A //D=8
@LCL
A=D+M //A=LCL+8, M=*(LCL+8)
D=M //D=*(LCL+8)
@SP
A=M
M=D //*SP=*(LCL+8)
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

// push static 0
@Screen.0
D=M
@SP
A=M
M=D //*SP=Screen.0
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

// pop local 5
@5
D=A //D=5
@LCL
D=D+M //D=LCL+5
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+5
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

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

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
@SP
M=M+1 //SP++


// call Math.multiply 2
// push Math.multiply$4eea56a1f1b847b7b002e67a51eb8c90
@Math.multiply$4eea56a1f1b847b7b002e67a51eb8c90
D=A
@SP
A=M
M=D //*SP=Math.multiply$4eea56a1f1b847b7b002e67a51eb8c90
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$4eea56a1f1b847b7b002e67a51eb8c90)



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

// label Screen.drawRectangle$WHILE_EXP0
(Screen.drawRectangle$WHILE_EXP0)

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

// push argument 3
@3
D=A //D=3
@ARG
A=D+M //A=ARG+3, M=*(ARG+3)
D=M //D=*(ARG+3)
@SP
A=M
M=D //*SP=*(ARG+3)
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_ae3552f0a62541d4b7ff5e62b68af400
D;JGT
@SP
A=M
M=0
@END_ae3552f0a62541d4b7ff5e62b68af400
0;JMP
(GT_ae3552f0a62541d4b7ff5e62b68af400)
@SP
A=M
M=-1
(END_ae3552f0a62541d4b7ff5e62b68af400)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Screen.drawRectangle$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawRectangle$WHILE_END0
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_049a639a35ea4c5d9945f71f532722ce
D;JEQ
@SP
A=M
M=0
@END_049a639a35ea4c5d9945f71f532722ce
0;JMP
(EQUAL_049a639a35ea4c5d9945f71f532722ce)
@SP
A=M
M=-1
(END_049a639a35ea4c5d9945f71f532722ce)
@SP
M=M+1

// if-goto Screen.drawRectangle$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawRectangle$IF_TRUE1
D;JNE

// goto Screen.drawRectangle$IF_FALSE1
@Screen.drawRectangle$IF_FALSE1
0;JMP

// label Screen.drawRectangle$IF_TRUE1
(Screen.drawRectangle$IF_TRUE1)

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

// push local 5
@5
D=A //D=5
@LCL
A=D+M //A=LCL+5, M=*(LCL+5)
D=M //D=*(LCL+5)
@SP
A=M
M=D //*SP=*(LCL+5)
@SP
M=M+1 //SP++

// push local 6
@6
D=A //D=6
@LCL
A=D+M //A=LCL+6, M=*(LCL+6)
D=M //D=*(LCL+6)
@SP
A=M
M=D //*SP=*(LCL+6)
@SP
M=M+1 //SP++

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1


// call Screen.updateLocation 2
// push Screen.updateLocation$5adccb20cc31402aad58ce20d7943d84
@Screen.updateLocation$5adccb20cc31402aad58ce20d7943d84
D=A
@SP
A=M
M=D //*SP=Screen.updateLocation$5adccb20cc31402aad58ce20d7943d84
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
@2
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(Screen.updateLocation$5adccb20cc31402aad58ce20d7943d84)



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

// goto Screen.drawRectangle$IF_END1
@Screen.drawRectangle$IF_END1
0;JMP

// label Screen.drawRectangle$IF_FALSE1
(Screen.drawRectangle$IF_FALSE1)

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

// push local 6
@6
D=A //D=6
@LCL
A=D+M //A=LCL+6, M=*(LCL+6)
D=M //D=*(LCL+6)
@SP
A=M
M=D //*SP=*(LCL+6)
@SP
M=M+1 //SP++


// call Screen.updateLocation 2
// push Screen.updateLocation$178e41f5e402430fb2e8deec6437ef93
@Screen.updateLocation$178e41f5e402430fb2e8deec6437ef93
D=A
@SP
A=M
M=D //*SP=Screen.updateLocation$178e41f5e402430fb2e8deec6437ef93
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
@2
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(Screen.updateLocation$178e41f5e402430fb2e8deec6437ef93)



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

// label Screen.drawRectangle$WHILE_EXP1
(Screen.drawRectangle$WHILE_EXP1)

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

// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@LT_d2757902f8614c20b36fd3f972e83cdc
D;JLT
@SP
A=M
M=0
@END_d2757902f8614c20b36fd3f972e83cdc
0;JMP
(LT_d2757902f8614c20b36fd3f972e83cdc)
@SP
A=M
M=-1
(END_d2757902f8614c20b36fd3f972e83cdc)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Screen.drawRectangle$WHILE_END1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawRectangle$WHILE_END1
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

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
@SP
M=M+1 //SP++

// neg
@SP
M=M-1 //SP--
A=M
M=-M //negate
@SP
M=M+1 //SP++


// call Screen.updateLocation 2
// push Screen.updateLocation$672183dcb235470f99bfcc4da23713b5
@Screen.updateLocation$672183dcb235470f99bfcc4da23713b5
D=A
@SP
A=M
M=D //*SP=Screen.updateLocation$672183dcb235470f99bfcc4da23713b5
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
@2
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(Screen.updateLocation$672183dcb235470f99bfcc4da23713b5)



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

// goto Screen.drawRectangle$WHILE_EXP1
@Screen.drawRectangle$WHILE_EXP1
0;JMP

// label Screen.drawRectangle$WHILE_END1
(Screen.drawRectangle$WHILE_END1)

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

// push local 5
@5
D=A //D=5
@LCL
A=D+M //A=LCL+5, M=*(LCL+5)
D=M //D=*(LCL+5)
@SP
A=M
M=D //*SP=*(LCL+5)
@SP
M=M+1 //SP++


// call Screen.updateLocation 2
// push Screen.updateLocation$8fe9747698734a0898b519bcce1903d4
@Screen.updateLocation$8fe9747698734a0898b519bcce1903d4
D=A
@SP
A=M
M=D //*SP=Screen.updateLocation$8fe9747698734a0898b519bcce1903d4
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
@2
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(Screen.updateLocation$8fe9747698734a0898b519bcce1903d4)



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

// label Screen.drawRectangle$IF_END1
(Screen.drawRectangle$IF_END1)

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

// pop argument 1
@1
D=A //D=1
@ARG
D=D+M //D=ARG+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=ARG+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

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

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
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

// goto Screen.drawRectangle$WHILE_EXP0
@Screen.drawRectangle$WHILE_EXP0
0;JMP

// label Screen.drawRectangle$WHILE_END0
(Screen.drawRectangle$WHILE_END0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Screen.drawHorizontal 11
(Screen.drawHorizontal)
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
// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
@SP
M=M+1 //SP++


// call Math.min 2
// push Math.min$c162a47a313b4418925a9499282ff6b2
@Math.min$c162a47a313b4418925a9499282ff6b2
D=A
@SP
A=M
M=D //*SP=Math.min$c162a47a313b4418925a9499282ff6b2
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
@2
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
// goto Math.min
@Math.min
0;JMP
(Math.min$c162a47a313b4418925a9499282ff6b2)



// pop local 7
@7
D=A //D=7
@LCL
D=D+M //D=LCL+7
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+7
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

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

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
@SP
M=M+1 //SP++


// call Math.max 2
// push Math.max$3e5c6936a8ca4fc0aa073191c1859cba
@Math.max$3e5c6936a8ca4fc0aa073191c1859cba
D=A
@SP
A=M
M=D //*SP=Math.max$3e5c6936a8ca4fc0aa073191c1859cba
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
@2
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
// goto Math.max
@Math.max
0;JMP
(Math.max$3e5c6936a8ca4fc0aa073191c1859cba)



// pop local 8
@8
D=A //D=8
@LCL
D=D+M //D=LCL+8
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+8
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

// neg
@SP
M=M-1 //SP--
A=M
M=-M //negate
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_3a417290a4a5439ea3f0d546c8ce98cc
D;JGT
@SP
A=M
M=0
@END_3a417290a4a5439ea3f0d546c8ce98cc
0;JMP
(GT_3a417290a4a5439ea3f0d546c8ce98cc)
@SP
A=M
M=-1
(END_3a417290a4a5439ea3f0d546c8ce98cc)
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

// push constant 256
@256
D=A //D=256
@SP
A=M
M=D //*SP=256
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
@LT_13a8bf2e542945c39bf5bd77f8ed1260
D;JLT
@SP
A=M
M=0
@END_13a8bf2e542945c39bf5bd77f8ed1260
0;JMP
(LT_13a8bf2e542945c39bf5bd77f8ed1260)
@SP
A=M
M=-1
(END_13a8bf2e542945c39bf5bd77f8ed1260)
@SP
M=M+1

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1

// push local 7
@7
D=A //D=7
@LCL
A=D+M //A=LCL+7, M=*(LCL+7)
D=M //D=*(LCL+7)
@SP
A=M
M=D //*SP=*(LCL+7)
@SP
M=M+1 //SP++

// push constant 512
@512
D=A //D=512
@SP
A=M
M=D //*SP=512
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
@LT_6a358ffdebcb430dada4a4fe091ae355
D;JLT
@SP
A=M
M=0
@END_6a358ffdebcb430dada4a4fe091ae355
0;JMP
(LT_6a358ffdebcb430dada4a4fe091ae355)
@SP
A=M
M=-1
(END_6a358ffdebcb430dada4a4fe091ae355)
@SP
M=M+1

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1

// push local 8
@8
D=A //D=8
@LCL
A=D+M //A=LCL+8, M=*(LCL+8)
D=M //D=*(LCL+8)
@SP
A=M
M=D //*SP=*(LCL+8)
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

// neg
@SP
M=M-1 //SP--
A=M
M=-M //negate
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_8238be1b538e42749c21e0c15894d7fa
D;JGT
@SP
A=M
M=0
@END_8238be1b538e42749c21e0c15894d7fa
0;JMP
(GT_8238be1b538e42749c21e0c15894d7fa)
@SP
A=M
M=-1
(END_8238be1b538e42749c21e0c15894d7fa)
@SP
M=M+1

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1

// if-goto Screen.drawHorizontal$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawHorizontal$IF_TRUE0
D;JNE

// goto Screen.drawHorizontal$IF_FALSE0
@Screen.drawHorizontal$IF_FALSE0
0;JMP

// label Screen.drawHorizontal$IF_TRUE0
(Screen.drawHorizontal$IF_TRUE0)

// push local 7
@7
D=A //D=7
@LCL
A=D+M //A=LCL+7, M=*(LCL+7)
D=M //D=*(LCL+7)
@SP
A=M
M=D //*SP=*(LCL+7)
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


// call Math.max 2
// push Math.max$0e8a432991e24aa2893a2b140f23ee5c
@Math.max$0e8a432991e24aa2893a2b140f23ee5c
D=A
@SP
A=M
M=D //*SP=Math.max$0e8a432991e24aa2893a2b140f23ee5c
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
@2
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
// goto Math.max
@Math.max
0;JMP
(Math.max$0e8a432991e24aa2893a2b140f23ee5c)



// pop local 7
@7
D=A //D=7
@LCL
D=D+M //D=LCL+7
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+7
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push local 8
@8
D=A //D=8
@LCL
A=D+M //A=LCL+8, M=*(LCL+8)
D=M //D=*(LCL+8)
@SP
A=M
M=D //*SP=*(LCL+8)
@SP
M=M+1 //SP++

// push constant 511
@511
D=A //D=511
@SP
A=M
M=D //*SP=511
@SP
M=M+1 //SP++


// call Math.min 2
// push Math.min$0622f868a23947ba953b560e6a3510b0
@Math.min$0622f868a23947ba953b560e6a3510b0
D=A
@SP
A=M
M=D //*SP=Math.min$0622f868a23947ba953b560e6a3510b0
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
@2
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
// goto Math.min
@Math.min
0;JMP
(Math.min$0622f868a23947ba953b560e6a3510b0)



// pop local 8
@8
D=A //D=8
@LCL
D=D+M //D=LCL+8
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+8
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push local 7
@7
D=A //D=7
@LCL
A=D+M //A=LCL+7, M=*(LCL+7)
D=M //D=*(LCL+7)
@SP
A=M
M=D //*SP=*(LCL+7)
@SP
M=M+1 //SP++

// push constant 16
@16
D=A //D=16
@SP
A=M
M=D //*SP=16
@SP
M=M+1 //SP++


// call Math.divide 2
// push Math.divide$b26e25d79906449388293adad1caa9a6
@Math.divide$b26e25d79906449388293adad1caa9a6
D=A
@SP
A=M
M=D //*SP=Math.divide$b26e25d79906449388293adad1caa9a6
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
@2
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
// goto Math.divide
@Math.divide
0;JMP
(Math.divide$b26e25d79906449388293adad1caa9a6)



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

// push local 7
@7
D=A //D=7
@LCL
A=D+M //A=LCL+7, M=*(LCL+7)
D=M //D=*(LCL+7)
@SP
A=M
M=D //*SP=*(LCL+7)
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

// push constant 16
@16
D=A //D=16
@SP
A=M
M=D //*SP=16
@SP
M=M+1 //SP++


// call Math.multiply 2
// push Math.multiply$24623f82d30f47a5a27655dd7bbdbee7
@Math.multiply$24623f82d30f47a5a27655dd7bbdbee7
D=A
@SP
A=M
M=D //*SP=Math.multiply$24623f82d30f47a5a27655dd7bbdbee7
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$24623f82d30f47a5a27655dd7bbdbee7)



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

// pop local 9
@9
D=A //D=9
@LCL
D=D+M //D=LCL+9
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+9
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push local 8
@8
D=A //D=8
@LCL
A=D+M //A=LCL+8, M=*(LCL+8)
D=M //D=*(LCL+8)
@SP
A=M
M=D //*SP=*(LCL+8)
@SP
M=M+1 //SP++

// push constant 16
@16
D=A //D=16
@SP
A=M
M=D //*SP=16
@SP
M=M+1 //SP++


// call Math.divide 2
// push Math.divide$f0329fd074e942cea900e2a5bdad42c1
@Math.divide$f0329fd074e942cea900e2a5bdad42c1
D=A
@SP
A=M
M=D //*SP=Math.divide$f0329fd074e942cea900e2a5bdad42c1
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
@2
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
// goto Math.divide
@Math.divide
0;JMP
(Math.divide$f0329fd074e942cea900e2a5bdad42c1)



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

// push local 8
@8
D=A //D=8
@LCL
A=D+M //A=LCL+8, M=*(LCL+8)
D=M //D=*(LCL+8)
@SP
A=M
M=D //*SP=*(LCL+8)
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

// push constant 16
@16
D=A //D=16
@SP
A=M
M=D //*SP=16
@SP
M=M+1 //SP++


// call Math.multiply 2
// push Math.multiply$102b5cd8697548ec83aca6ae368d0052
@Math.multiply$102b5cd8697548ec83aca6ae368d0052
D=A
@SP
A=M
M=D //*SP=Math.multiply$102b5cd8697548ec83aca6ae368d0052
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$102b5cd8697548ec83aca6ae368d0052)



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

// pop local 10
@10
D=A //D=10
@LCL
D=D+M //D=LCL+10
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+10
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push local 9
@9
D=A //D=9
@LCL
A=D+M //A=LCL+9, M=*(LCL+9)
D=M //D=*(LCL+9)
@SP
A=M
M=D //*SP=*(LCL+9)
@SP
M=M+1 //SP++

// push static 0
@Screen.0
D=M
@SP
A=M
M=D //*SP=Screen.0
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

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// pop local 5
@5
D=A //D=5
@LCL
D=D+M //D=LCL+5
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+5
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push local 10
@10
D=A //D=10
@LCL
A=D+M //A=LCL+10, M=*(LCL+10)
D=M //D=*(LCL+10)
@SP
A=M
M=D //*SP=*(LCL+10)
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

// push static 0
@Screen.0
D=M
@SP
A=M
M=D //*SP=Screen.0
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

// pop local 4
@4
D=A //D=4
@LCL
D=D+M //D=LCL+4
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+4
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

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
@SP
M=M+1 //SP++


// call Math.multiply 2
// push Math.multiply$42281cf8731045098abcf5f54b8fff26
@Math.multiply$42281cf8731045098abcf5f54b8fff26
D=A
@SP
A=M
M=D //*SP=Math.multiply$42281cf8731045098abcf5f54b8fff26
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$42281cf8731045098abcf5f54b8fff26)



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

// pop local 6
@6
D=A //D=6
@LCL
D=D+M //D=LCL+6
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+6
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

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

// push local 6
@6
D=A //D=6
@LCL
A=D+M //A=LCL+6, M=*(LCL+6)
D=M //D=*(LCL+6)
@SP
A=M
M=D //*SP=*(LCL+6)
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

// push local 6
@6
D=A //D=6
@LCL
A=D+M //A=LCL+6, M=*(LCL+6)
D=M //D=*(LCL+6)
@SP
A=M
M=D //*SP=*(LCL+6)
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

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_a5b0419ede1a403a810d0b7fc860b8ef
D;JEQ
@SP
A=M
M=0
@END_a5b0419ede1a403a810d0b7fc860b8ef
0;JMP
(EQUAL_a5b0419ede1a403a810d0b7fc860b8ef)
@SP
A=M
M=-1
(END_a5b0419ede1a403a810d0b7fc860b8ef)
@SP
M=M+1

// if-goto Screen.drawHorizontal$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawHorizontal$IF_TRUE1
D;JNE

// goto Screen.drawHorizontal$IF_FALSE1
@Screen.drawHorizontal$IF_FALSE1
0;JMP

// label Screen.drawHorizontal$IF_TRUE1
(Screen.drawHorizontal$IF_TRUE1)

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

// push local 5
@5
D=A //D=5
@LCL
A=D+M //A=LCL+5, M=*(LCL+5)
D=M //D=*(LCL+5)
@SP
A=M
M=D //*SP=*(LCL+5)
@SP
M=M+1 //SP++

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1


// call Screen.updateLocation 2
// push Screen.updateLocation$e59beab75b174a25a4d3812ff387d10c
@Screen.updateLocation$e59beab75b174a25a4d3812ff387d10c
D=A
@SP
A=M
M=D //*SP=Screen.updateLocation$e59beab75b174a25a4d3812ff387d10c
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
@2
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(Screen.updateLocation$e59beab75b174a25a4d3812ff387d10c)



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

// goto Screen.drawHorizontal$IF_END1
@Screen.drawHorizontal$IF_END1
0;JMP

// label Screen.drawHorizontal$IF_FALSE1
(Screen.drawHorizontal$IF_FALSE1)

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

// push local 5
@5
D=A //D=5
@LCL
A=D+M //A=LCL+5, M=*(LCL+5)
D=M //D=*(LCL+5)
@SP
A=M
M=D //*SP=*(LCL+5)
@SP
M=M+1 //SP++


// call Screen.updateLocation 2
// push Screen.updateLocation$541a9eed38b0430a960f60d8432d17b5
@Screen.updateLocation$541a9eed38b0430a960f60d8432d17b5
D=A
@SP
A=M
M=D //*SP=Screen.updateLocation$541a9eed38b0430a960f60d8432d17b5
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
@2
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(Screen.updateLocation$541a9eed38b0430a960f60d8432d17b5)



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

// label Screen.drawHorizontal$WHILE_EXP0
(Screen.drawHorizontal$WHILE_EXP0)

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

// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@LT_e0c9f11513e54602b0ac89bb2a6deee0
D;JLT
@SP
A=M
M=0
@END_e0c9f11513e54602b0ac89bb2a6deee0
0;JMP
(LT_e0c9f11513e54602b0ac89bb2a6deee0)
@SP
A=M
M=-1
(END_e0c9f11513e54602b0ac89bb2a6deee0)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Screen.drawHorizontal$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawHorizontal$WHILE_END0
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

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
@SP
M=M+1 //SP++

// neg
@SP
M=M-1 //SP--
A=M
M=-M //negate
@SP
M=M+1 //SP++


// call Screen.updateLocation 2
// push Screen.updateLocation$039c58b9b7f141cf86b126b5fa48da61
@Screen.updateLocation$039c58b9b7f141cf86b126b5fa48da61
D=A
@SP
A=M
M=D //*SP=Screen.updateLocation$039c58b9b7f141cf86b126b5fa48da61
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
@2
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(Screen.updateLocation$039c58b9b7f141cf86b126b5fa48da61)



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

// goto Screen.drawHorizontal$WHILE_EXP0
@Screen.drawHorizontal$WHILE_EXP0
0;JMP

// label Screen.drawHorizontal$WHILE_END0
(Screen.drawHorizontal$WHILE_END0)

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


// call Screen.updateLocation 2
// push Screen.updateLocation$6385ff0aa27341e0b8dc1afdb506935a
@Screen.updateLocation$6385ff0aa27341e0b8dc1afdb506935a
D=A
@SP
A=M
M=D //*SP=Screen.updateLocation$6385ff0aa27341e0b8dc1afdb506935a
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
@2
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
// goto Screen.updateLocation
@Screen.updateLocation
0;JMP
(Screen.updateLocation$6385ff0aa27341e0b8dc1afdb506935a)



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

// label Screen.drawHorizontal$IF_END1
(Screen.drawHorizontal$IF_END1)

// label Screen.drawHorizontal$IF_FALSE0
(Screen.drawHorizontal$IF_FALSE0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Screen.drawSymetric 0
(Screen.drawSymetric)

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

// push argument 3
@3
D=A //D=3
@ARG
A=D+M //A=ARG+3, M=*(ARG+3)
D=M //D=*(ARG+3)
@SP
A=M
M=D //*SP=*(ARG+3)
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

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
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

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
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


// call Screen.drawHorizontal 3
// push Screen.drawHorizontal$9c011ea02faf429f98873fe1bb1575d9
@Screen.drawHorizontal$9c011ea02faf429f98873fe1bb1575d9
D=A
@SP
A=M
M=D //*SP=Screen.drawHorizontal$9c011ea02faf429f98873fe1bb1575d9
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
@3
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
// goto Screen.drawHorizontal
@Screen.drawHorizontal
0;JMP
(Screen.drawHorizontal$9c011ea02faf429f98873fe1bb1575d9)



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

// push argument 3
@3
D=A //D=3
@ARG
A=D+M //A=ARG+3, M=*(ARG+3)
D=M //D=*(ARG+3)
@SP
A=M
M=D //*SP=*(ARG+3)
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

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
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

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
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


// call Screen.drawHorizontal 3
// push Screen.drawHorizontal$1e2c33187d564f33a0186346c1b66c60
@Screen.drawHorizontal$1e2c33187d564f33a0186346c1b66c60
D=A
@SP
A=M
M=D //*SP=Screen.drawHorizontal$1e2c33187d564f33a0186346c1b66c60
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
@3
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
// goto Screen.drawHorizontal
@Screen.drawHorizontal
0;JMP
(Screen.drawHorizontal$1e2c33187d564f33a0186346c1b66c60)



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

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
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

// push argument 3
@3
D=A //D=3
@ARG
A=D+M //A=ARG+3, M=*(ARG+3)
D=M //D=*(ARG+3)
@SP
A=M
M=D //*SP=*(ARG+3)
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

// push argument 3
@3
D=A //D=3
@ARG
A=D+M //A=ARG+3, M=*(ARG+3)
D=M //D=*(ARG+3)
@SP
A=M
M=D //*SP=*(ARG+3)
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


// call Screen.drawHorizontal 3
// push Screen.drawHorizontal$23b710df821c4764be6cb2007fa024cb
@Screen.drawHorizontal$23b710df821c4764be6cb2007fa024cb
D=A
@SP
A=M
M=D //*SP=Screen.drawHorizontal$23b710df821c4764be6cb2007fa024cb
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
@3
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
// goto Screen.drawHorizontal
@Screen.drawHorizontal
0;JMP
(Screen.drawHorizontal$23b710df821c4764be6cb2007fa024cb)



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

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
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

// push argument 3
@3
D=A //D=3
@ARG
A=D+M //A=ARG+3, M=*(ARG+3)
D=M //D=*(ARG+3)
@SP
A=M
M=D //*SP=*(ARG+3)
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

// push argument 3
@3
D=A //D=3
@ARG
A=D+M //A=ARG+3, M=*(ARG+3)
D=M //D=*(ARG+3)
@SP
A=M
M=D //*SP=*(ARG+3)
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


// call Screen.drawHorizontal 3
// push Screen.drawHorizontal$0e3834f9b4794d089c25e0c2eea9b5a4
@Screen.drawHorizontal$0e3834f9b4794d089c25e0c2eea9b5a4
D=A
@SP
A=M
M=D //*SP=Screen.drawHorizontal$0e3834f9b4794d089c25e0c2eea9b5a4
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
@3
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
// goto Screen.drawHorizontal
@Screen.drawHorizontal
0;JMP
(Screen.drawHorizontal$0e3834f9b4794d089c25e0c2eea9b5a4)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Screen.drawCircle 3
(Screen.drawCircle)
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_a5422db7695241868c7f72848eb85cf0
D;JLT
@SP
A=M
M=0
@END_a5422db7695241868c7f72848eb85cf0
0;JMP
(LT_a5422db7695241868c7f72848eb85cf0)
@SP
A=M
M=-1
(END_a5422db7695241868c7f72848eb85cf0)
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

// push constant 511
@511
D=A //D=511
@SP
A=M
M=D //*SP=511
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_da38bc4f9e6c410d9a843ea2d376a086
D;JGT
@SP
A=M
M=0
@END_da38bc4f9e6c410d9a843ea2d376a086
0;JMP
(GT_da38bc4f9e6c410d9a843ea2d376a086)
@SP
A=M
M=-1
(END_da38bc4f9e6c410d9a843ea2d376a086)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_0acd71766a8c448cb45a361605dba15c
D;JLT
@SP
A=M
M=0
@END_0acd71766a8c448cb45a361605dba15c
0;JMP
(LT_0acd71766a8c448cb45a361605dba15c)
@SP
A=M
M=-1
(END_0acd71766a8c448cb45a361605dba15c)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

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

// push constant 255
@255
D=A //D=255
@SP
A=M
M=D //*SP=255
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_de2778d663da4001b39ffd132f3cf302
D;JGT
@SP
A=M
M=0
@END_de2778d663da4001b39ffd132f3cf302
0;JMP
(GT_de2778d663da4001b39ffd132f3cf302)
@SP
A=M
M=-1
(END_de2778d663da4001b39ffd132f3cf302)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

// if-goto Screen.drawCircle$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawCircle$IF_TRUE0
D;JNE

// goto Screen.drawCircle$IF_FALSE0
@Screen.drawCircle$IF_FALSE0
0;JMP

// label Screen.drawCircle$IF_TRUE0
(Screen.drawCircle$IF_TRUE0)

// push constant 12
@12
D=A //D=12
@SP
A=M
M=D //*SP=12
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$1ce04bccef5f4e7fa575f8737b6112f5
@Sys.error$1ce04bccef5f4e7fa575f8737b6112f5
D=A
@SP
A=M
M=D //*SP=Sys.error$1ce04bccef5f4e7fa575f8737b6112f5
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$1ce04bccef5f4e7fa575f8737b6112f5)



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

// label Screen.drawCircle$IF_FALSE0
(Screen.drawCircle$IF_FALSE0)

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

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_d1b1e3ff31764612b80277adeea9f39a
D;JLT
@SP
A=M
M=0
@END_d1b1e3ff31764612b80277adeea9f39a
0;JMP
(LT_d1b1e3ff31764612b80277adeea9f39a)
@SP
A=M
M=-1
(END_d1b1e3ff31764612b80277adeea9f39a)
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

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
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

// push constant 511
@511
D=A //D=511
@SP
A=M
M=D //*SP=511
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_5ec36d18d979490ab3fed953d35d15df
D;JGT
@SP
A=M
M=0
@END_5ec36d18d979490ab3fed953d35d15df
0;JMP
(GT_5ec36d18d979490ab3fed953d35d15df)
@SP
A=M
M=-1
(END_5ec36d18d979490ab3fed953d35d15df)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

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

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_f38f37c4e7944aeb999b20652d8f1e13
D;JLT
@SP
A=M
M=0
@END_f38f37c4e7944aeb999b20652d8f1e13
0;JMP
(LT_f38f37c4e7944aeb999b20652d8f1e13)
@SP
A=M
M=-1
(END_f38f37c4e7944aeb999b20652d8f1e13)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

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

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
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

// push constant 255
@255
D=A //D=255
@SP
A=M
M=D //*SP=255
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_f112f68b17014139b8be546fdb32d59f
D;JGT
@SP
A=M
M=0
@END_f112f68b17014139b8be546fdb32d59f
0;JMP
(GT_f112f68b17014139b8be546fdb32d59f)
@SP
A=M
M=-1
(END_f112f68b17014139b8be546fdb32d59f)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

// if-goto Screen.drawCircle$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawCircle$IF_TRUE1
D;JNE

// goto Screen.drawCircle$IF_FALSE1
@Screen.drawCircle$IF_FALSE1
0;JMP

// label Screen.drawCircle$IF_TRUE1
(Screen.drawCircle$IF_TRUE1)

// push constant 13
@13
D=A //D=13
@SP
A=M
M=D //*SP=13
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$42c7fcc44be444cdb76994470534a917
@Sys.error$42c7fcc44be444cdb76994470534a917
D=A
@SP
A=M
M=D //*SP=Sys.error$42c7fcc44be444cdb76994470534a917
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$42c7fcc44be444cdb76994470534a917)



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

// label Screen.drawCircle$IF_FALSE1
(Screen.drawCircle$IF_FALSE1)

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
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

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
@SP
M=M+1 //SP++

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
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


// call Screen.drawSymetric 4
// push Screen.drawSymetric$2d71c82563184f3f964dbee6e9479948
@Screen.drawSymetric$2d71c82563184f3f964dbee6e9479948
D=A
@SP
A=M
M=D //*SP=Screen.drawSymetric$2d71c82563184f3f964dbee6e9479948
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
@4
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
// goto Screen.drawSymetric
@Screen.drawSymetric
0;JMP
(Screen.drawSymetric$2d71c82563184f3f964dbee6e9479948)



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

// label Screen.drawCircle$WHILE_EXP0
(Screen.drawCircle$WHILE_EXP0)

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

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_dbb6594d5c234a118f3f06bf4289cdda
D;JGT
@SP
A=M
M=0
@END_dbb6594d5c234a118f3f06bf4289cdda
0;JMP
(GT_dbb6594d5c234a118f3f06bf4289cdda)
@SP
A=M
M=-1
(END_dbb6594d5c234a118f3f06bf4289cdda)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Screen.drawCircle$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawCircle$WHILE_END0
D;JNE

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_b94ec449536142f48f131e86653e36a5
D;JLT
@SP
A=M
M=0
@END_b94ec449536142f48f131e86653e36a5
0;JMP
(LT_b94ec449536142f48f131e86653e36a5)
@SP
A=M
M=-1
(END_b94ec449536142f48f131e86653e36a5)
@SP
M=M+1

// if-goto Screen.drawCircle$IF_TRUE2
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Screen.drawCircle$IF_TRUE2
D;JNE

// goto Screen.drawCircle$IF_FALSE2
@Screen.drawCircle$IF_FALSE2
0;JMP

// label Screen.drawCircle$IF_TRUE2
(Screen.drawCircle$IF_TRUE2)

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

// push constant 2
@2
D=A //D=2
@SP
A=M
M=D //*SP=2
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


// call Math.multiply 2
// push Math.multiply$efd3fdc50e5a4ce9a3ea1d71ed21c566
@Math.multiply$efd3fdc50e5a4ce9a3ea1d71ed21c566
D=A
@SP
A=M
M=D //*SP=Math.multiply$efd3fdc50e5a4ce9a3ea1d71ed21c566
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$efd3fdc50e5a4ce9a3ea1d71ed21c566)



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

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
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

// goto Screen.drawCircle$IF_END2
@Screen.drawCircle$IF_END2
0;JMP

// label Screen.drawCircle$IF_FALSE2
(Screen.drawCircle$IF_FALSE2)

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

// push constant 2
@2
D=A //D=2
@SP
A=M
M=D //*SP=2
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


// call Math.multiply 2
// push Math.multiply$3517f858f9274ed1a0475c7d3d47430a
@Math.multiply$3517f858f9274ed1a0475c7d3d47430a
D=A
@SP
A=M
M=D //*SP=Math.multiply$3517f858f9274ed1a0475c7d3d47430a
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$3517f858f9274ed1a0475c7d3d47430a)



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

// push constant 5
@5
D=A //D=5
@SP
A=M
M=D //*SP=5
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

// label Screen.drawCircle$IF_END2
(Screen.drawCircle$IF_END2)

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


// call Screen.drawSymetric 4
// push Screen.drawSymetric$cd2e92442f7a47b2946784e43bbcb196
@Screen.drawSymetric$cd2e92442f7a47b2946784e43bbcb196
D=A
@SP
A=M
M=D //*SP=Screen.drawSymetric$cd2e92442f7a47b2946784e43bbcb196
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
@4
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
// goto Screen.drawSymetric
@Screen.drawSymetric
0;JMP
(Screen.drawSymetric$cd2e92442f7a47b2946784e43bbcb196)



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

// goto Screen.drawCircle$WHILE_EXP0
@Screen.drawCircle$WHILE_EXP0
0;JMP

// label Screen.drawCircle$WHILE_END0
(Screen.drawCircle$WHILE_END0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Square.new 0
(Square.new)

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++


// call Memory.alloc 1
// push Memory.alloc$615bac01c8cc4f73bbb34bbb5e55a982
@Memory.alloc$615bac01c8cc4f73bbb34bbb5e55a982
D=A
@SP
A=M
M=D //*SP=Memory.alloc$615bac01c8cc4f73bbb34bbb5e55a982
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
// goto Memory.alloc
@Memory.alloc
0;JMP
(Memory.alloc$615bac01c8cc4f73bbb34bbb5e55a982)



// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

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

// pop this 0
@0
D=A //D=0
@THIS
D=D+M //D=THIS+0
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+0
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

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

// pop this 1
@1
D=A //D=1
@THIS
D=D+M //D=THIS+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
@SP
M=M+1 //SP++

// pop this 2
@2
D=A //D=2
@THIS
D=D+M //D=THIS+2
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+2
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push pointer 0
@THIS
D=M //D=THIS
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++


// call Square.draw 1
// push Square.draw$c43649c4a0334424b85dfb3004839079
@Square.draw$c43649c4a0334424b85dfb3004839079
D=A
@SP
A=M
M=D //*SP=Square.draw$c43649c4a0334424b85dfb3004839079
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
// goto Square.draw
@Square.draw
0;JMP
(Square.draw$c43649c4a0334424b85dfb3004839079)



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

// push pointer 0
@THIS
D=M //D=THIS
@SP
A=M
M=D //*SP=THIS
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

// function Square.dispose 0
(Square.dispose)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push pointer 0
@THIS
D=M //D=THIS
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++


// call Memory.deAlloc 1
// push Memory.deAlloc$20abab3b79ae4843957e060291e1bf62
@Memory.deAlloc$20abab3b79ae4843957e060291e1bf62
D=A
@SP
A=M
M=D //*SP=Memory.deAlloc$20abab3b79ae4843957e060291e1bf62
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
// goto Memory.deAlloc
@Memory.deAlloc
0;JMP
(Memory.deAlloc$20abab3b79ae4843957e060291e1bf62)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Square.draw 0
(Square.draw)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1


// call Screen.setColor 1
// push Screen.setColor$ecaf571c7ff7499e9e162ddb8ac8a765
@Screen.setColor$ecaf571c7ff7499e9e162ddb8ac8a765
D=A
@SP
A=M
M=D //*SP=Screen.setColor$ecaf571c7ff7499e9e162ddb8ac8a765
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
// goto Screen.setColor
@Screen.setColor
0;JMP
(Screen.setColor$ecaf571c7ff7499e9e162ddb8ac8a765)



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

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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


// call Screen.drawRectangle 4
// push Screen.drawRectangle$82e19e1360b44993a0773f9cdde08996
@Screen.drawRectangle$82e19e1360b44993a0773f9cdde08996
D=A
@SP
A=M
M=D //*SP=Screen.drawRectangle$82e19e1360b44993a0773f9cdde08996
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
@4
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
// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$82e19e1360b44993a0773f9cdde08996)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Square.erase 0
(Square.erase)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++


// call Screen.setColor 1
// push Screen.setColor$addd229d146344dfa4df3b72ecc8478b
@Screen.setColor$addd229d146344dfa4df3b72ecc8478b
D=A
@SP
A=M
M=D //*SP=Screen.setColor$addd229d146344dfa4df3b72ecc8478b
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
// goto Screen.setColor
@Screen.setColor
0;JMP
(Screen.setColor$addd229d146344dfa4df3b72ecc8478b)



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

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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


// call Screen.drawRectangle 4
// push Screen.drawRectangle$59f17e4bfb9640f2b173fd3e566044d6
@Screen.drawRectangle$59f17e4bfb9640f2b173fd3e566044d6
D=A
@SP
A=M
M=D //*SP=Screen.drawRectangle$59f17e4bfb9640f2b173fd3e566044d6
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
@4
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
// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$59f17e4bfb9640f2b173fd3e566044d6)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Square.incSize 0
(Square.incSize)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// push constant 254
@254
D=A //D=254
@SP
A=M
M=D //*SP=254
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
@LT_2248e2a3f20e4e1e8a032b200a43483b
D;JLT
@SP
A=M
M=0
@END_2248e2a3f20e4e1e8a032b200a43483b
0;JMP
(LT_2248e2a3f20e4e1e8a032b200a43483b)
@SP
A=M
M=-1
(END_2248e2a3f20e4e1e8a032b200a43483b)
@SP
M=M+1

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// push constant 510
@510
D=A //D=510
@SP
A=M
M=D //*SP=510
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
@LT_b17195764fb049e9aef40176d0145d45
D;JLT
@SP
A=M
M=0
@END_b17195764fb049e9aef40176d0145d45
0;JMP
(LT_b17195764fb049e9aef40176d0145d45)
@SP
A=M
M=-1
(END_b17195764fb049e9aef40176d0145d45)
@SP
M=M+1

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1

// if-goto Square.incSize$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Square.incSize$IF_TRUE0
D;JNE

// goto Square.incSize$IF_FALSE0
@Square.incSize$IF_FALSE0
0;JMP

// label Square.incSize$IF_TRUE0
(Square.incSize$IF_TRUE0)

// push pointer 0
@THIS
D=M //D=THIS
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++


// call Square.erase 1
// push Square.erase$656805398ba74c24842827048f83cbf5
@Square.erase$656805398ba74c24842827048f83cbf5
D=A
@SP
A=M
M=D //*SP=Square.erase$656805398ba74c24842827048f83cbf5
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
// goto Square.erase
@Square.erase
0;JMP
(Square.erase$656805398ba74c24842827048f83cbf5)



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

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// pop this 2
@2
D=A //D=2
@THIS
D=D+M //D=THIS+2
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+2
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push pointer 0
@THIS
D=M //D=THIS
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++


// call Square.draw 1
// push Square.draw$1e5f0aad46ec4b959352cf3828eccf5a
@Square.draw$1e5f0aad46ec4b959352cf3828eccf5a
D=A
@SP
A=M
M=D //*SP=Square.draw$1e5f0aad46ec4b959352cf3828eccf5a
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
// goto Square.draw
@Square.draw
0;JMP
(Square.draw$1e5f0aad46ec4b959352cf3828eccf5a)



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

// label Square.incSize$IF_FALSE0
(Square.incSize$IF_FALSE0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Square.decSize 0
(Square.decSize)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_257c9d4a87714190be9525b2fc16060a
D;JGT
@SP
A=M
M=0
@END_257c9d4a87714190be9525b2fc16060a
0;JMP
(GT_257c9d4a87714190be9525b2fc16060a)
@SP
A=M
M=-1
(END_257c9d4a87714190be9525b2fc16060a)
@SP
M=M+1

// if-goto Square.decSize$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Square.decSize$IF_TRUE0
D;JNE

// goto Square.decSize$IF_FALSE0
@Square.decSize$IF_FALSE0
0;JMP

// label Square.decSize$IF_TRUE0
(Square.decSize$IF_TRUE0)

// push pointer 0
@THIS
D=M //D=THIS
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++


// call Square.erase 1
// push Square.erase$84b35fe74a714e7592d6d8065fe5647f
@Square.erase$84b35fe74a714e7592d6d8065fe5647f
D=A
@SP
A=M
M=D //*SP=Square.erase$84b35fe74a714e7592d6d8065fe5647f
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
// goto Square.erase
@Square.erase
0;JMP
(Square.erase$84b35fe74a714e7592d6d8065fe5647f)



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

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// pop this 2
@2
D=A //D=2
@THIS
D=D+M //D=THIS+2
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+2
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push pointer 0
@THIS
D=M //D=THIS
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++


// call Square.draw 1
// push Square.draw$eaa5417873474d3c9075701a0ae6314a
@Square.draw$eaa5417873474d3c9075701a0ae6314a
D=A
@SP
A=M
M=D //*SP=Square.draw$eaa5417873474d3c9075701a0ae6314a
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
// goto Square.draw
@Square.draw
0;JMP
(Square.draw$eaa5417873474d3c9075701a0ae6314a)



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

// label Square.decSize$IF_FALSE0
(Square.decSize$IF_FALSE0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Square.moveUp 0
(Square.moveUp)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
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

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_23e3101c3c4d4988b78dd7d5c5cb2ece
D;JGT
@SP
A=M
M=0
@END_23e3101c3c4d4988b78dd7d5c5cb2ece
0;JMP
(GT_23e3101c3c4d4988b78dd7d5c5cb2ece)
@SP
A=M
M=-1
(END_23e3101c3c4d4988b78dd7d5c5cb2ece)
@SP
M=M+1

// if-goto Square.moveUp$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Square.moveUp$IF_TRUE0
D;JNE

// goto Square.moveUp$IF_FALSE0
@Square.moveUp$IF_FALSE0
0;JMP

// label Square.moveUp$IF_TRUE0
(Square.moveUp$IF_TRUE0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++


// call Screen.setColor 1
// push Screen.setColor$4f5aec17bbfb4415bfccf5a69647223e
@Screen.setColor$4f5aec17bbfb4415bfccf5a69647223e
D=A
@SP
A=M
M=D //*SP=Screen.setColor$4f5aec17bbfb4415bfccf5a69647223e
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
// goto Screen.setColor
@Screen.setColor
0;JMP
(Screen.setColor$4f5aec17bbfb4415bfccf5a69647223e)



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

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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


// call Screen.drawRectangle 4
// push Screen.drawRectangle$590720e5dc154e88a24460a7c43e8652
@Screen.drawRectangle$590720e5dc154e88a24460a7c43e8652
D=A
@SP
A=M
M=D //*SP=Screen.drawRectangle$590720e5dc154e88a24460a7c43e8652
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
@4
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
// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$590720e5dc154e88a24460a7c43e8652)



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

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
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

// pop this 1
@1
D=A //D=1
@THIS
D=D+M //D=THIS+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1


// call Screen.setColor 1
// push Screen.setColor$f60014795fc042aea9b6893d5d351887
@Screen.setColor$f60014795fc042aea9b6893d5d351887
D=A
@SP
A=M
M=D //*SP=Screen.setColor$f60014795fc042aea9b6893d5d351887
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
// goto Screen.setColor
@Screen.setColor
0;JMP
(Screen.setColor$f60014795fc042aea9b6893d5d351887)



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

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
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


// call Screen.drawRectangle 4
// push Screen.drawRectangle$15257340904248d79d44b80045f688ca
@Screen.drawRectangle$15257340904248d79d44b80045f688ca
D=A
@SP
A=M
M=D //*SP=Screen.drawRectangle$15257340904248d79d44b80045f688ca
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
@4
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
// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$15257340904248d79d44b80045f688ca)



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

// label Square.moveUp$IF_FALSE0
(Square.moveUp$IF_FALSE0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Square.moveDown 0
(Square.moveDown)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// push constant 254
@254
D=A //D=254
@SP
A=M
M=D //*SP=254
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
@LT_9469ae3b2e134728bfbe56926678f2c6
D;JLT
@SP
A=M
M=0
@END_9469ae3b2e134728bfbe56926678f2c6
0;JMP
(LT_9469ae3b2e134728bfbe56926678f2c6)
@SP
A=M
M=-1
(END_9469ae3b2e134728bfbe56926678f2c6)
@SP
M=M+1

// if-goto Square.moveDown$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Square.moveDown$IF_TRUE0
D;JNE

// goto Square.moveDown$IF_FALSE0
@Square.moveDown$IF_FALSE0
0;JMP

// label Square.moveDown$IF_TRUE0
(Square.moveDown$IF_TRUE0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++


// call Screen.setColor 1
// push Screen.setColor$c2e314cb437a47c0a2ff4fc156180ccd
@Screen.setColor$c2e314cb437a47c0a2ff4fc156180ccd
D=A
@SP
A=M
M=D //*SP=Screen.setColor$c2e314cb437a47c0a2ff4fc156180ccd
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
// goto Screen.setColor
@Screen.setColor
0;JMP
(Screen.setColor$c2e314cb437a47c0a2ff4fc156180ccd)



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

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
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


// call Screen.drawRectangle 4
// push Screen.drawRectangle$95e4902e089b4cabb9baddfb4957f048
@Screen.drawRectangle$95e4902e089b4cabb9baddfb4957f048
D=A
@SP
A=M
M=D //*SP=Screen.drawRectangle$95e4902e089b4cabb9baddfb4957f048
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
@4
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
// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$95e4902e089b4cabb9baddfb4957f048)



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

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
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

// pop this 1
@1
D=A //D=1
@THIS
D=D+M //D=THIS+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1


// call Screen.setColor 1
// push Screen.setColor$7175001260ce4669b2d83695772eb4a9
@Screen.setColor$7175001260ce4669b2d83695772eb4a9
D=A
@SP
A=M
M=D //*SP=Screen.setColor$7175001260ce4669b2d83695772eb4a9
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
// goto Screen.setColor
@Screen.setColor
0;JMP
(Screen.setColor$7175001260ce4669b2d83695772eb4a9)



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

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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


// call Screen.drawRectangle 4
// push Screen.drawRectangle$c2a825be4ce046f18373d082a07b6493
@Screen.drawRectangle$c2a825be4ce046f18373d082a07b6493
D=A
@SP
A=M
M=D //*SP=Screen.drawRectangle$c2a825be4ce046f18373d082a07b6493
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
@4
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
// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$c2a825be4ce046f18373d082a07b6493)



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

// label Square.moveDown$IF_FALSE0
(Square.moveDown$IF_FALSE0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Square.moveLeft 0
(Square.moveLeft)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
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

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_9e4ba6cfc2434457b1a8bb8d0fbf37c8
D;JGT
@SP
A=M
M=0
@END_9e4ba6cfc2434457b1a8bb8d0fbf37c8
0;JMP
(GT_9e4ba6cfc2434457b1a8bb8d0fbf37c8)
@SP
A=M
M=-1
(END_9e4ba6cfc2434457b1a8bb8d0fbf37c8)
@SP
M=M+1

// if-goto Square.moveLeft$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Square.moveLeft$IF_TRUE0
D;JNE

// goto Square.moveLeft$IF_FALSE0
@Square.moveLeft$IF_FALSE0
0;JMP

// label Square.moveLeft$IF_TRUE0
(Square.moveLeft$IF_TRUE0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++


// call Screen.setColor 1
// push Screen.setColor$4ddd897712044bc3ac7b76332e3d4e13
@Screen.setColor$4ddd897712044bc3ac7b76332e3d4e13
D=A
@SP
A=M
M=D //*SP=Screen.setColor$4ddd897712044bc3ac7b76332e3d4e13
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
// goto Screen.setColor
@Screen.setColor
0;JMP
(Screen.setColor$4ddd897712044bc3ac7b76332e3d4e13)



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

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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


// call Screen.drawRectangle 4
// push Screen.drawRectangle$f1a20fb3f25e4084bb29978bbdd69e26
@Screen.drawRectangle$f1a20fb3f25e4084bb29978bbdd69e26
D=A
@SP
A=M
M=D //*SP=Screen.drawRectangle$f1a20fb3f25e4084bb29978bbdd69e26
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
@4
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
// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$f1a20fb3f25e4084bb29978bbdd69e26)



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

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
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

// pop this 0
@0
D=A //D=0
@THIS
D=D+M //D=THIS+0
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+0
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1


// call Screen.setColor 1
// push Screen.setColor$75e890257e1242b78cb0525838637bd9
@Screen.setColor$75e890257e1242b78cb0525838637bd9
D=A
@SP
A=M
M=D //*SP=Screen.setColor$75e890257e1242b78cb0525838637bd9
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
// goto Screen.setColor
@Screen.setColor
0;JMP
(Screen.setColor$75e890257e1242b78cb0525838637bd9)



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

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
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

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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


// call Screen.drawRectangle 4
// push Screen.drawRectangle$f1d46882849a479780a806fc9dbe916a
@Screen.drawRectangle$f1d46882849a479780a806fc9dbe916a
D=A
@SP
A=M
M=D //*SP=Screen.drawRectangle$f1d46882849a479780a806fc9dbe916a
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
@4
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
// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$f1d46882849a479780a806fc9dbe916a)



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

// label Square.moveLeft$IF_FALSE0
(Square.moveLeft$IF_FALSE0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Square.moveRight 0
(Square.moveRight)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// push constant 510
@510
D=A //D=510
@SP
A=M
M=D //*SP=510
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
@LT_5d2bcb2026aa4b698bd519442dee79fa
D;JLT
@SP
A=M
M=0
@END_5d2bcb2026aa4b698bd519442dee79fa
0;JMP
(LT_5d2bcb2026aa4b698bd519442dee79fa)
@SP
A=M
M=-1
(END_5d2bcb2026aa4b698bd519442dee79fa)
@SP
M=M+1

// if-goto Square.moveRight$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Square.moveRight$IF_TRUE0
D;JNE

// goto Square.moveRight$IF_FALSE0
@Square.moveRight$IF_FALSE0
0;JMP

// label Square.moveRight$IF_TRUE0
(Square.moveRight$IF_TRUE0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++


// call Screen.setColor 1
// push Screen.setColor$b01e605b584945439fcc8c9f5522de67
@Screen.setColor$b01e605b584945439fcc8c9f5522de67
D=A
@SP
A=M
M=D //*SP=Screen.setColor$b01e605b584945439fcc8c9f5522de67
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
// goto Screen.setColor
@Screen.setColor
0;JMP
(Screen.setColor$b01e605b584945439fcc8c9f5522de67)



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

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
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

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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


// call Screen.drawRectangle 4
// push Screen.drawRectangle$1c37c6eeead04117a285e86c9b711bba
@Screen.drawRectangle$1c37c6eeead04117a285e86c9b711bba
D=A
@SP
A=M
M=D //*SP=Screen.drawRectangle$1c37c6eeead04117a285e86c9b711bba
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
@4
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
// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$1c37c6eeead04117a285e86c9b711bba)



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

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
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

// pop this 0
@0
D=A //D=0
@THIS
D=D+M //D=THIS+0
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+0
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1


// call Screen.setColor 1
// push Screen.setColor$5f42a9a32d2246ec863c4a52824e2a4f
@Screen.setColor$5f42a9a32d2246ec863c4a52824e2a4f
D=A
@SP
A=M
M=D //*SP=Screen.setColor$5f42a9a32d2246ec863c4a52824e2a4f
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
// goto Screen.setColor
@Screen.setColor
0;JMP
(Screen.setColor$5f42a9a32d2246ec863c4a52824e2a4f)



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

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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


// call Screen.drawRectangle 4
// push Screen.drawRectangle$4a98b99fcfaf430b9bf2c73451a3b866
@Screen.drawRectangle$4a98b99fcfaf430b9bf2c73451a3b866
D=A
@SP
A=M
M=D //*SP=Screen.drawRectangle$4a98b99fcfaf430b9bf2c73451a3b866
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
@4
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
// goto Screen.drawRectangle
@Screen.drawRectangle
0;JMP
(Screen.drawRectangle$4a98b99fcfaf430b9bf2c73451a3b866)



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

// label Square.moveRight$IF_FALSE0
(Square.moveRight$IF_FALSE0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function SquareGame.new 0
(SquareGame.new)

// push constant 2
@2
D=A //D=2
@SP
A=M
M=D //*SP=2
@SP
M=M+1 //SP++


// call Memory.alloc 1
// push Memory.alloc$43efb650e3744341b4f58e6e181e9f2d
@Memory.alloc$43efb650e3744341b4f58e6e181e9f2d
D=A
@SP
A=M
M=D //*SP=Memory.alloc$43efb650e3744341b4f58e6e181e9f2d
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
// goto Memory.alloc
@Memory.alloc
0;JMP
(Memory.alloc$43efb650e3744341b4f58e6e181e9f2d)



// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

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

// push constant 30
@30
D=A //D=30
@SP
A=M
M=D //*SP=30
@SP
M=M+1 //SP++


// call Square.new 3
// push Square.new$219942241a634620aa5eec92453ba1e6
@Square.new$219942241a634620aa5eec92453ba1e6
D=A
@SP
A=M
M=D //*SP=Square.new$219942241a634620aa5eec92453ba1e6
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
@3
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
// goto Square.new
@Square.new
0;JMP
(Square.new$219942241a634620aa5eec92453ba1e6)



// pop this 0
@0
D=A //D=0
@THIS
D=D+M //D=THIS+0
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+0
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// pop this 1
@1
D=A //D=1
@THIS
D=D+M //D=THIS+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push pointer 0
@THIS
D=M //D=THIS
@SP
A=M
M=D //*SP=THIS
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

// function SquareGame.dispose 0
(SquareGame.dispose)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++


// call Square.dispose 1
// push Square.dispose$a9e311ff5c2642be873facc70da80654
@Square.dispose$a9e311ff5c2642be873facc70da80654
D=A
@SP
A=M
M=D //*SP=Square.dispose$a9e311ff5c2642be873facc70da80654
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
// goto Square.dispose
@Square.dispose
0;JMP
(Square.dispose$a9e311ff5c2642be873facc70da80654)



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

// push pointer 0
@THIS
D=M //D=THIS
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++


// call Memory.deAlloc 1
// push Memory.deAlloc$c27430c9aa27469b8da1482fc350fff1
@Memory.deAlloc$c27430c9aa27469b8da1482fc350fff1
D=A
@SP
A=M
M=D //*SP=Memory.deAlloc$c27430c9aa27469b8da1482fc350fff1
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
// goto Memory.deAlloc
@Memory.deAlloc
0;JMP
(Memory.deAlloc$c27430c9aa27469b8da1482fc350fff1)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function SquareGame.moveSquare 0
(SquareGame.moveSquare)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
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

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_85582d3293a84b67b52faab5d692cf83
D;JEQ
@SP
A=M
M=0
@END_85582d3293a84b67b52faab5d692cf83
0;JMP
(EQUAL_85582d3293a84b67b52faab5d692cf83)
@SP
A=M
M=-1
(END_85582d3293a84b67b52faab5d692cf83)
@SP
M=M+1

// if-goto SquareGame.moveSquare$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@SquareGame.moveSquare$IF_TRUE0
D;JNE

// goto SquareGame.moveSquare$IF_FALSE0
@SquareGame.moveSquare$IF_FALSE0
0;JMP

// label SquareGame.moveSquare$IF_TRUE0
(SquareGame.moveSquare$IF_TRUE0)

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++


// call Square.moveUp 1
// push Square.moveUp$d2acfcee80ee4cd4ba4f788b54e58bc8
@Square.moveUp$d2acfcee80ee4cd4ba4f788b54e58bc8
D=A
@SP
A=M
M=D //*SP=Square.moveUp$d2acfcee80ee4cd4ba4f788b54e58bc8
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
// goto Square.moveUp
@Square.moveUp
0;JMP
(Square.moveUp$d2acfcee80ee4cd4ba4f788b54e58bc8)



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

// label SquareGame.moveSquare$IF_FALSE0
(SquareGame.moveSquare$IF_FALSE0)

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
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

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_fc48baa009f949f6b4870ea8ff1d1997
D;JEQ
@SP
A=M
M=0
@END_fc48baa009f949f6b4870ea8ff1d1997
0;JMP
(EQUAL_fc48baa009f949f6b4870ea8ff1d1997)
@SP
A=M
M=-1
(END_fc48baa009f949f6b4870ea8ff1d1997)
@SP
M=M+1

// if-goto SquareGame.moveSquare$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@SquareGame.moveSquare$IF_TRUE1
D;JNE

// goto SquareGame.moveSquare$IF_FALSE1
@SquareGame.moveSquare$IF_FALSE1
0;JMP

// label SquareGame.moveSquare$IF_TRUE1
(SquareGame.moveSquare$IF_TRUE1)

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++


// call Square.moveDown 1
// push Square.moveDown$3f564d2926574e7a90a92f064856cf39
@Square.moveDown$3f564d2926574e7a90a92f064856cf39
D=A
@SP
A=M
M=D //*SP=Square.moveDown$3f564d2926574e7a90a92f064856cf39
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
// goto Square.moveDown
@Square.moveDown
0;JMP
(Square.moveDown$3f564d2926574e7a90a92f064856cf39)



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

// label SquareGame.moveSquare$IF_FALSE1
(SquareGame.moveSquare$IF_FALSE1)

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_aae516e58d204b28b6dcd4af5a61bbe5
D;JEQ
@SP
A=M
M=0
@END_aae516e58d204b28b6dcd4af5a61bbe5
0;JMP
(EQUAL_aae516e58d204b28b6dcd4af5a61bbe5)
@SP
A=M
M=-1
(END_aae516e58d204b28b6dcd4af5a61bbe5)
@SP
M=M+1

// if-goto SquareGame.moveSquare$IF_TRUE2
@SP
M=M-1 // SP--
@SP
A=M
D=M
@SquareGame.moveSquare$IF_TRUE2
D;JNE

// goto SquareGame.moveSquare$IF_FALSE2
@SquareGame.moveSquare$IF_FALSE2
0;JMP

// label SquareGame.moveSquare$IF_TRUE2
(SquareGame.moveSquare$IF_TRUE2)

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++


// call Square.moveLeft 1
// push Square.moveLeft$77b8189373954d068f45e4c94ee8b094
@Square.moveLeft$77b8189373954d068f45e4c94ee8b094
D=A
@SP
A=M
M=D //*SP=Square.moveLeft$77b8189373954d068f45e4c94ee8b094
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
// goto Square.moveLeft
@Square.moveLeft
0;JMP
(Square.moveLeft$77b8189373954d068f45e4c94ee8b094)



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

// label SquareGame.moveSquare$IF_FALSE2
(SquareGame.moveSquare$IF_FALSE2)

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++

// push constant 4
@4
D=A //D=4
@SP
A=M
M=D //*SP=4
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_d2e658bda6a04889902cdccd6bc0f318
D;JEQ
@SP
A=M
M=0
@END_d2e658bda6a04889902cdccd6bc0f318
0;JMP
(EQUAL_d2e658bda6a04889902cdccd6bc0f318)
@SP
A=M
M=-1
(END_d2e658bda6a04889902cdccd6bc0f318)
@SP
M=M+1

// if-goto SquareGame.moveSquare$IF_TRUE3
@SP
M=M-1 // SP--
@SP
A=M
D=M
@SquareGame.moveSquare$IF_TRUE3
D;JNE

// goto SquareGame.moveSquare$IF_FALSE3
@SquareGame.moveSquare$IF_FALSE3
0;JMP

// label SquareGame.moveSquare$IF_TRUE3
(SquareGame.moveSquare$IF_TRUE3)

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++


// call Square.moveRight 1
// push Square.moveRight$4a1a71dce82c41e18ea6888ebcea7170
@Square.moveRight$4a1a71dce82c41e18ea6888ebcea7170
D=A
@SP
A=M
M=D //*SP=Square.moveRight$4a1a71dce82c41e18ea6888ebcea7170
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
// goto Square.moveRight
@Square.moveRight
0;JMP
(Square.moveRight$4a1a71dce82c41e18ea6888ebcea7170)



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

// label SquareGame.moveSquare$IF_FALSE3
(SquareGame.moveSquare$IF_FALSE3)

// push constant 5
@5
D=A //D=5
@SP
A=M
M=D //*SP=5
@SP
M=M+1 //SP++


// call Sys.wait 1
// push Sys.wait$23e0fdeaccaf4f5eaa59c8cb243d5b88
@Sys.wait$23e0fdeaccaf4f5eaa59c8cb243d5b88
D=A
@SP
A=M
M=D //*SP=Sys.wait$23e0fdeaccaf4f5eaa59c8cb243d5b88
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
// goto Sys.wait
@Sys.wait
0;JMP
(Sys.wait$23e0fdeaccaf4f5eaa59c8cb243d5b88)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function SquareGame.run 2
(SquareGame.run)
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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// label SquareGame.run$WHILE_EXP0
(SquareGame.run$WHILE_EXP0)

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

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto SquareGame.run$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@SquareGame.run$WHILE_END0
D;JNE

// label SquareGame.run$WHILE_EXP1
(SquareGame.run$WHILE_EXP1)

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_aadc7f018d724671a5b964856bbe396d
D;JEQ
@SP
A=M
M=0
@END_aadc7f018d724671a5b964856bbe396d
0;JMP
(EQUAL_aadc7f018d724671a5b964856bbe396d)
@SP
A=M
M=-1
(END_aadc7f018d724671a5b964856bbe396d)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto SquareGame.run$WHILE_END1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@SquareGame.run$WHILE_END1
D;JNE


// call Keyboard.keyPressed 0
// push Keyboard.keyPressed$abd05b7a29eb4515b4d08e0d1267ad36
@Keyboard.keyPressed$abd05b7a29eb4515b4d08e0d1267ad36
D=A
@SP
A=M
M=D //*SP=Keyboard.keyPressed$abd05b7a29eb4515b4d08e0d1267ad36
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
// goto Keyboard.keyPressed
@Keyboard.keyPressed
0;JMP
(Keyboard.keyPressed$abd05b7a29eb4515b4d08e0d1267ad36)



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

// push pointer 0
@THIS
D=M //D=THIS
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++


// call SquareGame.moveSquare 1
// push SquareGame.moveSquare$3a53d12ded1543fe921462b96ac1572e
@SquareGame.moveSquare$3a53d12ded1543fe921462b96ac1572e
D=A
@SP
A=M
M=D //*SP=SquareGame.moveSquare$3a53d12ded1543fe921462b96ac1572e
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
// goto SquareGame.moveSquare
@SquareGame.moveSquare
0;JMP
(SquareGame.moveSquare$3a53d12ded1543fe921462b96ac1572e)



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

// goto SquareGame.run$WHILE_EXP1
@SquareGame.run$WHILE_EXP1
0;JMP

// label SquareGame.run$WHILE_END1
(SquareGame.run$WHILE_END1)

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

// push constant 81
@81
D=A //D=81
@SP
A=M
M=D //*SP=81
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_6a62473a19244be284fb8ee1df2cc457
D;JEQ
@SP
A=M
M=0
@END_6a62473a19244be284fb8ee1df2cc457
0;JMP
(EQUAL_6a62473a19244be284fb8ee1df2cc457)
@SP
A=M
M=-1
(END_6a62473a19244be284fb8ee1df2cc457)
@SP
M=M+1

// if-goto SquareGame.run$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@SquareGame.run$IF_TRUE0
D;JNE

// goto SquareGame.run$IF_FALSE0
@SquareGame.run$IF_FALSE0
0;JMP

// label SquareGame.run$IF_TRUE0
(SquareGame.run$IF_TRUE0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

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

// label SquareGame.run$IF_FALSE0
(SquareGame.run$IF_FALSE0)

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

// push constant 90
@90
D=A //D=90
@SP
A=M
M=D //*SP=90
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_d338ad691dd6411383067cb45ebf014f
D;JEQ
@SP
A=M
M=0
@END_d338ad691dd6411383067cb45ebf014f
0;JMP
(EQUAL_d338ad691dd6411383067cb45ebf014f)
@SP
A=M
M=-1
(END_d338ad691dd6411383067cb45ebf014f)
@SP
M=M+1

// if-goto SquareGame.run$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@SquareGame.run$IF_TRUE1
D;JNE

// goto SquareGame.run$IF_FALSE1
@SquareGame.run$IF_FALSE1
0;JMP

// label SquareGame.run$IF_TRUE1
(SquareGame.run$IF_TRUE1)

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++


// call Square.decSize 1
// push Square.decSize$80de2c97a3814279997a7659413c917e
@Square.decSize$80de2c97a3814279997a7659413c917e
D=A
@SP
A=M
M=D //*SP=Square.decSize$80de2c97a3814279997a7659413c917e
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
// goto Square.decSize
@Square.decSize
0;JMP
(Square.decSize$80de2c97a3814279997a7659413c917e)



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

// label SquareGame.run$IF_FALSE1
(SquareGame.run$IF_FALSE1)

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

// push constant 88
@88
D=A //D=88
@SP
A=M
M=D //*SP=88
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_41314541f8864b75a529841d3e69c10e
D;JEQ
@SP
A=M
M=0
@END_41314541f8864b75a529841d3e69c10e
0;JMP
(EQUAL_41314541f8864b75a529841d3e69c10e)
@SP
A=M
M=-1
(END_41314541f8864b75a529841d3e69c10e)
@SP
M=M+1

// if-goto SquareGame.run$IF_TRUE2
@SP
M=M-1 // SP--
@SP
A=M
D=M
@SquareGame.run$IF_TRUE2
D;JNE

// goto SquareGame.run$IF_FALSE2
@SquareGame.run$IF_FALSE2
0;JMP

// label SquareGame.run$IF_TRUE2
(SquareGame.run$IF_TRUE2)

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++


// call Square.incSize 1
// push Square.incSize$21733336b1bc468490f2d79817dfbf5f
@Square.incSize$21733336b1bc468490f2d79817dfbf5f
D=A
@SP
A=M
M=D //*SP=Square.incSize$21733336b1bc468490f2d79817dfbf5f
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
// goto Square.incSize
@Square.incSize
0;JMP
(Square.incSize$21733336b1bc468490f2d79817dfbf5f)



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

// label SquareGame.run$IF_FALSE2
(SquareGame.run$IF_FALSE2)

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

// push constant 131
@131
D=A //D=131
@SP
A=M
M=D //*SP=131
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_5bba3ac43dd54471a6788dc6f7c9cc34
D;JEQ
@SP
A=M
M=0
@END_5bba3ac43dd54471a6788dc6f7c9cc34
0;JMP
(EQUAL_5bba3ac43dd54471a6788dc6f7c9cc34)
@SP
A=M
M=-1
(END_5bba3ac43dd54471a6788dc6f7c9cc34)
@SP
M=M+1

// if-goto SquareGame.run$IF_TRUE3
@SP
M=M-1 // SP--
@SP
A=M
D=M
@SquareGame.run$IF_TRUE3
D;JNE

// goto SquareGame.run$IF_FALSE3
@SquareGame.run$IF_FALSE3
0;JMP

// label SquareGame.run$IF_TRUE3
(SquareGame.run$IF_TRUE3)

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
@SP
M=M+1 //SP++

// pop this 1
@1
D=A //D=1
@THIS
D=D+M //D=THIS+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// label SquareGame.run$IF_FALSE3
(SquareGame.run$IF_FALSE3)

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

// push constant 133
@133
D=A //D=133
@SP
A=M
M=D //*SP=133
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_c56e484c407a41a883cfdc4160134135
D;JEQ
@SP
A=M
M=0
@END_c56e484c407a41a883cfdc4160134135
0;JMP
(EQUAL_c56e484c407a41a883cfdc4160134135)
@SP
A=M
M=-1
(END_c56e484c407a41a883cfdc4160134135)
@SP
M=M+1

// if-goto SquareGame.run$IF_TRUE4
@SP
M=M-1 // SP--
@SP
A=M
D=M
@SquareGame.run$IF_TRUE4
D;JNE

// goto SquareGame.run$IF_FALSE4
@SquareGame.run$IF_FALSE4
0;JMP

// label SquareGame.run$IF_TRUE4
(SquareGame.run$IF_TRUE4)

// push constant 2
@2
D=A //D=2
@SP
A=M
M=D //*SP=2
@SP
M=M+1 //SP++

// pop this 1
@1
D=A //D=1
@THIS
D=D+M //D=THIS+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// label SquareGame.run$IF_FALSE4
(SquareGame.run$IF_FALSE4)

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

// push constant 130
@130
D=A //D=130
@SP
A=M
M=D //*SP=130
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_648988672cc448949bdf02cd3411e294
D;JEQ
@SP
A=M
M=0
@END_648988672cc448949bdf02cd3411e294
0;JMP
(EQUAL_648988672cc448949bdf02cd3411e294)
@SP
A=M
M=-1
(END_648988672cc448949bdf02cd3411e294)
@SP
M=M+1

// if-goto SquareGame.run$IF_TRUE5
@SP
M=M-1 // SP--
@SP
A=M
D=M
@SquareGame.run$IF_TRUE5
D;JNE

// goto SquareGame.run$IF_FALSE5
@SquareGame.run$IF_FALSE5
0;JMP

// label SquareGame.run$IF_TRUE5
(SquareGame.run$IF_TRUE5)

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++

// pop this 1
@1
D=A //D=1
@THIS
D=D+M //D=THIS+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// label SquareGame.run$IF_FALSE5
(SquareGame.run$IF_FALSE5)

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

// push constant 132
@132
D=A //D=132
@SP
A=M
M=D //*SP=132
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_652afffcef254c17bb27a995935ea05f
D;JEQ
@SP
A=M
M=0
@END_652afffcef254c17bb27a995935ea05f
0;JMP
(EQUAL_652afffcef254c17bb27a995935ea05f)
@SP
A=M
M=-1
(END_652afffcef254c17bb27a995935ea05f)
@SP
M=M+1

// if-goto SquareGame.run$IF_TRUE6
@SP
M=M-1 // SP--
@SP
A=M
D=M
@SquareGame.run$IF_TRUE6
D;JNE

// goto SquareGame.run$IF_FALSE6
@SquareGame.run$IF_FALSE6
0;JMP

// label SquareGame.run$IF_TRUE6
(SquareGame.run$IF_TRUE6)

// push constant 4
@4
D=A //D=4
@SP
A=M
M=D //*SP=4
@SP
M=M+1 //SP++

// pop this 1
@1
D=A //D=1
@THIS
D=D+M //D=THIS+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// label SquareGame.run$IF_FALSE6
(SquareGame.run$IF_FALSE6)

// label SquareGame.run$WHILE_EXP2
(SquareGame.run$WHILE_EXP2)

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_6e94950c63aa489c9ebcd97dada1e719
D;JEQ
@SP
A=M
M=0
@END_6e94950c63aa489c9ebcd97dada1e719
0;JMP
(EQUAL_6e94950c63aa489c9ebcd97dada1e719)
@SP
A=M
M=-1
(END_6e94950c63aa489c9ebcd97dada1e719)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto SquareGame.run$WHILE_END2
@SP
M=M-1 // SP--
@SP
A=M
D=M
@SquareGame.run$WHILE_END2
D;JNE


// call Keyboard.keyPressed 0
// push Keyboard.keyPressed$bda4ea787b8a473ab9318223273ec70f
@Keyboard.keyPressed$bda4ea787b8a473ab9318223273ec70f
D=A
@SP
A=M
M=D //*SP=Keyboard.keyPressed$bda4ea787b8a473ab9318223273ec70f
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
// goto Keyboard.keyPressed
@Keyboard.keyPressed
0;JMP
(Keyboard.keyPressed$bda4ea787b8a473ab9318223273ec70f)



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

// push pointer 0
@THIS
D=M //D=THIS
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++


// call SquareGame.moveSquare 1
// push SquareGame.moveSquare$57ed114f7948499cb385f59a9d380137
@SquareGame.moveSquare$57ed114f7948499cb385f59a9d380137
D=A
@SP
A=M
M=D //*SP=SquareGame.moveSquare$57ed114f7948499cb385f59a9d380137
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
// goto SquareGame.moveSquare
@SquareGame.moveSquare
0;JMP
(SquareGame.moveSquare$57ed114f7948499cb385f59a9d380137)



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

// goto SquareGame.run$WHILE_EXP2
@SquareGame.run$WHILE_EXP2
0;JMP

// label SquareGame.run$WHILE_END2
(SquareGame.run$WHILE_END2)

// goto SquareGame.run$WHILE_EXP0
@SquareGame.run$WHILE_EXP0
0;JMP

// label SquareGame.run$WHILE_END0
(SquareGame.run$WHILE_END0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function String.new 0
(String.new)

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++


// call Memory.alloc 1
// push Memory.alloc$cc842038d5ec445680e2da6c53645761
@Memory.alloc$cc842038d5ec445680e2da6c53645761
D=A
@SP
A=M
M=D //*SP=Memory.alloc$cc842038d5ec445680e2da6c53645761
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
// goto Memory.alloc
@Memory.alloc
0;JMP
(Memory.alloc$cc842038d5ec445680e2da6c53645761)



// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_8fac7cfd611a410491414c0228080e5b
D;JLT
@SP
A=M
M=0
@END_8fac7cfd611a410491414c0228080e5b
0;JMP
(LT_8fac7cfd611a410491414c0228080e5b)
@SP
A=M
M=-1
(END_8fac7cfd611a410491414c0228080e5b)
@SP
M=M+1

// if-goto String.new$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.new$IF_TRUE0
D;JNE

// goto String.new$IF_FALSE0
@String.new$IF_FALSE0
0;JMP

// label String.new$IF_TRUE0
(String.new$IF_TRUE0)

// push constant 14
@14
D=A //D=14
@SP
A=M
M=D //*SP=14
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$c4c49c760c18481d8a6025e27c2c2d32
@Sys.error$c4c49c760c18481d8a6025e27c2c2d32
D=A
@SP
A=M
M=D //*SP=Sys.error$c4c49c760c18481d8a6025e27c2c2d32
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$c4c49c760c18481d8a6025e27c2c2d32)



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

// label String.new$IF_FALSE0
(String.new$IF_FALSE0)

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_0bc2df9c54e341639fca246f696732fc
D;JGT
@SP
A=M
M=0
@END_0bc2df9c54e341639fca246f696732fc
0;JMP
(GT_0bc2df9c54e341639fca246f696732fc)
@SP
A=M
M=-1
(END_0bc2df9c54e341639fca246f696732fc)
@SP
M=M+1

// if-goto String.new$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.new$IF_TRUE1
D;JNE

// goto String.new$IF_FALSE1
@String.new$IF_FALSE1
0;JMP

// label String.new$IF_TRUE1
(String.new$IF_TRUE1)

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


// call Array.new 1
// push Array.new$82103f35a4a24bd99b3029d533c5bde9
@Array.new$82103f35a4a24bd99b3029d533c5bde9
D=A
@SP
A=M
M=D //*SP=Array.new$82103f35a4a24bd99b3029d533c5bde9
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
// goto Array.new
@Array.new
0;JMP
(Array.new$82103f35a4a24bd99b3029d533c5bde9)



// pop this 1
@1
D=A //D=1
@THIS
D=D+M //D=THIS+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// label String.new$IF_FALSE1
(String.new$IF_FALSE1)

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

// pop this 0
@0
D=A //D=0
@THIS
D=D+M //D=THIS+0
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+0
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// pop this 2
@2
D=A //D=2
@THIS
D=D+M //D=THIS+2
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+2
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push pointer 0
@THIS
D=M //D=THIS
@SP
A=M
M=D //*SP=THIS
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

// function String.dispose 0
(String.dispose)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
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

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_f4d78e2b073649ae97218fd7a9fff47c
D;JGT
@SP
A=M
M=0
@END_f4d78e2b073649ae97218fd7a9fff47c
0;JMP
(GT_f4d78e2b073649ae97218fd7a9fff47c)
@SP
A=M
M=-1
(END_f4d78e2b073649ae97218fd7a9fff47c)
@SP
M=M+1

// if-goto String.dispose$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.dispose$IF_TRUE0
D;JNE

// goto String.dispose$IF_FALSE0
@String.dispose$IF_FALSE0
0;JMP

// label String.dispose$IF_TRUE0
(String.dispose$IF_TRUE0)

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
@SP
M=M+1 //SP++


// call Array.dispose 1
// push Array.dispose$8d5681deb6e54e62adf206dbba5ac489
@Array.dispose$8d5681deb6e54e62adf206dbba5ac489
D=A
@SP
A=M
M=D //*SP=Array.dispose$8d5681deb6e54e62adf206dbba5ac489
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
// goto Array.dispose
@Array.dispose
0;JMP
(Array.dispose$8d5681deb6e54e62adf206dbba5ac489)



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

// label String.dispose$IF_FALSE0
(String.dispose$IF_FALSE0)

// push pointer 0
@THIS
D=M //D=THIS
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++


// call Memory.deAlloc 1
// push Memory.deAlloc$bafa9b6eaf77461b9033774545c8bfef
@Memory.deAlloc$bafa9b6eaf77461b9033774545c8bfef
D=A
@SP
A=M
M=D //*SP=Memory.deAlloc$bafa9b6eaf77461b9033774545c8bfef
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
// goto Memory.deAlloc
@Memory.deAlloc
0;JMP
(Memory.deAlloc$bafa9b6eaf77461b9033774545c8bfef)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function String.length 0
(String.length)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// function String.charAt 0
(String.charAt)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_97b66bf0b01945cf9d317ecfabf924e2
D;JLT
@SP
A=M
M=0
@END_97b66bf0b01945cf9d317ecfabf924e2
0;JMP
(LT_97b66bf0b01945cf9d317ecfabf924e2)
@SP
A=M
M=-1
(END_97b66bf0b01945cf9d317ecfabf924e2)
@SP
M=M+1

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

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_32503ff00c7349b186240dc1243b16fc
D;JGT
@SP
A=M
M=0
@END_32503ff00c7349b186240dc1243b16fc
0;JMP
(GT_32503ff00c7349b186240dc1243b16fc)
@SP
A=M
M=-1
(END_32503ff00c7349b186240dc1243b16fc)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

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

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_d78728a5664447118f4b173f33c5a7b6
D;JEQ
@SP
A=M
M=0
@END_d78728a5664447118f4b173f33c5a7b6
0;JMP
(EQUAL_d78728a5664447118f4b173f33c5a7b6)
@SP
A=M
M=-1
(END_d78728a5664447118f4b173f33c5a7b6)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

// if-goto String.charAt$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.charAt$IF_TRUE0
D;JNE

// goto String.charAt$IF_FALSE0
@String.charAt$IF_FALSE0
0;JMP

// label String.charAt$IF_TRUE0
(String.charAt$IF_TRUE0)

// push constant 15
@15
D=A //D=15
@SP
A=M
M=D //*SP=15
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$adbf1b3fa2f043e481dc0ba2203e2873
@Sys.error$adbf1b3fa2f043e481dc0ba2203e2873
D=A
@SP
A=M
M=D //*SP=Sys.error$adbf1b3fa2f043e481dc0ba2203e2873
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$adbf1b3fa2f043e481dc0ba2203e2873)



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

// label String.charAt$IF_FALSE0
(String.charAt$IF_FALSE0)

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

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
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

// function String.setCharAt 0
(String.setCharAt)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_8dcc1af85c3f4402b437da75b4cfbb53
D;JLT
@SP
A=M
M=0
@END_8dcc1af85c3f4402b437da75b4cfbb53
0;JMP
(LT_8dcc1af85c3f4402b437da75b4cfbb53)
@SP
A=M
M=-1
(END_8dcc1af85c3f4402b437da75b4cfbb53)
@SP
M=M+1

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

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_abcf4e95f2ed4bcfb36028cbb5e90b3a
D;JGT
@SP
A=M
M=0
@END_abcf4e95f2ed4bcfb36028cbb5e90b3a
0;JMP
(GT_abcf4e95f2ed4bcfb36028cbb5e90b3a)
@SP
A=M
M=-1
(END_abcf4e95f2ed4bcfb36028cbb5e90b3a)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

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

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_c5d7858e02f4427f87422ea6b8550423
D;JEQ
@SP
A=M
M=0
@END_c5d7858e02f4427f87422ea6b8550423
0;JMP
(EQUAL_c5d7858e02f4427f87422ea6b8550423)
@SP
A=M
M=-1
(END_c5d7858e02f4427f87422ea6b8550423)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

// if-goto String.setCharAt$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.setCharAt$IF_TRUE0
D;JNE

// goto String.setCharAt$IF_FALSE0
@String.setCharAt$IF_FALSE0
0;JMP

// label String.setCharAt$IF_TRUE0
(String.setCharAt$IF_TRUE0)

// push constant 16
@16
D=A //D=16
@SP
A=M
M=D //*SP=16
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$631747c017b242cf95c39462887e1e14
@Sys.error$631747c017b242cf95c39462887e1e14
D=A
@SP
A=M
M=D //*SP=Sys.error$631747c017b242cf95c39462887e1e14
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$631747c017b242cf95c39462887e1e14)



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

// label String.setCharAt$IF_FALSE0
(String.setCharAt$IF_FALSE0)

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

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
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

// push argument 2
@2
D=A //D=2
@ARG
A=D+M //A=ARG+2, M=*(ARG+2)
D=M //D=*(ARG+2)
@SP
A=M
M=D //*SP=*(ARG+2)
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function String.appendChar 0
(String.appendChar)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
@SP
M=M+1 //SP++

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_21fa6b39d2684632b89644fa3777dae9
D;JEQ
@SP
A=M
M=0
@END_21fa6b39d2684632b89644fa3777dae9
0;JMP
(EQUAL_21fa6b39d2684632b89644fa3777dae9)
@SP
A=M
M=-1
(END_21fa6b39d2684632b89644fa3777dae9)
@SP
M=M+1

// if-goto String.appendChar$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.appendChar$IF_TRUE0
D;JNE

// goto String.appendChar$IF_FALSE0
@String.appendChar$IF_FALSE0
0;JMP

// label String.appendChar$IF_TRUE0
(String.appendChar$IF_TRUE0)

// push constant 17
@17
D=A //D=17
@SP
A=M
M=D //*SP=17
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$b2874b4584b34972923bb3cfb1615123
@Sys.error$b2874b4584b34972923bb3cfb1615123
D=A
@SP
A=M
M=D //*SP=Sys.error$b2874b4584b34972923bb3cfb1615123
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$b2874b4584b34972923bb3cfb1615123)



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

// label String.appendChar$IF_FALSE0
(String.appendChar$IF_FALSE0)

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
@SP
M=M+1 //SP++

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// pop this 2
@2
D=A //D=2
@THIS
D=D+M //D=THIS+2
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+2
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push pointer 0
@THIS
D=M //D=THIS
@SP
A=M
M=D //*SP=THIS
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

// function String.eraseLastChar 0
(String.eraseLastChar)

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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_af6a6d062ad64802b830b2920d776623
D;JEQ
@SP
A=M
M=0
@END_af6a6d062ad64802b830b2920d776623
0;JMP
(EQUAL_af6a6d062ad64802b830b2920d776623)
@SP
A=M
M=-1
(END_af6a6d062ad64802b830b2920d776623)
@SP
M=M+1

// if-goto String.eraseLastChar$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.eraseLastChar$IF_TRUE0
D;JNE

// goto String.eraseLastChar$IF_FALSE0
@String.eraseLastChar$IF_FALSE0
0;JMP

// label String.eraseLastChar$IF_TRUE0
(String.eraseLastChar$IF_TRUE0)

// push constant 18
@18
D=A //D=18
@SP
A=M
M=D //*SP=18
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$e8fdd284175c4a878f6ac0c17a4c5eae
@Sys.error$e8fdd284175c4a878f6ac0c17a4c5eae
D=A
@SP
A=M
M=D //*SP=Sys.error$e8fdd284175c4a878f6ac0c17a4c5eae
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$e8fdd284175c4a878f6ac0c17a4c5eae)



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

// label String.eraseLastChar$IF_FALSE0
(String.eraseLastChar$IF_FALSE0)

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// pop this 2
@2
D=A //D=2
@THIS
D=D+M //D=THIS+2
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+2
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function String.intValue 5
(String.intValue)
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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_a3681def73ad4c5c813c49195d08946b
D;JEQ
@SP
A=M
M=0
@END_a3681def73ad4c5c813c49195d08946b
0;JMP
(EQUAL_a3681def73ad4c5c813c49195d08946b)
@SP
A=M
M=-1
(END_a3681def73ad4c5c813c49195d08946b)
@SP
M=M+1

// if-goto String.intValue$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.intValue$IF_TRUE0
D;JNE

// goto String.intValue$IF_FALSE0
@String.intValue$IF_FALSE0
0;JMP

// label String.intValue$IF_TRUE0
(String.intValue$IF_TRUE0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// label String.intValue$IF_FALSE0
(String.intValue$IF_FALSE0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
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

// push constant 45
@45
D=A //D=45
@SP
A=M
M=D //*SP=45
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_6269f70d342e4680a2c0dcc648c457d1
D;JEQ
@SP
A=M
M=0
@END_6269f70d342e4680a2c0dcc648c457d1
0;JMP
(EQUAL_6269f70d342e4680a2c0dcc648c457d1)
@SP
A=M
M=-1
(END_6269f70d342e4680a2c0dcc648c457d1)
@SP
M=M+1

// if-goto String.intValue$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.intValue$IF_TRUE1
D;JNE

// goto String.intValue$IF_FALSE1
@String.intValue$IF_FALSE1
0;JMP

// label String.intValue$IF_TRUE1
(String.intValue$IF_TRUE1)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// pop local 4
@4
D=A //D=4
@LCL
D=D+M //D=LCL+4
@R13 //use general purpose register for temp storage
M=D //RAM[13]=LCL+4
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

// label String.intValue$IF_FALSE1
(String.intValue$IF_FALSE1)

// label String.intValue$WHILE_EXP0
(String.intValue$WHILE_EXP0)

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

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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
@LT_329c982be6ac41008c2838f5fb4a4f36
D;JLT
@SP
A=M
M=0
@END_329c982be6ac41008c2838f5fb4a4f36
0;JMP
(LT_329c982be6ac41008c2838f5fb4a4f36)
@SP
A=M
M=-1
(END_329c982be6ac41008c2838f5fb4a4f36)
@SP
M=M+1

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

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D&M
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto String.intValue$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.intValue$WHILE_END0
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

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
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

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_7d063107a62c4c4aaef158ccd0d45176
D;JLT
@SP
A=M
M=0
@END_7d063107a62c4c4aaef158ccd0d45176
0;JMP
(LT_7d063107a62c4c4aaef158ccd0d45176)
@SP
A=M
M=-1
(END_7d063107a62c4c4aaef158ccd0d45176)
@SP
M=M+1

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

// push constant 9
@9
D=A //D=9
@SP
A=M
M=D //*SP=9
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_dd67fd0ca3cd41569bdff1bd64bd42a5
D;JGT
@SP
A=M
M=0
@END_dd67fd0ca3cd41569bdff1bd64bd42a5
0;JMP
(GT_dd67fd0ca3cd41569bdff1bd64bd42a5)
@SP
A=M
M=-1
(END_dd67fd0ca3cd41569bdff1bd64bd42a5)
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D|M
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

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

// if-goto String.intValue$IF_TRUE2
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.intValue$IF_TRUE2
D;JNE

// goto String.intValue$IF_FALSE2
@String.intValue$IF_FALSE2
0;JMP

// label String.intValue$IF_TRUE2
(String.intValue$IF_TRUE2)

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

// push constant 10
@10
D=A //D=10
@SP
A=M
M=D //*SP=10
@SP
M=M+1 //SP++


// call Math.multiply 2
// push Math.multiply$555e6b8f8ef143fdad891cff525c9965
@Math.multiply$555e6b8f8ef143fdad891cff525c9965
D=A
@SP
A=M
M=D //*SP=Math.multiply$555e6b8f8ef143fdad891cff525c9965
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$555e6b8f8ef143fdad891cff525c9965)



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

// label String.intValue$IF_FALSE2
(String.intValue$IF_FALSE2)

// goto String.intValue$WHILE_EXP0
@String.intValue$WHILE_EXP0
0;JMP

// label String.intValue$WHILE_END0
(String.intValue$WHILE_END0)

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

// if-goto String.intValue$IF_TRUE3
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.intValue$IF_TRUE3
D;JNE

// goto String.intValue$IF_FALSE3
@String.intValue$IF_FALSE3
0;JMP

// label String.intValue$IF_TRUE3
(String.intValue$IF_TRUE3)

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

// neg
@SP
M=M-1 //SP--
A=M
M=-M //negate
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

// label String.intValue$IF_FALSE3
(String.intValue$IF_FALSE3)

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

// function String.setInt 4
(String.setInt)
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

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
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

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_228b507947cc4bee8125e7d94b16b56e
D;JEQ
@SP
A=M
M=0
@END_228b507947cc4bee8125e7d94b16b56e
0;JMP
(EQUAL_228b507947cc4bee8125e7d94b16b56e)
@SP
A=M
M=-1
(END_228b507947cc4bee8125e7d94b16b56e)
@SP
M=M+1

// if-goto String.setInt$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.setInt$IF_TRUE0
D;JNE

// goto String.setInt$IF_FALSE0
@String.setInt$IF_FALSE0
0;JMP

// label String.setInt$IF_TRUE0
(String.setInt$IF_TRUE0)

// push constant 19
@19
D=A //D=19
@SP
A=M
M=D //*SP=19
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$f7a74953fed04300aded047ce4032423
@Sys.error$f7a74953fed04300aded047ce4032423
D=A
@SP
A=M
M=D //*SP=Sys.error$f7a74953fed04300aded047ce4032423
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$f7a74953fed04300aded047ce4032423)



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

// label String.setInt$IF_FALSE0
(String.setInt$IF_FALSE0)

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
@SP
M=M+1 //SP++


// call Array.new 1
// push Array.new$2c83980e31164dbc80efe65ecd521fd7
@Array.new$2c83980e31164dbc80efe65ecd521fd7
D=A
@SP
A=M
M=D //*SP=Array.new$2c83980e31164dbc80efe65ecd521fd7
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
// goto Array.new
@Array.new
0;JMP
(Array.new$2c83980e31164dbc80efe65ecd521fd7)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_4f246cb34a9241cc96530dc22e31c833
D;JLT
@SP
A=M
M=0
@END_4f246cb34a9241cc96530dc22e31c833
0;JMP
(LT_4f246cb34a9241cc96530dc22e31c833)
@SP
A=M
M=-1
(END_4f246cb34a9241cc96530dc22e31c833)
@SP
M=M+1

// if-goto String.setInt$IF_TRUE1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.setInt$IF_TRUE1
D;JNE

// goto String.setInt$IF_FALSE1
@String.setInt$IF_FALSE1
0;JMP

// label String.setInt$IF_TRUE1
(String.setInt$IF_TRUE1)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

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

// neg
@SP
M=M-1 //SP--
A=M
M=-M //negate
@SP
M=M+1 //SP++

// pop argument 1
@1
D=A //D=1
@ARG
D=D+M //D=ARG+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=ARG+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// label String.setInt$IF_FALSE1
(String.setInt$IF_FALSE1)

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

// label String.setInt$WHILE_EXP0
(String.setInt$WHILE_EXP0)

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_1c8ead3d584042de8604eb5cf4c5191b
D;JGT
@SP
A=M
M=0
@END_1c8ead3d584042de8604eb5cf4c5191b
0;JMP
(GT_1c8ead3d584042de8604eb5cf4c5191b)
@SP
A=M
M=-1
(END_1c8ead3d584042de8604eb5cf4c5191b)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto String.setInt$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.setInt$WHILE_END0
D;JNE

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

// push constant 10
@10
D=A //D=10
@SP
A=M
M=D //*SP=10
@SP
M=M+1 //SP++


// call Math.divide 2
// push Math.divide$1885923fcca642bbacb67475478a878d
@Math.divide$1885923fcca642bbacb67475478a878d
D=A
@SP
A=M
M=D //*SP=Math.divide$1885923fcca642bbacb67475478a878d
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
@2
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
// goto Math.divide
@Math.divide
0;JMP
(Math.divide$1885923fcca642bbacb67475478a878d)



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

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
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

// push constant 10
@10
D=A //D=10
@SP
A=M
M=D //*SP=10
@SP
M=M+1 //SP++


// call Math.multiply 2
// push Math.multiply$f74129d257584d7b85a632add040afac
@Math.multiply$f74129d257584d7b85a632add040afac
D=A
@SP
A=M
M=D //*SP=Math.multiply$f74129d257584d7b85a632add040afac
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
@2
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
// goto Math.multiply
@Math.multiply
0;JMP
(Math.multiply$f74129d257584d7b85a632add040afac)



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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// pop argument 1
@1
D=A //D=1
@ARG
D=D+M //D=ARG+1
@R13 //use general purpose register for temp storage
M=D //RAM[13]=ARG+1
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// goto String.setInt$WHILE_EXP0
@String.setInt$WHILE_EXP0
0;JMP

// label String.setInt$WHILE_END0
(String.setInt$WHILE_END0)

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

// if-goto String.setInt$IF_TRUE2
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.setInt$IF_TRUE2
D;JNE

// goto String.setInt$IF_FALSE2
@String.setInt$IF_FALSE2
0;JMP

// label String.setInt$IF_TRUE2
(String.setInt$IF_TRUE2)

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

// push constant 45
@45
D=A //D=45
@SP
A=M
M=D //*SP=45
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// label String.setInt$IF_FALSE2
(String.setInt$IF_FALSE2)

// push this 0
@0
D=A //D=0
@THIS
A=D+M //A=THIS+0, M=*(THIS+0)
D=M //D=*(THIS+0)
@SP
A=M
M=D //*SP=*(THIS+0)
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

// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@LT_e55c57bfccb049f79eb11212579c9fcb
D;JLT
@SP
A=M
M=0
@END_e55c57bfccb049f79eb11212579c9fcb
0;JMP
(LT_e55c57bfccb049f79eb11212579c9fcb)
@SP
A=M
M=-1
(END_e55c57bfccb049f79eb11212579c9fcb)
@SP
M=M+1

// if-goto String.setInt$IF_TRUE3
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.setInt$IF_TRUE3
D;JNE

// goto String.setInt$IF_FALSE3
@String.setInt$IF_FALSE3
0;JMP

// label String.setInt$IF_TRUE3
(String.setInt$IF_TRUE3)

// push constant 19
@19
D=A //D=19
@SP
A=M
M=D //*SP=19
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$facd5441dbf74314886422a64dbf4269
@Sys.error$facd5441dbf74314886422a64dbf4269
D=A
@SP
A=M
M=D //*SP=Sys.error$facd5441dbf74314886422a64dbf4269
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$facd5441dbf74314886422a64dbf4269)



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

// label String.setInt$IF_FALSE3
(String.setInt$IF_FALSE3)

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_ccbc43f1af5a453e9c32395b5cbd57bd
D;JEQ
@SP
A=M
M=0
@END_ccbc43f1af5a453e9c32395b5cbd57bd
0;JMP
(EQUAL_ccbc43f1af5a453e9c32395b5cbd57bd)
@SP
A=M
M=-1
(END_ccbc43f1af5a453e9c32395b5cbd57bd)
@SP
M=M+1

// if-goto String.setInt$IF_TRUE4
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.setInt$IF_TRUE4
D;JNE

// goto String.setInt$IF_FALSE4
@String.setInt$IF_FALSE4
0;JMP

// label String.setInt$IF_TRUE4
(String.setInt$IF_TRUE4)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
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

// push constant 48
@48
D=A //D=48
@SP
A=M
M=D //*SP=48
@SP
M=M+1 //SP++

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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// pop this 2
@2
D=A //D=2
@THIS
D=D+M //D=THIS+2
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+2
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// goto String.setInt$IF_END4
@String.setInt$IF_END4
0;JMP

// label String.setInt$IF_FALSE4
(String.setInt$IF_FALSE4)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// pop this 2
@2
D=A //D=2
@THIS
D=D+M //D=THIS+2
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+2
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// label String.setInt$WHILE_EXP1
(String.setInt$WHILE_EXP1)

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// lt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@LT_ef9ef61adafc433abc7a783cc8e70093
D;JLT
@SP
A=M
M=0
@END_ef9ef61adafc433abc7a783cc8e70093
0;JMP
(LT_ef9ef61adafc433abc7a783cc8e70093)
@SP
A=M
M=-1
(END_ef9ef61adafc433abc7a783cc8e70093)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto String.setInt$WHILE_END1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@String.setInt$WHILE_END1
D;JNE

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
@SP
M=M+1 //SP++

// push this 1
@1
D=A //D=1
@THIS
A=D+M //A=THIS+1, M=*(THIS+1)
D=M //D=*(THIS+1)
@SP
A=M
M=D //*SP=*(THIS+1)
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

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push temp 0
@5
D=A //D=5
@0
A=D+A //A=5+0
D=M //D=*(5+0)
@SP
A=M
M=D //*SP=*(5+0)
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

// push this 2
@2
D=A //D=2
@THIS
A=D+M //A=THIS+2, M=*(THIS+2)
D=M //D=*(THIS+2)
@SP
A=M
M=D //*SP=*(THIS+2)
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

// pop this 2
@2
D=A //D=2
@THIS
D=D+M //D=THIS+2
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+2
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// goto String.setInt$WHILE_EXP1
@String.setInt$WHILE_EXP1
0;JMP

// label String.setInt$WHILE_END1
(String.setInt$WHILE_END1)

// label String.setInt$IF_END4
(String.setInt$IF_END4)

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


// call Array.dispose 1
// push Array.dispose$db21dfb395c34728955bbcfb4d6f0a11
@Array.dispose$db21dfb395c34728955bbcfb4d6f0a11
D=A
@SP
A=M
M=D //*SP=Array.dispose$db21dfb395c34728955bbcfb4d6f0a11
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
// goto Array.dispose
@Array.dispose
0;JMP
(Array.dispose$db21dfb395c34728955bbcfb4d6f0a11)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function String.newLine 0
(String.newLine)

// push constant 128
@128
D=A //D=128
@SP
A=M
M=D //*SP=128
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

// function String.backSpace 0
(String.backSpace)

// push constant 129
@129
D=A //D=129
@SP
A=M
M=D //*SP=129
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

// function String.doubleQuote 0
(String.doubleQuote)

// push constant 34
@34
D=A //D=34
@SP
A=M
M=D //*SP=34
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

// function Sys.init 0
(Sys.init)


// call Memory.init 0
// push Memory.init$5e54ab68b7d24508a769503499272a27
@Memory.init$5e54ab68b7d24508a769503499272a27
D=A
@SP
A=M
M=D //*SP=Memory.init$5e54ab68b7d24508a769503499272a27
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
// goto Memory.init
@Memory.init
0;JMP
(Memory.init$5e54ab68b7d24508a769503499272a27)



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


// call Math.init 0
// push Math.init$6bbf5e9cd96944f0ae831118e42e73fc
@Math.init$6bbf5e9cd96944f0ae831118e42e73fc
D=A
@SP
A=M
M=D //*SP=Math.init$6bbf5e9cd96944f0ae831118e42e73fc
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
// goto Math.init
@Math.init
0;JMP
(Math.init$6bbf5e9cd96944f0ae831118e42e73fc)



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


// call Screen.init 0
// push Screen.init$55ebdfd48def4da3a9ce6b13a29dbfc1
@Screen.init$55ebdfd48def4da3a9ce6b13a29dbfc1
D=A
@SP
A=M
M=D //*SP=Screen.init$55ebdfd48def4da3a9ce6b13a29dbfc1
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
// goto Screen.init
@Screen.init
0;JMP
(Screen.init$55ebdfd48def4da3a9ce6b13a29dbfc1)



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


// call Output.init 0
// push Output.init$512c76ca35144c4fa4d58f12d7c6d4ba
@Output.init$512c76ca35144c4fa4d58f12d7c6d4ba
D=A
@SP
A=M
M=D //*SP=Output.init$512c76ca35144c4fa4d58f12d7c6d4ba
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
// goto Output.init
@Output.init
0;JMP
(Output.init$512c76ca35144c4fa4d58f12d7c6d4ba)



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


// call Keyboard.init 0
// push Keyboard.init$567d81f6e37b4cbbb9ccd395b106a564
@Keyboard.init$567d81f6e37b4cbbb9ccd395b106a564
D=A
@SP
A=M
M=D //*SP=Keyboard.init$567d81f6e37b4cbbb9ccd395b106a564
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
// goto Keyboard.init
@Keyboard.init
0;JMP
(Keyboard.init$567d81f6e37b4cbbb9ccd395b106a564)



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


// call Main.main 0
// push Main.main$1250599cc63245868bc97f720b443caa
@Main.main$1250599cc63245868bc97f720b443caa
D=A
@SP
A=M
M=D //*SP=Main.main$1250599cc63245868bc97f720b443caa
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
// goto Main.main
@Main.main
0;JMP
(Main.main$1250599cc63245868bc97f720b443caa)



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


// call Sys.halt 0
// push Sys.halt$0ef4deb6a8ce47f6a48ca2d725b29c9e
@Sys.halt$0ef4deb6a8ce47f6a48ca2d725b29c9e
D=A
@SP
A=M
M=D //*SP=Sys.halt$0ef4deb6a8ce47f6a48ca2d725b29c9e
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
// goto Sys.halt
@Sys.halt
0;JMP
(Sys.halt$0ef4deb6a8ce47f6a48ca2d725b29c9e)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Sys.halt 0
(Sys.halt)

// label Sys.halt$WHILE_EXP0
(Sys.halt$WHILE_EXP0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Sys.halt$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Sys.halt$WHILE_END0
D;JNE

// goto Sys.halt$WHILE_EXP0
@Sys.halt$WHILE_EXP0
0;JMP

// label Sys.halt$WHILE_END0
(Sys.halt$WHILE_END0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Sys.wait 1
(Sys.wait)
// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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
@LT_18efbcf4d26e4595b765806e0a7334e7
D;JLT
@SP
A=M
M=0
@END_18efbcf4d26e4595b765806e0a7334e7
0;JMP
(LT_18efbcf4d26e4595b765806e0a7334e7)
@SP
A=M
M=-1
(END_18efbcf4d26e4595b765806e0a7334e7)
@SP
M=M+1

// if-goto Sys.wait$IF_TRUE0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Sys.wait$IF_TRUE0
D;JNE

// goto Sys.wait$IF_FALSE0
@Sys.wait$IF_FALSE0
0;JMP

// label Sys.wait$IF_TRUE0
(Sys.wait$IF_TRUE0)

// push constant 1
@1
D=A //D=1
@SP
A=M
M=D //*SP=1
@SP
M=M+1 //SP++


// call Sys.error 1
// push Sys.error$4528912b7e564e208c4c5191bcfeca49
@Sys.error$4528912b7e564e208c4c5191bcfeca49
D=A
@SP
A=M
M=D //*SP=Sys.error$4528912b7e564e208c4c5191bcfeca49
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
// goto Sys.error
@Sys.error
0;JMP
(Sys.error$4528912b7e564e208c4c5191bcfeca49)



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

// label Sys.wait$IF_FALSE0
(Sys.wait$IF_FALSE0)

// label Sys.wait$WHILE_EXP0
(Sys.wait$WHILE_EXP0)

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_709776b04e764ccabb128af3cc00cfdc
D;JGT
@SP
A=M
M=0
@END_709776b04e764ccabb128af3cc00cfdc
0;JMP
(GT_709776b04e764ccabb128af3cc00cfdc)
@SP
A=M
M=-1
(END_709776b04e764ccabb128af3cc00cfdc)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Sys.wait$WHILE_END0
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Sys.wait$WHILE_END0
D;JNE

// push constant 50
@50
D=A //D=50
@SP
A=M
M=D //*SP=50
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

// label Sys.wait$WHILE_EXP1
(Sys.wait$WHILE_EXP1)

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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
@SP
M=M+1 //SP++

// gt
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D //x-y
@GT_78ce12073b94472eb9bafe68d33bb118
D;JGT
@SP
A=M
M=0
@END_78ce12073b94472eb9bafe68d33bb118
0;JMP
(GT_78ce12073b94472eb9bafe68d33bb118)
@SP
A=M
M=-1
(END_78ce12073b94472eb9bafe68d33bb118)
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

// if-goto Sys.wait$WHILE_END1
@SP
M=M-1 // SP--
@SP
A=M
D=M
@Sys.wait$WHILE_END1
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

// goto Sys.wait$WHILE_EXP1
@Sys.wait$WHILE_EXP1
0;JMP

// label Sys.wait$WHILE_END1
(Sys.wait$WHILE_END1)

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

// goto Sys.wait$WHILE_EXP0
@Sys.wait$WHILE_EXP0
0;JMP

// label Sys.wait$WHILE_END0
(Sys.wait$WHILE_END0)

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

// function Sys.error 0
(Sys.error)

// push constant 3
@3
D=A //D=3
@SP
A=M
M=D //*SP=3
@SP
M=M+1 //SP++


// call String.new 1
// push String.new$22494e517e884991a85ba1c67bf37532
@String.new$22494e517e884991a85ba1c67bf37532
D=A
@SP
A=M
M=D //*SP=String.new$22494e517e884991a85ba1c67bf37532
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
// goto String.new
@String.new
0;JMP
(String.new$22494e517e884991a85ba1c67bf37532)



// push constant 69
@69
D=A //D=69
@SP
A=M
M=D //*SP=69
@SP
M=M+1 //SP++


// call String.appendChar 2
// push String.appendChar$0ed300cc13ea4c7584d42b1479ba866a
@String.appendChar$0ed300cc13ea4c7584d42b1479ba866a
D=A
@SP
A=M
M=D //*SP=String.appendChar$0ed300cc13ea4c7584d42b1479ba866a
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
@2
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
// goto String.appendChar
@String.appendChar
0;JMP
(String.appendChar$0ed300cc13ea4c7584d42b1479ba866a)



// push constant 82
@82
D=A //D=82
@SP
A=M
M=D //*SP=82
@SP
M=M+1 //SP++


// call String.appendChar 2
// push String.appendChar$b7334449ea2445bfa12821357be6647b
@String.appendChar$b7334449ea2445bfa12821357be6647b
D=A
@SP
A=M
M=D //*SP=String.appendChar$b7334449ea2445bfa12821357be6647b
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
@2
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
// goto String.appendChar
@String.appendChar
0;JMP
(String.appendChar$b7334449ea2445bfa12821357be6647b)



// push constant 82
@82
D=A //D=82
@SP
A=M
M=D //*SP=82
@SP
M=M+1 //SP++


// call String.appendChar 2
// push String.appendChar$6e4a382131f04305b0074ac34702d849
@String.appendChar$6e4a382131f04305b0074ac34702d849
D=A
@SP
A=M
M=D //*SP=String.appendChar$6e4a382131f04305b0074ac34702d849
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
@2
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
// goto String.appendChar
@String.appendChar
0;JMP
(String.appendChar$6e4a382131f04305b0074ac34702d849)




// call Output.printString 1
// push Output.printString$924d52ffb60347cfb8e50b1b53bf2a67
@Output.printString$924d52ffb60347cfb8e50b1b53bf2a67
D=A
@SP
A=M
M=D //*SP=Output.printString$924d52ffb60347cfb8e50b1b53bf2a67
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
// goto Output.printString
@Output.printString
0;JMP
(Output.printString$924d52ffb60347cfb8e50b1b53bf2a67)



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


// call Output.printInt 1
// push Output.printInt$cb3bbf69715c45c49fc1c7dc2e57503c
@Output.printInt$cb3bbf69715c45c49fc1c7dc2e57503c
D=A
@SP
A=M
M=D //*SP=Output.printInt$cb3bbf69715c45c49fc1c7dc2e57503c
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
// goto Output.printInt
@Output.printInt
0;JMP
(Output.printInt$cb3bbf69715c45c49fc1c7dc2e57503c)



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


// call Sys.halt 0
// push Sys.halt$45f3867adb7247968bf5927b035230ac
@Sys.halt$45f3867adb7247968bf5927b035230ac
D=A
@SP
A=M
M=D //*SP=Sys.halt$45f3867adb7247968bf5927b035230ac
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
// goto Sys.halt
@Sys.halt
0;JMP
(Sys.halt$45f3867adb7247968bf5927b035230ac)



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

// push constant 0
@0
D=A //D=0
@SP
A=M
M=D //*SP=0
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

