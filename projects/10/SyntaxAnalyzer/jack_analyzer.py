import os
from compilation_engine import CompilationEngine
from tokenizer import Tokenizer

class JackAnalyzer:
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
        output_file_path=os.path.join(dir_name, file_name + "__.xml")
        with open(output_file_path, "w") as output_file:
            compiler = CompilationEngine(Tokenizer(file_path), output_file)
            compiler.compile_class()
        print("Compilation successful!", file_path, "=>", output_file_path)

