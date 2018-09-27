import unittest
from assembler import Assembler

#  python -m unittest discover -p "*_tests.py"

class AssemblerTests(unittest.TestCase):
  
  def test_assembler(self):
    test_folder="test_files/assembler_test_files/"
    asm_files=["Add", "Max", "Rect", "Screen", "Pong"]
    for asm_file in asm_files:
      input_file=test_folder + asm_file + ".asm"
      expected_file=test_folder + asm_file + ".hack"
      output_file=asm_file + ".hack"
      assembler=Assembler(input_file)
      assembler.translate()
      with open(output_file) as actual_output_file:
        actual_hack=actual_output_file.readlines()
        with open(expected_file) as expected_output_file:
          expected_hack=expected_output_file.readlines()
          self.assertListEqual(actual_hack, expected_hack)
      print("Done testing ", input_file)
      print()
    
if __name__=="__main__":
  unittest.main()