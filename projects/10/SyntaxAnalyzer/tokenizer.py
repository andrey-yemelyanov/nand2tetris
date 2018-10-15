import lexical_elements

class Tokenizer:
    def __init__(self, file_path):
        self.file_handle=open(file_path)

    def close(self):
        self.file_handle.close()

    def next_token(self):
        token=None
        while True:
            c=self.file_handle.read(1)
            if not c:
                self.close()
                return None
            if c == "\n": # skip new lines
                continue
            if c == "/":
                self.skip_comment()
                continue
            if c == " ":
                if token:
                    return token
                else:
                    continue
            if lexical_elements.is_symbol(c):
                            

    def skip_comment(self):
        c=self.file_handle.read(1)
        if c == "/":
            self.file_handle.readline() # consume rest of the comment line
        if c == "*":
            # skip until terminator '*/' is encountered
            current=self.file_handle.read(1) + self.file_handle.read(1)
            while current != "*/":
                c=self.file_handle.read(1)
                if not c:
                    break
                current=current[1:] + c
                
