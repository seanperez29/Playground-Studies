//: Playground - noun: a place where people can play

import UIKit

var account1 = 545.65
var account2 = 434.32
var account3 = 678.77

print("$\(account1)")
print("$\(account2)")
print("$\(account3)")

extension Double {
    var currency: String {
        return "$\(self)"
    }
}

print(account1.currency)
print(account2.currency)
print(account3.currency)

extension String {
    
}

extension UIView {
    
}

//Once you create an extension in its own folder every class will recognize it and be able to have access to it. If you catch yourself repeating something a lot like in the example above, an extension may be a good option.