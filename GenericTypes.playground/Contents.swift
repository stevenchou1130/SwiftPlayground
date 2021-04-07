import Foundation

func compare<T: Comparable>(a: T, b: T) -> Bool {
    return a > b
}

class Person {
    var age: Int
    init(age: Int) {
        self.age = age
    }
}

//extension Person: Comparable {
//
//    func ==(a: Person, b: Person) -> Bool {
//        return a.age == b.age
//    }
//
//    func <(a: Person, b: Person) -> Bool {
//        return a.age < b.age
//    }
//
//    var p1 = Person(age: 10)
//    var p2 = Person(age: 20)
//    compare(p1, p2)
//}

