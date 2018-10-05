from constants import *
import textwrap

def translate_command(command, label_name, function_name):
    return command_decoder[command](label_name, function_name)

def label(label_name, function_name):
    label=function_name + "$" + label_name
    return textwrap.dedent("""
            // label {label}
            ({label})
        """.format(label=label)).strip()

def goto(label_name, function_name):
    label=function_name + "$" + label_name
    return textwrap.dedent("""
            // goto {label}
            @{label}
            0;JMP
        """.format(label=label)).strip()

def if_goto(label_name, function_name):
    label=function_name + "$" + label_name
    return textwrap.dedent("""
            // if-goto {label}
            @SP
            M=M-1 // SP--
            @SP
            A=M
            D=M
            @{label}
            D;JNE
        """.format(label=label)).strip()

command_decoder={
    LABEL:label,
    GOTO:goto,
    IF_GOTO:if_goto
}