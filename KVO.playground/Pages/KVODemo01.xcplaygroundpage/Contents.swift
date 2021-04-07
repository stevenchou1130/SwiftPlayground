// KVO in Swift 4
// Sample
// https://goo.gl/ChHfBJ
// https://goo.gl/wzgjPc
// https://goo.gl/EXVK4P

import Foundation

class Persion: NSObject {

    var name: String
    @objc dynamic var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
        super.init()
    }

    func celebrateBirthday() {
        age += 1
    }
}

let steven = Persion(name: "Steven", age: 20)

let ob = steven.observe(\.age) { (ob, changed) in
    let newAge = ob.age
    print(newAge)
}

steven.celebrateBirthday()
steven.celebrateBirthday()






