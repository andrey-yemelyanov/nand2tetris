import unittest
from assembly_parser import Parser
from command_parser import CommandType
import command_parser

#  python -m unittest discover -p "*_tests.py"

class ParserTests(unittest.TestCase):
  
  def test_read_commands(self):
    parser=Parser("test_files/Add.asm")
    expected=["@i","M=1","@sum","M=0",
              "(LOOP)","@i","D=M","@0","D=D-M",
              "@WRITE","D;JGT","@i","D=M","@sum",
              "M=D+M","@i","M=M+1","@LOOP","0;JMP",
              "(WRITE)","@sum","D=M","@1","M=D",
              "(END)","@END","0;JMP"]
    list=[]
    command=parser.next_command()
    while(command):
      list.append(command)
      command=parser.next_command()
    self.assertListEqual(expected, list)
    
  def test_read_commands_large_file(self):
    parser=Parser("test_files/Pong.asm")
    command=parser.next_command()
    list=[]
    while(command):
      list.append(command)
      command=parser.next_command()
    self.assertEqual(28365, len(list))
    
  def test_command_type(self):
    parser=Parser("test_files/Screen.asm")
    types=[CommandType.A_COMMAND,
           CommandType.C_COMMAND,
           CommandType.A_COMMAND,
           CommandType.C_COMMAND,
           CommandType.A_COMMAND,
           CommandType.C_COMMAND,
           CommandType.A_COMMAND,
           CommandType.C_COMMAND,
           CommandType.A_COMMAND,
           CommandType.C_COMMAND,
           CommandType.L_COMMAND,
           CommandType.A_COMMAND,
           CommandType.C_COMMAND,
           CommandType.C_COMMAND,
           CommandType.A_COMMAND,
           CommandType.C_COMMAND,
           CommandType.A_COMMAND,
           CommandType.C_COMMAND,
           CommandType.A_COMMAND,
           CommandType.C_COMMAND,
           CommandType.A_COMMAND,
           CommandType.C_COMMAND,
           CommandType.A_COMMAND,
           CommandType.C_COMMAND,
           CommandType.L_COMMAND,
           CommandType.A_COMMAND,
           CommandType.C_COMMAND]
    for type in types:
      self.assertEqual(type, command_parser.command_type(parser.next_command()))
    parser.close()
    
  def test_symbol(self):
    parser=Parser("test_files/Screen.asm")
    self.assertEqual("R0", command_parser.symbol(parser.next_command()))
    self.assertEqual(None, command_parser.symbol(parser.next_command()))
    self.assertEqual("END", command_parser.symbol(parser.next_command()))
    self.assertEqual(None, command_parser.symbol(parser.next_command()))
    self.assertEqual("counter", command_parser.symbol(parser.next_command()))
    self.assertEqual(None, command_parser.symbol(parser.next_command()))
    self.assertEqual("SCREEN", command_parser.symbol(parser.next_command()))
    self.assertEqual(None, command_parser.symbol(parser.next_command()))
    self.assertEqual("x", command_parser.symbol(parser.next_command()))
    self.assertEqual(None, command_parser.symbol(parser.next_command()))
    self.assertEqual("LOOP", command_parser.symbol(parser.next_command()))
    self.assertEqual("x", command_parser.symbol(parser.next_command()))
    self.assertEqual(None, command_parser.symbol(parser.next_command()))
    self.assertEqual(None, command_parser.symbol(parser.next_command()))
    self.assertEqual("x", command_parser.symbol(parser.next_command()))
    self.assertEqual(None, command_parser.symbol(parser.next_command()))
    self.assertEqual("32", command_parser.symbol(parser.next_command()))
    self.assertEqual(None, command_parser.symbol(parser.next_command()))
    self.assertEqual("x", command_parser.symbol(parser.next_command()))
    self.assertEqual(None, command_parser.symbol(parser.next_command()))
    self.assertEqual("counter", command_parser.symbol(parser.next_command()))
    self.assertEqual(None, command_parser.symbol(parser.next_command()))
    self.assertEqual("LOOP", command_parser.symbol(parser.next_command()))
    self.assertEqual(None, command_parser.symbol(parser.next_command()))
    self.assertEqual("END", command_parser.symbol(parser.next_command()))
    self.assertEqual("END", command_parser.symbol(parser.next_command()))
    self.assertEqual(None, command_parser.symbol(parser.next_command()))
    parser.close()
    
  def test_dest(self):
    self.assertEqual(None, command_parser.dest("0;JMP"))
    self.assertEqual(None, command_parser.dest("D;JGT"))
    self.assertEqual("A", command_parser.dest("A=D;JGT"))
    self.assertEqual("MD", command_parser.dest("MD=M-1"))
    self.assertEqual("M", command_parser.dest("M=-1"))
    self.assertEqual("D", command_parser.dest("D=M"))
    self.assertEqual("A", command_parser.dest("A=M"))
    
  def test_comp(self):
    self.assertEqual("0", command_parser.comp("0;JMP"))
    self.assertEqual("D", command_parser.comp("D;JGT"))
    self.assertEqual("D", command_parser.comp("A=D;JGT"))
    self.assertEqual("M-1", command_parser.comp("MD=M-1"))
    self.assertEqual("-1", command_parser.comp("M=-1"))
    self.assertEqual("M", command_parser.comp("D=M"))
    self.assertEqual("D+A", command_parser.comp("D=D+A"))
    self.assertEqual("D", command_parser.comp("M=D"))
    
  def test_jump(self):
    self.assertEqual("JMP", command_parser.jump("0;JMP"))
    self.assertEqual("JGT", command_parser.jump("D;JGT"))
    self.assertEqual("JGT", command_parser.jump("A=D;JGT"))
    self.assertEqual(None, command_parser.jump("MD=M-1"))
    self.assertEqual(None, command_parser.jump("M=-1"))

if __name__=="__main__":
  unittest.main()
