//: Playground - noun: a place where people can play

import UIKit

struct Person {
    var name: String
}

struct Book {
    var title: String
    var authors: [Person]
    var primaryAuthor: Person {
        return authors.first!
    }
}

let steven = Person(name: "Steven")
let carol = Person(name: "Carol")
let book = Book(title: "Structure and Interpretation of Computer Programs", authors: [steven, carol])

book[keyPath: \Book.title]
// Key paths can drill down multiple levels
// They also work for computed properties
book[keyPath: \Book.primaryAuthor.name]









