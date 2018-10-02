import os
import sys
from vm_parser import Parser
import memory_access
import arithmetic
from constants import *

def translate(input_file_path, output_file):
    parser=Parser(input_file_path)
    command=parser.next_command()
    while command:
        command_type=get_command_type(command)
        if command_type==MEMORY_ACCESS:
            parts=command.split()
            output_file.write(memory_access.translate_command(parts[0], parts[1], parts[2], get_file_name(input_file_path)))
        elif command_type==ARITHMETIC:
            output_file.write(arithmetic.translate_command(command))
        command=parser.next_command()
        output_file.write("\n\n")

def get_command_type(command):
    memory_access_commands=[POP, PUSH]
    arithmetic_commands=[ADD, SUB, NEG, EQ, GT, LT, AND, OR, NOT]
    parts=command.split()
    if parts[0] in memory_access_commands:
        return MEMORY_ACCESS
    elif parts[0] in arithmetic_commands:
        return ARITHMETIC

def get_file_name(file_path):
    return os.path.splitext(os.path.basename(file_path))[0]

def translate_files(input_file_paths, output_file_path):
    with open(output_file_path, "w") as output_file:
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