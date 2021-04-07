//: [Previous](@previous)

import Foundation

enum TestEnum {
    case A, B, C
}

class Test {
    
    func test(testEnum: TestEnum) {
        
        switch testEnum {
        case .A:
            print("A")
        default:
            print("default")
        }
    }
}

let t = Test()

t.test(testEnum: .A)
