from enum import Enum

class CommandType(Enum):
  A_COMMAND=1
  C_COMMAND=2
  L_COMMAND=3

def command_type(command):
  if command.startswith("@"):
    return CommandType.A_COMMAND
  if command.startswith("(") and command.endswith(")"):
    return CommandType.L_COMMAND
  return CommandType.C_COMMAND
    
def symbol(command):
  type=command_type(command)
  if(type == CommandType.A_COMMAND):
    return command[1:]
  if(type == CommandType.L_COMMAND):
    return command[1:-1]
  return None
    
def dest(command):
  if command_type(command) != CommandType.C_COMMAND:
    return None
  eq_index = command.find("=")
  if eq_index == -1:
    return None
  return command[0:command.index("=")]
    
def comp(command):
  if command_type(command) != CommandType.C_COMMAND:
    return None
  eq_index = command.find("=")
  jmp_index = command.find(";")
  if eq_index == -1 and jmp_index == -1:
    return None
  if eq_index == -1: # case like D;JMP
    return command[0:jmp_index]
  if jmp_index == -1: # case like AM=M-1
    return command[eq_index + 1:]
  # case like A=D;JGT
  return command[eq_index + 1:jmp_index]
    
def jump(command):
  if command_type(command) != CommandType.C_COMMAND:
    return None
  jmp_index = command.find(";")
  if jmp_index == -1: # case like AM=M-1
    return None
  return command[jmp_index + 1:]
