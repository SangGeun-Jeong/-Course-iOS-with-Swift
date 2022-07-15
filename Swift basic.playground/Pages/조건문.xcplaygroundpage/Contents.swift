import UIKit

/*
 if 조건식 {
    실행할 구문
 }
 */

let age = 20

if age < 19 {
    print("미성년자 입니다.")
}

/*
 if 조건식 {
    조건식이 만족하면 해당 구문 실행
 } else {
    만족하지 않으면 해당 구문 실행
 }
 */

if age < 19 {
    print("미성년자")
} else {
    print("성년자")
}

// 비교할 조건이 많다면? if else를 쓰면 복잡해질 수 있으므로 else if 조건 사용

/*
 if 조건식 {
    조건식이 만족하면 해당 구문 실행
 } else {
    만족하지 않으면 해당 구문 실행
 }
 */

let animal = "pig"

if animal == "dog" {
    print("강아지 사료 주기")
} else if animal == "cat" {
    print("고양이 사료 주기")
} else {
    print("해당하는 동물 사료가 없음")
}

// switch 구문, if 조건문과 달리 패턴기반으로 실행

/*
 switch 비교 대상 {
    case 패턴1 :
    // 패턴1 일치할 때 실행되는 구문
    case 패턴2, 패턴3 :
    // 패턴2, 3 과 일치할 때 실행되는 구문
 }
 */

let color = "red"

switch color {
case "blue" :
    print("파란색 입니다.")
case "green" :
    print("초록색 입니다.")
case "yellow":
    print("노랑색 입니다.")

default:
    print("찾는 색상이 없습니다.")
}

// 비교 패턴에는 범위연산자를 사용해서 비교할 수 도 있음

let temperature = 30

switch temperature {
case -20...9:
    print("겨울 입니다.")
case 10...14:
    print("가을 입니다.")
case 15...25:
    print("봄 입니다.")
case 26...35:
    print("여름 입니다.")

default:
    print("이상 기후입니다.")
}
