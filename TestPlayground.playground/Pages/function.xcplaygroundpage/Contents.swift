//: [Previous](@previous)

import Foundation

//func test01() {
//    print("test01")
//}
//
//func test02() {
//    print("test02")
//}
//
//let functions = {
//    test01()
//    test02()
//}
//
//functions()


class Test {
    func test01() {
        print("test01")
    }

    func test02() {
        print("test02")
    }

    func runAllFunctions() {
        let functions = {
            self.test01()
            self.test02()
        }

        functions()
    }
}

let t = Test()
t.runAllFunctions()
t.runAllFunctions()


protocol A {
    func a()
}

extension A {
    func a() {
        print("a")
    }
    
    func s() -> String {
        return "s"
    }
}

class B : A {
    
    func b() {
        a()
    }
    
}

class Spinner {
    
}

let b = B()
b.b()
