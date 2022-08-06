import Foundation

/*
 extension SomeType {
	// 추가 기능
 }
 */

// Int 에 기능 추가
extension Int {
	// 짝수인지 확인하는 연산 프로퍼티 추가
	var isEven: Bool {
		return self % 2 == 0
	}
	
	var isOdd: Bool {
		return self % 2 == 1
	}
}

var number = 3
number.isOdd // true
number.isEven // false

// 타입에 메서드 추가

extension String {
	func convertToInt() -> Int? {
		return Int(self)
	}
}

var String = "0"
String.convertToInt()
