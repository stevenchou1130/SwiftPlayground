//: [Previous](@previous)

import Foundation

let array = [[String.self],
             [Double.self, Float.self],
             [Int.self]]

let index = (1, 1)

let type = array[index.0][index.1]

print("type: \(type)")
