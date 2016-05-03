//: Playground - noun: a place where people can play

import UIKit

var array = [Int]()

var arrayNew = [Int]()

var cool = [Int]()

for x in 0...999 {
    if x % 3 == 0 && x % 5 == 0 {
        cool.append(x)
    } else if x % 3 == 0 {
        array.append(x)
    } else if x % 5 == 0 {
        arrayNew.append(x)
    }
}

var sum = Int()

sum = array.reduce(0, combine: +)

var newSum = Int()

for arr in arrayNew {
    newSum += arr
}

print(newSum)

var newSummation = Int()

for coo in cool {
    newSummation += coo
}

print(newSum + newSummation + sum)

