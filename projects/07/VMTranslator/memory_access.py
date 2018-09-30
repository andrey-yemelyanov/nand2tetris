from enums import MemorySegment
from enums import MemoryAccessCommand
from enums import VMMemorySegment
from enums import memory_assembly_to_vm
import textwrap

def translate_command(command, segment, index, file_name):
    if command==MemoryAccessCommand.POP:
        return pop(segment, index, file_name)
    elif command==MemoryAccessCommand.PUSH:
        return push(segment, index, file_name)

def pop(segment, index, file_name):
    if segment==MemorySegment.ARG:
        return pop_arg(index)
    elif segment==MemorySegment.LCL:
        return pop_local(index)
    elif segment==MemorySegment.POINTER:
        return pop_pointer(index)
    elif segment==MemorySegment.STATIC:
        return pop_static(index, file_name)
    elif segment==MemorySegment.TEMP:
        return pop_temp(index)
    elif segment==MemorySegment.THAT:
        return pop_that(index)
    elif segment==MemorySegment.THIS:
        return pop_this(index)

def push(segment, index, file_name):
    if segment==MemorySegment.ARG:
        return push_arg(index)
    elif segment==MemorySegment.LCL:
        return push_local(index)
    elif segment==MemorySegment.POINTER:
        return push_pointer(index)
    elif segment==MemorySegment.STATIC:
        return push_static(index, file_name)
    elif segment==MemorySegment.TEMP:
        return push_temp(index)
    elif segment==MemorySegment.THAT:
        return push_that(index)
    elif segment==MemorySegment.THIS:
        return push_this(index)
    elif segment==MemorySegment.CONSTANT:
        return push_constant(index)

def do_push(segment, index):
    return textwrap.dedent("""
        // push {vm_segment_name} {index}
        @{index}
        D=A //D={index}
        @{segment}
        A=D+M //A={segment}+{index}, M=*({segment}+{index})
        D=M //D=*({segment}+{index})
        @SP
        A=M
        M=D //*SP=*({segment}+{index})
        @SP
        M=M+1 //SP++
    """.format(index=index, vm_segment_name=memory_assembly_to_vm[segment].name, segment=segment.name)).strip()

def do_pop(segment, index):
    return textwrap.dedent("""
        // pop {vm_segment_name} {index}
        @{index}
        D=A //D={index}
        @{segment}
        D=D+M //D={segment}+{index}
        @R13 //use general purpose register for temp storage
        M=D //RAM[13]={segment}+{index}
        @SP
        M=M-1 //SP--
        A=M
        D=M //D=*SP
        @R13
        A=M //A=RAM[13]
        M=D //*RAM[13]=*SP
    """.format(index=index, segment=segment.name, vm_segment_name=memory_assembly_to_vm[segment].name)).strip()

def pop_local(index):
    return do_pop(MemorySegment.LCL, index)

def push_local(index):
    return do_push(MemorySegment.LCL, index)

def pop_arg(index):
    return do_pop(MemorySegment.ARG, index)

def push_arg(index):
    return do_push(MemorySegment.ARG, index)

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

def push_constant(index):
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

def pop_this(index):
    return do_pop(MemorySegment.THIS, index)

def push_this(index):
    return do_push(MemorySegment.THIS, index)

def pop_that(index):
    return do_pop(MemorySegment.THAT, index)

def push_that(index):
    return do_push(MemorySegment.THAT, index)

def pointer_dest(index):
    if index == 0:
        return "THIS"
    elif index == 1:
        return "THAT"

def pop_pointer(index):
    return textwrap.dedent(""" 
        // pop pointer {index}
        //@SP
        M=M-1 //SP--
        A=M
        D=M //D=*SP
        @{dest}
        M=D //{dest}=*SP
    """.format(index=index, dest=pointer_dest(index))).strip()

def push_pointer(index):
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

def pop_temp(index):
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

def push_temp(index):
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