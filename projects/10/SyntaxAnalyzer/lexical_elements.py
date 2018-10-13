keywords={
    "class",
    "constructor",
    "function",
    "method",
    "field",
    "static",
    "var",
    "int",
    "char",
    "boolean",
    "void",
    "true",
    "false",
    "null",
    "this",
    "let",
    "do",
    "if",
    "else",
    "while",
    "return"
}

symbols={
    "{", "}", "(", ")", "[", "]", ".",
    ",", ";", "+", "-", "*", "/", "&",
    "|", "<", ">", "=", "~"
}

def is_keyword(token):
    return token in keywords

def is_symbol(token):
    return token in symbols

def is_int_constant(token):
    if not token.isdigit():
        return False
    return int(token) >= 0 and int(token) <= 32767

def is_string_constant(token):
    return token[0] == "\"" and token[-1] == "\""

import re
def is_identifier(token):
    pattern = re.compile("[A-Za-z_][A-Za-z0-9]*")
    return pattern.match(token)