//: Playground - noun: a place where people can play

import UIKit

//BLUEPRINT 
class Vehicle {
    private var engine = "4 cylinder"
    private var color = "silver"
    private var _odometer = 0
    
    //We want people to have access to odometer but not make it whatever they want. So we use GETTER / SETTER also know as (Accessors & Mutators) Mark Price adds underscore in front of odometer because he is just stating that it is the real property but he will be creating a Getter / Setter. They state that you can get or set the variables, but on our own terms. We don't just let anyone change them.
    
    //var odometer below is publice because it doesn't have the private in front of it. newValue below is a keyword that is recognized by Swift. We did not make it up. It's basically saying that if the new value coming in is greater than the current odometer reading then you can update it. If it is not greater, then do nothing. We call the below a "computed property":
    var odometer: Int {
        get {
            return _odometer
        }
        set {
            if newValue > _odometer {
                _odometer = newValue
            }
        }
    }
    
    
    
    //Called an initializer function or constructor. And we are initializing it by passing in variables/parameters. Calling this function allows us to customize what we are adding. Just as the SRX vehicle below.
    init(engine: String, color: String) {
        self.engine = engine
        self.color = color
    }
    
    //Calling this initializer function applies the default variables listed above to the new vehicle below. Such that if we called it for the SRX it would apply the default engine, color, and odometer that we stated. Swift uses init() to create actual objects in memory. So below as we say var volvo = Vehicle(), it calls, creates it, and applies it to memory. Otherwise Swift doesn't store classes into memory.
    init() {
        
    }

    func enterMiles(miles: Int) {
        _odometer += miles
    }
}

var srx = Vehicle(engine: "6 Cylinder", color: "Royal Blue")

//Creating a new instance of a class - Object created from class above and instantiated by calling Vehicle(). And now they are living in memory and stored in a variable.
var volvo = Vehicle()

//Access properties of a class by utilizing dot syntax(i.e .color or .text)
print(srx.color)
print(volvo.color)

var silverado = Vehicle()

//Make arrays of a type of class.
var vehicles = [Vehicle]()

vehicles.append(volvo)
vehicles.append(silverado)
vehicles.append(srx)

print(srx.odometer)
srx.enterMiles(10400)
print(srx.odometer)

//srx.odometer = 400 will change the odometer readings. Sometime we do not want that. So the properties under Vehicle class above are being set to private.






