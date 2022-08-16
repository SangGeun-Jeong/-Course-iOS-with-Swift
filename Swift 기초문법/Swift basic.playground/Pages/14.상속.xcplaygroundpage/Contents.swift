import Foundation

// Base Class
class Vehicle {
	var currentSpeed = 0.0 // final을 붙이면 오버라이드 불가.
	var description: String {
		return "traveling at \(currentSpeed) miles per hour"
	}
	func makeNoise() {
			print("speaker On!")
	}
}

/*
 class 클래스 이름: 부모 클래스 이름 {
	// 하위 클래스 정의
 }
 */
// 클래스 앞에 final 붙이면 상속 불가.

class Bicycle: Vehicle {
	// 부모 클래스의 프로퍼티와 메서드도 얻게됨.
	var hasBasket = false
}

var bicycle = Bicycle()
bicycle.currentSpeed // 0 (초기값)
bicycle.currentSpeed = 15.0
bicycle.currentSpeed // 15.0 (값변경)



// 오버라이딩
// 서브클래스 <- 자신만의 기능을 변경해서 사용 가능.

class Train: Vehicle {
	// 오류방지를 위해 override 키워드 사용하기.
	override func makeNoise() { // 기능 재정의
		super.makeNoise() // super class의 makeNoise가 먼저 호출됨.
		print("choo choo")
	}
}

let train = Train()
train.makeNoise()
// speaker On!
// choo choo



// 프로퍼티 오버라이딩
// 상속받은 프로퍼티를 자식 클래스에서 재정의 가능.

class Car: Vehicle {
	var gear = 1
	override var description: String {
		return super.description + " in gear \(gear)"
	}
}

let car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.description)

// 프로퍼티 옵저버

class AutomaticCar: Car {
	// 프로퍼티 옵저버를 설정할 때, 상수나 ReadOnly 프로퍼티는 설정할 수 없음
	// 값을 설정할 수 없기 때문에, willSet, didSet 사용 불가.
	override var currentSpeed: Double {
		didSet {
			gear = Int(currentSpeed / 10) + 1
		}
	}
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")

// type 프로퍼티가 오버라이드 되는 것을 막기 final(재정의 방지용)

