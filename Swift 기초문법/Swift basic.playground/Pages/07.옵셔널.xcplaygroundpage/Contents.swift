import UIKit

// 옵셔널 : 값이 있을수도 없을 수도 있다.
// 값이 없는 경우 : Nill
// 값이 Null 인 경우 프로그램이 종료됨.
// 옵셔널을 사용하면 이러한 경우에도 처리를 해주어 종료되지 않게 함.

var name: String? // nill

var optionalName: String? = "Gunter"
print(optionalName) // Optional("Gunter")
// Optional("Gunter") -> 의 값은 연산 불가, 따라서 옵셔널 포장지를 벗겨 사용하기 위해 옵셔널 바인딩을 활용해야함

// var requiredName: String = optionalName => Error
// requiredName은 옵셔널(?가 안붙음) 이기 때문에 항상 값을 가져야 하므로 Error 발생.

