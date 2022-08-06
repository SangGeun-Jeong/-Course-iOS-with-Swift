import UIKit

class Dog {
    var name: String = ""
    var age: Int = 0
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
// 클래스도 프로퍼티 값을 변경할 수 있음.

dog.introduce()


