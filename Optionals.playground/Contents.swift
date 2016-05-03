//: Playground - noun: a place where people can play

import UIKit

var lotteryWinnings: Int?
lotteryWinnings = 500
//Dont ever just do print(lotteryWinnings!)

//Do:
if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

//Or use if let syntax, which is the preferred way:
if let winnings = lotteryWinnings {
    print(winnings)
}

class Car {
    var model: String?
}

//Object declaration of a class that is an optional. And the class above has an optional value in it.
var vehicle: Car?

//This is safe way of saying if there is a value here print it. If not it will print nil. But you are also saying that you don't care if it works or not. It may work and it may not work, and your program still needs to continue working even if it doesn't work. So just know that if you use the below syntax when accessing or printing something you are saying you don't care if there is a value or not. If you have code that is absolutely dependent on knowing if there is a value or not, you have to do a if let. If you program can't continue unless there is a vehicle, so if you don't have a vehicle you would want to create one first. The if let syntax forces you to handle the situation. The below doesn't force you, it just prints it regardless. So if you are expecting a value there, just know that the optional syntax below may or may not give you what youa are looking for.
print(vehicle?.model)

vehicle = Car()
//Below is an example of optional syntax. When you use an optional with a ?. Anytime you are going to use the dot to access a property you have to put a ? in front of it. Because you are saying that vehicle is an optional and we don't know if it will have a model in front of it.
vehicle?.model = "Bronco"

//Can do:
//if let v = vehicle {
//    if let m = v.model {
//        print(m)
//    }
//}

//But should do this way, which is better. A single line if let:
if let v = vehicle, let m = v.model {
    print(m)
}


var cars: [Car]?

cars = [Car]()

//We want to not just check if it is nil. But we want to only use the array if there are actually cars in it:

//Can do this. But this is two lines of code:
//if let carArr = cars {
//    if carArr.count > 0 {
//    }
//}

//Better to do this. Which is one line. It is saying only execute code within curly brackets if not nil and if more than 0 elements.
if let carArr = cars where carArr.count > 0 {
} else {
    cars?.append(Car())
    print(cars?.count)
}


//Implicitly unwrapped optional: var age = Int!. A better way to handle this is to just not do it and set your variable to a default value, such as var age = 0.

class Person {
    //Or you can make it private so that no one can access it in order to crash the app. And utilize a computed property by creating a getter. This is called data hiding.
    private var _age: Int!
    
    var age: Int {
        if _age == nil {
            _age = 0
        }
        
        return _age
    }
    
    
    func setAge(newAge: Int) {
        self._age = newAge
    }
}

//This is bad and accessing a property like this can crash your program:
//print(jack.age)


var jack = Person()
jack.setAge(20)
print(jack.age)

var sharon = Person()
sharon.setAge(30)
print(sharon.age)


//Dont need a ? or ! if you create a constructor and initialize it in the constructor. You are saying that when a dog is created it has to have a species passed in otherwise it won't be created.
class Dog {
    var species: String
    
    init(someSpecies: String) {
        self.species = someSpecies
    }
}

var lab = Dog(someSpecies: "Black Lab")
print(lab.species)






