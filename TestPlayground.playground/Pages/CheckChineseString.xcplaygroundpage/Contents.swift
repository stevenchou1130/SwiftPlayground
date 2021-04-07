//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//+ (BOOL)checkIsChinese:(NSString *)string{
//for (int i=0; i<string.length; i++) {
//    unichar ch = [string characterAtIndex:i];
//    if (0x4E00 <= ch  && ch <= 0x9FA5) {
//        return YES;
//    }
//}
//return NO;
//}


enum ChineseRange {
    case notFound, contain, all
}

extension String {
    var findChineseCharacters: ChineseRange {
        guard let a = self.range(of: "\\p{Han}*\\p{Han}", options: .regularExpression) else {
            return .notFound
        }
        var result: ChineseRange
        switch a {
        case nil:
            result = .notFound
        case self.startIndex..<self.endIndex:
            result = .all
        default:
            result = .contain
        }
        return result
    }
}

func checkWithChinese(text: String) {
    print(text.findChineseCharacters)
}

checkWithChinese(text: "我他你")
