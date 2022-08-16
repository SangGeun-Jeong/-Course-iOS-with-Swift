import Foundation

class SomeClass { // 참조 타입
    var count: Int = 0
}

struct SomeStruct { // 값 타입
    var count: Int = 0
}

var class1 = SomeClass()
var class2 = class1
var class3 = class1

class3.count = 2

class1.count // 2 (클래스는 참조타입이기 때문에, 같은 인스턴스의 값을 변경하면 참조값이 변경됨)
// 변수를 복사하더라도 하나의 주소값을 가리키고 있기 때문에,
// 복사값과 원본값이 같은 값을 가지게 됨.

var struct1 = SomeStruct()
var struct2 = struct1
var struct3 = struct1

struct2.count = 3
struct3.count = 4

struct1.count
struct2.count
struct3.count
// struct 구조체는 값 자체를 복사하기 때문에
// 값 타입이라 같은 구조체 인스턴스를 할당하더라도
// 매번 새로운 인스턴스가 할당되어서,
// 다른 인스턴스의 값에 영향을 주지 않음.
