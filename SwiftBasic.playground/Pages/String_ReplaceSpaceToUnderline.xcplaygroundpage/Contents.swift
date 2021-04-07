//: 取代空白 改成底線

import Foundation

let aString = "This is my string"
let newString = aString.replacingOccurrences(of: " ", with: "+", options: .literal, range: nil)

let bString = "This is my string"
let newStringb = bString.replacingOccurrences(of: " ", with: "+")



extension String {
    func replaceSpaceToUnderline() -> String {
        return self.replacingOccurrences(of: " ", with: "_")
    }
}

bString.replaceSpaceToUnderline()
