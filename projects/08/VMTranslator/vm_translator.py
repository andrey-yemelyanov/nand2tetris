import os
import sys
from vm_parser import Parser
import memory_access
import arithmetic
import program_flow
import function
from constants import *

def translate(input_file_path, output_file):
    parser=Parser(input_file_path)
    command=parser.next_command()
    current_function="no_function"
    while command:
        command_type=get_command_type(command)
        parts=command.split()
        if command_type==MEMORY_ACCESS:
            output_file.write(memory_access.translate_command(parts[0], parts[1], parts[2], get_file_name(input_file_path)))
        elif command_type==ARITHMETIC:
            output_file.write(arithmetic.translate_command(command))
        elif command_type==PROGRAM_FLOW:
            output_file.write(program_flow.translate_command(parts[0], parts[1], current_function))
        elif command_type==FUNCTION:
            if parts[0] == FUNCTION_DECLARATION:
                current_function=parts[1]
            if len(parts) == 3:
                output_file.write(function.translate_command(parts[0], parts[1], parts[2]))
            else:
                output_file.write(function.translate_command(parts[0], "", ""))
        command=parser.next_command()
        output_file.write("\n\n")

def init_stack():
    return "//Initialize stack\n@256\nD=A\n@SP\nM=D\n"

def get_command_type(command):
    memory_access_commands=[POP, PUSH]
    arithmetic_commands=[ADD, SUB, NEG, EQ, GT, LT, AND, OR, NOT]
    program_flow_commands=[LABEL, GOTO, IF_GOTO]
    function_commands=[FUNCTION_CALL, FUNCTION_DECLARATION, FUNCTION_RETURN]
    parts=command.split()
    if parts[0] in memory_access_commands:
        return MEMORY_ACCESS
    elif parts[0] in arithmetic_commands:
        return ARITHMETIC
    elif parts[0] in program_flow_commands:
        return PROGRAM_FLOW
    elif parts[0] in function_commands:
        return FUNCTION

def get_file_name(file_path):
    return os.path.splitext(os.path.basename(file_path))[0]

def translate_files(input_file_paths, output_file_path):
    with open(output_file_path, "w") as output_file:
        # write bootstrap code
        output_file.write(init_stack())
        output_file.write(function.translate_command("call", "Sys.init", "0"))
        # translate each file
        for input_file_path in input_file_paths:
            print("Translating {file}... ".format(file=input_file_path), end="")
            translate(input_file_path, output_file)
            print("Success!")
    print("Translation completed. Output file: {file}".format(file=output_file_path))

if __name__=="__main__":
    if len(sys.argv) < 2:
        raise SystemExit("Error: VM source argument is mandatory.\nUsage: python vm_translator.py <source_dir>|<source_file>")
    source=sys.argv[1]
    if os.path.isdir(source):
        vm_files=list([os.path.join(source, file) for file in os.listdir(source) if file.endswith(".vm")])
        dir_name=os.path.basename(os.path.normpath(source))
        output_file_path=os.path.join(source, dir_name + ".asm")
        translate_files(vm_files, output_file_path)
    else:
        dir_name = os.path.split(source)[0]
        output_file_path=os.path.join(dir_name, get_file_name(source) + ".asm")
        translate_files([source], output_file_path)