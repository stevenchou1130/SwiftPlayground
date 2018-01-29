//: TimeZone
// Reference: https://stackoverflow.com/questions/27053135/how-to-get-a-users-time-zone

import UIKit

// The time zone currently used by the system.
let currentTime = TimeZone.current
print(currentTime)


let asiaTimeZone = TimeZone(identifier: "Asia/Taipei")
print(asiaTimeZone!)

// Taipei's time zone is CST
let taipeiTimeZone = TimeZone.init(abbreviation: "CST")
print(taipeiTimeZone!)


// ---------------------------------------


var secondsFromGMT: Int { return TimeZone.current.secondsFromGMT() }
print(secondsFromGMT)

let hours = secondsFromGMT/3600
let minutes = abs(secondsFromGMT/60) % 60
let tz = String(format: "%+.2d:%.2d", hours, minutes)
print(tz)


var localTimeZoneAbbreviation: String { return TimeZone.current.abbreviation() ?? "" }


var localTimeZoneName: String { return TimeZone.current.identifier }


var timeZoneAbbreviations: [String:String] { return TimeZone.abbreviationDictionary }


var isDaylightSavingTime: Bool { return TimeZone.current.isDaylightSavingTime(for: Date()) }


var daylightSavingTimeOffset: TimeInterval { return TimeZone.current.daylightSavingTimeOffset() }
print(daylightSavingTimeOffset)


var nextDaylightSavingTimeTransition: Date? { return TimeZone.current.nextDaylightSavingTimeTransition }    //  "Feb 18, 2017, 11:00 PM"
print(nextDaylightSavingTimeTransition?.description(with: .current) ?? "none")
nextDaylightSavingTimeTransition

var nextDaylightSavingTimeTransitionAfterNext: Date? {
    guard
        let nextDaylightSavingTimeTransition = nextDaylightSavingTimeTransition
        else { return nil }
    return TimeZone.current.nextDaylightSavingTimeTransition(after: nextDaylightSavingTimeTransition)
}

nextDaylightSavingTimeTransitionAfterNext


