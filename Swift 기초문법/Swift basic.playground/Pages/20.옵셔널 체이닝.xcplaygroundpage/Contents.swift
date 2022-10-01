import Foundation

// 옵셔널에 속해 있는 nil 일지도 모르는 프로퍼티, 메서드, 서브스크립션 등을 가져오거나 호출할 때 사용할 수 있는 일련의 과정

struct Developer {
	let name: String
}

struct Company {
	let name: String
	var developer: Developer? // 옵셔널
}

// 옵셔널 바인딩 대신 옵셔널 체인징으로 값에 쉽게 접근할 수 있음.
var developer = Developer(name: "han")
var company = Company(name: "toproot", developer: developer)
print(company.developer)
print(company.developer?.name) // 프로퍼티가 옵셔널로 감싸져 있음. (값이 nill일 확률이 있어서)
print(company.developer!.name) // 프로퍼티가 옵셔널 강제 언래핑
