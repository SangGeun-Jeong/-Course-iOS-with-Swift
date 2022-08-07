import UIKit

/*
 class 클래스 이름 {
	프로퍼티와 메서드
 }
 */

class Dog {
    var name: String = ""
    var age: Int = 0
		// 클래스는 생성자를 정의해 주어야 함.
		// 인스턴스를 생성하고, 초기화 할 때 기본적인 생성자를 사용함.
		// 생성자를 따로 정의 안해주어도, 기본적으로 생성자가 정의 됨.
    // 생성자 생성
    // 인스턴스가 생성되면 호출
    init() {
        
    }
    
    func introduce(){
        print("name : \(name) age : \(age)")
    }
}

var dog = Dog()
dog.name = "CoCo"
dog.age = 3
dog.name
dog.age
// 클래스에 값을 접근하는 방법도 구조체와 일치.
// 클래스도 프로퍼티 값을 변경할 수 있음.

dog.introduce()


