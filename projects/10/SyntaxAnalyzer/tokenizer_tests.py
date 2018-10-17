from tokenizer import Tokenizer
import unittest
from constants import *

#python -m unittest discover -p "*_tests.py"
class TokenizerTests(unittest.TestCase):

    def test_main(self):
        self.run_tokenizer_test("Square", "Main")

    def test_square(self):
        self.run_tokenizer_test("Square", "Square")

    def test_square_game(self):
        self.run_tokenizer_test("Square", "SquareGame")

    def test_array(self):
        self.run_tokenizer_test("ArrayTest", "Main")
     
    def run_tokenizer_test(self, folder, test_file):
        tokenizer=Tokenizer("{0:}/{1:}.jack".format(folder, test_file))
        token=tokenizer.next_token()
        tokens=["<tokens>"]
        while(token):
            token_type=tokenizer.token_type(token)
            if token_type == STRING_CONSTANT:
                token = token[1:-1]
            if token == "<":
                token = "&lt;"
            elif token == ">":
                token = "&gt;"
            elif token == "&":
                token = "&amp;"
            tokens.append("<{0:}> {1:} </{0:}>".format(token_type, token))
            token=tokenizer.next_token()
        tokens.append("</tokens>")

        expected=[]
        with open("{0:}/{1:}T.xml".format(folder, test_file)) as fh:
            for line in fh:
                expected.append(line.strip())

        self.assertListEqual(expected, tokens)

if __name__=="__main__":
    unittest.main() 