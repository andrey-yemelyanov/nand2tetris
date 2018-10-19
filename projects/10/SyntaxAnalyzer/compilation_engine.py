import lexical_elements
from constants import *
from errors import CompilationError 

class CompilationEngine:
    def __init__(self, tokenizer, output_file):
        self.tokenizer = tokenizer
        self.output_file = output_file

    def compile(self):
        self.tokenizer.advance() # read first token - it must be class
        if self.tokenizer.current_token != CLASS:
            raise CompilationError("Top level token must be 'class' but was " + self.tokenizer.current_token)
        self.openNonTerminal(CLASS)
        self.compile_class()
        self.closeNonTerminal(CLASS)

    def compile_class(self):
        self.eat(CLASS)
        if not lexical_elements.is_identifier(self.tokenizer.current_token):
            raise CompilationError("Class name must be a valid identifier but was " + self.tokenizer.current_token)
        self.eat(self.tokenizer.current_token) # eat class name
        self.eat("{")

        while self.tokenizer.current_token in [STATIC, FIELD]:
            self.openNonTerminal(CLASS_VAR_DEC)
            self.compile_class_var_dec()
            self.closeNonTerminal(CLASS_VAR_DEC)

        while self.tokenizer.current_token in [CONSTRUCTOR, FUNCTION, METHOD]:
            self.openNonTerminal(SUBROUTINE_DEC)
            self.compile_subroutine_dec()
            self.closeNonTerminal(SUBROUTINE_DEC)

        self.eat("}")

    def compile_subroutine_dec(self):
        self.eat(self.tokenizer.current_token)
        if self.tokenizer.current_token != VOID and not self.is_type(self.tokenizer.current_token):
            raise CompilationError("Expected valid subroutine return type or void but was " + self.tokenizer.current_token)
        self.eat(self.tokenizer.current_token) # eat subroutine return type
        if not lexical_elements.is_identifier(self.tokenizer.current_token):
            raise CompilationError("Expected valid subroutine name but was " + self.tokenizer.current_token)
        self.eat(self.tokenizer.current_token) # eat subroutine name
        
        self.eat("(")
        self.openNonTerminal(PARAMETER_LIST)
        if self.is_valid_type(self.tokenizer.current_token): # non-empty parameter list
            self.compile_parameter_list()
        self.closeNonTerminal(PARAMETER_LIST)
        self.eat(")")
        
        self.openNonTerminal(SUBROUTINE_BODY)        
        self.eat("{")
        
        self.eat("}")
        self.closeNonTerminal(SUBROUTINE_BODY)

    def compile_parameter_list(self):
        self.eat(self.tokenizer.current_token) # eat type
        if not lexical_elements.is_identifier(self.tokenizer.current_token):
            raise CompilationError("Expected valid parameter name but was " + self.tokenizer.current_token)
        self.eat(self.tokenizer.current_token) # eat varName
        while self.tokenizer.next_token == ",":
            self.eat(",") # eat ,
            if not lexical_elements.is_identifier(self.tokenizer.current_token):
                raise CompilationError("Expected valid parameter name but was " + self.tokenizer.current_token)
            self.eat(self.tokenizer.current_token) # eat varName

    def compile_class_var_dec(self):
        self.eat(self.tokenizer.current_token)
        if not self.is_valid_type(self.tokenizer.current_token):
            raise CompilationError("Class var declaration must be int, char, boolean or custom type but was " + self.tokenizer.current_token)
        self.eat(self.tokenizer.current_token) # eat type
        if not lexical_elements.is_identifier(self.tokenizer.current_token):
            raise CompilationError("Expected valid class var name but was " + self.tokenizer.current_token)
        self.eat(self.tokenizer.current_token) # eat first varName
        
        while self.tokenizer.current_token == ",":
            self.eat(",")
            if not lexical_elements.is_identifier(self.tokenizer.current_token):
                raise CompilationError("Expected valid class var name but was " + self.tokenizer.current_token)
            self.eat(self.tokenizer.current_token) # eat varName

        self.eat(";")

    def openNonTerminal(self, nonTerminal):
        self.output_file.write("<{0:}>".format(nonTerminal) + "\n")

    def closeNonTerminal(self, nonTerminal):
        self.output_file.write("</{0:}>".format(nonTerminal) + "\n")

    def eat(self, token):
        current_token = self.tokenizer.current_token
        if current_token != token:
            raise CompilationError(
                "Expected to find token '{0:}' but found '{1:}'".format(token, current_token))
        self.output_file.write("<{0:}> {1:} </{0:}>".format(self.tokenizer.token_type(token), current_token) + "\n")
        self.tokenizer.advance()

    def is_valid_type(self, token):
        return token in [INT, CHAR, BOOLEAN] or lexical_elements.is_identifier(token)