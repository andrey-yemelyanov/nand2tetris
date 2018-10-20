import unittest
from jack_analyzer import JackAnalyzer

#python -m unittest discover -p "*_tests.py"
class JackAnalyzerTests(unittest.TestCase):

    def test_main_expressionless(self):
        self.compile("ExpressionLessSquare", "Main")

    def test_squaregame_expressionless(self):
        self.compile("ExpressionLessSquare", "SquareGame")

    def test_square_expressionless(self):
        self.compile("ExpressionLessSquare", "Square")

    def compile(self, dirName, fileName):
        jack_analyzer=JackAnalyzer("{0:}/{1:}.jack".format(dirName, fileName))
        jack_analyzer.compile()

        expected = []
        actual = []
        with open("{0:}/{1:}.xml".format(dirName, fileName)) as fh:
            for line in fh:
                expected.append(line.strip())
        with open("{0:}/{1:}__.xml".format(dirName, fileName)) as fh:
            for line in fh:
                actual.append(line.strip()) 
            
        self.assertListEqual(expected, actual)
