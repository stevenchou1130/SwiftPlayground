//: [Previous](@previous)

import Foundation

class Robot {
    private var battery = 0.5
}

extension Robot {
    func chargr() {
        battery = 1.0
    }
}

let r = Robot()
r.chargr()
