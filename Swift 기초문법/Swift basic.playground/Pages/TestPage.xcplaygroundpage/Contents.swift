import Foundation

struct Dog {
	var name: String
	let gender: String
}

var dog = Dog(name: "bow", gender: "male")
print(dog)

dog.name = "wow"
print(dog)

let dog2 = Dog(name: "bowwow", gender: "female")
print(dog2)

class Cat {
	var name: String
	let gender: String
	
	init(name: String, gender: String) {
		self.name = name
		self.gender = gender
	}
}

let cat = Cat(name: "navy", gender: "female")
cat.name = "navy2"
print(cat.name)

struct Stock {
	
}
