from assembly_parser import Parser
from command_parser import CommandType
import command_parser
import c_command_translator
import sys
import os

class Assembler:
  def __init__(self, file_path):
    self.file_path=file_path
    self.symbol_table={
      "SP":"0",
      "LCL":"1",
      "ARG":"2",
      "THIS":"3",
      "THAT":"4",
      "R0":"0",
      "R1":"1",
      "R2":"2",
      "R3":"3",
      "R4":"4",
      "R5":"5",
      "R6":"6",
      "R7":"7",
      "R8":"8",
      "R9":"9",
      "R10":"10",
      "R11":"11",
      "R12":"12",
      "R13":"13",
      "R14":"14",
      "R15":"15",
      "SCREEN":"16384",
      "KBD":"24576"
    }
    self.var_address=16

  def translate(self):
    print("Translating ", self.file_path)
    output_file_name=os.path.splitext(os.path.basename(self.file_path))[0] + ".hack"
    self.process_labels()
    #print("Symbol table after processing labels:", symbol_table)
    self.translate_commands(output_file_name)
    print("Translation completed. Output file: ", output_file_name)
  
  def translate_commands(self, output_file_name):
    with open(output_file_name, "w") as out:
      parser=Parser(self.file_path)
      command=parser.next_command()
      while command:
        command_type=command_parser.command_type(command)
        if command_type == CommandType.A_COMMAND:
          out.write(self.translate_a_command(command) + "\n")
        if command_type == CommandType.C_COMMAND:
          out.write(self.translate_c_command(command) + "\n")
        command=parser.next_command()
    
  def translate_c_command(self, c_command):
    return c_command_translator.translate(c_command)
    
  def translate_a_command(self, a_command):
    symbol=command_parser.symbol(a_command)
    decimal=0
    #print(symbol)
    if symbol.isdigit():
      decimal=int(symbol)
    elif symbol not in self.symbol_table:
      #print("Found variable " + symbol)
      self.symbol_table[symbol] = str(self.var_address)
      decimal=self.var_address
      self.var_address += 1
    else:
      decimal=int(self.symbol_table[symbol])
      
    return "0{0:015b}".format(decimal) # convert to 16 bit binary string
    
  def process_labels(self):
    parser=Parser(self.file_path)
    command=parser.next_command()
    address=0
    while command:
      command_type=command_parser.command_type(command)
      if command_type == CommandType.L_COMMAND:
        label=command_parser.symbol(command)
        self.symbol_table[label] = str(address)
        #print("Found label ({0:s})".format(label))
      else:
        address += 1
      command=parser.next_command()
    #print(symbol_table)

if __name__=="__main__":
  if len(sys.argv) < 2:
    raise SystemExit("Error: Assembly file path argument is mandatory.\nUsage: python assembler.py <file_path>")
  assembler=Assembler(sys.argv[1])
  assembler.translate()