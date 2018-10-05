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

