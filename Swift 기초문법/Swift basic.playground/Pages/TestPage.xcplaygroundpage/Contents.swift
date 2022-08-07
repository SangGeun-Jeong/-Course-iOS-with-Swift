import UIKit

class User {
	var nickname: String
	var age: Int
	
	init(nickname: String, age: Int){
		self.nickname = nickname
		self.age = age
	}
	
	init(age: Int) {
		self.nickname = "Albert"
		self.age = age
	}
	
	deinit{
		print("deinit user")
	}
}

var user = User(nickname: "toproot", age: 27)
user.nickname
user.age

var user2 = User(age: 25)
user2.nickname
user2.age

var user3: User? = User(age: 23)
user3 = nil


