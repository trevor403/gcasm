cases = '''
mfspr=rd,spr
mflr=rd
mfctr=rd
mtspr=spr,rs
mtlr=rs
mtctr=rs
bctr
cmpw=ra,rb
cmpwi=ra,simm
cmplw=ra,rb
cmplwi=ra,uimm
mulli=rd,ra,simm
mullw=rd,ra,rb
divw=rd,ra,rb
divwu=rd,ra,rb
add=rd,ra,rb
addi=rd,ra,simm
addis=rd,ra,simm
addze=rd,ra
sub=rd,ra,rb
subi=rd,ra,simm
neg=rd,ra
li=rd,simm
lis=rd,simm
extsb=rd,rs
extsh=rd,rs
lbz=rd,ra,d
lha=rd,ra,d
lhz=rd,ra,d
lwz=rd,ra,d
lbzx=rd,ra,rb
lhax=rd,ra,rb
lhzx=rd,ra,rb
lwzx=rd,ra,rb
stb=rs,ra,d
sth=rs,ra,d
stw=rs,ra,d
stwu=rs,ra,d
stbx=rs,ra,rb
sthx=rs,ra,rb
stwx=rs,ra,rb
lmw=rd,ra,d
stmw=rd,ra,d
slw=rd,ra,rb
srawi=rd,ra,sh
rlwinm=rd,ra,sh,mb,me
rlwinm_=rd,ra,sh,mb,me
or=rd,ra,rb
ori=rd,ra,uimm
mr=rd,rs
mr_=rd,rs
and=rd,ra,rb
and_=rd,ra,rb
andi_=rd,ra,uimm
b=target
bl=target
blr
beq=target
bne=target
blt=target
ble=target
bgt=target
bge=target
nop
raw=value
'''.strip().split('\n')

types = '''
mfspr=XGRegisters,XGRegisters
mflr=XGRegisters
mfctr=XGRegisters
mtspr=XGRegisters,XGRegisters
mtlr=XGRegisters
mtctr=XGRegisters
bctr=
cmpw=XGRegisters,XGRegisters
cmpwi=XGRegisters,Int
cmplw=XGRegisters,XGRegisters
cmplwi=XGRegisters,UInt32
mulli=XGRegisters,XGRegisters,Int
mullw=XGRegisters,XGRegisters,XGRegisters
divw=XGRegisters,XGRegisters,XGRegisters
divwu=XGRegisters,XGRegisters,XGRegisters
add=XGRegisters,XGRegisters,XGRegisters
addi=XGRegisters,XGRegisters,Int
addis=XGRegisters,XGRegisters,Int
addze=XGRegisters,XGRegisters
sub=XGRegisters,XGRegisters,XGRegisters
subi=XGRegisters,XGRegisters,Int
neg=XGRegisters,XGRegisters
li=XGRegisters,Int
lis=XGRegisters,Int
extsb=XGRegisters,XGRegisters
extsh=XGRegisters,XGRegisters
lbz=XGRegisters,XGRegisters,Int
lha=XGRegisters,XGRegisters,Int
lhz=XGRegisters,XGRegisters,Int
lwz=XGRegisters,XGRegisters,Int
lbzx=XGRegisters,XGRegisters,XGRegisters
lhax=XGRegisters,XGRegisters,XGRegisters
lhzx=XGRegisters,XGRegisters,XGRegisters
lwzx=XGRegisters,XGRegisters,XGRegisters
stb=XGRegisters,XGRegisters,Int
sth=XGRegisters,XGRegisters,Int
stw=XGRegisters,XGRegisters,Int
stwu=XGRegisters,XGRegisters,Int
stbx=XGRegisters,XGRegisters,XGRegisters
sthx=XGRegisters,XGRegisters,XGRegisters
stwx=XGRegisters,XGRegisters,XGRegisters
lmw=XGRegisters,XGRegisters,Int
stmw=XGRegisters,XGRegisters,Int
slw=XGRegisters,XGRegisters,XGRegisters
srawi=XGRegisters,XGRegisters,UInt32
rlwinm=XGRegisters,XGRegisters,UInt32,UInt32,UInt32
rlwinm_=XGRegisters,XGRegisters,UInt32,UInt32,UInt32
or=XGRegisters,XGRegisters,XGRegisters
ori=XGRegisters,XGRegisters,UInt32
mr=XGRegisters,XGRegisters
mr_=XGRegisters,XGRegisters
and=XGRegisters,XGRegisters,XGRegisters
and_=XGRegisters,XGRegisters,XGRegisters
andi_=XGRegisters,XGRegisters,UInt32
b=Int
bl=Int
blr=
beq=Int
bne=Int
blt=Int
ble=Int
bgt=Int
bge=Int
nop=
raw=UInt32
'''.strip().split('\n')

tpl = '''
@_cdecl("_asm_{0}")
public func _asm_{0}({1}offset: Int) -> UInt32 {{
    return XGASM.{0}{2}.codeAtOffset(offset)
}}
'''

nil = ''

parentheses = lambda x: f'({x})'

for i in range(len(cases)):
    case = cases[i]
    T = types[i].split('=')[-1].split(',')
    inst = case.split('=')[0]
    if '=' in case:
        inputs = []
        args = case.split('=')[1].split(',')
        for t, a in zip(T, args):
            inputs.append(f'{a}: {t}')
        inputs.append(nil)
        sig = ', '.join(inputs)
        call = parentheses(', '.join(args))
        print(tpl.format(inst,sig,call))
    else:
        print(tpl.format(inst,nil,nil))


"""
@_cdecl("_asm_blr")
public func _asm_blr(offset: Int) -> UInt32 {
	return XGASM.blr.codeAtOffset(offset)
}

@_cdecl("_asm_mtctr")
public func _asm_mtctr(rs: XGRegisters, offset: Int) -> UInt32 {
	return XGASM.mtctr(rs).codeAtOffset(offset)
}
"""