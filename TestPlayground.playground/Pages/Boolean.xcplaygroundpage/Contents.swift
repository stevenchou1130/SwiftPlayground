//: [Previous](@previous)

import Foundation

//var flag = 0
//
//if flag {
//    print("flag is true")
//} else {
//    print("flag is false")
//}


let a = true
let b = false
let c = false

if a || b || c {
    print("t01")
}

if b || c {
    print("t02")
} else {
    print("f02")
}

let d = b && c

let e = a && b
