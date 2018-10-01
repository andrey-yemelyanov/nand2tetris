from constants import *

def translate_command(command):
    return command_decoder[command]()

def add():
    return "add"

def sub():
    return "sub"

def neg():
    return "neg"

def eq():
    return "eq"

def gt():
    return "gt"

def lt():
    return "lt"

def _and():
    return "and"

def _or():
    return "or"

def _not():
    return "not"

command_decoder={
    ADD: add,
    SUB: sub,
    NEG: neg,
    EQ: eq,
    GT: gt,
    LT: lt,
    AND: _and,
    OR: _or,
    NOT: _not
}
