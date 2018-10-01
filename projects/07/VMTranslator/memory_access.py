from constants import *
import textwrap

def translate_command(command, segment, index, file_name):
    return command_decoder[command][segment](index, file_name)

def do_push(assembly_label, vm_segment_name, index):
    return textwrap.dedent("""
        // push {vm_segment_name} {index}
        @{index}
        D=A //D={index}
        @{assembly_label}
        A=D+M //A={assembly_label}+{index}, M=*({assembly_label}+{index})
        D=M //D=*({assembly_label}+{index})
        @SP
        A=M
        M=D //*SP=*({assembly_label}+{index})
        @SP
        M=M+1 //SP++
    """.format(assembly_label=assembly_label, vm_segment_name=vm_segment_name, index=index)).strip()

def do_pop(assembly_label, vm_segment_name, index):
    return textwrap.dedent("""
        // pop {vm_segment_name} {index}
        @{index}
        D=A //D={index}
        @{assembly_label}
        D=D+M //D={assembly_label}+{index}
        @R13 //use general purpose register for temp storage
        M=D //RAM[13]={assembly_label}+{index}
        @SP
        M=M-1 //SP--
        A=M
        D=M //D=*SP
        @R13
        A=M //A=RAM[13]
        M=D //*RAM[13]=*SP
    """.format(assembly_label=assembly_label, vm_segment_name=vm_segment_name, index=index)).strip()

def pop_local(index, file_name):
    return do_pop("LCL", LOCAL, index)

def push_local(index, file_name):
    return do_push("LCL", LOCAL, index)

def pop_arg(index, file_name):
    return do_pop("ARG", ARGUMENT, index)

def push_arg(index, file_name):
    return do_push("ARG", ARGUMENT, index)

def pop_this(index, file_name):
    return do_pop("THIS", THIS, index)

def push_this(index, file_name):
    return do_push("THIS", THIS, index)

def pop_that(index, file_name):
    return do_pop("THAT", THAT, index)

def push_that(index, file_name):
    return do_push("THAT", THAT, index)

def pop_static(index, file_name):
    return textwrap.dedent(""" 
        // pop static {index}
        @SP
        M=M-1 //SP--
        A=M
        D=M //D=stack.pop
        @{file_name}.{index}
        M=D
    """.format(index=index, file_name=file_name)).strip()

def push_static(index, file_name):
    return textwrap.dedent(""" 
        // push static {index}
        @{file_name}.{index}
        D=M
        @SP
        A=M
        M=D //*SP={file_name}.{index}
        @SP
        M=M+1 //SP++
    """.format(index=index, file_name=file_name)).strip()

def push_constant(index, file_name):
    return textwrap.dedent(""" 
        // push constant {index}
        @{index}
        D=A //D={index}
        @SP
        A=M
        M=D //*SP={index}
        @SP
        M=M+1 //SP++
    """.format(index=index)).strip()

def pointer_dest(index):
    if index == 0:
        return "THIS"
    elif index == 1:
        return "THAT"

def pop_pointer(index, file_name):
    return textwrap.dedent(""" 
        // pop pointer {index}
        //@SP
        M=M-1 //SP--
        A=M
        D=M //D=*SP
        @{dest}
        M=D //{dest}=*SP
    """.format(index=index, dest=pointer_dest(index))).strip()

def push_pointer(index, file_name):
    return textwrap.dedent(""" 
        // push pointer {index}
        @{dest}
        D=M //D={dest}
        @SP
        A=M
        M=D //*SP={dest}
        @SP
        M=M+1 //SP++
    """.format(index=index, dest=pointer_dest(index))).strip()

def pop_temp(index, file_name):
    return textwrap.dedent(""" 
        // pop temp {index}
        @5
        D=A //D=5
        @{index}
        D=D+A //D=5+{index}
        @R13
        M=D //RAM[13]=5+{index}
        @SP
        M=M-1 //SP--
        A=M
        D=M //D=*SP
        @R13
        A=M
        M=D //*(5+{index})=*SP
    """.format(index=index)).strip()

def push_temp(index, file_name):
    return textwrap.dedent(""" 
        // push temp {index}
        @5
        D=A //D=5
        @{index}
        A=D+A //A=5+{index}
        D=M //D=*(5+{index})
        @SP
        A=M
        M=D //*SP=*(5+{index})
        @SP
        M=M+1 //SP++
    """.format(index=index)).strip()

command_decoder={
    POP : {
        LOCAL : pop_local,
        ARGUMENT : pop_arg,
        THIS : pop_this,
        THAT : pop_that,
        STATIC : pop_static,
        POINTER : pop_pointer,
        TEMP : pop_temp
    },
    PUSH : {
        LOCAL : push_local,
        ARGUMENT : push_arg,
        THIS : push_this,
        THAT : push_that,
        CONSTANT : push_constant,
        STATIC : push_static,
        POINTER : push_pointer,
        TEMP : push_temp
    }
}