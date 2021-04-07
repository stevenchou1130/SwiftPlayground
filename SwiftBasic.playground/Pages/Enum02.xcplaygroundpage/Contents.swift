//: [Previous](@previous)

import Foundation

enum OptionType: String {
    case palindrome = "p"
    case anagram = "a"
    case help = "h"
    case unknown
    
    init(value: String) {
        switch value {
        case "a": self = .anagram
        case "p": self = .palindrome
        case "h": self = .help
        default: self = .unknown
        }
    }
}

let a = OptionType.init(value: "p")
print(a)

// ------------------------------------------------ //

enum Trade {
    case Buy(stock: String, amount: Int)
    case Sell(stock: String, amount: Int)
}

func trade(type: Trade) {
    print(type)
}

trade(type: .Buy(stock: "1234", amount: 3))

// ------------------------------------------------ //

enum Test: String {
    case A = "AA"
    case B = "BB"
    
    private var name: String {
        switch self {
        default:
            return self.rawValue
        }
    }
    
    func getValue() {
        print(self.name)
    }
}

Test.A.getValue()


