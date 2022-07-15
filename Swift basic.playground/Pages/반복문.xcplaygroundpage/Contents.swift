import UIKit

/*
 for 루프 상수 In 순회 대상 {
 // 실행할 구문..
 }
 */

for i in 1...4 {
    print(i)
}

let array = [1,2,3,4,5]

for i in array {
    print(i)
}
// dictionay, set, char, string

// while : 조건을 만족하는 동안 계속 실행
/*
 while 조건식 {
    // 실행할 구문
 }
 */

var number = 5

while number < 10 {
    number+=1
}

number

// true일땐 무한반복, false일땐 실행되지 않음.

/*
 repeat { // 한번은 반드시 실행.
    // 실행할 구문
 } while 조건식
 */

var x = 6

repeat {
    x+=2
} while x < 5
            
            
print(x)
