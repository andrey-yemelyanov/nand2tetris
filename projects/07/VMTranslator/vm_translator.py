import os
import sys
from vm_parser import Parser
import memory_access
import arithmetic
from constants import *

def translate(file_path):
    with open(output_file_path(file_path), "w") as out:
        parser=Parser(file_path)
        command=parser.next_command()
        while command:
            command_type=get_command_type(command)
            if command_type==MEMORY_ACCESS:
                out.write(memory_access.translate_command(*parse_memory_access_command(command), input_file_name(file_path)))
            elif command_type==ARITHMETIC:
                out.write(arithmetic.translate_command(command))
            command=parser.next_command()
            out.write("\n\n")      
    print("Translation successful. Output file: {file}".format(file=output_file_path(file_path)))

def parse_memory_access_command(command):
    parts=command.split()
    return (parts[0], parts[1], parts[2])

def get_command_type(command):
    memory_access_commands=[POP, PUSH]
    arithmetic_commands=[ADD, SUB, NEG, EQ, GT, LT, AND, OR, NOT]
    parts=command.split()
    if parts[0] in memory_access_commands:
        return MEMORY_ACCESS
    elif parts[0] in arithmetic_commands:
        return ARITHMETIC

def input_file_name(file_path):
    return os.path.splitext(os.path.basename(file_path))[0]

def output_file_path(file_path):
    dir_name = os.path.split(file_path)[0]
    return os.path.join(dir_name, input_file_name(file_path) + ".asm")

if __name__=="__main__":
  if len(sys.argv) < 2:
    raise SystemExit("Error: VM file path argument is mandatory.\nUsage: python vm_translator.py <file_path>")
  translate(sys.argv[1])