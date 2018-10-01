import unittest
import arithmetic
from constants import *
import textwrap

#python -m unittest discover -p "*_tests.py"
class ArithmeticTests(unittest.TestCase):

    def test_add(self):
        expected = "add"
        self.assertEqual(expected, arithmetic.translate_command(ADD))

    def test_sub(self):
        expected = "sub"
        self.assertEqual(expected, arithmetic.translate_command(SUB))

    def test_neg(self):
        expected = "neg"
        self.assertEqual(expected, arithmetic.translate_command(NEG))

    def test_eq(self):
        expected = "eq"
        self.assertEqual(expected, arithmetic.translate_command(EQ))

    def test_gt(self):
        expected = "gt"
        self.assertEqual(expected, arithmetic.translate_command(GT))

    def test_lt(self):
        expected = "lt"
        self.assertEqual(expected, arithmetic.translate_command(LT))

    def test_and(self):
        expected = "and"
        self.assertEqual(expected, arithmetic.translate_command(AND))

    def test_or(self):
        expected = "or"
        self.assertEqual(expected, arithmetic.translate_command(OR))

    def test_not(self):
        expected = "not"
        self.assertEqual(expected, arithmetic.translate_command(NOT))

if __name__=="__main__":
    unittest.main()