import unittest
import arithmetic
from constants import *
import textwrap
import re

#python -m unittest discover -p "*_tests.py"
class ArithmeticTests(unittest.TestCase):

    def test_add(self):
        expected = textwrap.dedent(""" 
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
            """).strip()
        self.assertEqual(expected, arithmetic.translate_command(ADD))

    def test_sub(self):
        expected = textwrap.dedent(""" 
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
        """).strip()
        self.assertEqual(expected, arithmetic.translate_command(SUB))

    def test_neg(self):
        expected = textwrap.dedent(""" 
            // neg
            @SP
            M=M-1 //SP--
            A=M
            M=-M //negate
            @SP
            M=M+1 //SP++
        """).strip()
        self.assertEqual(expected, arithmetic.translate_command(NEG))

    def test_eq(self):
        expected = textwrap.dedent(r""" 
            // eq
            @SP
            M=M-1
            A=M
            D=M
            @SP
            M=M-1
            A=M
            D=D-M
            @EQUAL_\S+
            D;JEQ
            @SP
            A=M
            M=0
            @END_\S+
            0;JMP
            (EQUAL_\S+)
            @SP
            A=M
            M=-1
            (END_\S+)
            @SP
            M=M+1
        """).strip()
        self.assertIsNotNone(re.match(arithmetic.translate_command(EQ), expected))

    def test_gt(self):
        expected = "gt"
        self.assertEqual(expected, arithmetic.translate_command(GT))

    def test_lt(self):
        expected = "lt"
        self.assertEqual(expected, arithmetic.translate_command(LT))

    def test_and(self):
        expected = textwrap.dedent(""" 
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
        """).strip()
        self.assertEqual(expected, arithmetic.translate_command(AND))

    def test_or(self):
        expected = textwrap.dedent(""" 
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
        """).strip()
        self.assertEqual(expected, arithmetic.translate_command(OR))

    def test_not(self):
        expected = textwrap.dedent(""" 
            // not
            @SP
            M=M-1
            A=M
            M=!M
            @SP
            M=M+1
            """).strip()
        self.assertEqual(expected, arithmetic.translate_command(NOT))

if __name__=="__main__":
    unittest.main()