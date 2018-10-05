import unittest
import program_flow
from constants import *
import textwrap

#python -m unittest discover -p "*_tests.py"
class ProgramFlowTests(unittest.TestCase):

    def test_label(self):
        expected = textwrap.dedent("""
            // label multiply$BEGINLOOP
            (multiply$BEGINLOOP)
        """).strip()
        self.assertEqual(expected, program_flow.translate_command(LABEL, "BEGINLOOP", "multiply"))

    def test_goto(self):
        expected=textwrap.dedent("""
            // goto factorial$ENDLOOP
            @factorial$ENDLOOP
            0;JMP
        """).strip()
        self.assertEqual(expected, program_flow.translate_command(GOTO, "ENDLOOP", "factorial"))

    def test_if_goto(self):
        expected=textwrap.dedent("""
            // if-goto mult$END
            @SP
            M=M-1 // SP--
            @SP
            A=M
            D=M
            @mult$END
            D;JNE
        """).strip()
        self.assertEqual(expected, program_flow.translate_command(IF_GOTO, "END", "mult"))
    
if __name__=="__main__":
    unittest.main()