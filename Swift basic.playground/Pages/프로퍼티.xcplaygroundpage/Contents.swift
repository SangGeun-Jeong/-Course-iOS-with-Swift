import Foundation

// 저장 프로퍼티 (구조체, 클래스에서 사용가능)
// 인스턴스 프로퍼티에 값이 저장되는 것.

struct Dog {
    var name: String
    let gender: String
}

// 구조체 인스턴스화
var dog = Dog(name: "toproot", gender: "Male")
print(dog)

dog.name = "SG"
// dog.gender = "female" // 상수 값은 변경 못함 에러

let dog2 = Dog(name: "gunter", gender: "male")
// dog2.name = "권태완"
// 구조체 인스턴스를 상수로 선언했기 때문에 name값 변경이 안됨. => 내부프로퍼티도 모두 상수가 됨.
// 구제체가 vale 값 타입이기 때문.

// 클래스는 참조타입이어서 구조체와 다른 결과가 나옴.
// 클래스 인스턴스는 상수로 선언해도 변수로 선언한 프로퍼티 값을 바꿀 수 있음.

class Cat {
    var name: String
    let gender: String
    
    init(name: String, gender: String){
        self.name = name
        self.gender = gender
    }
}


let cat = Cat(name: "json", gender: "male")
cat.name = "gunter"
print(cat.name)

// 클래스 프로퍼티는 참조형이므로 상수로 선언해도 값을 바꿀 수 있음.
// 하지만 gender 프로퍼티는 상수로 클래스 내에서 생성되었기 때문에 값을 변경할 수 없음.
// cat.gender = "female"


// 계산 프로퍼티(구조체, 클래스, 열거형 에서 사용 가능)

struct Stock {
    var averagePrice: Int
    var quantity: Int
    var purchasePrice: Int {
        get {
            return averagePrice * quantity
        }
        // 연산형 프로퍼티, getter, setter를 통해 값을 계산
        set(newPrice) { // 매개변수 defualt : newValue
            averagePrice = newPrice / quantity
        }
    }
}

var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock)

stock.purchasePrice // 6900
stock.purchasePrice = 3000
stock.averagePrice

// 프로퍼티 옵저버 (프로퍼티 값 변화를 관찰)
// 프로퍼티가 set 될때마다 호출됨.
// 3가지 경우에만 사용 가능(저장 프로퍼티, 오버라이딩 된 저장,계산 프로퍼티에만 사용)

class Account {
    var credit: Int = 0 {
        // 소괄호 이름 지정
        // 처음 set 될 때 실행.
        willSet {
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        // 변경된 값으로 set 될 때 실행.
        didSet {
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.)")
        }
    }
}

var account = Account()
account.credit = 1000

// 타입 프로퍼티(저장, 연산 프로퍼티에만 사용 가능)
// 인스턴스 생성 없이 객체 내 프로퍼티에 가능하게 하는것.
// 프로퍼티 값 자체에 연결하는거.

struct SomeStructure {
    static var storedTypeProperty = "Some value." // 스토어
    static var computedTypeProperty: Int { // 컴퓨티드
        return 1
    }
}

SomeStructure.computedTypeProperty
SomeStructure.storedTypeProperty
SomeStructure.storedTypeProperty = "hello"
SomeStructure.storedTypeProperty
