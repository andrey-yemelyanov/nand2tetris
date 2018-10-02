import unittest
from vm_parser import Parser

#python -m unittest discover -p "*_tests.py"
class VmParserTests(unittest.TestCase):

    def test_parser(self):
        expected=[
            "push constant 17",
            "push constant 17",
            "eq",
            "push constant 17",
            "push constant 16",
            "eq",
            "push constant 16",
            "push constant 17",
            "eq",
            "push constant 892",
            "push constant 891",
            "lt",
            "push constant 891",
            "push constant 892",
            "lt",
            "push constant 891",
            "push constant 891",
            "lt",
            "push constant 32767",
            "push constant 32766",
            "gt",
            "push constant 32766",
            "push constant 32767",
            "gt",
            "push constant 32766",
            "push constant 32766",
            "gt",
            "push constant 57",
            "push constant 31",
            "push constant 53",
            "add",
            "push constant 112",
            "sub",
            "neg",
            "and",
            "push constant 82",
            "or",
            "not"
        ]
        vm_parser=Parser("StackArithmetic/StackTest/StackTest.vm")
        list=[]
        command=vm_parser.next_command()
        while command:
            list.append(command)
            command=vm_parser.next_command()
        self.assertListEqual(expected, list)

if __name__=="__main__":
    unittest.main()