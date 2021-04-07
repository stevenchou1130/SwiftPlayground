//: [Previous](@previous)

import Foundation

class Model {

    let x: String?
    let y: Int?
    
    init(x: String, y: Int) {
        self.x = x
        self.y = y
    }
    
    func printXY() {
        print("x: \(String(describing: x)), y: \(String(describing: y))")
    }
}

//var xxx: String?
//let m = Model(x: xxx, y: 10)
//m.printXY()

let m = Model(x: "Test", y: 10)
m.printXY()
