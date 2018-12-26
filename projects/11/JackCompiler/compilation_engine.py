import lexical_elements
from constants import *
from errors import CompilationError 
from symbol_table import SymbolTable
from vm_writer import VMWriter

class CompilationEngine:
    def __init__(self, tokenizer, vm_writer):
        self.tokenizer = tokenizer
        self.st = SymbolTable()
        self.vm_writer = vm_writer
        self.class_name = ""

    def compile(self):
        self.compile_class()

    def compile_class(self):
        self.tokenizer.advance()

        # eat 'class' keyword
        self.eat(CLASS)

        # eat class name
        self.class_name = self.tokenizer.current_token
        self.eat(self.tokenizer.current_token)

        # eat opening brace
        self.eat("{")

        # compile class variable declarations
        self.compile_class_var_dec()

        # compile class subroutines
        self.compile_subroutine_dec()

        # eat closing brace
        self.eat("}")

    def compile_class_var_dec(self):
        while self.tokenizer.current_token in [STATIC, FIELD]:
            kind = self.tokenizer.current_token

            # eat keyword 'static' or 'field'
            self.eat(self.tokenizer.current_token)

            # eat variable declaration sequence e.g. int x, y, z
            # eat var type
            type = self.tokenizer.current_token
            self.eat(self.tokenizer.current_token)
            # eat var name
            name = self.tokenizer.current_token
            self.st.define(name, type, kind)
            self.eat(self.tokenizer.current_token)
            while self.tokenizer.current_token == ",":
                self.eat(",")
                self.st.define(self.tokenizer.current_token, type, kind)
                self.eat(self.tokenizer.current_token) # eat varName

            # eat terminating semi-colon
            self.eat(";")

    def compile_subroutine_dec(self):
        while self.tokenizer.current_token in [CONSTRUCTOR, FUNCTION, METHOD]:
            self.st.start_subroutine()
            
            # eat subroutine type: method, function or constructor
            self.eat(self.tokenizer.current_token) 

            # eat subroutine return type
            self.eat(self.tokenizer.current_token) 

            # eat subroutine name
            func_name = self.class_name + "." + self.tokenizer.current_token
            self.eat(self.tokenizer.current_token)
            
            # compile subroutine parameter list (possibly empty)
            self.compile_parameter_list()
            
            # compile subroutine body
            self.compile_subroutine_body(func_name)

    def compile_subroutine_body(self, subroutine_name):
        self.eat("{")

        # compile variable declarations
        while self.tokenizer.current_token == VAR:
            # eat keyword 'var'
            self.eat(VAR)

            # eat variable declaration sequence e.g. int x, y, z
            # eat var type
            type = self.tokenizer.current_token
            self.eat(self.tokenizer.current_token)
            # eat var name
            name = self.tokenizer.current_token
            self.st.define(name, type, VAR)
            self.eat(self.tokenizer.current_token)
            while self.tokenizer.current_token == ",":
                self.eat(",")
                self.st.define(self.tokenizer.current_token, type, VAR)
                self.eat(self.tokenizer.current_token) # eat varName

            # eat terminating semicolon
            self.eat(";")

        self.vm_writer.write_function(subroutine_name, self.st.var_count(VAR))

        # compile statements
        self.compile_statements()
        
        self.eat("}")

    def compile_parameter_list(self):
        self.eat("(")
        if self.tokenizer.current_token != ")":
            # eat var type
            type = self.tokenizer.current_token
            self.eat(self.tokenizer.current_token)
            # eat var name
            name = self.tokenizer.current_token
            self.st.define(name, type, ARG)

            while self.tokenizer.current_token == ",":
                self.eat(",")
                # eat var type
                type = self.tokenizer.current_token
                self.eat(self.tokenizer.current_token)
                # eat var name
                name = self.tokenizer.current_token
                self.st.define(name, type, ARG)
        self.eat(")")

    def compile_statements(self):
        while self.tokenizer.current_token in [LET, IF, WHILE, DO, RETURN]:
            self.statement_map[self.tokenizer.current_token](self)

    def compile_let_statement(self):
        # eat 'let' keyword
        self.eat(LET)

        # eat variable name
        self.eat(self.tokenizer.current_token)

        # eat potential array indexing expression
        if self.tokenizer.current_token == "[":
            self.eat("[")
            self.compile_expression()
            self.eat("]")

        self.eat("=")
        self.compile_expression()
        self.eat(";")

    def compile_do_statement(self):
        self.eat(DO)
        self.compile_subroutine_call()
        # pop and ignore the returned value
        self.vm_writer.write_pop(VM_TEMP, 0)
        self.eat(";")

    def compile_subroutine_call(self):
        # eat identifier
        identifier = self.tokenizer.current_token
        self.eat(identifier)
        nArgs = 0
        if self.tokenizer.current_token == "(":
            self.eat("(")
            if self.is_valid_term(self.tokenizer.current_token):
                self.compile_expression()
                nArgs += 1
            while self.tokenizer.current_token == ",":
                self.eat(",")
                self.compile_expression()
                nArgs += 1   
            self.eat(")")
            self.vm_writer.write_call(self.class_name + "." + identifier, nArgs)
        elif self.tokenizer.current_token == ".":
            self.eat(".")
            # eat subroutine name
            subroutine_name = self.tokenizer.current_token
            self.eat(subroutine_name)
            self.eat("(")
            if self.tokenizer.is_valid_term(self.tokenizer.current_token):
                self.compile_expression()
                nArgs += 1
            while self.tokenizer.current_token == ",":
                self.eat(",")
                self.compile_expression()
                nArgs += 1
            self.eat(")")
            type = self.st.type_of(identifier)
            if type is None:
                type = identifier

            # the arguments have been pushed to stack
            # call the subroutine
            self.vm_writer.write_call(type + "." + subroutine_name, nArgs)

    def compile_if_statement(self):
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

    def compile_while_statement(self):
        self.eat(WHILE)
        self.eat("(")
        self.compile_expression()
        self.eat(")")
        self.eat("{")
        self.compile_statements()
        self.eat("}")

    def compile_return_statement(self):
        self.eat(RETURN)
        if self.tokenizer.current_token != ";":
            self.compile_expression()
        else:
            self.vm_writer.write_push(VM_CONST, 0)
        self.eat(";")
        self.vm_writer.write_return()

    def compile_expression(self):
        self.compile_term()
        while self.tokenizer.current_token in operation_map:
            op = operation_map[self.tokenizer.current_token]
            self.eat(self.tokenizer.current_token)
            self.compile_term()
            self.vm_writer.write_arithmetic(op)

    def compile_term(self):
        if lexical_elements.is_int_constant(self.tokenizer.current_token):
            self.vm_writer.write_push(VM_CONST, self.tokenizer.current_token)
            self.eat(self.tokenizer.current_token)
        elif lexical_elements.is_string_constant(self.tokenizer.current_token):
            self.eat(self.tokenizer.current_token)
        elif self.tokenizer.is_keyword_constant(self.tokenizer.current_token):
            self.vm_writer.write_push(VM_CONST, keyword_map[self.tokenizer.current_token])
            self.eat(self.tokenizer.current_token)
        elif self.tokenizer.current_token == "(":
            self.eat("(")
            self.compile_expression()
            self.eat(")")
        elif self.tokenizer.current_token == "-" or self.tokenizer.current_token == "~":
            op = operation_map[self.tokenizer.current_token]
            self.eat(self.tokenizer.current_token)
            self.compile_term()
            self.vm_writer.write_arithmetic(op)
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

    def eat(self, token):
        current_token = self.tokenizer.current_token
        if current_token != token:
            raise CompilationError(
                "Expected to find token '{0:}' but found '{1:}'".format(token, current_token))
        self.tokenizer.advance()

    statement_map = {
        LET : compile_let_statement,
        IF : compile_if_statement,
        WHILE : compile_while_statement,
        DO : compile_do_statement,
        RETURN : compile_return_statement
    }