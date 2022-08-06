import UIKit

var numbers: Array<Int> = Array<Int>()
numbers.append(1)
numbers.append(2)
var numbers2 = [Int]()
var numbers3: [Int] = []
numbers2.append(3)

numbers.remove(at: 0)
numbers

numbers.removeAll()

var dic: Dictionary<String, Int> = Dictionary<String, Int>()
dic
var dic2: [String: Int] = [:]
dic2

var dic3: [String: Int] = ["Swift" : 1]
dic3
dic3["java"] = 2
dic3["python"] = 3
dic3

dic3["Swift"] = 4
dic3

dic3.removeValue(forKey: "python")
dic3

var set: Set = Set<Int>()
set
set.insert(10)
set.insert(20)
set
set.remove(20)
set

