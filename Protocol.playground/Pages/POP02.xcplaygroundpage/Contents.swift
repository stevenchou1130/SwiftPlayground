//: Protocol-Oriented Programming
// Demo for article

import Foundation

enum Team {
    case iOS
    case android
}

protocol Swiftable {
    var isKnowSwift: Bool { get }
}

protocol Engineer: CustomStringConvertible {
    var team: Team { get }
    var canDevelopiOS: Bool { get }
}

extension CustomStringConvertible where Self: Engineer {
    var description: String {
        switch team {
        case .android:
            return "I belong to Android team."
        case .iOS:
            return "I belong to iOS team."
        }

    }
}

extension Engineer {
    var canDevelopiOS: Bool {
        return self is Swiftable
    }
}

struct Steven: Engineer, Swiftable {
    let team: Team
    let isKnowSwift: Bool
}

let steven = Steven(team: .iOS, isKnowSwift: true)
print("Steven can develop iOS: \(steven.canDevelopiOS)")
print(steven.description)

struct Sam: Engineer, Swiftable {
    let team: Team
    let isKnowSwift: Bool
}

let sam = Sam(team: .android, isKnowSwift: true)
print("Sam can develop iOS: \(sam.canDevelopiOS)")
// Sam can develop iOS: true

print(sam.description)



