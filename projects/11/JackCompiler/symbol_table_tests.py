from symbol_table import *
import unittest
from constants import *

#python -m unittest discover -p "*_tests.py"
class SymbolTableTests(unittest.TestCase):
    def test_init(self):
        st=SymbolTable()
        self.assertEqual(0, st.var_count(STATIC))

    def test_field(self):
        st=SymbolTable()
        st.define('x', INT, FIELD)
        st.define('y', INT, FIELD)
        st.define('z', INT, FIELD)
        self.assertEqual(3, st.var_count(FIELD))
        self.assertEqual(FIELD, st.kind_of('x'))
        self.assertEqual(INT, st.type_of('z'))
        self.assertEqual(0, st.index_of('x'))
        self.assertEqual(1, st.index_of('y'))
        self.assertEqual(2, st.index_of('z'))
        st.start_subroutine()
        st.define('dx', INT, FIELD)
        self.assertEqual(4, st.var_count(FIELD))
        self.assertEqual(FIELD, st.kind_of('dx'))
        self.assertEqual(INT, st.type_of('dx'))
        self.assertEqual(3, st.index_of('dx'))

    def test_static_and_arg(self):
        st=SymbolTable()
        st.define('x', INT, STATIC)
        st.define('y', INT, ARG)
        self.assertEqual(0, st.var_count(FIELD))
        self.assertEqual(1, st.var_count(STATIC))
        self.assertEqual(1, st.var_count(ARG))
        self.assertEqual(STATIC, st.kind_of('x'))
        self.assertEqual(INT, st.type_of('x'))
        self.assertEqual(0, st.index_of('x'))
        self.assertEqual(ARG, st.kind_of('y'))
        self.assertEqual(INT, st.type_of('y'))
        self.assertEqual(0, st.index_of('y'))
        st.define('z', INT, VAR)
        self.assertEqual(0, st.index_of('z'))
        st.define('w', INT, VAR)
        self.assertEqual(1, st.index_of('w'))
        self.assertEqual(2, st.var_count(VAR))
        self.assertEqual(1, st.var_count(ARG))
        st.start_subroutine()
        self.assertEqual(0, st.var_count(VAR))
        self.assertEqual(0, st.var_count(ARG))
        self.assertEqual(1, st.var_count(STATIC))
