//: [Previous](@previous)
// 淺顯易懂的教學影片:
// https://www.youtube.com/watch?v=a-Za8i8VUaU

import Foundation

struct TimesTable {

    let multiplier: Int

    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)

print("3 的 6 倍是: \(threeTimesTable[6])")

// ------------------------------------------------------------------------

struct Test01 {

//    subscript (i: Int) -> Character {
//        let start = index(start, i)
//        return self[start]
//    }

}