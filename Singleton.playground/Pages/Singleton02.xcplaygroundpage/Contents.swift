//: [Previous](@previous)

import Foundation

class A {

    static let shared = A()

    let a = "a"
    var varA = "A"

    init () {
        self.varA = "AA"
    }

}


let classA = A.shared
