import unittest
import function
from constants import *
import textwrap

#python -m unittest discover -p "*_tests.py"
class FunctionTests(unittest.TestCase):

    def test_function_declaration(self):
        expected = textwrap.dedent("""
            // function Foo.bar 4
            (Foo.bar)
            // push constant 0
            @0
            D=A //D=0
            @SP
            A=M
            M=D //*SP=0
            @SP
            M=M+1 //SP++
            // push constant 0
            @0
            D=A //D=0
            @SP
            A=M
            M=D //*SP=0
            @SP
            M=M+1 //SP++
            // push constant 0
            @0
            D=A //D=0
            @SP
            A=M
            M=D //*SP=0
            @SP
            M=M+1 //SP++
            // push constant 0
            @0
            D=A //D=0
            @SP
            A=M
            M=D //*SP=0
            @SP
            M=M+1 //SP++
        """).strip()
        self.assertEqual(expected, function.translate_command("function", "Foo.bar", "4"))

    def test_function_call(self):
        expected = textwrap.dedent("""
            // call Foo.bar 4
            
        """).strip()
        print()
        print(function.translate_command("call", "Foo.bar", "4"))

    def test_function_return(self):
        expected = textwrap.dedent("""
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
        """).strip()
        self.assertEqual(expected, function.translate_command("return", "", ""))


if __name__=="__main__":
    unittest.main()