import Foundation


// assert 는 디버깅 중 조건의 검증을 위해 사용
var value = 0
assert(value == 0)

// value = 2
// assert(value == 0, "값이 0이 아닙니다.") // Fail -> 메세지와 함께, runtime error
// __lldb_expr_1/16.Assert_Guard.xcplaygroundpage:9: Assertion failed: 값이 0이 아닙니다.



func guardTest(value: Int?) { // Int? -> Optional Binding
	guard let value = value else { return }
	print(value)
}

guardTest(value: 2)
guardTest(value: nil)
