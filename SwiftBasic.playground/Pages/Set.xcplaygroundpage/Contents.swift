//: [Previous](@previous)

import Foundation

/*
var test: Set<AnyObject> = ["test01", "test02", "test03", "test02", "test04", 1]

print(test)
print(test.count)

test.insert(1)
*/

// -----------------------

class Obj: Hashable {
    var hashValue: Int = 0

    var id = 1
    var str = "Hello, playground"

    init(str: String) {
        self.str = str
    }
}

extension Obj: Equatable {
    static func == (lhs: Obj, rhs: Obj) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

let obj1 = Obj(str: "a")
let obj2 = Obj(str: "b")

var aSet: Set<Obj> = []
aSet.insert(obj1)
aSet.insert(obj2)
aSet.count

