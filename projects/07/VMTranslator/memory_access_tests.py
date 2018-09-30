import unittest
import memory_access
from enums import *
import textwrap

class MemoryAccessTests(unittest.TestCase):
    file_name="Foo"

    def test_push_constant(self):
        expected = textwrap.dedent("""
            // push constant 17
            @17
            D=A //D=17
            @SP
            A=M
            M=D //*SP=17
            @SP
            M=M+1 //SP++
        """).strip()
        self.assertEqual(expected, memory_access.translate_command(MemoryAccessCommand.PUSH, MemorySegment.CONSTANT, 17, self.file_name))

    def test_pop_local(self):
        expected=textwrap.dedent("""
            // pop local 43
            @43
            D=A //D=43
            @LCL
            D=D+M //D=LCL+43
            @R13 //use general purpose register for temp storage
            M=D //RAM[13]=LCL+43
            @SP
            M=M-1 //SP--
            A=M
            D=M //D=*SP
            @R13
            A=M //A=RAM[13]
            M=D //*RAM[13]=*SP
        """).strip()
        self.assertEqual(expected, memory_access.translate_command(MemoryAccessCommand.POP, MemorySegment.LCL, 43, self.file_name))

    def test_pop_arg(self):
        expected=textwrap.dedent("""
            // pop argument 12
            @12
            D=A //D=12
            @ARG
            D=D+M //D=ARG+12
            @R13 //use general purpose register for temp storage
            M=D //RAM[13]=ARG+12
            @SP
            M=M-1 //SP--
            A=M
            D=M //D=*SP
            @R13
            A=M //A=RAM[13]
            M=D //*RAM[13]=*SP
        """).strip()
        self.assertEqual(expected, memory_access.translate_command(MemoryAccessCommand.POP, MemorySegment.ARG, 12, self.file_name))

    def test_pop_this(self):
        expected=textwrap.dedent("""
            // pop this 5
            @5
            D=A //D=5
            @THIS
            D=D+M //D=THIS+5
            @R13 //use general purpose register for temp storage
            M=D //RAM[13]=THIS+5
            @SP
            M=M-1 //SP--
            A=M
            D=M //D=*SP
            @R13
            A=M //A=RAM[13]
            M=D //*RAM[13]=*SP
        """).strip()
        self.assertEqual(expected, memory_access.translate_command(MemoryAccessCommand.POP, MemorySegment.THIS, 5, self.file_name))

    def test_pop_that(self):
        expected=textwrap.dedent("""
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
        """).strip()
        self.assertEqual(expected, memory_access.translate_command(MemoryAccessCommand.POP, MemorySegment.THAT, 5, self.file_name))

    def test_push_local(self):
        expected=textwrap.dedent("""
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
        """).strip()
        self.assertEqual(expected, memory_access.translate_command(MemoryAccessCommand.PUSH, MemorySegment.LCL, 3, self.file_name))

    def test_push_arg(self):
        expected=textwrap.dedent("""
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
        """).strip()
        self.assertEqual(expected, memory_access.translate_command(MemoryAccessCommand.PUSH, MemorySegment.ARG, 6, self.file_name))

    def test_push_this(self):
        expected=textwrap.dedent("""
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
        """).strip()
        self.assertEqual(expected, memory_access.translate_command(MemoryAccessCommand.PUSH, MemorySegment.THIS, 6, self.file_name))

    def test_push_that(self):
        expected=textwrap.dedent("""
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
        """).strip()
        self.assertEqual(expected, memory_access.translate_command(MemoryAccessCommand.PUSH, MemorySegment.THAT, 6, self.file_name))

    def test_pop_temp(self):
        expected=textwrap.dedent(""" 
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
        """).strip()
        self.assertEqual(expected, memory_access.translate_command(MemoryAccessCommand.POP, MemorySegment.TEMP, 0, self.file_name))

    def test_push_temp(self):
        expected=textwrap.dedent(""" 
            // push temp 1
            @5
            D=A //D=5
            @1
            A=D+A //A=5+1
            D=M //D=*(5+1)
            @SP
            A=M
            M=D //*SP=*(5+1)
            @SP
            M=M+1 //SP++
        """).strip()
        self.assertEqual(expected, memory_access.translate_command(MemoryAccessCommand.PUSH, MemorySegment.TEMP, 1, self.file_name))

    def test_pop_pointer(self):
        expected=textwrap.dedent(""" 
            // pop pointer 0
            //@SP
            M=M-1 //SP--
            A=M
            D=M //D=*SP
            @THIS
            M=D //THIS=*SP
        """).strip()
        self.assertEqual(expected, memory_access.translate_command(MemoryAccessCommand.POP, MemorySegment.POINTER, 0, self.file_name))

        expected=textwrap.dedent(""" 
            // pop pointer 1
            //@SP
            M=M-1 //SP--
            A=M
            D=M //D=*SP
            @THAT
            M=D //THAT=*SP
        """).strip()
        self.assertEqual(expected, memory_access.translate_command(MemoryAccessCommand.POP, MemorySegment.POINTER, 1, self.file_name))

    def test_push_pointer(self):
        expected=textwrap.dedent(""" 
            // push pointer 0
            @THIS
            D=M //D=THIS
            @SP
            A=M
            M=D //*SP=THIS
            @SP
            M=M+1 //SP++
        """).strip()
        self.assertEqual(expected, memory_access.translate_command(MemoryAccessCommand.PUSH, MemorySegment.POINTER, 0, self.file_name))

        expected=textwrap.dedent(""" 
            // push pointer 1
            @THAT
            D=M //D=THAT
            @SP
            A=M
            M=D //*SP=THAT
            @SP
            M=M+1 //SP++
        """).strip()
        self.assertEqual(expected, memory_access.translate_command(MemoryAccessCommand.PUSH, MemorySegment.POINTER, 1, self.file_name))

    def test_pop_static(self):
        expected=textwrap.dedent(""" 
            // pop static 5
            @SP
            M=M-1 //SP--
            A=M
            D=M //D=stack.pop
            @Foo.5
            M=D
        """).strip()
        self.assertEqual(expected, memory_access.translate_command(MemoryAccessCommand.POP, MemorySegment.STATIC, 5, self.file_name))

    def test_push_static(self):
        expected=textwrap.dedent(""" 
            // push static 10
            @Foo.10
            D=M
            @SP
            A=M
            M=D //*SP=Foo.10
            @SP
            M=M+1 //SP++
        """).strip()
        self.assertEqual(expected, memory_access.translate_command(MemoryAccessCommand.PUSH, MemorySegment.STATIC, 10, self.file_name))

if __name__=="__main__":
    unittest.main()