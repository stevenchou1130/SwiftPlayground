//: Protocol - CustomStringConvertible
// https://swiftcafe.io/2016/01/15/printable/

import Foundation

struct Person {
    var firstName: String
    var lastName: String
}

var person = Person(firstName: "cook", lastName: "tim")
print(person)

// ---------------------------

struct Person2: CustomStringConvertible {
    var firstName: String
    var lastName: String

    var description: String {
        return "\(firstName) \(lastName)"
    }
}

var person2 = Person2(firstName: "cook", lastName: "tim")
print(person2)
