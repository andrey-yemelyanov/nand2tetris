//Initialize stack
@256
D=A
@SP
M=D

// call Sys.init 0
// push Sys.init$f899fb9000864425ae653257b770426a
@Sys.init$f899fb9000864425ae653257b770426a
D=A
@SP
A=M
M=D //*SP=Sys.init$f899fb9000864425ae653257b770426a
@SP
M=M+1 //SP++
// push LCL
@LCL
D=M
@SP
A=M
M=D //*SP=LCL
@SP
M=M+1 //SP++
// push ARG
@ARG
D=M
@SP
A=M
M=D //*SP=ARG
@SP
M=M+1 //SP++
// push THIS
@THIS
D=M
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++
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
(Sys.init$f899fb9000864425ae653257b770426a)

// function Class1.set 0
(Class1.set)

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

// pop static 0
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Class1.0
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

// pop static 1
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Class1.1
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

// function Class1.get 0
(Class1.get)

// push static 0
@Class1.0
D=M
@SP
A=M
M=D //*SP=Class1.0
@SP
M=M+1 //SP++

// push static 1
@Class1.1
D=M
@SP
A=M
M=D //*SP=Class1.1
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

// function Sys.init 0
(Sys.init)

// push constant 6
@6
D=A //D=6
@SP
A=M
M=D //*SP=6
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


// call Class1.set 2
// push Class1.set$c5c61c21c6f842ba92b6c68e69038806
@Class1.set$c5c61c21c6f842ba92b6c68e69038806
D=A
@SP
A=M
M=D //*SP=Class1.set$c5c61c21c6f842ba92b6c68e69038806
@SP
M=M+1 //SP++
// push LCL
@LCL
D=M
@SP
A=M
M=D //*SP=LCL
@SP
M=M+1 //SP++
// push ARG
@ARG
D=M
@SP
A=M
M=D //*SP=ARG
@SP
M=M+1 //SP++
// push THIS
@THIS
D=M
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++
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
// goto Class1.set
@Class1.set
0;JMP
(Class1.set$c5c61c21c6f842ba92b6c68e69038806)



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

// push constant 23
@23
D=A //D=23
@SP
A=M
M=D //*SP=23
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


// call Class2.set 2
// push Class2.set$f74e9ba1b00743a6abf1b517037f7c7f
@Class2.set$f74e9ba1b00743a6abf1b517037f7c7f
D=A
@SP
A=M
M=D //*SP=Class2.set$f74e9ba1b00743a6abf1b517037f7c7f
@SP
M=M+1 //SP++
// push LCL
@LCL
D=M
@SP
A=M
M=D //*SP=LCL
@SP
M=M+1 //SP++
// push ARG
@ARG
D=M
@SP
A=M
M=D //*SP=ARG
@SP
M=M+1 //SP++
// push THIS
@THIS
D=M
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++
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
// goto Class2.set
@Class2.set
0;JMP
(Class2.set$f74e9ba1b00743a6abf1b517037f7c7f)



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


// call Class1.get 0
// push Class1.get$5ffaf6205acc4d508f8e58cbda08ee62
@Class1.get$5ffaf6205acc4d508f8e58cbda08ee62
D=A
@SP
A=M
M=D //*SP=Class1.get$5ffaf6205acc4d508f8e58cbda08ee62
@SP
M=M+1 //SP++
// push LCL
@LCL
D=M
@SP
A=M
M=D //*SP=LCL
@SP
M=M+1 //SP++
// push ARG
@ARG
D=M
@SP
A=M
M=D //*SP=ARG
@SP
M=M+1 //SP++
// push THIS
@THIS
D=M
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++
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
// goto Class1.get
@Class1.get
0;JMP
(Class1.get$5ffaf6205acc4d508f8e58cbda08ee62)




// call Class2.get 0
// push Class2.get$609d671d42ca4d25bd34a723b180abaa
@Class2.get$609d671d42ca4d25bd34a723b180abaa
D=A
@SP
A=M
M=D //*SP=Class2.get$609d671d42ca4d25bd34a723b180abaa
@SP
M=M+1 //SP++
// push LCL
@LCL
D=M
@SP
A=M
M=D //*SP=LCL
@SP
M=M+1 //SP++
// push ARG
@ARG
D=M
@SP
A=M
M=D //*SP=ARG
@SP
M=M+1 //SP++
// push THIS
@THIS
D=M
@SP
A=M
M=D //*SP=THIS
@SP
M=M+1 //SP++
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
// goto Class2.get
@Class2.get
0;JMP
(Class2.get$609d671d42ca4d25bd34a723b180abaa)



// label Sys.init$WHILE
(Sys.init$WHILE)

// goto Sys.init$WHILE
@Sys.init$WHILE
0;JMP

// function Class2.set 0
(Class2.set)

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

// pop static 0
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Class2.0
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

// pop static 1
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@Class2.1
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

// function Class2.get 0
(Class2.get)

// push static 0
@Class2.0
D=M
@SP
A=M
M=D //*SP=Class2.0
@SP
M=M+1 //SP++

// push static 1
@Class2.1
D=M
@SP
A=M
M=D //*SP=Class2.1
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

