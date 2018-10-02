// push constant 17
@17
D=A //D=17
@SP
A=M
M=D //*SP=17
@SP
M=M+1 //SP++

// push constant 17
@17
D=A //D=17
@SP
A=M
M=D //*SP=17
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
@EQUAL_8650ce036e734f1b92dcf295256b2fc2
D;JEQ
@SP
A=M
M=0
@END_8650ce036e734f1b92dcf295256b2fc2
0;JMP
(EQUAL_8650ce036e734f1b92dcf295256b2fc2)
@SP
A=M
M=-1
(END_8650ce036e734f1b92dcf295256b2fc2)
@SP
M=M+1

// push constant 17
@17
D=A //D=17
@SP
A=M
M=D //*SP=17
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

// eq
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D-M
@EQUAL_0cc9e909c96f401b893c67a6493d7b07
D;JEQ
@SP
A=M
M=0
@END_0cc9e909c96f401b893c67a6493d7b07
0;JMP
(EQUAL_0cc9e909c96f401b893c67a6493d7b07)
@SP
A=M
M=-1
(END_0cc9e909c96f401b893c67a6493d7b07)
@SP
M=M+1

// push constant 16
@16
D=A //D=16
@SP
A=M
M=D //*SP=16
@SP
M=M+1 //SP++

// push constant 17
@17
D=A //D=17
@SP
A=M
M=D //*SP=17
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
@EQUAL_e862bc80522844b69250e2aea2ff37f6
D;JEQ
@SP
A=M
M=0
@END_e862bc80522844b69250e2aea2ff37f6
0;JMP
(EQUAL_e862bc80522844b69250e2aea2ff37f6)
@SP
A=M
M=-1
(END_e862bc80522844b69250e2aea2ff37f6)
@SP
M=M+1

// push constant 892
@892
D=A //D=892
@SP
A=M
M=D //*SP=892
@SP
M=M+1 //SP++

// push constant 891
@891
D=A //D=891
@SP
A=M
M=D //*SP=891
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
@LT_45f91d47c8ff472fb501e9697a720fd8
D;JLT
@SP
A=M
M=0
@END_45f91d47c8ff472fb501e9697a720fd8
0;JMP
(LT_45f91d47c8ff472fb501e9697a720fd8)
@SP
A=M
M=-1
(END_45f91d47c8ff472fb501e9697a720fd8)
@SP
M=M+1

// push constant 891
@891
D=A //D=891
@SP
A=M
M=D //*SP=891
@SP
M=M+1 //SP++

// push constant 892
@892
D=A //D=892
@SP
A=M
M=D //*SP=892
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
@LT_d91238a3b41e4d6fa15f6f3bcf8939e1
D;JLT
@SP
A=M
M=0
@END_d91238a3b41e4d6fa15f6f3bcf8939e1
0;JMP
(LT_d91238a3b41e4d6fa15f6f3bcf8939e1)
@SP
A=M
M=-1
(END_d91238a3b41e4d6fa15f6f3bcf8939e1)
@SP
M=M+1

// push constant 891
@891
D=A //D=891
@SP
A=M
M=D //*SP=891
@SP
M=M+1 //SP++

// push constant 891
@891
D=A //D=891
@SP
A=M
M=D //*SP=891
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
@LT_68e7b76add854e888867432c8c54f81c
D;JLT
@SP
A=M
M=0
@END_68e7b76add854e888867432c8c54f81c
0;JMP
(LT_68e7b76add854e888867432c8c54f81c)
@SP
A=M
M=-1
(END_68e7b76add854e888867432c8c54f81c)
@SP
M=M+1

// push constant 32767
@32767
D=A //D=32767
@SP
A=M
M=D //*SP=32767
@SP
M=M+1 //SP++

// push constant 32766
@32766
D=A //D=32766
@SP
A=M
M=D //*SP=32766
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
@GT_e2f9cee1e4cf4583a5434c86c6b1fef1
D;JGT
@SP
A=M
M=0
@END_e2f9cee1e4cf4583a5434c86c6b1fef1
0;JMP
(GT_e2f9cee1e4cf4583a5434c86c6b1fef1)
@SP
A=M
M=-1
(END_e2f9cee1e4cf4583a5434c86c6b1fef1)
@SP
M=M+1

// push constant 32766
@32766
D=A //D=32766
@SP
A=M
M=D //*SP=32766
@SP
M=M+1 //SP++

// push constant 32767
@32767
D=A //D=32767
@SP
A=M
M=D //*SP=32767
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
@GT_ad04f67deb0f40a289dc7341097ede0b
D;JGT
@SP
A=M
M=0
@END_ad04f67deb0f40a289dc7341097ede0b
0;JMP
(GT_ad04f67deb0f40a289dc7341097ede0b)
@SP
A=M
M=-1
(END_ad04f67deb0f40a289dc7341097ede0b)
@SP
M=M+1

// push constant 32766
@32766
D=A //D=32766
@SP
A=M
M=D //*SP=32766
@SP
M=M+1 //SP++

// push constant 32766
@32766
D=A //D=32766
@SP
A=M
M=D //*SP=32766
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
@GT_27e72a5812ab4a21a87358ae097eb6f2
D;JGT
@SP
A=M
M=0
@END_27e72a5812ab4a21a87358ae097eb6f2
0;JMP
(GT_27e72a5812ab4a21a87358ae097eb6f2)
@SP
A=M
M=-1
(END_27e72a5812ab4a21a87358ae097eb6f2)
@SP
M=M+1

// push constant 57
@57
D=A //D=57
@SP
A=M
M=D //*SP=57
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

// push constant 53
@53
D=A //D=53
@SP
A=M
M=D //*SP=53
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

// push constant 112
@112
D=A //D=112
@SP
A=M
M=D //*SP=112
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
M=M&D
@SP
M=M+1

// push constant 82
@82
D=A //D=82
@SP
A=M
M=D //*SP=82
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
M=M|D
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

