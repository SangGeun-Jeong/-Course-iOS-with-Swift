import Foundation

/* 복붙
 protocol 이름 {
 
 }
 */

// 프로토콜 : 특정 역할을 하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진

protocol SomeProtocol {
	
}

protocol SomeProtocol2 {
	
}

// 여러개 프로토콜 정의 가능(, 쉼표)
// 구조체
struct SomeStructure: SomeProtocol, SomeProtocol2 {
	
}

// 상속받을 클래스가 있다면 상속받을 super class 이름을 제일 앞에 쓰고,그 뒤에 프로토콜 나열.
/*
 class SomeClass: SomeSuperclass, FirstProtocol, AnotherProtocol {
 
 }
 */

// 1. 프로퍼티 요구사항
// 프로퍼티의 이름과 타입만 지정하면 됨.
protocol FirstProtocol {
	var name: Int { get set } // 읽기, 쓰기 가능 (var(변수)로 선언해야함)
	var age: Int { get } // 읽기전용
}

protocol AnotherProtocol {
	// 타입 프로퍼티를 요구하려면 맨 앞에 static 을 붙여주어야 함.
	static var someTypeProperty: Int { get set }
}

protocol FullyNames {
	var fullName: String { get set }
	func printFullName()
}

// 프로토콜의 요구사항을 충족해야 에러가 안남.
// fullName property를 정의해 주어야 함. 메서드도 있으면 정의해주어야 함.
struct Person: FullyNames {
	var fullName: String
	func printFullName() {
		print(fullName)
	}
}

protocol SomeProtocol3 {
	func someTypeMethod() // 매개변수는 지정해주어야 하지만, default 값은 정의할 수 없음.
}

protocol SomeProtocol4 {
	// 생성자의 키워드와 매개변수만 정의해주면 됨.
	init(someParameter: Int)
}

protocol SomeProtocol5 {
	init()
}

// 클래스에서는 생성자 요구사항을 준수하려면 Required 가 필요함.(구조체는 필요없음)
class SomeClass: SomeProtocol5 {
	required init() {
		
	}
}
