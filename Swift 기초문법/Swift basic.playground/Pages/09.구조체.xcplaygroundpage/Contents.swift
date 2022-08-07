import UIKit

// 구조체는 파스칼 표기법 사용
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
