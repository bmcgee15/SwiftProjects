//: Playground - noun: a place where people can play

import UIKit

// while loops

var i = 1

while i <= 10 {
    
    print(i)
    
    i += 1
    
}

var x = 7
var y = 1

while y <= 7 {
    
    print(x)
    
    x += 7
    
    y += 1
    
}

var array = [7, 23, 98, 1, 0, 763]

var q = 0

while q < 6 {
    
    array[q] += 1
    
    q += 1
    
}

print(array)



//  FOR LOOPS

let forArray = ["bob", "doug", "james", "tony"]

for name in forArray {
    
    print("Hi there \(name)")
    
}

var numbers = [7, 2, 9, 4, 1]

for (index, value) in numbers.enumerated() {
    
    numbers[index] += 1
    
}

print(numbers)

// bad

var numberTest = [8, 7, 19, 28]
var g = 0
for number in numberTest {
    
    numberTest[g] /= 2
    
    g += 1
    
}

print(numberTest)

// better but missing rounds

var myArray = [8, 7, 19, 28]

for (index, value) in myArray.enumerated() {
    
    myArray[index] = value / 2
    
}

print(myArray)


// best

var myArray2 = [8.0, 7.0, 19.0, 28.0]

// OR var myArray2 = [Double]()
// then myArray2 = [8, 7, 19, 28]

for (index, value) in myArray2.enumerated() {
    
    myArray2[index] = value / 2
    
}

print(myArray2)
