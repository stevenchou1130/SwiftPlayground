//: [Previous](@previous)

import Foundation

var array1 = [1, 2, 3, 4, 5]
var array2 = array1
array2.append(6)
var len = array1.count

let a = ["1","2","3"]
let b = ["3","5","6"]

let c = a.filter { (str) -> Bool in
    return b.map(
        {$0}).contains(str)
}

print(c)
