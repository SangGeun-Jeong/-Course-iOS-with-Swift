import UIKit

var number: Int? = 3
// print(number)

// 강제 해제
print(number!) // ! 를 사용하면 옵셔널 안의 값을 가져올 수 있음.
// 값이 Nill 인 변수를 강제해제 하면 에러가 발생

// 비강제 해제
// 옵셔널 값을 조건문에 변수 또는 상수로 값을 할당해서 사용
if let result = number {
    print(result)
} else {
    
}
// guard문으로 옵셔널 해제를 할 수 있다.
func test() {
    let number: Int? = 5
    guard let result = number else { return }
    print(result)
}

test()

// 컴파일러에 의한 자동해제

let value: Int? = 6
if value == 6 {
    print("value가 6입니다.")
} else {
    print("value가 6이 아닙니다.")
}

// 묵시적 옵셔널 해제
let string = "12"
var stringToInt: Int! = Int(string)
print(stringToInt + 1)

