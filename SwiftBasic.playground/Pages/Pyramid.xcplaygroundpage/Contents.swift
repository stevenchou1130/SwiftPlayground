//: Playground - noun: a place where people can play

import UIKit

let count = 5

print("\n=======正三角形=======\n")

for x in 0..<count {
    for j in 0...x {
        print("*", terminator: "")
    }
    print("")
}


print("\n=======倒三角形=======\n")


for x in stride(from: count, to: 0, by: -1) {
    for j in 1...x {
        print("*", terminator: "")
    }
    print("")
}


print("\n=======金字塔=======\n")


for x in 0..<count {
    for _ in stride(from: count-1, to: x, by: -1) {
        print(" ", terminator: "")
    }

    for _ in 0..<(x*2)+1 {
        print("*", terminator: "")
    }

    print("")
}


print("\n==============\n")


(1...count).forEach { print(Array(repeating: "*", count: $0).joined()) }

print("\n==============\n")

(1...count).reversed().forEach { print(Array(repeating: "*", count: $0).joined()) }
