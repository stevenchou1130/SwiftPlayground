//: Protocol-Oriented Programming
// 參考連結: https://www.raywenderlich.com/148448/introducing-protocol-oriented-programming

import Foundation

protocol Bird: CustomStringConvertible {
    var name: String { get }
    var canFly: Bool { get }
}

extension CustomStringConvertible where Self: Bird {
    var description: String {
        return canFly ? "I can fly" : "Guess I’ll just sit here :["
    }
}

protocol Flyable {
    var airspeedVelocity: Double { get }
}

struct FlappyBird: Bird, Flyable {
    let name: String
    let flappyAmplitude: Double
    let flappyFrequency: Double
    let canFly = true

    var airspeedVelocity: Double {
        return 3 * flappyFrequency * flappyAmplitude
    }
}

struct Penguin: Bird {
    let name: String
    let canFly = false
}

struct SwiftBird: Bird, Flyable {
    var name: String { return "Swift \(version)" }
    let version: Double
    let canFly = true

    // Swift is FASTER every version!
    var airspeedVelocity: Double { return version * 1000.0 }
}

extension Bird {
    // Flyable birds can fly!
    var canFly: Bool { return self is Flyable }
}


enum UnladenSwallow: Bird, Flyable {

    case african
    case european
    case unknown

    var name: String {
        switch self {
        case .african:
            return "African"
        case .european:
            return "European"
        case .unknown:
            return "What do you mean? African or European?"
        }
    }

    var airspeedVelocity: Double {
        switch self {
        case .african:
            return 10.0
        case .european:
            return 9.9
        case .unknown:
            fatalError("You are thrown from the bridge of death!")
        }
    }
}

extension UnladenSwallow {
    var canFly: Bool {
        return self != .unknown
    }
}

UnladenSwallow.unknown.canFly           // false
UnladenSwallow.african.canFly           // true
Penguin(name: "King Penguin").canFly    // false


UnladenSwallow.african.description


