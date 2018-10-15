from tokenizer import Tokenizer
import unittest

#python -m unittest discover -p "*_tests.py"
class TokenizerTests(unittest.TestCase):
     
    def test_tokenizer1(self):
        tokenizer=Tokenizer("TestFiles/file1.jack")
        token=tokenizer.next_token()
        tokens=[]
        while(token is not None):
            tokens.append(token)
            token=tokenizer.next_token()
        print(tokens)

if __name__=="__main__":
    unittest.main() 