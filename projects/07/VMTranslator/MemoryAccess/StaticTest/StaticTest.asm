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

