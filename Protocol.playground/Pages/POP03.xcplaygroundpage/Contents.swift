//: [Previous](@previous)

import Foundation

protocol A {

    func f01()

    func f02()
}

extension A {

    func f02() {
        print("aaa")
    }
}

class B: A {

    func f01() {}

    func f02() {
        print("bbb")
    }
}

let b = B()
b.f02()


class C: A {

    func f01() {}
}

let c = C()
c.f02()



