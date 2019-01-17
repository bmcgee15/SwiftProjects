//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print(str)

print("This is the end")

let myName = "Bret"

print(myName)

print("why \(str)")

var myInt = 8

print(myInt * 10)

let d:Double = 5.76

let e:Int = 8

print("The product of \(d) and \(e) is \(d * Double(e))")

// Arrays

var array = [35, 36, 5, 2]

print(array[2])

array.append(1)

array.remove(at: 1)

array.sort()

print(array)

var test = [3.87, 7.1, 8.9]

test.remove(at: 1)

test.append(test[0] + test[1])

print(test)

let stringArray = [String]()




// Dictionary

var dictionary = ["computer": "something to play call of duty on", "coffee": "best drink ever"]

print(dictionary["computer"]!) // the ! is only used when you know for sure the item is in the dictionary "be careful"

let menu = ["pizza": 10.99, "ice cream": 4.99, "salad": 7.99]

print("The total cost of my meal is $\(menu["pizza"]! + menu["ice cream"]! + menu["salad"]!)")


















