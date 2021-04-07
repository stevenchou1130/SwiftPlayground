//: Split a String into an array

import Foundation

var str = "Hello, playground"

// Swift 3
let characters = Array(str.characters)
print(characters)


// Swift 4
//let characters = Array(str)
//print(characters)


print("----------------------------")


class Solution {
    func judgeCircle(_ moves: String) -> Bool {
        let characters = Array(moves.characters)
        var upAndDown = 0
        var leftAndRight = 0

        for x in characters {
            switch x {
            case "R":
                leftAndRight += 1
                break
            case "L":
                leftAndRight -= 1
                break
            default:
                break
            }
        }

        for y in characters {
            switch y {
            case "U":
                upAndDown += 1
                break
            case "D":
                upAndDown -= 1
                break
            default:
                break
            }
        }

        if upAndDown == 0 && leftAndRight == 0 {
            return true
        }

        return false
    }
}

let solution = Solution()

let result = solution.judgeCircle("LL")
print(result)
