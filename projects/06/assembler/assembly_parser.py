import re

class Parser:
  def __init__(self, file_path):
    self.file_path=file_path
    self.fh=open(file_path)
    
  def close(self):
    self.fh.close()

  def next_command(self):
    line=self.fh.readline()
    if not line:
      self.close()
      return None
    line=self.remove_whitespace_and_comments(line)
    if len(line)==0:
      return self.next_command()
    return line

  def remove_whitespace_and_comments(self, line):
    line=line.strip()
    pattern = re.compile(r'\s+')
    line = re.sub(pattern, '', line)
    return self.remove_comment(line)

  def remove_comment(self, line):
    uncommented=""
    for c in line:
      if c != "/":
        uncommented+=c
      else:
        break
    return uncommented