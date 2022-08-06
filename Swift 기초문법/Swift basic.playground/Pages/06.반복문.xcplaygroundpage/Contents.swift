import UIKit

/*
 반복문 : 반복적으로 코드가 실행되게 만드는 구문을 말한다.
 
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
// dictionay, set, char, string => 순회대상으로 사용 가능.

// while : 조건을 만족하는 동안 계속 실행(false가 나오면 종료)
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

/*
 조건식에 상관없이 한번은 무조건 실행.
 
 repeat { // 한번은 반드시 실행.
    // 실행할 구문
 } while 조건식
 */

var x = 6

repeat {
    x+=2
} while x < 5
            
            
print(x)
