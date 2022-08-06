import Foundation

// 연관된 항목을 모아줌.
enum CompassPoint: String {
	case north = "북" // 원시값으로 초기화
	case south = "남"
	case east = "동"
	case west = "서"
	// case north, south, east, west 와 같이 한줄로 표기도 가능.
	
	// 보통 다른 언어는 초기화 원시값을 Int만 허용하는데, Swift는 다양한 타입도 가능.
}

// 열거형을 만들면 하나의 새로운 타입으로 사용할 수 있음.
// 따라서 네이밍은 대문자로 시작.

var direction = CompassPoint.east
direction = .west
direction

// switch 구문과 사용하면 다양하게 사용 가능.

switch direction {
case .north:
	print(direction.rawValue)
case .south:
	print(direction.rawValue)
case .east:
	print(direction.rawValue)
case .west:
	print(direction.rawValue) // 원시값 "서" 출력
}

// west

// switch를 통해서 열거형 안의 항목이 어떤 항목인지 확인 할 수 있음.

// 특정 타입의 값을 가질 수 있도록 할 수 있음.

// 원시값을 가지고 열거형을 반환하게 할 수 도 있음.

let direction2 = CompassPoint(rawValue: "남")

// 열거형은 연관값도 가질 수 있음.
// 각 항목 옆에 소괄호로 묶어서 표현.
// 다른항목이 연관값을 가진다고 모든 값이 연관값을 가질 필요는 없음.

enum PhoneError {
	case unknown
	case batteryLow(String) // 항목에 연관값 추가.
}

let error = PhoneError.batteryLow("배터리가 곧 방전 됩니다.") // batteryLow 초기화

switch error {
case.batteryLow(let message):
	print(message)

case .unknown:
	print("알 수 없는 에러 입니다.")
}
