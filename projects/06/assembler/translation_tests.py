import unittest
import c_command_translator

#  python -m unittest discover -p "*_tests.py"

class TranslationTests(unittest.TestCase):
  
  def test_translate_c_command(self):
    with open("test_files/c_commands.asm") as asm_fh:
      with open("test_files/c_commands.hack") as hack_fh:
        for c_command_asm, c_command_hack in zip(asm_fh.readlines(), hack_fh.readlines()):
          self.assertEqual(c_command_hack.strip(), c_command_translator.translate(c_command_asm.strip()))
    
if __name__=="__main__":
  unittest.main()