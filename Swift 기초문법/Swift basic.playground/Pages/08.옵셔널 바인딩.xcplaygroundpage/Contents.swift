import UIKit

// 명시적 해제 : 강제 해제, 비강제 해제(옵셔널 바인딩)
// 묵시적 해제 : 컴파일러에 의한 자동 해제, 옵셔널의 묵시적 해제

var number: Int? = 3
print(number) // "Optional(3)\n"

// 강제 해제(옵셔널을 벗겨냄)
print(number!) // 3
// ! 를 사용하면 옵셔널 안의 값을 가져올 수 있음.
// 값이 Nill 인 변수를 강제해제 하면 에러가 발생(매우 위험함)

// 비강제 해제(안전하게 옵셔널 추출)
// 옵셔널 값을 조건문에 변수 또는 상수로 값을 할당해서 사용
if let result = number {
    print(result)
} else {
    
}

// guard문으로 옵셔널 해제를 할 수 있다.
func test() {
    let number: Int? = 5
		// number가 true이면 result에 할당, false이면 return.
    guard let result = number else { return }
	
    print(result)
}

test() // 5

// 묵시적 해제
// 컴파일러에 의한 자동해제
// 옵셔널을 비교연산자를 사용해 다른값과 비교하면, 컴파일러가 자동으로 옵셔널 값을 해제

let value: Int? = 6
if value == 6 { // 비교 연산자 -> 컴파일러가 자동으로 해제
    print("value가 6입니다.")
} else {
    print("value가 6이 아닙니다.")
}

// 묵시적 옵셔널 해제

let string = "12"
// 사용할때 옵셔널이 묵시적으로 해제되어 일반값 처럼 자유롭게 연산 가능.
// string을 Int형으로 변경할때, 숫자가 아니면 nill을 반환하게 됨.
// 따라서 옵셔널 Int로 변수를 받아주어야 하고, 여기서 옵셔널 타입은 !를 사용해야 묵시적 옵셔널 해제가 됨.
var stringToInt: Int! = Int(string)
print(stringToInt + 1)
