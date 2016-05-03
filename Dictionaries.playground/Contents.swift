//: Playground - noun: a place where people can play

import UIKit

//[String: String] The first type before the colon is called the key. The type after the colon is called the value.

var webster: [String: String] = ["krill": "any of the small crustaceans", "fire": "a burning mass of material"]

var anotherDictionary: [Int: String] = [44: "My fav number", 32: "Man I hate this number!"]


if let krill = webster["krill"] {
    print(krill)
}

if let favNumber = anotherDictionary[44] {
    print(favNumber)
}

webster = [:] //This syntax clears a dictionary

if let newKrill = webster["krill"] {
    print(newKrill)
} else {
    print("Does not exist")
}

if webster.isEmpty {
    print("Our dictionary is empty")
}

print(anotherDictionary.count)

var highScore: [String: Int] = ["spentak": 401, "playa21": 200, "deathBySpongebob": 500]

print(highScore["spentak"])

//Loop through a dictionary - if you are doing this too often then there may be a better way to write your code. Either with arrays or having specific classes which have arrays of relating content.

for (user, score) in highScore {
    print("\(user): \(score)")
}

highScore["seanp"] = 650

for (user, score) in highScore {
    print("\(user): \(score)")
}





