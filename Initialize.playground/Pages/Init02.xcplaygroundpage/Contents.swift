//: [Previous](@previous)

import Foundation

class Model {

    let x: String?
    let y: Int
    let z: Date
    
    init(x: String?, y: Int, z: Date) {
        self.x = x
        self.y = y
        self.z = z
    }
}

//let xx: String?

let test = Model(x: "Test", y: 10, z: Date(timeIntervalSince1970: 1000000))





