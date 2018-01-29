//: Playground - Required initializers

import UIKit


class SomeClass {
    var str:String
    required init(str:String) {
        self.str = str
        print(self.str)
    }
}

class SomeSubclass: SomeClass {

    required init(str:String) {
        super.init(str:str)
    }

    init(i:Int) {
        super.init(str:String(i))
    }
}

var someSubclass = SomeSubclass(str:"Hello Swift")
var someSubclass2 = SomeSubclass(i: 5)
