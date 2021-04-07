//: [Previous](@previous)

import Foundation

let now = Date()
print(now)

print(now.timeIntervalSince1970)


let string1 = "2016-10-05"
let dateformatter = DateFormatter()
dateformatter.dateFormat = "YYYY-MM-dd"
//dateformatter.timeStyle = .short
let newDate = dateformatter.date(from: string1)
let a = newDate!.timeIntervalSince1970 + 60*60*24*5


let hoursToAddInSeconds: TimeInterval = 120 * 60
let calculatedDate = newDate!.addingTimeInterval(hoursToAddInSeconds)
