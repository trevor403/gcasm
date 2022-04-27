
@_cdecl("_asm_mfspr")
public func _asm_mfspr(rd: XGRegisters, spr: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.mfspr(rd, spr).codeAtOffset(offset)
}


@_cdecl("_asm_mflr")
public func _asm_mflr(rd: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.mflr(rd).codeAtOffset(offset)
}


@_cdecl("_asm_mfctr")
public func _asm_mfctr(rd: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.mfctr(rd).codeAtOffset(offset)
}


@_cdecl("_asm_mtspr")
public func _asm_mtspr(spr: XGRegisters, rs: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.mtspr(spr, rs).codeAtOffset(offset)
}


@_cdecl("_asm_mtlr")
public func _asm_mtlr(rs: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.mtlr(rs).codeAtOffset(offset)
}


@_cdecl("_asm_mtctr")
public func _asm_mtctr(rs: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.mtctr(rs).codeAtOffset(offset)
}


@_cdecl("_asm_bctr")
public func _asm_bctr(offset: Int) -> UInt32 {
    return XGASM.bctr.codeAtOffset(offset)
}


@_cdecl("_asm_cmpw")
public func _asm_cmpw(ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.cmpw(ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_cmpwi")
public func _asm_cmpwi(ra: XGRegisters, simm: Int, offset: Int) -> UInt32 {
    return XGASM.cmpwi(ra, simm).codeAtOffset(offset)
}


@_cdecl("_asm_cmplw")
public func _asm_cmplw(ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.cmplw(ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_cmplwi")
public func _asm_cmplwi(ra: XGRegisters, uimm: UInt32, offset: Int) -> UInt32 {
    return XGASM.cmplwi(ra, uimm).codeAtOffset(offset)
}


@_cdecl("_asm_mulli")
public func _asm_mulli(rd: XGRegisters, ra: XGRegisters, simm: Int, offset: Int) -> UInt32 {
    return XGASM.mulli(rd, ra, simm).codeAtOffset(offset)
}


@_cdecl("_asm_mullw")
public func _asm_mullw(rd: XGRegisters, ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.mullw(rd, ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_divw")
public func _asm_divw(rd: XGRegisters, ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.divw(rd, ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_divwu")
public func _asm_divwu(rd: XGRegisters, ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.divwu(rd, ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_add")
public func _asm_add(rd: XGRegisters, ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.add(rd, ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_addi")
public func _asm_addi(rd: XGRegisters, ra: XGRegisters, simm: Int, offset: Int) -> UInt32 {
    return XGASM.addi(rd, ra, simm).codeAtOffset(offset)
}


@_cdecl("_asm_addis")
public func _asm_addis(rd: XGRegisters, ra: XGRegisters, simm: Int, offset: Int) -> UInt32 {
    return XGASM.addis(rd, ra, simm).codeAtOffset(offset)
}


@_cdecl("_asm_addze")
public func _asm_addze(rd: XGRegisters, ra: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.addze(rd, ra).codeAtOffset(offset)
}


@_cdecl("_asm_sub")
public func _asm_sub(rd: XGRegisters, ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.sub(rd, ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_subi")
public func _asm_subi(rd: XGRegisters, ra: XGRegisters, simm: Int, offset: Int) -> UInt32 {
    return XGASM.subi(rd, ra, simm).codeAtOffset(offset)
}


@_cdecl("_asm_neg")
public func _asm_neg(rd: XGRegisters, ra: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.neg(rd, ra).codeAtOffset(offset)
}


@_cdecl("_asm_li")
public func _asm_li(rd: XGRegisters, simm: Int, offset: Int) -> UInt32 {
    return XGASM.li(rd, simm).codeAtOffset(offset)
}


@_cdecl("_asm_lis")
public func _asm_lis(rd: XGRegisters, simm: Int, offset: Int) -> UInt32 {
    return XGASM.lis(rd, simm).codeAtOffset(offset)
}


@_cdecl("_asm_extsb")
public func _asm_extsb(rd: XGRegisters, rs: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.extsb(rd, rs).codeAtOffset(offset)
}


@_cdecl("_asm_extsh")
public func _asm_extsh(rd: XGRegisters, rs: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.extsh(rd, rs).codeAtOffset(offset)
}


@_cdecl("_asm_lbz")
public func _asm_lbz(rd: XGRegisters, ra: XGRegisters, d: Int, offset: Int) -> UInt32 {
    return XGASM.lbz(rd, ra, d).codeAtOffset(offset)
}


@_cdecl("_asm_lha")
public func _asm_lha(rd: XGRegisters, ra: XGRegisters, d: Int, offset: Int) -> UInt32 {
    return XGASM.lha(rd, ra, d).codeAtOffset(offset)
}


@_cdecl("_asm_lhz")
public func _asm_lhz(rd: XGRegisters, ra: XGRegisters, d: Int, offset: Int) -> UInt32 {
    return XGASM.lhz(rd, ra, d).codeAtOffset(offset)
}


@_cdecl("_asm_lwz")
public func _asm_lwz(rd: XGRegisters, ra: XGRegisters, d: Int, offset: Int) -> UInt32 {
    return XGASM.lwz(rd, ra, d).codeAtOffset(offset)
}


@_cdecl("_asm_lbzx")
public func _asm_lbzx(rd: XGRegisters, ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.lbzx(rd, ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_lhax")
public func _asm_lhax(rd: XGRegisters, ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.lhax(rd, ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_lhzx")
public func _asm_lhzx(rd: XGRegisters, ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.lhzx(rd, ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_lwzx")
public func _asm_lwzx(rd: XGRegisters, ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.lwzx(rd, ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_stb")
public func _asm_stb(rs: XGRegisters, ra: XGRegisters, d: Int, offset: Int) -> UInt32 {
    return XGASM.stb(rs, ra, d).codeAtOffset(offset)
}


@_cdecl("_asm_sth")
public func _asm_sth(rs: XGRegisters, ra: XGRegisters, d: Int, offset: Int) -> UInt32 {
    return XGASM.sth(rs, ra, d).codeAtOffset(offset)
}


@_cdecl("_asm_stw")
public func _asm_stw(rs: XGRegisters, ra: XGRegisters, d: Int, offset: Int) -> UInt32 {
    return XGASM.stw(rs, ra, d).codeAtOffset(offset)
}


@_cdecl("_asm_stwu")
public func _asm_stwu(rs: XGRegisters, ra: XGRegisters, d: Int, offset: Int) -> UInt32 {
    return XGASM.stwu(rs, ra, d).codeAtOffset(offset)
}


@_cdecl("_asm_stbx")
public func _asm_stbx(rs: XGRegisters, ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.stbx(rs, ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_sthx")
public func _asm_sthx(rs: XGRegisters, ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.sthx(rs, ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_stwx")
public func _asm_stwx(rs: XGRegisters, ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.stwx(rs, ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_lmw")
public func _asm_lmw(rd: XGRegisters, ra: XGRegisters, d: Int, offset: Int) -> UInt32 {
    return XGASM.lmw(rd, ra, d).codeAtOffset(offset)
}


@_cdecl("_asm_stmw")
public func _asm_stmw(rd: XGRegisters, ra: XGRegisters, d: Int, offset: Int) -> UInt32 {
    return XGASM.stmw(rd, ra, d).codeAtOffset(offset)
}


@_cdecl("_asm_slw")
public func _asm_slw(rd: XGRegisters, ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.slw(rd, ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_srawi")
public func _asm_srawi(rd: XGRegisters, ra: XGRegisters, sh: UInt32, offset: Int) -> UInt32 {
    return XGASM.srawi(rd, ra, sh).codeAtOffset(offset)
}


@_cdecl("_asm_rlwinm")
public func _asm_rlwinm(rd: XGRegisters, ra: XGRegisters, sh: UInt32, mb: UInt32, me: UInt32, offset: Int) -> UInt32 {
    return XGASM.rlwinm(rd, ra, sh, mb, me).codeAtOffset(offset)
}


@_cdecl("_asm_rlwinm_")
public func _asm_rlwinm_(rd: XGRegisters, ra: XGRegisters, sh: UInt32, mb: UInt32, me: UInt32, offset: Int) -> UInt32 {
    return XGASM.rlwinm_(rd, ra, sh, mb, me).codeAtOffset(offset)
}


@_cdecl("_asm_or")
public func _asm_or(rd: XGRegisters, ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.or(rd, ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_ori")
public func _asm_ori(rd: XGRegisters, ra: XGRegisters, uimm: UInt32, offset: Int) -> UInt32 {
    return XGASM.ori(rd, ra, uimm).codeAtOffset(offset)
}


@_cdecl("_asm_mr")
public func _asm_mr(rd: XGRegisters, rs: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.mr(rd, rs).codeAtOffset(offset)
}


@_cdecl("_asm_mr_")
public func _asm_mr_(rd: XGRegisters, rs: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.mr_(rd, rs).codeAtOffset(offset)
}


@_cdecl("_asm_and")
public func _asm_and(rd: XGRegisters, ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.and(rd, ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_and_")
public func _asm_and_(rd: XGRegisters, ra: XGRegisters, rb: XGRegisters, offset: Int) -> UInt32 {
    return XGASM.and_(rd, ra, rb).codeAtOffset(offset)
}


@_cdecl("_asm_andi_")
public func _asm_andi_(rd: XGRegisters, ra: XGRegisters, uimm: UInt32, offset: Int) -> UInt32 {
    return XGASM.andi_(rd, ra, uimm).codeAtOffset(offset)
}


@_cdecl("_asm_b")
public func _asm_b(target: Int, offset: Int) -> UInt32 {
    return XGASM.b(target).codeAtOffset(offset)
}


@_cdecl("_asm_bl")
public func _asm_bl(target: Int, offset: Int) -> UInt32 {
    return XGASM.bl(target).codeAtOffset(offset)
}


@_cdecl("_asm_blr")
public func _asm_blr(offset: Int) -> UInt32 {
    return XGASM.blr.codeAtOffset(offset)
}


@_cdecl("_asm_beq")
public func _asm_beq(target: Int, offset: Int) -> UInt32 {
    return XGASM.beq(target).codeAtOffset(offset)
}


@_cdecl("_asm_bne")
public func _asm_bne(target: Int, offset: Int) -> UInt32 {
    return XGASM.bne(target).codeAtOffset(offset)
}


@_cdecl("_asm_blt")
public func _asm_blt(target: Int, offset: Int) -> UInt32 {
    return XGASM.blt(target).codeAtOffset(offset)
}


@_cdecl("_asm_ble")
public func _asm_ble(target: Int, offset: Int) -> UInt32 {
    return XGASM.ble(target).codeAtOffset(offset)
}


@_cdecl("_asm_bgt")
public func _asm_bgt(target: Int, offset: Int) -> UInt32 {
    return XGASM.bgt(target).codeAtOffset(offset)
}


@_cdecl("_asm_bge")
public func _asm_bge(target: Int, offset: Int) -> UInt32 {
    return XGASM.bge(target).codeAtOffset(offset)
}


@_cdecl("_asm_nop")
public func _asm_nop(offset: Int) -> UInt32 {
    return XGASM.nop.codeAtOffset(offset)
}


@_cdecl("_asm_raw")
public func _asm_raw(value: UInt32, offset: Int) -> UInt32 {
    return XGASM.raw(value).codeAtOffset(offset)
}

