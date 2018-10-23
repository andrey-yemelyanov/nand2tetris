import lexical_elements
from constants import *
from errors import CompilationError 

class CompilationEngine:
    def __init__(self, tokenizer, output_file):
        self.tokenizer = tokenizer
        self.output_file = output_file

    def compile(self):
        self.compile_class()

    def compile_class(self):
        self.tokenizer.advance()
        self.openNonTerminal(CLASS)

        # eat 'class' keyword
        self.eat(CLASS)

        # eat class name
        if not lexical_elements.is_identifier(self.tokenizer.current_token):
            raise CompilationError("Class name must be a valid identifier but was " + self.tokenizer.current_token)
        self.eat(self.tokenizer.current_token)

        # eat opening brace
        self.eat("{")

        # compile class variable declarations
        self.compile_class_var_dec()

        # compile class subroutines
        self.compile_subroutine_dec()

        # eat closing brace
        self.eat("}")

        self.closeNonTerminal(CLASS)

    def compile_class_var_dec(self):
        while self.tokenizer.current_token in [STATIC, FIELD]:
            self.openNonTerminal(CLASS_VAR_DEC)
            
            # eat keyword 'static' or 'field'
            self.eat(self.tokenizer.current_token)

            # eat variable declaration sequence e.g. int x, y, z
            self.eat_var_sequence()

            # eat terminating semi-colon
            self.eat(";")
            
            self.closeNonTerminal(CLASS_VAR_DEC)

    def compile_subroutine_dec(self):
        while self.tokenizer.current_token in [CONSTRUCTOR, FUNCTION, METHOD]:
            self.openNonTerminal(SUBROUTINE_DEC)
            
            # eat subroutine type: method, function or constructor
            self.eat(self.tokenizer.current_token) 

            # eat subroutine return type
            if self.tokenizer.current_token != VOID and not self.is_valid_type(self.tokenizer.current_token):
                raise CompilationError("Expected valid subroutine return type or void but was " + self.tokenizer.current_token)
            self.eat(self.tokenizer.current_token) 

            # eat subroutine name
            if not lexical_elements.is_identifier(self.tokenizer.current_token):
                raise CompilationError("Expected valid subroutine name but was " + self.tokenizer.current_token)
            self.eat(self.tokenizer.current_token) 
            
            # compile subroutine parameter list (possibly empty)
            self.compile_parameter_list()
            
            # compile subroutine body
            self.compile_subroutine_body()
            
            self.closeNonTerminal(SUBROUTINE_DEC)

    def compile_subroutine_body(self):
        self.openNonTerminal(SUBROUTINE_BODY)        
        self.eat("{")

        # compile variable declarations
        self.compile_var_dec()

        # compile statements
        self.compile_statements()
        
        self.eat("}")
        self.closeNonTerminal(SUBROUTINE_BODY)

    def compile_parameter_list(self):
        self.eat("(")
        self.openNonTerminal(PARAMETER_LIST)
        if self.tokenizer.current_token != ")":
            self.eat_var_dec()
            while self.tokenizer.current_token == ",":
                self.eat(",")
                self.eat_var_dec()
        self.closeNonTerminal(PARAMETER_LIST)
        self.eat(")")

    def compile_var_dec(self):
        while self.tokenizer.current_token == VAR:
            self.openNonTerminal(VAR_DEC)

            # eat keyword 'var'
            self.eat(VAR)

            # eat variable declaration sequence e.g. int x, y, z
            self.eat_var_sequence()

            # eat terminating semicolon
            self.eat(";")

            self.closeNonTerminal(VAR_DEC)

    def compile_statements(self):
        self.openNonTerminal(STATEMENTS)
        while self.tokenizer.current_token in [LET, IF, WHILE, DO, RETURN]:
            self.statement_map[self.tokenizer.current_token](self)
        self.closeNonTerminal(STATEMENTS)

    def compile_let_statement(self):
        self.openNonTerminal(LET_STATEMENT)
        # eat 'let' keyword
        self.eat(LET)

        # eat variable name
        if not lexical_elements.is_identifier(self.tokenizer.current_token):
            raise CompilationError("Expected valid variable name but was " + self.tokenizer.current_token)
        self.eat(self.tokenizer.current_token)

        # eat potential array indexing expression
        if self.tokenizer.current_token == "[":
            self.eat("[")
            self.compile_expression()
            self.eat("]")

        self.eat("=")
        self.compile_expression()
        self.eat(";")
        self.closeNonTerminal(LET_STATEMENT)

    def compile_do_statement(self):
        self.openNonTerminal(DO_STATEMENT)
        self.eat(DO)
        self.compile_subroutine_call()
        self.eat(";")
        self.closeNonTerminal(DO_STATEMENT)

    def compile_subroutine_call(self):
        # eat identifier
        if not lexical_elements.is_identifier(self.tokenizer.current_token):
            raise CompilationError("Expected valid identifier in subroutine call but found " + self.tokenizer.current_token)
        self.eat(self.tokenizer.current_token)

        if self.tokenizer.current_token == "(":
            self.eat("(")
            self.compile_expression_list()
            self.eat(")")
        elif self.tokenizer.current_token == ".":
            self.eat(".")
            # eat subroutine name
            if not lexical_elements.is_identifier(self.tokenizer.current_token):
                raise CompilationError("Expected valid identifier in subroutine call but found " + self.tokenizer.current_token)
            self.eat(self.tokenizer.current_token)
            self.eat("(")
            self.compile_expression_list()
            self.eat(")")
        else:
            raise CompilationError("Expected '(' or '.' in subroutine call but found " + self.tokenizer.current_token)

    def compile_if_statement(self):
        self.openNonTerminal(IF_STATEMENT)
        self.eat(IF)
        self.eat("(")
        self.compile_expression()
        self.eat(")")
        self.eat("{")
        self.compile_statements()
        self.eat("}")
        if self.tokenizer.current_token == ELSE:
            self.eat(ELSE)
            self.eat("{")
            self.compile_statements()
            self.eat("}")
        self.closeNonTerminal(IF_STATEMENT)

    def compile_while_statement(self):
        self.openNonTerminal(WHILE_STATEMENT)
        self.eat(WHILE)
        self.eat("(")
        self.compile_expression()
        self.eat(")")
        self.eat("{")
        self.compile_statements()
        self.eat("}")
        self.closeNonTerminal(WHILE_STATEMENT)

    def compile_return_statement(self):
        self.openNonTerminal(RETURN_STATEMENT)
        self.eat(RETURN)
        if self.tokenizer.current_token != ";":
            self.compile_expression()
        self.eat(";")
        self.closeNonTerminal(RETURN_STATEMENT)

    def compile_expression(self):
        self.openNonTerminal(EXPRESSION)
        self.compile_term()
        while self.tokenizer.current_token in ["+", "-", "*", "/", "&", "|", "<", ">", "="]:
            self.eat(self.tokenizer.current_token)
            self.compile_term()
        self.closeNonTerminal(EXPRESSION)

    def compile_term(self):
        self.openNonTerminal(TERM)
        if lexical_elements.is_int_constant(self.tokenizer.current_token):
            self.eat(self.tokenizer.current_token)
        elif lexical_elements.is_string_constant(self.tokenizer.current_token):
            self.eat(self.tokenizer.current_token)
        elif self.is_keyword_constant(self.tokenizer.current_token):
            self.eat(self.tokenizer.current_token)
        elif self.tokenizer.current_token == "(":
            self.eat("(")
            self.compile_expression()
            self.eat(")")
        elif self.tokenizer.current_token == "-" or self.tokenizer.current_token == "~":
            self.eat(self.tokenizer.current_token)
            self.compile_term()
        elif lexical_elements.is_identifier(self.tokenizer.current_token):
            if self.tokenizer.peek() == "[":
                self.eat(self.tokenizer.current_token)
                self.eat("[")
                self.compile_expression()
                self.eat("]")
            elif self.tokenizer.peek() == "(" or self.tokenizer.peek() == ".":
                self.compile_subroutine_call()
            else:
                self.eat(self.tokenizer.current_token)
        self.closeNonTerminal(TERM)

    def compile_expression_list(self):
        self.openNonTerminal(EXPRESSION_LIST)
        if self.is_valid_term(self.tokenizer.current_token):
            self.compile_expression()
        while self.tokenizer.current_token == ",":
            self.eat(",")
            self.compile_expression()    
        self.closeNonTerminal(EXPRESSION_LIST)

    def eat_var_sequence(self):
        self.eat_var_dec()
        while self.tokenizer.current_token == ",":
            self.eat(",")
            if not lexical_elements.is_identifier(self.tokenizer.current_token):
                raise CompilationError("Expected valid variable name but was " + self.tokenizer.current_token)
            self.eat(self.tokenizer.current_token) # eat varName

    def eat_var_dec(self):
        # eat var type
        if not self.is_valid_type(self.tokenizer.current_token):
            raise CompilationError("Expected valid var type but found " + self.tokenizer.current_token)
        self.eat(self.tokenizer.current_token)
        # eat var name
        if not lexical_elements.is_identifier(self.tokenizer.current_token):
            raise CompilationError("Expected valid var name but found " + self.tokenizer.current_token)
        self.eat(self.tokenizer.current_token)

    def openNonTerminal(self, nonTerminal):
        self.output_file.write("<{0:}>".format(nonTerminal) + "\n")

    def closeNonTerminal(self, nonTerminal):
        self.output_file.write("</{0:}>".format(nonTerminal) + "\n")

    def eat(self, token):
        current_token = self.tokenizer.current_token
        if current_token != token:
            raise CompilationError(
                "Expected to find token '{0:}' but found '{1:}'".format(token, current_token))
        self.output_file.write("<{0:}> {1:} </{0:}>".format(self.tokenizer.token_type(token), self.tokenizer.get_token_value(current_token)) + "\n")
        self.tokenizer.advance()

    def is_valid_type(self, token):
        return token in [INT, CHAR, BOOLEAN] or lexical_elements.is_identifier(token)

    def is_valid_term(self, token):
        return (lexical_elements.is_identifier(token) or 
                lexical_elements.is_int_constant(token) or 
                lexical_elements.is_string_constant(token) or 
                self.is_keyword_constant(token) or 
                token == "(" or token == "~" or token == "-")

    def is_keyword_constant(self, token):
        return (token == TRUE or
                token == FALSE or
                token == NULL or
                token == THIS)

    statement_map = {
        LET : compile_let_statement,
        IF : compile_if_statement,
        WHILE : compile_while_statement,
        DO : compile_do_statement,
        RETURN : compile_return_statement
    }