import lexical_elements
from constants import *
from errors import CompilationError 
from symbol_table import SymbolTable
from vm_writer import VMWriter
import uuid

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
            subroutine_type = self.tokenizer.current_token
            self.eat(self.tokenizer.current_token)

            # eat subroutine return type
            self.eat(self.tokenizer.current_token) 

            # eat subroutine name
            subroutine_name = self.class_name + "." + self.tokenizer.current_token
            self.eat(self.tokenizer.current_token)
            
            # compile parameter list and add args to symbol table
            self.compile_parameter_list(subroutine_type)

            self.eat("{")

            # compile func local VARs and add them to symbol table
            # output subroutine type specific VM code
            self.compile_subroutine_header(subroutine_name, subroutine_type)

            # compile subroutine statements
            self.compile_statements()

            self.eat("}")
            
    def compile_subroutine_header(self, subroutine_name, subroutine_type):
        # compile local variable declarations
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

        # add subroutine type specific VM code
        if subroutine_type == CONSTRUCTOR:
            # allocate memory for the object being constructed
            self.vm_writer.write_push(VM_CONST, self.st.var_count(FIELD))
            self.vm_writer.write_call("Memory.alloc", "1")
            self.vm_writer.write_pop(VM_POINTER, "0")
        elif subroutine_type == METHOD:
            # anchor THIS to the current object
            self.vm_writer.write_push(VM_ARGUMENT, "0")
            self.vm_writer.write_pop(VM_POINTER, "0")

    def compile_parameter_list(self, subroutine_type):
        if subroutine_type == METHOD: # arg0 in a method is always THIS object
            self.st.define("thisObject", "type", ARG) # dummy entry, just to make sure all other method args will begin indexing from 1
        self.eat("(")
        if self.tokenizer.current_token != ")":
            # eat var type
            type = self.tokenizer.current_token
            self.eat(self.tokenizer.current_token)
            # eat var name
            name = self.tokenizer.current_token
            self.st.define(name, type, ARG)
            self.eat(self.tokenizer.current_token)

            while self.tokenizer.current_token == ",":
                self.eat(",")
                # eat var type
                type = self.tokenizer.current_token
                self.eat(self.tokenizer.current_token)
                # eat var name
                name = self.tokenizer.current_token
                self.st.define(name, type, ARG)
                self.eat(self.tokenizer.current_token)
        self.eat(")")

    def compile_statements(self):
        statement_map = {
            LET : self.compile_let_statement,
            IF : self.compile_if_statement,
            WHILE : self.compile_while_statement,
            DO : self.compile_do_statement,
            RETURN : self.compile_return_statement
        }
        while self.tokenizer.current_token in [LET, IF, WHILE, DO, RETURN]:
            statement_map[self.tokenizer.current_token]()

    def compile_let_statement(self):
        # eat 'let' keyword
        self.eat(LET)

        # eat variable name
        var_name = self.tokenizer.current_token
        self.eat(var_name)

        # eat potential array indexing expression
        if self.tokenizer.current_token == "[":
            self.eat("[")
            self.compile_expression()
            self.eat("]")
            self.vm_writer.write_push(segment_map[self.st.kind_of(var_name)], self.st.index_of(var_name))
            self.vm_writer.write_arithmetic(VM_ADD)
            self.eat("=")
            self.compile_expression()
            self.eat(";")
            self.vm_writer.write_pop(VM_TEMP, "0")
            self.vm_writer.write_pop(VM_POINTER, "1")
            self.vm_writer.write_push(VM_TEMP, "0")
            self.vm_writer.write_pop(VM_THAT, "0")
        else:
            self.eat("=")
            self.compile_expression()
            self.eat(";")
            self.vm_writer.write_pop(segment_map[self.st.kind_of(var_name)], self.st.index_of(var_name))

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
        if self.tokenizer.current_token == "(": # 'subroutine_name()' is always a method call
            self.vm_writer.write_push(VM_POINTER, "0")

            # eat arguments
            self.eat("(")
            if self.tokenizer.is_valid_term(self.tokenizer.current_token):
                self.compile_expression()
                nArgs += 1
            while self.tokenizer.current_token == ",":
                self.eat(",")
                self.compile_expression()
                nArgs += 1   
            self.eat(")")

            self.vm_writer.write_call(self.class_name + "." + identifier, nArgs + 1)
        elif self.tokenizer.current_token == ".":
            is_method_call = self.st.type_of(identifier) is not None

            if is_method_call:
                self.vm_writer.write_push(segment_map[self.st.kind_of(identifier)], self.st.index_of(identifier))
            
            self.eat(".")
            
            # eat subroutine name
            subroutine_name = self.tokenizer.current_token
            self.eat(subroutine_name)

            # eat arguments
            self.eat("(")
            if self.tokenizer.is_valid_term(self.tokenizer.current_token):
                self.compile_expression()
                nArgs += 1
            while self.tokenizer.current_token == ",":
                self.eat(",")
                self.compile_expression()
                nArgs += 1
            self.eat(")")

            prefix = identifier
            if is_method_call:
                nArgs += 1
                prefix = self.st.type_of(identifier)

            self.vm_writer.write_call(prefix + "." + subroutine_name, nArgs)

    def compile_if_statement(self):
        L1 = str(uuid.uuid4().hex)
        L2 = str(uuid.uuid4().hex)
        self.eat(IF)
        self.eat("(")
        self.compile_expression()
        self.vm_writer.write_arithmetic(VM_NOT)
        self.vm_writer.write_if(L1)
        self.eat(")")
        self.eat("{")
        self.compile_statements()
        self.eat("}")
        self.vm_writer.write_goto(L2)
        self.vm_writer.write_label(L1)
        if self.tokenizer.current_token == ELSE:
            self.eat(ELSE)
            self.eat("{")
            self.compile_statements()
            self.eat("}")
        self.vm_writer.write_label(L2)

    def compile_while_statement(self):
        L1 = str(uuid.uuid4().hex)
        L2 = str(uuid.uuid4().hex)
        self.vm_writer.write_label(L1)
        self.eat(WHILE)
        self.eat("(")
        self.compile_expression()
        self.vm_writer.write_arithmetic(VM_NOT)
        self.vm_writer.write_if(L2)
        self.eat(")")
        self.eat("{")
        self.compile_statements()
        self.vm_writer.write_goto(L1)
        self.eat("}")
        self.vm_writer.write_label(L2)

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
            self.compile_int_constant()
        elif lexical_elements.is_string_constant(self.tokenizer.current_token):
            self.compile_string_constant()
        elif self.tokenizer.is_keyword_constant(self.tokenizer.current_token):
            self.compile_keyword_constant()
        elif self.tokenizer.current_token == "(":
            self.eat("(")
            self.compile_expression()
            self.eat(")")
        elif self.tokenizer.current_token == "-" or self.tokenizer.current_token == "~":
            self.compile_unary()
        elif lexical_elements.is_identifier(self.tokenizer.current_token):
            if self.tokenizer.peek() == "[":
                self.compile_array_expression()
            elif self.tokenizer.peek() == "(" or self.tokenizer.peek() == ".":
                self.compile_subroutine_call()
            else:
                var_name = self.tokenizer.current_token
                self.eat(var_name)
                self.vm_writer.write_push(segment_map[self.st.kind_of(var_name)], self.st.index_of(var_name))

    def compile_int_constant(self):
        self.vm_writer.write_push(VM_CONST, self.tokenizer.current_token)
        self.eat(self.tokenizer.current_token)

    def compile_string_constant(self):
        constant = self.tokenizer.current_token.replace('"', '')
        self.eat(self.tokenizer.current_token)
        self.vm_writer.write_push(VM_CONST, len(constant))
        self.vm_writer.write_call("String.new", 1)
        for c in constant:
            self.vm_writer.write_push(VM_CONST, ord(c))
            self.vm_writer.write_call("String.appendChar", "2")

    def compile_keyword_constant(self):
        if self.tokenizer.current_token == TRUE:
            self.vm_writer.write_push(VM_CONST, "1")
            self.vm_writer.write_arithmetic(VM_NEG)
        elif self.tokenizer.current_token == THIS:
            self.vm_writer.write_push(VM_POINTER, 0)
        else:
            self.vm_writer.write_push(VM_CONST, "0") # handles both FALSE and NULL
        self.eat(self.tokenizer.current_token)

    def compile_unary(self):
        op = VM_NEG
        if self.tokenizer.current_token == "~":
            op = VM_NOT
        self.eat(self.tokenizer.current_token)
        self.compile_term()
        self.vm_writer.write_arithmetic(op)

    def compile_array_expression(self):
        array = self.tokenizer.current_token
        self.eat(self.tokenizer.current_token)
        self.eat("[")
        self.compile_expression()
        self.eat("]")
        self.vm_writer.write_push(segment_map[self.st.kind_of(array)], self.st.index_of(array))
        self.vm_writer.write_arithmetic(VM_ADD)
        self.vm_writer.write_pop(VM_POINTER, "1") # anchor THAT to array entry
        self.vm_writer.write_push(VM_THAT, "0") # push result of array evaluation to stack

    def eat(self, token):
        current_token = self.tokenizer.current_token
        if current_token != token:
            raise CompilationError(
                "Expected to find token '{0:}' but found '{1:}'".format(token, current_token))
        self.tokenizer.advance()