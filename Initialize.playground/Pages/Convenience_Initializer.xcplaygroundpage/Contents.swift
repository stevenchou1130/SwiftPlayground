//: Playground - Convenience initializers

import Foundation

class ParentClass {
    
    var parameter: Int?

    // Designated initializers
    init(value: Int) {
        parameter = value
    }
}

class SubClass: ParentClass {
    
    var subParameter: Int

    // Designated initializers
    override init(value: Int) {
        self.subParameter = 20
        super.init(value: value)
    }

    // Convenience initializers
    convenience init() {
        self.init(value: 10)
        self.subParameter = 30
    }
}

let Obj01 = SubClass(value: 50)
let Obj02 = SubClass()

print("Obj01.parameter: \(Obj01.parameter)")
print("Obj01.subParameter: \(Obj01.subParameter)")

print("Obj02.parameter: \(Obj02.parameter)")
print("Obj02.subParameter: \(Obj02.subParameter)")

