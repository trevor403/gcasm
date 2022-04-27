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
