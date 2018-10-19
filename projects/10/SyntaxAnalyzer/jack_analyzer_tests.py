import unittest
from jack_analyzer import JackAnalyzer

#python -m unittest discover -p "*_tests.py"
class JackAnalyzerTests(unittest.TestCase):

    def test_main_expressionless(self):
        jack_analyzer=JackAnalyzer("ExpressionLessSquare/Main.jack")
        jack_analyzer.compile()
