import UIKit

var numbers: Array<Int> = Array<Int>()
numbers.append(1)
numbers.append(2)

numbers
numbers[0]

numbers.insert(4, at: 2)
numbers

numbers.remove(at: 1)
numbers

var names = [String]()
var names2: [String] = []

var dic: Dictionary<String, Int> = Dictionary<String, Int>()
var dic2: [String: Int] = [:]
var dic3: [String: Int] = ["Swift":1]
dic3["Java"] = 3
dic3["c"] = 4
dic3

dic3["c"] = 7
dic3

dic3.removeValue(forKey: "c")
dic3

var set: Set = Set<Int>()
set.insert(10)
set.insert(20)
set

set.remove(20)
set
