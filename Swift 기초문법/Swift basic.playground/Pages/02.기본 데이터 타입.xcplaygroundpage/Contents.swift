import Foundation

// Int : 64bit 정수형
var someInt: Int = -100
someInt = 100

// UInt(Unsigned Int) : 부호가 없는 64bit 정수형
var someUInt: UInt = 200

// Float : 32bit 부동 소수점
var someFloat: Float = 1.1
someFloat = 1
// 1이라는 정수형을 넣으면 1.0 으로 저장이 됨.
print(someFloat)

// Double : 64bit 부동 소수점
var someDouble: Double = 1.1
someDouble = 1
// Double도 마찬가지로 자동으로 1.0으로 저장됨.

// Bool : true, false 값
var someBool: Bool = true
someBool = false

// Character : 문자만 저장 가능.
var someCharacter: Character = "가"
someCharacter = "A"
someCharacter = "🔥"

// String : 문자열
var SomeString: String = "안녕하세요 ✋🏻"

// Any : 모든 타입을 지칭하는 키워드

// 타입 추론
// 특정 타입을 명시하지 않으면, 컴파일러가 할당된 값을 기준으로 변수 상수의 타입을 결정해줌.
// 컴파일러가 자동으로 Int형 타입으로 추론함. -> 타입 생략 가능.
var number = 10

