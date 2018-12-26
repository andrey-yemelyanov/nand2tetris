class VMWriter:
    def __init__(self, output_file):
        self.output_file = output_file

    def write_push(self, segment, index):
        self.output_file.write("push {0:} {1:}\n".format(segment, index))

    def write_pop(self, segment, index):
        self.output_file.write("pop {0:} {1:}\n".format(segment, index))

    def write_arithmetic(self, command):
        self.output_file.write(command + "\n")

    def write_label(self, label):
        self.output_file.write("label {0:}\n".format(label))

    def write_goto(self, label):
        self.output_file.write("goto {0:}\n".format(label))

    def write_if(self, label):
        self.output_file.write("if-goto {0:}\n".format(label))

    def write_call(self, name, nArgs):
        self.output_file.write("call {0:} {1:}\n".format(name, nArgs))

    def write_function(self, name, nLocals):
        self.output_file.write("function {0:} {1:}\n".format(name, nLocals))

    def write_return(self):
        self.output_file.write("return\n")

    def close(self):
        output_file.close()