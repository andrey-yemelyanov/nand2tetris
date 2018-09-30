from enum import Enum
class MemorySegment(Enum):
    LCL=1
    ARG=2
    THIS=3
    THAT=4
    CONSTANT=5
    STATIC=6
    POINTER=7
    TEMP=8

class VMMemorySegment(Enum):
    local=1
    argument=2
    this=3
    that=4
    constant=5
    static=6
    pointer=7
    temp=8

memory_assembly_to_vm={
    MemorySegment.LCL:VMMemorySegment.local,
    MemorySegment.ARG:VMMemorySegment.argument,
    MemorySegment.THIS:VMMemorySegment.this,
    MemorySegment.THAT:VMMemorySegment.that,
    MemorySegment.CONSTANT:VMMemorySegment.constant,
    MemorySegment.STATIC:VMMemorySegment.static,
    MemorySegment.POINTER:VMMemorySegment.pointer,
    MemorySegment.TEMP:VMMemorySegment.temp,
}

class MemoryAccessCommand(Enum):
    POP=1,
    PUSH=2