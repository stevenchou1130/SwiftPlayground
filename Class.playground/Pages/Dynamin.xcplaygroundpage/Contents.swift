// 參考連結
// https://stackoverflow.com/questions/38213286/overriding-methods-in-swift-extensions

import Foundation

class A {
    func abc() {}
}

extension A {
    dynamic func xyz() {
        print("xyz")
    }
}

class B: A {
    override func abc() {
        print("abc")
    }

    override func xyz() {
        print("zzz")
    }
}

let b = B()
b.xyz()
