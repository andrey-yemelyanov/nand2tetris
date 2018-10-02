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
@EQUAL_21a2dbbc5ed04af18ca800a473bef03e
D;JEQ
@SP
A=M
M=0
@END_21a2dbbc5ed04af18ca800a473bef03e
0;JMP
(EQUAL_21a2dbbc5ed04af18ca800a473bef03e)
@SP
A=M
M=-1
(END_21a2dbbc5ed04af18ca800a473bef03e)
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
@EQUAL_929d1c3ce63b405ba88a35af21ee605d
D;JEQ
@SP
A=M
M=0
@END_929d1c3ce63b405ba88a35af21ee605d
0;JMP
(EQUAL_929d1c3ce63b405ba88a35af21ee605d)
@SP
A=M
M=-1
(END_929d1c3ce63b405ba88a35af21ee605d)
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
@EQUAL_b096fbf7b08543ac826e78eddeb18343
D;JEQ
@SP
A=M
M=0
@END_b096fbf7b08543ac826e78eddeb18343
0;JMP
(EQUAL_b096fbf7b08543ac826e78eddeb18343)
@SP
A=M
M=-1
(END_b096fbf7b08543ac826e78eddeb18343)
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
@LT_58ec58a9b4924c9ca6257136926f4303
D;JLT
@SP
A=M
M=0
@END_58ec58a9b4924c9ca6257136926f4303
0;JMP
(LT_58ec58a9b4924c9ca6257136926f4303)
@SP
A=M
M=-1
(END_58ec58a9b4924c9ca6257136926f4303)
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
@LT_26823d2fa81443428db1f4bb900046ee
D;JLT
@SP
A=M
M=0
@END_26823d2fa81443428db1f4bb900046ee
0;JMP
(LT_26823d2fa81443428db1f4bb900046ee)
@SP
A=M
M=-1
(END_26823d2fa81443428db1f4bb900046ee)
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
@LT_6636c41e098d46fd8d054507475532f4
D;JLT
@SP
A=M
M=0
@END_6636c41e098d46fd8d054507475532f4
0;JMP
(LT_6636c41e098d46fd8d054507475532f4)
@SP
A=M
M=-1
(END_6636c41e098d46fd8d054507475532f4)
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
@GT_4fdc851f25ae4fc2a95efcf4e8d544b6
D;JGT
@SP
A=M
M=0
@END_4fdc851f25ae4fc2a95efcf4e8d544b6
0;JMP
(GT_4fdc851f25ae4fc2a95efcf4e8d544b6)
@SP
A=M
M=-1
(END_4fdc851f25ae4fc2a95efcf4e8d544b6)
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
@GT_3ebb3d2be15e4b5099b55a485639204c
D;JGT
@SP
A=M
M=0
@END_3ebb3d2be15e4b5099b55a485639204c
0;JMP
(GT_3ebb3d2be15e4b5099b55a485639204c)
@SP
A=M
M=-1
(END_3ebb3d2be15e4b5099b55a485639204c)
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
@GT_dcf59e9509ab48b0b4621fd305d68a50
D;JGT
@SP
A=M
M=0
@END_dcf59e9509ab48b0b4621fd305d68a50
0;JMP
(GT_dcf59e9509ab48b0b4621fd305d68a50)
@SP
A=M
M=-1
(END_dcf59e9509ab48b0b4621fd305d68a50)
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

