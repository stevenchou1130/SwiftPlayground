//: [Previous](@previous)

import Foundation

extension Date {
    
    public func next(_ weekday: BCWeekday,
                     considerToday: Bool = false,
                     timeZone: TimeZone? = TimeZone(identifier: "Asia/Taipei")) -> String? {
        
        let calendar = Calendar(identifier: .gregorian)
        let components = DateComponents(weekday: weekday.rawValue)
        
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "M/d"
        dateFormatter.timeZone = timeZone
        
        if considerToday && calendar.component(.weekday, from: self) == weekday.rawValue {
            return dateFormatter.string(from: self)
        }

        if let nextDate = calendar.nextDate(after: self,
                                            matching: components,
                                            matchingPolicy: .nextTime,
                                            direction: .forward) {

            return dateFormatter.string(from: nextDate)
        }

        return nil
    }
    
    public enum BCWeekday: Int {
        case sunday = 1, monday, tuesday, wednesday, thursday, friday, saturday
    }
}

var d = Date()
let testTime = Double((60*60*24) * 7)
d += testTime
print(d.next(.monday, considerToday: true))

//print("============")
//
//let nextMonday = Date().next(.monday)
//print(nextMonday)



//extension Date {
//
//  static func today() -> Date {
//      return Date()
//  }
//
//  func next(_ weekday: Weekday, considerToday: Bool = false) -> Date {
//    return get(.next,
//               weekday,
//               considerToday: considerToday)
//  }
//
//  func previous(_ weekday: Weekday, considerToday: Bool = false) -> Date {
//    return get(.previous,
//               weekday,
//               considerToday: considerToday)
//  }
//
//  func get(_ direction: SearchDirection,
//           _ weekDay: Weekday,
//           considerToday consider: Bool = false) -> Date {
//
//    let dayName = weekDay.rawValue
//
//    let weekdaysName = getWeekDaysInEnglish().map { $0.lowercased() }
//
//    assert(weekdaysName.contains(dayName), "weekday symbol should be in form \(weekdaysName)")
//
//    let searchWeekdayIndex = weekdaysName.firstIndex(of: dayName)! + 1
//
//    let calendar = Calendar(identifier: .gregorian)
//
//    if consider && calendar.component(.weekday, from: self) == searchWeekdayIndex {
//      return self
//    }
//
//    var nextDateComponent = calendar.dateComponents([.hour, .minute, .second], from: self)
//    nextDateComponent.weekday = searchWeekdayIndex
//
//    let date = calendar.nextDate(after: self,
//                                 matching: nextDateComponent,
//                                 matchingPolicy: .nextTime,
//                                 direction: direction.calendarSearchDirection)
//
//    return date!
//  }
//
//}
//
//// MARK: Helper methods
//extension Date {
//  func getWeekDaysInEnglish() -> [String] {
//    var calendar = Calendar(identifier: .gregorian)
//    calendar.locale = Locale(identifier: "en_US_POSIX")
//    return calendar.weekdaySymbols
//  }
//
//  enum Weekday: String {
//    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
//  }
//
//  enum SearchDirection {
//    case next
//    case previous
//
//    var calendarSearchDirection: Calendar.SearchDirection {
//      switch self {
//      case .next:
//        return .forward
//      case .previous:
//        return .backward
//      }
//    }
//  }
//}
//
//let nextMonday = Date.today().next(.monday)
//print(nextMonday)
