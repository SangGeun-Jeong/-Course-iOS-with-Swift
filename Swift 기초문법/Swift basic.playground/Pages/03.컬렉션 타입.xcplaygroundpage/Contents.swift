import UIKit

// 컬렉션 타입 : 데이터들의 집합 묶음.

// 비어있는 Array 생성방법.
var numbers: Array<Int> = Array<Int>()
// 배열에 값 추가. 배열은 순서대로 추가.
numbers.append(1)
numbers.append(2)
numbers.append(3)

// 인덱스를 통해 배열의 값 접근.
numbers[0]
numbers[1]
numbers[2]

// 중간에 값 삽입 (값, 순서(위치))
numbers.insert(4, at: 2)
numbers // [1,2,4,3]

// 중간에 있는 값 삭제 (순서(위치))
numbers.remove(at: 0)
numbers // [2,4,3]

// 다른 방법으로 Array 생성(축약된 문법)
var names = [String]()
var names2: [String] = []
// 축약된 방식으로 더 많이 작성

// 딕셔너리 선언
var dic: Dictionary<String, Int> = Dictionary<String, Int>()
// 축약된 형태로 선언
var dic2: [String: Int] = [:]
// 초기값이 있는 딕셔너리
// 키,값의 타입 설정.
var dic3: [String: Int] = ["swift":1]
dic3["java"] = 3
dic3["c"] = 4
dic3 // ["java": 3, "swift": 1, "c": 4]
// 값 변경하기
dic["c"] = 7
dic3
// 키 값 제거
dic3.removeValue(forKey: "c")
dic3 // ["java": 3, "swift": 1]

// set : 순서가 없고, 멤버가 보장 -> 데이터의 순서x, 중복x
var set: Set = Set<Int>()
// set은 축약형 선언이 따로 없음.
// set에 값 추가.
set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30) // 중복 안됨.
set // {30, 20, 10}

// set 멤버 삭제
set.remove(20)
set // {10, 30}
