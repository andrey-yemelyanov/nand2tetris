from constants import *
import textwrap
import uuid

def translate_command(command):
    return command_decoder[command]()

def add():
    return textwrap.dedent(""" 
        // add
        @SP
        M=M-1 //SP--
        A=M
        D=M
        @SP
        M=M-1 //SP--
        A=M
        M=D+M //M=x+y
        @SP
        M=M+1 //SP++
    """).strip()

def sub():
    return textwrap.dedent(""" 
        // sub
        @SP
        M=M-1 //SP--
        A=M
        D=M
        @SP
        M=M-1 //SP--
        A=M
        M=M-D //M=x-y
        @SP
        M=M+1 //SP++
    """).strip()

def neg():
    return textwrap.dedent(""" 
        // neg
        @SP
        M=M-1 //SP--
        A=M
        M=-M //negate
        @SP
        M=M+1 //SP++
    """).strip()

def eq():
    guid = str(uuid.uuid4().hex)
    return textwrap.dedent(""" 
        // eq
        @SP
        M=M-1
        A=M
        D=M
        @SP
        M=M-1
        A=M
        D=D-M
        @EQUAL_{uuid}
        D;JEQ
        @SP
        A=M
        M=0
        @END_{uuid}
        0;JMP
        (EQUAL_{uuid})
        @SP
        A=M
        M=-1
        (END_{uuid})
        @SP
        M=M+1
    """).format(uuid=guid).strip()

def gt():
    guid = str(uuid.uuid4().hex)
    return textwrap.dedent(""" 
        // gt
        @SP
        M=M-1
        A=M
        D=M
        @SP
        M=M-1
        A=M
        D=M-D //x-y
        @GT_{uuid}
        D;JGT
        @SP
        A=M
        M=0
        @END_{uuid}
        0;JMP
        (GT_{uuid})
        @SP
        A=M
        M=-1
        (END_{uuid})
        @SP
        M=M+1
    """).format(uuid=guid).strip()

def lt():
    guid = str(uuid.uuid4().hex)
    return textwrap.dedent(""" 
        // lt
        @SP
        M=M-1
        A=M
        D=M
        @SP
        M=M-1
        A=M
        D=M-D //x-y
        @LT_{uuid}
        D;JLT
        @SP
        A=M
        M=0
        @END_{uuid}
        0;JMP
        (LT_{uuid})
        @SP
        A=M
        M=-1
        (END_{uuid})
        @SP
        M=M+1
    """).format(uuid=guid).strip()

def _and():
    return textwrap.dedent(""" 
        // and
        @SP
        M=M-1
        A=M
        D=M
        @SP
        M=M-1
        A=M
        M=M&D
        @SP
        M=M+1
    """).strip()

def _or():
    return textwrap.dedent(""" 
        // or
        @SP
        M=M-1
        A=M
        D=M
        @SP
        M=M-1
        A=M
        M=M|D
        @SP
        M=M+1
    """).strip()

def _not():
    return textwrap.dedent(""" 
       // not
       @SP
       M=M-1
       A=M
       M=!M
       @SP
       M=M+1
    """).strip()

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
