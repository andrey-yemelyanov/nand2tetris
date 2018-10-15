import unittest
import lexical_elements

#python -m unittest discover -p "*_tests.py"
class LexicalElementsTests(unittest.TestCase):
     
    def test_identifier(self):
        self.assertTrue(lexical_elements.is_identifier("A"))
        self.assertTrue(lexical_elements.is_identifier("AAA"))
        self.assertTrue(lexical_elements.is_identifier("a"))
        self.assertTrue(lexical_elements.is_identifier("abc"))
        self.assertTrue(lexical_elements.is_identifier("_AbC"))
        self.assertTrue(lexical_elements.is_identifier("A_Bc"))
        self.assertTrue(lexical_elements.is_identifier("A123"))
        self.assertTrue(lexical_elements.is_identifier("A_1_2_B"))
        self.assertTrue(lexical_elements.is_identifier("_1"))
        self.assertTrue(lexical_elements.is_identifier("_1wroi"))
        self.assertTrue(lexical_elements.is_identifier("_123"))
        self.assertTrue(lexical_elements.is_identifier("ABab_12345"))
        
        self.assertFalse(lexical_elements.is_identifier("1A"))
        self.assertFalse(lexical_elements.is_identifier("1 A"))

    def test_string_constant(self):
        self.assertTrue(lexical_elements.is_string_constant("\"ABC\""))
        self.assertTrue(lexical_elements.is_string_constant("\"123\""))
        self.assertFalse(lexical_elements.is_string_constant("ABC"))
        self.assertFalse(lexical_elements.is_string_constant("\"ABC"))
        self.assertFalse(lexical_elements.is_string_constant("ABC\""))

    def test_int_constant(self):
        self.assertFalse(lexical_elements.is_int_constant("\"ABC\""))
        self.assertTrue(lexical_elements.is_int_constant("123"))
        self.assertTrue(lexical_elements.is_int_constant("0"))
        self.assertTrue(lexical_elements.is_int_constant("32767"))
        self.assertFalse(lexical_elements.is_int_constant("50000"))
        self.assertFalse(lexical_elements.is_int_constant("3_67"))

    def test_symbol(self):
        self.assertTrue(lexical_elements.is_symbol("{"))
        self.assertTrue(lexical_elements.is_symbol("}"))
        self.assertTrue(lexical_elements.is_symbol("<"))
        self.assertTrue(lexical_elements.is_symbol(">"))
        self.assertFalse(lexical_elements.is_symbol("!"))

    def test_keyword(self):
        self.assertFalse(lexical_elements.is_keyword("{"))
        self.assertTrue(lexical_elements.is_keyword("while"))
        self.assertFalse(lexical_elements.is_keyword("While"))
        self.assertTrue(lexical_elements.is_keyword("constructor"))
        self.assertTrue(lexical_elements.is_keyword("function"))

if __name__=="__main__":
    unittest.main() 
