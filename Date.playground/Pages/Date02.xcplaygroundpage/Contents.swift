//: [Previous](@previous)

import Foundation

let dateformatter = DateFormatter()
dateformatter.dateStyle = .medium

let date01 = Date(timeIntervalSinceReferenceDate: 200000)
let date02 = Date(timeIntervalSinceReferenceDate: 100000)

let tt = date01.timeIntervalSince(date02)
let ttt = Date(timeIntervalSinceReferenceDate: tt)
let tttt = Date(timeInterval: tt, since: date02)


let t = date01.timeIntervalSince1970 - date02.timeIntervalSince1970

print(dateformatter.string(from: date01))



var days =
    days = (days == 0) ? 1 : days
print (days)

