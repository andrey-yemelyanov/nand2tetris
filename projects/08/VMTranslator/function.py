from constants import *
import memory_access
import textwrap
import uuid

def translate_command(command, function_name, param):
    return command_decoder[command](function_name, param)

def function_declaration(function_name, nVars):
    assembly_code="\n// function {function_name} {nVars}\n({function_name})\n{push_commands}\n".format(
            function_name=function_name, 
            nVars=nVars,
            push_commands="\n".join([memory_access.push_constant(0, "") for i in range(int(nVars))])).strip()
    return assembly_code.strip()

def function_call(function_name, nArgs):
    assembly_code="\n// call {function_name} {nArgs}\n".format(function_name=function_name, nArgs=nArgs)
    return_address_label="{funcName}${id}".format(funcName=function_name, id=str(uuid.uuid4().hex))
    states=[return_address_label, "LCL", "ARG", "THIS", "THAT"]
    assembly_code+="\n".join([push_state(state) for state in states])
    assembly_code+="\n" + reposition_arg(nArgs)
    assembly_code+="\n" + reposition_lcl()
    assembly_code+="\n" + goto_func(function_name)
    assembly_code+="\n({return_address_label})".format(return_address_label=return_address_label)
    assembly_code+="\n\n"
    return assembly_code

def goto_func(function_name):
    return textwrap.dedent("""
            // goto {function_name}
            @{function_name}
            0;JMP
        """.format(function_name=function_name)).strip()

def reposition_lcl():
    return textwrap.dedent("""
            // LCL=SP
            @SP
            D=M
            @LCL
            M=D
        """).strip()

def reposition_arg(nArgs):
    return textwrap.dedent("""
            // ARG=SP-nArgs-5
            @{nArgs}
            D=A
            @SP
            D=M-D //D=SP-nArgs
            @5
            D=D-A //D=SP-nArgs-5
            @ARG
            M=D
        """.format(nArgs=nArgs)).strip()

def push_state(state_name):
    # if we push from a label, then the address comes from register A, M otherwise
    pointers=["LCL", "ARG", "THIS", "THAT"]
    register="M"
    if state_name not in pointers:
        register="A"
    return textwrap.dedent("""
            // push {state_name}
            @{state_name}
            D={register}
            @SP
            A=M
            M=D //*SP={state_name}
            @SP
            M=M+1 //SP++
        """.format(state_name=state_name, register=register)).strip()

def function_return(dummy1, dummy2):
    return "\n// return\n{:}\n{:}\n{:}\n{:}\n{:}\n{:}\n{:}\n{:}\n{:}".format(
            save_frame(),
            save_return_address(),
            reposition_return_val(),
            restore_sp(),
            restore_that(),
            restore_this(),
            restore_arg(),
            restore_lcl(),
            goto_return_address()
        ).strip()

# R[13] stores 'frame' var
# R[14] stores 'retAddr' var

def save_frame():
    return textwrap.dedent("""
            // frame=LCL
            @LCL
            D=M
            @R13
            M=D //R[13]=LCL
        """).strip()

def save_return_address():
    return textwrap.dedent("""
            // retAddr=*(frame-5)
            @R13
            D=M //D=R[13]
            @5
            D=D-A //D=R[13]-5 -> return address
            A=D
            D=M //D=return address
            @R14
            M=D //R[14]=return address
        """).strip()

def reposition_return_val():
    return textwrap.dedent("""
            // *ARG=pop
            @SP
            M=M-1
            A=M
            D=M //D=*SP
            @ARG
            A=M
            M=D //*ARG=*SP
        """).strip()

def restore_sp():
    return textwrap.dedent("""
            // SP=ARG+1
            @ARG
            D=M+1 //D=ARG+1
            @SP
            M=D //SP=ARG+1
        """).strip()

def restore_that():
    return restore_state("THAT", "1")

def restore_this():
    return restore_state("THIS", "2")

def restore_arg():
    return restore_state("ARG", "3")

def restore_lcl():
    return restore_state("LCL", "4")

def restore_state(state, offset):
    return textwrap.dedent("""
            // {state}=*(frame-{offset})
            @R13
            D=M //D=R[13]
            @{offset}
            D=D-A //D=R[13]-{offset}
            A=D
            D=M //D=*(frame-{offset})
            @{state}
            M=D //{state}=*(frame-{offset})
        """.format(state=state, offset=offset)).strip()

def goto_return_address():
    return textwrap.dedent("""
            // goto return address
            @R14
            A=M
            0;JMP
        """).strip()

command_decoder={
    FUNCTION_CALL:function_call,
    FUNCTION_DECLARATION:function_declaration,
    FUNCTION_RETURN:function_return
}
