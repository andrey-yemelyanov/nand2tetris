import lexical_elements
from constants import *

class CompilationEngine:
    def __init__(self, tokenizer, output_file):
        self.tokenizer = tokenizer
        self.output_file = output_file

    def compile(self):
        token=self.tokenizer.next_token()
        if token == CLASS:
            self.output_file.write("<{0:}>".format(CLASS))
            self.compile_class(self, token)
            self.output_file.write("</{0:}>".format(CLASS))

    def compile_class(self, token):
        self.output_file.write("<{0:}>".format(CLASS))

    def write_lexical_element(self, token):
        self.output_file.write("<{0:}> {1:} </{0:}>".format(
            self.tokenizer.token_type(token),
            token
        ))