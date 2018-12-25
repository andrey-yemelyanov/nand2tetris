from constants import *

class Symbol:
    def __init__(self, name, type, kind, index):
        self.name=name
        self.type=type
        self.kind=kind
        self.index=index

class SymbolTable:
    def __init__(self):
        self.class_level_st={}
        self.subroutine_level_st={}
        self.index_map={
            STATIC : 0,
            FIELD : 0,
            ARG : 0,
            VAR : 0
        }

    def start_subroutine(self):
        self.subroutine_level_st={}
        self.index_map[ARG]=0
        self.index_map[VAR]=0

    def define(self, name, type, kind):
        symbol=Symbol(name, type, kind, self.index_map[kind])
        self.index_map[kind]+=1
        if kind == STATIC or kind == FIELD:
            self.class_level_st[name]=symbol
        elif kind == ARG or kind == VAR:
            self.subroutine_level_st[name]=symbol

    def var_count(self, kind):
        return max(
            [s.kind for s in self.class_level_st.values()].count(kind),
            [s.kind for s in self.subroutine_level_st.values()].count(kind))

    def kind_of(self, name):
        if name in self.subroutine_level_st:
            return self.subroutine_level_st[name].kind
        if name in self.class_level_st:
            return self.class_level_st[name].kind
        return None

    def type_of(self, name):
        if name in self.subroutine_level_st:
            return self.subroutine_level_st[name].type
        if name in self.class_level_st:
            return self.class_level_st[name].type
        raise CompilationError("ERROR: Unable to obtain type for unknown var", name)

    def index_of(self, name):
        if name in self.subroutine_level_st:
            return self.subroutine_level_st[name].index
        if name in self.class_level_st:
            return self.class_level_st[name].index
        raise CompilationError("ERROR: Unable to obtain index for unknown var", name)
