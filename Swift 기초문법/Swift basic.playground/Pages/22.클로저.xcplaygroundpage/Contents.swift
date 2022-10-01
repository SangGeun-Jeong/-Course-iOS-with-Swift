import Foundation

/*
 { (매개 변수) -> 리턴 타입 In
	실행 구문
 }
 */

// 파라미터와 리턴타입이 둘 다 없는 클로저
let hello = { () -> () in
	print("hello")
}

// 호출
hello()

// 파라미터와 리턴타입이 있는 클로저

let hello2 = { (name: String) -> String in
	return "Hello, \(name)"
}

// 전달인자 레이블을 적지않고 파라미터 값을 넘겨주어야 함.
hello2("toproot")

// 함수의 파라미터로 클로저 전달 가능.

func doSomething(closure: () -> ()) {
	closure()
}

// doSomething 파라미터로 클로저를 전달하여 실행.
doSomething(closure: { () -> () in
	print("hello")
})

func doSomething2() -> () -> () {
	return { () -> () in
		print("hello4")
	}
}

doSomething2()()

// 후행 클로저, 파라미터 전달값이 없을 때 사용 가능.
doSomething() {
	print("hello2")
}
// 소괄호도 생략가능 (파라미터 1개 일때)
doSomething {
	print("hello3")
}
// 다중 후행 클로저
func doSomething2(success: () -> (), fail: () -> ()) {
	
}

doSomething2 {
	
} fail: {
	
}

// 클로저 표현 단순화

func doSomething3(closure: (Int, Int, Int) -> Int) {
	closure(1,2,3)
}

doSomething3(closure: { (a, b, c) in
	return a+b+c
})

doSomething3(closure: {
	// 약식 인수 이름으로 매개변수 이름 대체 $
	return $0 + $1 + $2
})

doSomething3(closure: {
	// 단일 리턴이라서 return 생략
	$0 + $1 + $2
})

// 후행클로저 표현
doSomething3() {
	$0 + $1 + $2
}

// 단 하나의 클로저만 매개변수로 전달하는 경우, 소괄호 생략
doSomething3 {
	$0 + $1 + $2
}
