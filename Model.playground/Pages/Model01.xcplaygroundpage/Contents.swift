//: Playground - noun: a place where people can play

import UIKit

class Enemy {
    var health = 10 {
        didSet { putOutOfPlayIfNeeded() }
    }
    
    // Important to only allow mutations of this property from within this class
    private(set) var isInPlay = true
    
    private func putOutOfPlayIfNeeded() {
        guard health <= 0 else {
            return
        }
        isInPlay = false
        remove()
    }
    
    private func remove() {
    
    }
}
