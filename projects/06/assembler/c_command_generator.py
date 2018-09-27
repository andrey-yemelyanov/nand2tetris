comps=["0","1","-1","D","A","!D","!A","-D","-A",
      "D+1","A+1","D-1","A-1","D+A","D-A","A-D","D&A","D|A",
      "M","!M","-M","M+1","M-1","D+M","D-M","M-D","D&M","D|M"]
dests=[None,"M","D","MD","A","AM","AD","AMD"]
jmps=[None,"JGT","JEQ","JGE","JLT","JNE","JLE","JMP"]
for dest in dests:
  for comp in comps:
    for jmp in jmps:
      command=""
      if dest:
        command += dest + "="
      command += comp
      if jmp:
        command += ";" + jmp
      if dest or jmp:
        print(command)