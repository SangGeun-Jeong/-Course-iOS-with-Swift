import Foundation

// map
// 기존의 컨테이너 값에 연산을 하여 새로운 컨테이너 생성.
let numbers = [0,1,2,3]
let mapArray = numbers.map { (number) -> Int in
	return number * 2
}
print("map \(mapArray)")

// filter
// filter로 값에 접근하여 5보다 큰 수만 들어있는 array 생성.
let intArray = [10,5,20,13,4]
let filterArray = intArray.filter {$0 > 5}
print("filter \(filterArray)")

// reduce
// 컨테이너 내부의 수를 하나로 통합.
// reduce(초기값)
let someArray = [1,2,3,4,5]
let reduceResult = someArray.reduce(0) { // 초기값 0
	(result: Int, element: Int) -> Int in
	print("\(result) + \(element)")
	return result + element
}

print("reduce \(reduceResult)")
