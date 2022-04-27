
//  Credit StarsMmd

import Foundation

extension UInt32 {
	
	func hexToSignedFloat() -> Float {
		var toInt = Int32(bitPattern: self)
		var float : Float32 = 0
		memcpy(&float, &toInt, MemoryLayout.size(ofValue: float))
		return float
	}
	
	var byteArray: [Int] {
		var val = self
		var array = [0,0,0,0]
		for j in [3,2,1,0] {
			array[j] = Int(val % 0x100)
			val = val >> 8
		}
		return array
	}
	
	var charArray: [UInt8] {
		return byteArray.map({ (i) -> UInt8 in
			return UInt8(i)
		})
	}
	
	func bitArray() -> [Bool] {
		// least significant bit first
		var value = self
		var bits = [Bool]()
		for _ in 0 ..< 32 {
			bits.append((value & 0x1) == 1)
			value = value >> 1
		}
		return bits
	}
	
	var int: Int {
		return Int(self)
	}
	
	var int16: Int {
		var value = (self & 0xFFFF).int
		value = value >= 0x8000 ? value - 0x10000 : value
		return value
	}
	
	var int32: Int {
		var value = (self & 0xFFFFFFFF).int
		value = value >= 0x80000000 ? value - 0x100000000 : value
		return value
	}
	
	func hex() -> String {
		return String(format: "%08x", self).uppercased()
	}
	
	func hexString() -> String {
		return "0x" + hex()
	}
	
}