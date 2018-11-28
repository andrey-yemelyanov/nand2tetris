from constants import *

keywords={
    CLASS,
    CONSTRUCTOR,
    FUNCTION,
    METHOD,
    FIELD,
    STATIC,
    VAR,
    INT,
    CHAR,
    BOOLEAN,
    VOID,
    TRUE,
    FALSE,
    NULL,
    THIS,
    LET,
    DO,
    IF,
    ELSE,
    WHILE,
    RETURN
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

def is_lexical_element(token):
    return any(t for t in [
        is_identifier(token),
        is_int_constant(token),
        is_keyword(token),
        is_string_constant(token),
        is_symbol(token)
    ])