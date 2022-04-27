import ctypes
import os, sys

_suffix = '.so'

if sys.platform.startswith('linux'):
    _suffix = '.so'
elif sys.platform.startswith('darwin'):
    _suffix = '.dylib'
elif sys.platform in ['win32', 'cygwin']:
    _suffix = '.dll'

_current_file = os.path.realpath(os.path.abspath(__file__))
_current_dir = os.path.dirname(_current_file)
_target_file = "libGCASM" + _suffix
_target_lib = os.path.join(_current_dir, _target_file)
_lib = ctypes.CDLL(_target_lib)

def ppc_mfspr(rd, spr):
    return lambda offset: _lib._asm_mfspr(rd, spr, offset)

def ppc_mflr(rd):
    return lambda offset: _lib._asm_mflr(rd, offset)

def ppc_mfctr(rd):
    return lambda offset: _lib._asm_mfctr(rd, offset)

def ppc_mtspr(spr, rs):
    return lambda offset: _lib._asm_mtspr(spr, rs, offset)

def ppc_mtlr(rs):
    return lambda offset: _lib._asm_mtlr(rs, offset)

def ppc_mtctr(rs):
    return lambda offset: _lib._asm_mtctr(rs, offset)

def ppc_cmpw(ra, rb):
    return lambda offset: _lib._asm_cmpw(ra, rb, offset)

def ppc_cmpwi(ra, simm):
    return lambda offset: _lib._asm_cmpwi(ra, simm, offset)

def ppc_cmplw(ra, rb):
    return lambda offset: _lib._asm_cmplw(ra, rb, offset)

def ppc_cmplwi(ra, uimm):
    return lambda offset: _lib._asm_cmplwi(ra, uimm, offset)

def ppc_mulli(rd, ra, simm):
    return lambda offset: _lib._asm_mulli(rd, ra, simm, offset)

def ppc_mullw(rd, ra, rb):
    return lambda offset: _lib._asm_mullw(rd, ra, rb, offset)

def ppc_divw(rd, ra, rb):
    return lambda offset: _lib._asm_divw(rd, ra, rb, offset)

def ppc_divwu(rd, ra, rb):
    return lambda offset: _lib._asm_divwu(rd, ra, rb, offset)

def ppc_add(rd, ra, rb):
    return lambda offset: _lib._asm_add(rd, ra, rb, offset)

def ppc_addi(rd, ra, simm):
    return lambda offset: _lib._asm_addi(rd, ra, simm, offset)

def ppc_addis(rd, ra, simm):
    return lambda offset: _lib._asm_addis(rd, ra, simm, offset)

def ppc_addze(rd, ra):
    return lambda offset: _lib._asm_addze(rd, ra, offset)

def ppc_sub(rd, ra, rb):
    return lambda offset: _lib._asm_sub(rd, ra, rb, offset)

def ppc_subi(rd, ra, simm):
    return lambda offset: _lib._asm_subi(rd, ra, simm, offset)

def ppc_neg(rd, ra):
    return lambda offset: _lib._asm_neg(rd, ra, offset)

def ppc_li(rd, simm):
    return lambda offset: _lib._asm_li(rd, simm, offset)

def ppc_lis(rd, simm):
    return lambda offset: _lib._asm_lis(rd, simm, offset)

def ppc_extsb(rd, rs):
    return lambda offset: _lib._asm_extsb(rd, rs, offset)

def ppc_extsh(rd, rs):
    return lambda offset: _lib._asm_extsh(rd, rs, offset)

def ppc_lbz(rd, ra, d):
    return lambda offset: _lib._asm_lbz(rd, ra, d, offset)

def ppc_lha(rd, ra, d):
    return lambda offset: _lib._asm_lha(rd, ra, d, offset)

def ppc_lhz(rd, ra, d):
    return lambda offset: _lib._asm_lhz(rd, ra, d, offset)

def ppc_lwz(rd, ra, d):
    return lambda offset: _lib._asm_lwz(rd, ra, d, offset)

def ppc_lbzx(rd, ra, rb):
    return lambda offset: _lib._asm_lbzx(rd, ra, rb, offset)

def ppc_lhax(rd, ra, rb):
    return lambda offset: _lib._asm_lhax(rd, ra, rb, offset)

def ppc_lhzx(rd, ra, rb):
    return lambda offset: _lib._asm_lhzx(rd, ra, rb, offset)

def ppc_lwzx(rd, ra, rb):
    return lambda offset: _lib._asm_lwzx(rd, ra, rb, offset)

def ppc_stb(rs, ra, d):
    return lambda offset: _lib._asm_stb(rs, ra, d, offset)

def ppc_sth(rs, ra, d):
    return lambda offset: _lib._asm_sth(rs, ra, d, offset)

def ppc_stw(rs, ra, d):
    return lambda offset: _lib._asm_stw(rs, ra, d, offset)

def ppc_stwu(rs, ra, d):
    return lambda offset: _lib._asm_stwu(rs, ra, d, offset)

def ppc_stbx(rs, ra, rb):
    return lambda offset: _lib._asm_stbx(rs, ra, rb, offset)

def ppc_sthx(rs, ra, rb):
    return lambda offset: _lib._asm_sthx(rs, ra, rb, offset)

def ppc_stwx(rs, ra, rb):
    return lambda offset: _lib._asm_stwx(rs, ra, rb, offset)

def ppc_lmw(rd, ra, d):
    return lambda offset: _lib._asm_lmw(rd, ra, d, offset)

def ppc_stmw(rd, ra, d):
    return lambda offset: _lib._asm_stmw(rd, ra, d, offset)

def ppc_slw(rd, ra, rb):
    return lambda offset: _lib._asm_slw(rd, ra, rb, offset)

def ppc_srawi(rd, ra, sh):
    return lambda offset: _lib._asm_srawi(rd, ra, sh, offset)

def ppc_rlwinm(rd, ra, sh, mb, me):
    return lambda offset: _lib._asm_rlwinm(rd, ra, sh, mb, me, offset)

def ppc_rlwinm_(rd, ra, sh, mb, me):
    return lambda offset: _lib._asm_rlwinm_(rd, ra, sh, mb, me, offset)

def ppc_or(rd, ra, rb):
    return lambda offset: _lib._asm_or(rd, ra, rb, offset)

def ppc_ori(rd, ra, uimm):
    return lambda offset: _lib._asm_ori(rd, ra, uimm, offset)

def ppc_mr(rd, rs):
    return lambda offset: _lib._asm_mr(rd, rs, offset)

def ppc_mr_(rd, rs):
    return lambda offset: _lib._asm_mr_(rd, rs, offset)

def ppc_and(rd, ra, rb):
    return lambda offset: _lib._asm_and(rd, ra, rb, offset)

def ppc_and_(rd, ra, rb):
    return lambda offset: _lib._asm_and_(rd, ra, rb, offset)

def ppc_andi_(rd, ra, uimm):
    return lambda offset: _lib._asm_andi_(rd, ra, uimm, offset)

def ppc_b(target):
    return lambda offset: _lib._asm_b(target, offset)

def ppc_bl(target):
    return lambda offset: _lib._asm_bl(target, offset)

def ppc_beq(target):
    return lambda offset: _lib._asm_beq(target, offset)

def ppc_bne(target):
    return lambda offset: _lib._asm_bne(target, offset)

def ppc_blt(target):
    return lambda offset: _lib._asm_blt(target, offset)

def ppc_ble(target):
    return lambda offset: _lib._asm_ble(target, offset)

def ppc_bgt(target):
    return lambda offset: _lib._asm_bgt(target, offset)

def ppc_bge(target):
    return lambda offset: _lib._asm_bge(target, offset)

def ppc_raw(value):
    return lambda offset: _lib._asm_raw(value, offset)

ppc_bctr = _lib._asm_bctr(0)
ppc_blr = _lib._asm_blr(0)
ppc_nop = _lib._asm_nop(0)

def macro_imm32(reg, val):
    out = []
    out.append(_lib._macro_loadImmediateShifted32bitLO(reg, val))
    out.append(_lib._macro_loadImmediateShifted32bitHI(reg, val))
    return out
