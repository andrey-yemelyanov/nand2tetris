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
@EQUAL_4ebfcac5cf0040acaa6353fac61aaf31
D;JEQ
@SP
A=M
M=0
@END_4ebfcac5cf0040acaa6353fac61aaf31
0;JMP
(EQUAL_4ebfcac5cf0040acaa6353fac61aaf31)
@SP
A=M
M=-1
(END_4ebfcac5cf0040acaa6353fac61aaf31)
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
@EQUAL_7721507844524a2f8adcbeac28cf7ee5
D;JEQ
@SP
A=M
M=0
@END_7721507844524a2f8adcbeac28cf7ee5
0;JMP
(EQUAL_7721507844524a2f8adcbeac28cf7ee5)
@SP
A=M
M=-1
(END_7721507844524a2f8adcbeac28cf7ee5)
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
@EQUAL_7609cff6123b4ae1b7bdb55a96eda3d5
D;JEQ
@SP
A=M
M=0
@END_7609cff6123b4ae1b7bdb55a96eda3d5
0;JMP
(EQUAL_7609cff6123b4ae1b7bdb55a96eda3d5)
@SP
A=M
M=-1
(END_7609cff6123b4ae1b7bdb55a96eda3d5)
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
@LT_8e4865497a514e068e47171beefbdcc7
D;JLT
@SP
A=M
M=0
@END_8e4865497a514e068e47171beefbdcc7
0;JMP
(LT_8e4865497a514e068e47171beefbdcc7)
@SP
A=M
M=-1
(END_8e4865497a514e068e47171beefbdcc7)
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
@LT_c76fb34c825b464d8ae885c9f495b2fd
D;JLT
@SP
A=M
M=0
@END_c76fb34c825b464d8ae885c9f495b2fd
0;JMP
(LT_c76fb34c825b464d8ae885c9f495b2fd)
@SP
A=M
M=-1
(END_c76fb34c825b464d8ae885c9f495b2fd)
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
@LT_992924a19a6542a1adaca91d21be02ce
D;JLT
@SP
A=M
M=0
@END_992924a19a6542a1adaca91d21be02ce
0;JMP
(LT_992924a19a6542a1adaca91d21be02ce)
@SP
A=M
M=-1
(END_992924a19a6542a1adaca91d21be02ce)
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
@GT_4d3df58a85204a7a9046813a359eb139
D;JGT
@SP
A=M
M=0
@END_4d3df58a85204a7a9046813a359eb139
0;JMP
(GT_4d3df58a85204a7a9046813a359eb139)
@SP
A=M
M=-1
(END_4d3df58a85204a7a9046813a359eb139)
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
@GT_a0fb9c2274804f4f83998adf8d109056
D;JGT
@SP
A=M
M=0
@END_a0fb9c2274804f4f83998adf8d109056
0;JMP
(GT_a0fb9c2274804f4f83998adf8d109056)
@SP
A=M
M=-1
(END_a0fb9c2274804f4f83998adf8d109056)
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
@GT_4d29982168f94a859cd7ca9068c88019
D;JGT
@SP
A=M
M=0
@END_4d29982168f94a859cd7ca9068c88019
0;JMP
(GT_4d29982168f94a859cd7ca9068c88019)
@SP
A=M
M=-1
(END_4d29982168f94a859cd7ca9068c88019)
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

