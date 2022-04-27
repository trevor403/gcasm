@_cdecl("_macro_loadImmediateShifted32bitLO")
public func loadImmediateShifted32bitLO(register: XGRegisters, value: UInt32) -> UInt32 {
    return XGASM.loadImmediateShifted32bit(register: register, value: value).0.code
}

@_cdecl("_macro_loadImmediateShifted32bitHI")
public func loadImmediateShifted32bitHI(register: XGRegisters, value: UInt32) -> UInt32 {
    return XGASM.loadImmediateShifted32bit(register: register, value: value).1.code
}
