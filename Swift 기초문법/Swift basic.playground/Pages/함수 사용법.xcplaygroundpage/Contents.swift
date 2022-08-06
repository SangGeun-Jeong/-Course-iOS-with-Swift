import UIKit

/*
 func 함수명(파라미터 이름: 데이터 타입) -> 반환 타입 {
    return 반환 값
 }
 */

func sum(a: Int, b: Int) -> Int{
    return a+b
}

sum(a: 5, b: 3)

func hello() -> String {
    return "hello"
}

hello()

// 반환값이 없는 함수

//func printName() -> Void {
//
//}
// 또는

//func printName() {
//
//}

// 반환값이 없고 기본값이 있는 함수

func greeting(friend: String, me: String = "gunter") {
    print("Hello, \(friend)! I'm \(me)")
}

greeting(friend: "Albert")


// 전달인자 레이블

func sendMessage(from myName: String, to name: String) ->
String {
    return "Hello \(name)! I'M \(myName)"
}

sendMessage(from: "Gunter", to: "Json")
// 코드의 가독성이 높아짐


// 와일드카드 식별자 (_)
func sendMessage2(_ name: String) -> String {
    return "Hello \(name)"
}

sendMessage2("Gunter")

// 가변 매개 변수(0개 이상의 값을 받아옴), 배열처럼 사용 가능. 함수당 가변매개변수는 하나만 가질 수 있음.
func sendMessage3(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)"
}

sendMessage3(me: "Gunter", friends: "Json", "Albert", "Stella")

// Swift는 함수형 패러다임을 포함하는 다중 패러다임 언어
// Swift의 함수는 1급 객체. 함수를 변수, 상수에 할당할 수 도 있고 매개변수를 통해 전달할 수 있음.


