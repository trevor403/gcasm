from lib import *
from reg import *

def assemble(insts, offset):
    out = []
    for i, inst in enumerate(insts):
        if isinstance(inst, int):
            out.append(inst)
        else:
            out.append(inst(offset+i))
    return out

def macro_imm32(reg, val):
    out = []
    out.append(lib._macro_loadImmediateShifted32bitLO(reg, val))
    out.append(lib._macro_loadImmediateShifted32bitHI(reg, val))
    return out