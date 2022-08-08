import Foundation

// 프로퍼티 : 클래스, 구조체 또는 열거형 등에 관련된 값을 뜻한다.
// 저장 프로퍼티 : 인스턴스의 변수 또는 상수를 의미.
// 연산 프로퍼티 : 값을 저장하는 것이 아니라 특정 연산을 실행하는 결괏값 의미.
// 타입 프로퍼티 : 특정 인스턴스에서 사용되는 것이 아닌, 특정 타입에서 사용되는 프로퍼티.

// 1. 저장 프로퍼티 (구조체, 클래스에서 사용가능)
// 인스턴스 프로퍼티에 값이 저장되는 것.
struct Dog {
    var name: String
    let gender: String
}

// 구조체 인스턴스화
var dog = Dog(name: "toproot", gender: "Male")
print(dog)

// 저장프로퍼티 값 변경.
dog.name = "SG"
// dog.gender = "female" // 상수 값은 변경 못함 에러

let dog2 = Dog(name: "gunter", gender: "male")
// dog2.name = "권태완"
// 구조체 인스턴스를 상수로 선언했기 때문에 name값 변경이 안됨. => 내부프로퍼티도 모두 상수가 됨.
// 이유는 구제체가 vale 값 타입이기 때문.

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


// 연산 프로퍼티(구조체, 클래스, 열거형 에서 사용 가능)
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
						// averagePrice = newValue / quantity
        }
    }
}

var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock)

stock.purchasePrice // 6900 -> get이 실행되어 연산이 이루어짐.
stock.purchasePrice = 3000
stock.averagePrice // 2300원 -> 1000원, set이 실행되어 averagePrice가 연산됨.
// 연산프로퍼티는 인스턴스 내,외부의 값을 연산해서, 적절한 값을 돌려주는 접근자 역할이나,
// 내부의 프로퍼티값을 간접적으로 설정하는 설정자 역할을 할 수 있음.
// set을 지우고 get을 활용해서 읽기전용 프로퍼티를 만들 수 도 있음.



// 프로퍼티 옵저버 (프로퍼티 값 변화를 관찰하고 반응.)
// 새로운 값이 기존값과 같더라도, 프로퍼티 옵저버는 호출이 됨.
// 프로퍼티가 set 될때마다 호출됨.
// 3가지 경우에만 사용 가능(저장 프로퍼티, 오버라이딩 된 저장,계산 프로퍼티에만 사용)
class Account {
    var credit: Int = 0 {
        // 소괄호 이름 지정
        // 처음 set 될 때 실행. 값이 저장되기 직전에 호출
				// 새로 저장될 프로퍼티값을 상수 매개변수로 전달.
				// 이 매개변수 이름을 willSet 구문안에서 사용할 수 있도록 이름을 지정할 수 있음.
				// 따로 지정하지 않으면 기본값인 newValue가 매개변수 이름으로 들어감.
        willSet {
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        // 변경된 값으로 set 될 때 실행. 값이 저장된 후에 호출
				// 프로퍼티의 기존값이 상수 매개변수로 전달됨.
				// 이 매개변수를 didSet안에서 사용할 수 있도록 이름을 지정할 수 있고, 기본값은 oldValue
        didSet {
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.)")
        }
    }
}

var account = Account()
account.credit = 1000
// 잔액이 0원에서 1000원으로 변경될 예정입니다.
// 잔액이 0원에서 1000원으로 변경되었습니다.)

// 타입 프로퍼티(저장, 연산 프로퍼티에만 사용 가능)
// 인스턴스 생성 없이 객체 내 프로퍼티에 접근 가능하게 하는것.
// 프로퍼티 타입 자체와 연결하는 것을 의미.
// static 키워드를 사용하여 정의.
struct SomeStructure {
    static var storedTypeProperty = "Some value." // 스토어
    static var computedTypeProperty: Int { // 컴퓨티드
        return 1
    }
}

// 인스턴스를 따로 생성하지 않고, 변수에 클래스를 할당에 프로퍼티를 사용할 수 있음.
SomeStructure.computedTypeProperty
SomeStructure.storedTypeProperty
SomeStructure.storedTypeProperty = "hello"
SomeStructure.storedTypeProperty
