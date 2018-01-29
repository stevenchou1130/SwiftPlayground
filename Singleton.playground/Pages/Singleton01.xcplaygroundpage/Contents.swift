//: Playground - noun: a place where people can play

import UIKit

class SingletonClass: NSObject {

    static let shared = SingletonClass()
    
    private override init() {
        print("=== SingletonClass init ===")
    }
    
    var count = 0
}


class Test {

    
}

print(SingletonClass.shared.count)

SingletonClass.shared.count += 1

print(SingletonClass.shared.count)

