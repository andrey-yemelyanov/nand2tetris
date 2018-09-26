import unittest
from adder import add

class AdderTest(unittest.TestCase):
  def test_add(self):
    self.assertEqual(add(1,2),3)
    self.assertEqual(add(11,22),33)
    self.assertEqual(add(110,22),132)
    self.assertEqual(add(11,62),73)
    self.assertEqual(add(19,2),21)
    
if __name__=="__main__":
  unittest.main()