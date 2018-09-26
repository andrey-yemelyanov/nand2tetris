import unittest
from assembly_parser import Parser

class ParserTests(unittest.TestCase):
  
  def test_read_entire_file(self):
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
    print(list)

if __name__=="__main__":
  unittest.main()
