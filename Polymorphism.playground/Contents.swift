//: Playground - noun: a place where people can play

import UIKit

//Polymorphism is an object oriented programming principal.

class Shape {
    var area: Double?
    
    func calculateArea() {
        
    }
    
    func printArea() {
        print("The area is: \(area)")
    }
}

class Rectangle: Shape {
    //Variables below are assigned a default value of 1.0 in this case. They don't have to have a default value. We just did so in this case. But just know that that is what we did there. Variables up here are of global scope.
    var width = 1.0
    var height = 1.0
    
    //Variables in here are of local scope.
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    override func calculateArea() {
        area = width * height
    }
}

class Circle: Shape {
    var radius = 1.0
    
    init(radius: Double) {
        self.radius = radius
    }
    
    override func calculateArea() {
        area = 3.14 * radius * radius
    }
}

var circle = Circle(radius: 5.0)
var rectangle = Rectangle(width: 20, height: 5)

circle.calculateArea()
rectangle.calculateArea()

circle.printArea()
rectangle.printArea()



//Another example
class Enemy {
    var hp = 100
    var attackPwr = 10
    
    init(hp: Int, attack: Int) {
        self.hp = hp
        self.attackPwr = attack
    }
    
    func defendAttack(incAttPwr: Int) {
        hp -= incAttPwr
    }
}

class AngryTroll: Enemy {
    var immunity = 10
    
    override func defendAttack(incAttPwr: Int) {
        if incAttPwr <= immunity {
            hp += 1
        } else {
            super.defendAttack(incAttPwr)
        }
    }
}








