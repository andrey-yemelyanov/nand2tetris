VM_CONST = "constant"
VM_LOCAL = "local"
VM_ARGUMENT = "argument"
VM_THIS = "this"
VM_THAT = "that"
VM_STATIC = "static"
VM_POINTER = "pointer"
VM_TEMP = "temp"
VM_ADD = "add"
VM_SUB = "sub"
VM_NEG = "neg"
VM_EQ = "eq"
VM_GT = "gt"
VM_LT = "lt"
VM_AND = "and"
VM_OR = "or"
VM_NOT = "not"

KEYWORD = "keyword"
SYMBOL = "symbol"
INTEGER_CONSTANT = "integerConstant"
STRING_CONSTANT = "stringConstant"
IDENTIFIER = "identifier"

CLASS = "class"
CONSTRUCTOR = "constructor"
FUNCTION = "function"
METHOD = "method"
FIELD = "field"
STATIC = "static"
VAR = "var"
ARG = "arg"
INT = "int"
CHAR = "char"
BOOLEAN = "boolean"
VOID = "void"
TRUE = "true"
FALSE = "false"
NULL = "null"
THIS = "this"
LET = "let"
DO = "do"
IF = "if"
ELSE = "else"
WHILE = "while"
RETURN = "return"

CLASS_VAR_DEC = "classVarDec"
SUBROUTINE_DEC = "subroutineDec"
PARAMETER_LIST = "parameterList"
SUBROUTINE_BODY = "subroutineBody"
VAR_DEC = "varDec"
STATEMENTS = "statements"
LET_STATEMENT = "letStatement"
DO_STATEMENT = "doStatement"
WHILE_STATEMENT = "whileStatement"
IF_STATEMENT = "ifStatement"
RETURN_STATEMENT = "returnStatement"
EXPRESSION = "expression"
EXPRESSION_LIST = "expressionList"
TERM = "term"

operation_map = {
    "+" : VM_ADD,
    "-" : VM_SUB,
    "*" : "call Math.multiply 2",
    "/" : "call Math.divide 2",
    "&" : "and",
    "|" : "or",
    "<" : "lt",
    ">" : "gt",
    "=" : "eq",
    "-" : "neg",
    "~" : "not"
}

keyword_map = {
    "true"  : "-1",
    "false" :  "0",
    "null"  :  "0"
}
