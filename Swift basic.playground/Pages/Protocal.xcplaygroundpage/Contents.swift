import Foundation

/* 복붙
 protocol 이름 {
 
 }
 */

protocol SomeProtocol {
	
}

protocol SomeProtocol2 {
	
}

// 여러개 프로토콜 정의 가능
// 구조체
struct SomeStructure: SomeProtocol, SomeProtocol2 {
	
}

/*
 class SomeClass: SomeSuperclass, FirstProtocol, AnotherProtocol {
 
 }
 */

// 1. 프로퍼티 요구사항

protocol FirstProtocol {
	var name: Int { get set } // 읽기, 쓰기 가능 (var 로 선언해야함)
	var age: Int { get }
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
struct Person: FullyNames {
	var fullName: String
	func printFullName() {
		print(fullName)
	}
}

protocol SomeProtocol3 {
	func someTypeMethod() // default 값은 정의할 수 없음.
}

protocol SomeProtocol4 {
	init(someParameter: Int)
}

protocol SomeProtocol5 {
	init()
}

// 클래스에서는 생성자 요구사항을 준수하려면 Required 가 필요함.
class SomeClass: SomeProtocol5 {
	required init() {
		
	}
}
