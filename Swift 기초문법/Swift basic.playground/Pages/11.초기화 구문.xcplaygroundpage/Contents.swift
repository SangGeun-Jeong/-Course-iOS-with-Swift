import Foundation

// 초기화란?
// 클래스 구조체 또는 열거형의 인스턴스를 사용하기 위한 준비 과정
// 사용하는 이유는, 인스턴스의 프로퍼티마다 초기값을 설정해 주고,
// 새 인스턴스를 사용하기 전에 필요한 설정을 해주기 위해 사용.

/*
 init(매개변수: 타입, ...) {
    // 프로퍼티 초기화
    // 인스턴스 생성 시 필요한 설정을 해주는 코드 작성
		// 매개변수를 다르게 해주면 여러개의 초기화 init()을 사용할 수 있음.
 }
 */

class User {
    var nickname: String
    var age: Int
    
    init(nickname: String, age: Int) {
        self.nickname = nickname
        self.age = age
    }
    // 구조체도 똑같은 방법으로 초기화 해줄 수 있음.
	
		// 매개변수를 받지 않고도 초기화 해주는 Init()
    init(age: Int) {
        self.nickname = "albert"
        self.age = age
    }
    
		// init과 반대의 역할.
		// 인스턴스가 메모리에 해제되기 직전에 호출 됨.
    deinit {
        // 클래스 인스턴스와 관련하여 원하는 정리작업 구현.
				// deinit은 클래스 인스턴스에만 구현할 수 있음.
        print("deinit user")
    }
}

var user = User(nickname: "toproot", age: 27)
user.nickname
user.age

var user2 = User(age: 30)
user2.nickname
user2.age

// 옵셔널 타입 user3 선언.
var user3: User? = User(age: 23)
user3 = nil // deinit user

// Swift는 인스턴스가 더이상 필요하지 않으면 자동으로 메모리에 소멸을 시킴.
// user3에 nill을 대입하여, 더이상 인스턴스가 필요하지 않다고 판단해 deinit이 호출됨.


