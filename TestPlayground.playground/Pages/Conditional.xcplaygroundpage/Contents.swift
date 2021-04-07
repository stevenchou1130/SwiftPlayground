//: [Previous](@previous)

import Foundation

let c01 = true
let c02 = true

if (c01) {
    print("c01")
} else if (c02) {
    print("c02")
}

print("-------------------------------")

let a = true
let b = false
let result = !(a || b)
print(result)
