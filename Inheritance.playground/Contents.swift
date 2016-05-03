//: Playground - noun: a place where people can play

import UIKit

//Base class means the most bottom class. Person is our base class in this case. Your base class should be stripped down to only have things that are going to be commmon among all subclasses.
class Person {
    var eyeColor = "Blue"
    var name: String
    var speed = "10 MPH"
    var benchPress = "200 LBS"
    
    init(name: String) {
        self.name = name
    }

    func catchPrase() -> String {
        return "Hi, I'm an average person"
    }
}

var john = Person(name: "John")

class Animorph: Person {
    
    var animalType = "Dog"
    
    //Since we are saying above that you can not create a person without stating a name, we have to say that convenience init is not the main init, it is just a secondary one. Then we put the main init first followed by the parameter we want to be able to change, which is the animal typen.
    convenience init(type: String, name: String) {
        self.init(name: name)
        animalType = type
        self.speed = "25 MPH"
    }
    
    //We can override inheritance by using the syntax below. Because we don't want to use the average person catch phrase above. So we can call a catch phrase utilizing the same function call, but it will print the overriden function.
    override func catchPrase() -> String {
        return "I can turn into a cool animal!"
    }
}


print(john.eyeColor)

//Dolphin will inherit all properties from the parent Person class because we made it of type Person earlier. So we can access those properties such as eye color, speed, and bench press. And we passed in a name.
var dolphin = Animorph(type: "Dolphin", name: "Jack")
print(dolphin.eyeColor)

print(john.catchPrase())
print(dolphin.catchPrase())
print(dolphin.speed)

class SuperHero: Person {
    var specialPower = "X-Ray Vision"
    var backStory = "Some truck hit some slime that had chemicals and now I'm super awesome"
    
    convenience init(name: String, press: String) {
        self.init(name: name)
        benchPress = press
    }
    
    override func catchPrase() -> String {
        return "With great power do or do not to inifinity and beyond"
    }
}

var pukeMan = SuperHero(name: "Puke Man", press: "5000 LBS")

print(pukeMan.catchPrase())
print(john.catchPrase())
print(dolphin.catchPrase())

print(pukeMan.benchPress)

//UIView(Base Class) -> UIImageView(Subclass)
//UIView(Base Class) -> UIButton(Subclass)
//UIView(Base Class) -> UILabel(Subclass)


