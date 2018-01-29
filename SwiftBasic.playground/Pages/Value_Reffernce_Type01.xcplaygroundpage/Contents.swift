struct ValueType {
    var data: Int = 10
}

class ReffernceType {
    var data: Int = 0
}

var a = ValueType()
a.data = 10
print(a.data)


enum Number: Int {
    case a
    case b
    case c
}

Number.a.rawValue
Number.b.rawValue


class Test {
    var data: Int {
        return 20
    }
}

let c = Test()

