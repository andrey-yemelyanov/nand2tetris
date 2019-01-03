import sys
import os
import shutil
sys.path.append('../11/JackCompiler')

import jack_compiler

if __name__ == "__main__":
    components = [
        "Array", 
        "Keyboard", 
        "Math", 
        "Memory", 
        "Output", 
        "Screen", 
        "String", 
        "Sys"]
    for component in components:
        jack_compiler.JackCompiler(component).compile()
    release_folder = "__release__"
    if not os.path.exists(release_folder):
        os.makedirs(release_folder)
    for component in components:
        file_name = component + ".vm"
        shutil.copyfile(
            os.path.join(component, file_name), 
            os.path.join(release_folder, file_name))
        print("Generated", os.path.join(release_folder, file_name))
