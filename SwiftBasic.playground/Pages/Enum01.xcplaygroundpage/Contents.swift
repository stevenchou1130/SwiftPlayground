//: [Previous](@previous)

import Foundation

enum BookType: String {
    case computer
    case science
    case language
    
    static let cases: [BookType] = [.computer, .science, .language]
    
    init?(_ ix: Int) {
        guard ix < BookType.cases.count else {
            return nil
        }
        self = BookType.cases[ix]
        
    }
    
    // init without saying rawvalue
    init?(_ rawValue : String) {
        self.init(rawValue: rawValue)
    }
    
    func nextCase() -> BookType {
        var ix = BookType.cases.index(of: self)
        ix = (ix! + 1) % BookType.cases.count
        return BookType.cases[ix!]
    }
}

let book01 = BookType(BookType.language.rawValue)
let nextBook = book01?.nextCase()
