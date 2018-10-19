import lexical_elements
from constants import *

class Tokenizer:
    def __init__(self, file_path):
        self.file_handle = open(file_path)
        self.new_token = None
        self.prepend = None
        self.current_token = None

    def close(self):
        self.file_handle.close()

    def get_intVal(self, token):
        return int(token)

    def get_stringVal(self, token):
        return token[1:-1]

    def token_type(self, token):
        if lexical_elements.is_symbol(token):
            return SYMBOL
        if lexical_elements.is_string_constant(token):
            return STRING_CONSTANT
        if lexical_elements.is_keyword(token):
            return KEYWORD
        if lexical_elements.is_int_constant(token):
            return INTEGER_CONSTANT
        if lexical_elements.is_identifier(token):
            return IDENTIFIER

    def advance(self):
        self.current_token = self.next_token()

    def has_more_tokens(self):
        self.advance()
        return self.current_token is not None

    def next_token(self):
        token = self.new_token
        if token:
            self.new_token = None
            return token
        token = self.prepend
        if token:
            self.prepend = None

        while True:
            c = self.read_next_char()
            if not c:
                self.close()
                return None
            if c == "\"":
                return self.read_string_constant()
            if (c == " " or c == "\t") and token:
                return token
            if (c == " " or c == "\t") and not token:
                continue
            if c == "\n" and token:
                return token
            if c == "\n" and not token:
                continue
            if c == "/":
                next_char = self.read_next_char()
                if next_char == "/": # skip line comment
                    self.skip_end_of_line_comment()
                    continue
                elif next_char == "*": # skip multiline comment
                    self.skip_multiline_comment()
                    continue
                else: # handle 'divide' operator
                    if next_char != " ":
                        self.prepend = next_char
                    if token:
                        self.new_token = c
                        return token
                    else:
                        return c
            if lexical_elements.is_symbol(c) and token:
                self.new_token = c
                return token
            if lexical_elements.is_symbol(c) and not token:
                return c
            token = self.append_token(token, c)

    def read_string_constant(self):
        token = "\""
        c = self.read_next_char()
        while c != "\"":
            token += c
            c = self.read_next_char()
        token += c # consume terminating '"'
        return token

    def append_token(self, token, char):
        if not token:
            return char
        else:
            return token + char 

    def read_next_char(self):
        return self.file_handle.read(1)

    def skip_end_of_line_comment(self):
        self.file_handle.readline()

    def skip_multiline_comment(self):
        # skip until terminator */ is encountered
        current=self.read_next_char() + self.read_next_char()
        while current != "*/":
            c=self.read_next_char()
            if not c:
                break
            current=current[1:] + c
                
