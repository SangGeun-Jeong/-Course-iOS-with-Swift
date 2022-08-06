import Foundation

/*
 init(매개변수: 타입, ...) {
    // 프로퍼티 초기화
    // 인스턴스 생성 시 필요한 설정을 해주는 코드 작성
 }
 */

class User {
    var nickname: String
    var age: Int
    
    init(nickname: String, age: Int) {
        self.nickname = nickname
        self.age = age
    }
    
    init(age: Int) {
        self.nickname = "albert"
        self.age = age
    }
    
    deinit {
        // 인스턴스와 관련하여 원하는 정리작업 작성
        print("deinit user")
    }
}

var user = User(nickname: "toproot", age: 27)

user.nickname
user.age

var user2 = User(age: 30)
user2.nickname
user2.age

var user3: User? = User(age: 23)
user3 = nil


