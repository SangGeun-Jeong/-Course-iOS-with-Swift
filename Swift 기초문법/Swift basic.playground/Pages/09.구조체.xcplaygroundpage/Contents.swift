import UIKit

// 클래스
// 구조체
// 프로그래머가 데이터를 용도에 맞게 표현할 때 용이.
// 프로퍼티와 메소드를 활용해서 구조화된 데이터와 기능을 가질 수 있어
// 하나의 새로운 사용자 정의 데이터 타입을 만들 수 있음.
// Swift에서 구조체와 클래스의 사용방법이 거의 같은데,
// 차이점은 구조체의 인스턴스는 var 타입이고, 클래스의 인스턴스는 참조타입.

/*
 struct 구조체 이름 {
	프로퍼티와 메서드
 }
 프로퍼티, 메서드 -> 구조체 클래스의 멤버
 프로퍼티 -> 멤버 변수
 메서드 -> 멤버 함수
 */

// 구조체는 파스칼 표기법 사용
// 구조체를 사용하려면 인스턴스를 생성해 주어야 함.
// 인스턴스를 생성한다는 것은, 실제로 구조체를 사용하기 위해 메모리에 생성하는 것을 의미.
// 한마디로 메모리에 생성된 클래스 구조체의 실체.
struct User {
    var nickname: String
    var age: Int
    
    func information() {
        print("\(nickname) \(age)")
    }
}

// 구조체는 생성자가 기본으로 만들어짐 (프로퍼티 이름으로)
var user = User(nickname: "toproot", age: 27)

user.nickname
user.nickname = "Albert"
user.nickname

// 구조체 안에서는 메소드도 정의가 가능.
user.information()
