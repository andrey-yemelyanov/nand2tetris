// push constant 10
@10
D=A //D=10
@SP
A=M
M=D //*SP=10
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

// push constant 21
@21
D=A //D=21
@SP
A=M
M=D //*SP=21
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

// push constant 36
@36
D=A //D=36
@SP
A=M
M=D //*SP=36
@SP
M=M+1 //SP++

// pop this 6
@6
D=A //D=6
@THIS
D=D+M //D=THIS+6
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THIS+6
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

// push constant 42
@42
D=A //D=42
@SP
A=M
M=D //*SP=42
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

// pop that 5
@5
D=A //D=5
@THAT
D=D+M //D=THAT+5
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THAT+5
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M //A=RAM[13]
M=D //*RAM[13]=*SP

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

// push constant 510
@510
D=A //D=510
@SP
A=M
M=D //*SP=510
@SP
M=M+1 //SP++

// pop temp 6
@5
D=A //D=5
@6
D=D+A //D=5+6
@R13
M=D //RAM[13]=5+6
@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@R13
A=M
M=D //*(5+6)=*SP

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

// push that 5
@5
D=A //D=5
@THAT
A=D+M //A=THAT+5, M=*(THAT+5)
D=M //D=*(THAT+5)
@SP
A=M
M=D //*SP=*(THAT+5)
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

// push this 6
@6
D=A //D=6
@THIS
A=D+M //A=THIS+6, M=*(THIS+6)
D=M //D=*(THIS+6)
@SP
A=M
M=D //*SP=*(THIS+6)
@SP
M=M+1 //SP++

// push this 6
@6
D=A //D=6
@THIS
A=D+M //A=THIS+6, M=*(THIS+6)
D=M //D=*(THIS+6)
@SP
A=M
M=D //*SP=*(THIS+6)
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

// push temp 6
@5
D=A //D=5
@6
A=D+A //A=5+6
D=M //D=*(5+6)
@SP
A=M
M=D //*SP=*(5+6)
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

// push constant 3030
@3030
D=A //D=3030
@SP
A=M
M=D //*SP=3030
@SP
M=M+1 //SP++

// pop pointer 0
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THIS
M=D //THIS=*SP

// push constant 3040
@3040
D=A //D=3040
@SP
A=M
M=D //*SP=3040
@SP
M=M+1 //SP++

// pop pointer 1
//@SP
M=M-1 //SP--
A=M
D=M //D=*SP
@THAT
M=D //THAT=*SP

// push constant 32
@32
D=A //D=32
@SP
A=M
M=D //*SP=32
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

// push constant 46
@46
D=A //D=46
@SP
A=M
M=D //*SP=46
@SP
M=M+1 //SP++

// pop that 6
@6
D=A //D=6
@THAT
D=D+M //D=THAT+6
@R13 //use general purpose register for temp storage
M=D //RAM[13]=THAT+6
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

// push pointer 1
@THAT
D=M //D=THAT
@SP
A=M
M=D //*SP=THAT
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

// push that 6
@6
D=A //D=6
@THAT
A=D+M //A=THAT+6, M=*(THAT+6)
D=M //D=*(THAT+6)
@SP
A=M
M=D //*SP=*(THAT+6)
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

// push constant 111
@111
D=A //D=111
@SP
A=M
M=D //*SP=111
@SP
M=M+1 //SP++

// push constant 333
@333
D=A //D=333
@SP
A=M
M=D //*SP=333
@SP
M=M+1 //SP++

// push constant 888
@888
D=A //D=888
@SP
A=M
M=D //*SP=888
@SP
M=M+1 //SP++

// pop static 8
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@StaticTest.8
M=D

// pop static 3
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@StaticTest.3
M=D

// pop static 1
@SP
M=M-1 //SP--
A=M
D=M //D=stack.pop
@StaticTest.1
M=D

// push static 3
@StaticTest.3
D=M
@SP
A=M
M=D //*SP=StaticTest.3
@SP
M=M+1 //SP++

// push static 1
@StaticTest.1
D=M
@SP
A=M
M=D //*SP=StaticTest.1
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

// push static 8
@StaticTest.8
D=M
@SP
A=M
M=D //*SP=StaticTest.8
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

