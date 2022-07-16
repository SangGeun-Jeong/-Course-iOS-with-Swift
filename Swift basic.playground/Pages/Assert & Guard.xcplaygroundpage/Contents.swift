import Foundation


// assert 는 디버기 중 조건의 검증을 위해 사용
var value = 0
assert(value == 0)

// value = 2
// assert(value == 0, "값이 0이 아닙니다.") // Fail -> 메세지와 함께, runtime error

/*
 guard 조건 else {
	// 조건이 false 이면 else 구문이 실행되고
	return or throw or break를 통해 이 후 코드를 실행하지 않도록 한다.
 }
 */
// guard문으로 Optional binding 가능
// guard문을 활용해 Optional을 조건문 범위 밖에서도 사용할 수 있음.

func guardTest(value: Int?) {
	guard let value = value else {
		return
	}
	print(value)
}

guardTest(value: 2)
guardTest(value: nil)
