import Foundation

struct Developer {
	let name: String
}

struct Company {
	let name: String
	var developer: Developer?
}

// 옵셔널 바인딩 대신 옵셔널 체인징으로 값에 쉽게 접근할 수 있음.
var developer = Developer(name: "han")
var company = Company(name: "toproot", developer: developer)
print(company.developer)
print(company.developer?.name) // 옵셔널로 감싸져 있음.
print(company.developer!.name) // 옵셔널 강제 언래핑
