import sys

if len(sys.argv) < 2:
  raise ValueError("File path argument is required.")

with open(sys.argv[1]) as fh:
  for line in fh:
    print(line.strip())