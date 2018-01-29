//: [Previous](@previous)

import Foundation

// Closure 是一種函數的簡寫模式，省去函數名，把參數和返回值放入括號內


var letter = ["y", "s", "g", "c"]


var letterRank1 = letter.sorted()

func reverseOrder(first: String, second: String) -> Bool {
    
    return first > second
}


var letterRank2 = letter.sorted(by: reverseOrder)


// 用 Closure 改寫
var letterRank3 = letter.sorted { (a, b) -> Bool in
    
    return a > b
}


var letterRank4 = letter.sorted { (a, b) in
    
    a > b
}


var letterRank5 = letter.sorted {
    $0 > $1
}

