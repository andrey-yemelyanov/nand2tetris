import os
from compilation_engine import CompilationEngine
from tokenizer import Tokenizer
from errors import CompilationError
from vm_writer import VMWriter
import sys

class JackCompiler:
    def __init__(self, files):
        self.files=files

    def compile(self):
        if os.path.isdir(self.files):
            jack_files=list([os.path.join(self.files, file) for file in os.listdir(self.files) if file.endswith(".jack")])
            for jack_file in jack_files:
                self.compile_file(jack_file)
        else:
            self.compile_file(self.files)

    def compile_file(self, file_path):
        print("Compiling", file_path, "...")
        file_name = os.path.splitext(os.path.basename(file_path))[0]
        dir_name = os.path.split(file_path)[0]
        vm_file_name = os.path.join(dir_name, file_name + ".vm")
        with open(vm_file_name, "w") as vm_file:
            with open(file_path) as jack_file:
                try:
                    CompilationEngine(Tokenizer(jack_file), VMWriter(vm_file)).compile()
                    print("Compilation successful! Generated:", vm_file_name)
                except CompilationError as err:
                    raise CompilationError("ERROR: " + err.message)

if __name__ == "__main__":
    if len(sys.argv) < 2:
        raise SystemExit("Error: Jack source argument is mandatory.\nUsage: python jack_compiler.py <source_dir>|<source_file>")
    JackCompiler(sys.argv[1]).compile()
        

