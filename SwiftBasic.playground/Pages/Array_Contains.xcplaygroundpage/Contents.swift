//: Playground - noun: a place where people can play

import UIKit

class A {

    var x = 0

    var y: Int {
        return x*2
    }

    func test() {
        x = x + y
        print(x)
    }
}

class B: A {
    override func test() {
        x = 10
        super.test()
    }
}

let b = B()
b.test()



var array1 = [true, false, true]
var array2 = [true, true, true]

var result1: Bool {
    let tempArray = array1.filter { $0 == false }
    return tempArray.count == 0
}

print(result1)


let elements = [1, 2, 3, 4, 5]
if elements.contains(5) {
    print("yes")
}

let expenses = [21.37, 55.21, 9.32, 10.18, 388.77, 11.41]
let hasBigPurchase = expenses.contains { $0 > 100 }
