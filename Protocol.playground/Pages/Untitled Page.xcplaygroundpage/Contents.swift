//: [Previous](@previous)

import Foundation

protocol TestForEnum {
    var name: String { get }
}


enum Test: String, TestForEnum {

    case a, b, c

    var name: String {
        switch self {
        case .a:
            return "a"
        case .b:
            return "b"
        case .c:
            return "c"
        }
    }
}

Test.a.rawValue
