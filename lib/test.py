from asm import *

offset = 0x80000000

patch = [
    *macro_imm32(r3, 0x80aa30cc),
    ppc_blr
]

asm = assemble(patch, offset)
code = b''.join([int.to_bytes(inst, 4, 'big') for inst in asm])


### verify
from capstone import *

cs = Cs(CS_ARCH_PPC, CS_MODE_32 | CS_MODE_BIG_ENDIAN)

gen = cs.disasm(code, 0)
for inst in gen:
    print(inst)

