//: [Previous](@previous)

import Foundation

let currentdate = Date()
let dateformatter = DateFormatter()

dateformatter.dateFormat = "MMM dd,yyyy"

var dateAsString = "Oct 01,2017"
var date1 = dateformatter.date(from: dateAsString)

var dateNSVersion = date1 as! NSDate

dateAsString = "Oct 02,2015"
var date2 = dateformatter.date(from: dateAsString)

let dateComponentsFormatter = DateComponentsFormatter()
dateComponentsFormatter.unitsStyle = .full

let interval = date2?.timeIntervalSince(date1!)
dateComponentsFormatter.string(from: interval!)

//dateComponentsFormatter.allowedUnits = [.year,.month,.day]
dateComponentsFormatter.allowedUnits = [.day]
let autoFormattedDifference = dateComponentsFormatter.string(from: date1!, to: date2!)


